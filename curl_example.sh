# Assuming the AV receiver's IP is 192.168.0.100 and we want to switch the input source to HDMI4

curl -X POST 'http://192.168.0.100/YamahaRemoteControl/ctrl' --data-binary '<?xml version="1.0" encoding="utf-8"?><YAMAHA_AV cmd="PUT"><Main_Zone><Input><Input_Sel>HDMI4</Input_Sel></Input></Main_Zone></YAMAHA_AV>'
