#!/bin/bash
# 自动生成带 WARP 出站的 sing-box 配置文件，保存到 /root/sing-warp 目录
# 用法: ./sb-warp-gen.sh [策略]
# 策略可选: all (默认), ipv4, ipv6

set -e

POLICY=${1:-all}

# 获取 WARP 参数（私钥、IPv6、reserved）
get_warp_params() {
    local warpurl
    warpurl=$(curl -s --connect-timeout 5 https://warp.xijp.eu.org 2>/dev/null)

    # 尝试从网页内容中提取参数（网站返回的是纯文本，包含 Private_key、IPV6、reserved）
    pvk_tmp=$(echo "$warpurl" | awk -F'：' '/Private_key/{print $2}' | xargs)
    wpv6_tmp=$(echo "$warpurl" | awk -F'：' '/IPV6/{print $2}' | xargs)
    res_tmp=$(echo "$warpurl" | awk -F'：' '/reserved/{print $2}' | xargs)

    # 检查是否三个参数都成功提取
    if [ -n "$pvk_tmp" ] && [ -n "$wpv6_tmp" ] && [ -n "$res_tmp" ]; then
        pvk="$pvk_tmp"
        wpv6="$wpv6_tmp"
        res="$res_tmp"
        echo "从网络获取 WARP 参数成功" >&2
    else
        # 提取失败，使用备用参数（建议定期手动更新）
        pvk='52cuYFgCJXp0LAq7+nWJIbCXXgU9eGggOc+Hlfz5u6A='
        wpv6='2606:4700:110:8d8d:1845:c39f:2dd5:a03a'
        res='[215, 69, 233]'
        echo "警告：网络获取失败，使用备用参数（可能已失效）" >&2
    fi

    echo "获取到 WARP 参数:" >&2
    echo "私钥: $pvk" >&2
    echo "IPv6: $wpv6" >&2
    echo "reserved: $res" >&2
}

# 检测 IPv6 连通性并设置 WARP 服务器地址
detect_sendip() {
    if curl -s6 --connect-timeout 2 https://icanhazip.com >/dev/null 2>&1; then
        sendip="2606:4700:d0::a29f:c001"
    else
        sendip="162.159.192.1"
    fi
    echo "WARP 服务器 IP: $sendip" >&2
}

# 根据策略设置路由变量
set_policy_vars() {
    case "$POLICY" in
        all)
            s1outtag="warp-out"
            s2outtag="warp-out"
            sip='"0.0.0.0/0", "::/0"'
            sbyx="prefer_ipv4"
            ;;
        ipv4)
            s1outtag="warp-out"
            s2outtag="direct"
            sip='"0.0.0.0/0"'
            sbyx="prefer_ipv4"
            ;;
        ipv6)
            s1outtag="warp-out"
            s2outtag="direct"
            sip='"::/0"'
            sbyx="prefer_ipv6"
            ;;
        *)
            echo "未知策略: $POLICY，使用 all" >&2
            s1outtag="warp-out"
            s2outtag="warp-out"
            sip='"0.0.0.0/0", "::/0"'
            sbyx="prefer_ipv4"
            ;;
    esac
    echo "策略设置: s1outtag=$s1outtag, s2outtag=$s2outtag, sip=$sip, sbyx=$sbyx" >&2
}

# 生成完整的 Sing-box 配置（JSON 格式）
generate_config() {
    cat <<EOF
{
  "log": {
    "level": "info",
    "timestamp": true
  },
  "inbounds": [
    {
      "type": "socks",
      "tag": "socks-in",
      "listen": "::",
      "listen_port": 1080,
      "users": []
    }
  ],
  "outbounds": [
    {
      "type": "direct",
      "tag": "direct"
    }
  ],
  "endpoints": [
    {
      "type": "wireguard",
      "tag": "warp-out",
      "address": [
        "172.16.0.2/32",
        "${wpv6}/128"
      ],
      "private_key": "${pvk}",
      "peers": [
        {
          "address": "${sendip}",
          "port": 2408,
          "public_key": "bmXOC+F1FxEMF9dyiK2H5/1SUtzH0JuVo51h2wPfgyo=",
          "allowed_ips": [
            "0.0.0.0/0",
            "::/0"
          ],
          "reserved": $res
        }
      ]
    }
  ],
  "route": {
    "rules": [
      {
        "action": "sniff"
      },
      {
        "action": "resolve",
        "strategy": "${sbyx}"
      },
      {
        "ip_cidr": [ ${sip} ],
        "outbound": "${s1outtag}"
      }
    ],
    "final": "${s2outtag}"
  }
}
EOF
}

main() {
    get_warp_params
    detect_sendip
    set_policy_vars

    # 创建输出目录
    OUTPUT_DIR="/root/sing-warp"
    mkdir -p "$OUTPUT_DIR"

    # 生成带时间戳的文件名（精确到秒）
    FILENAME="sing-warp-$(date +%Y%m%d-%H%M%S).json"
    OUTPUT_PATH="${OUTPUT_DIR}/${FILENAME}"

    # 生成配置并写入文件
    generate_config > "$OUTPUT_PATH"

    # 向标准错误输出文件位置（不影响静默运行）
    echo "配置文件已生成：$OUTPUT_PATH" >&2
}

main
