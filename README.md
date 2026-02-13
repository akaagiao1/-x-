sing-box文件
下载脚本：

bash
wget -O sb-warp-gen.sh https://raw.githubusercontent.com/akaagiao1/-x-/refs/heads/main/warp.sh
赋予执行权限：

bash
chmod +x sb-warp-gen.sh
运行脚本生成配置文件：

生成所有流量经过WARP的配置（默认策略）：

bash
./sb-warp-gen.sh > config.json
你也可以指定策略，例如仅IPv4走WARP：

bash
./sb-warp-gen.sh ipv4 > config-ipv4.json
脚本运行时会输出获取到的WARP参数和策略设置（这些信息会打印在屏幕上，不影响配置文件生成）。
