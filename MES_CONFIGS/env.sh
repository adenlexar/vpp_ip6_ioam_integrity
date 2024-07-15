sudo systemctl stop vpp
sudo vpp -c startup0.conf
sudo vpp -c startup1.conf
sudo vpp -c startup2.conf
sudo vpp -c startup3.conf
sudo vpp -c startup4.conf

sleep 10 #Attends que toutes les instances de vpp soient bien lancées

echo "set ioam rewrite dst_addr db02::2 trace" | sudo vppctl -s /run/vpp/cli-vpp1.sock
