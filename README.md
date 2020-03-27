# av-receiver-docs
Documentation for remote controlling Yamaha AV-Receivers. Maybe one time this can help me and/or others to create a free alternative to the Yamaha "AV Controller" app.

## How does remote controlling the receivers work?
They work by POSTing XML over HTTP to the receiver's built in webserver. The receivers accept any request as long as it complies with the correct XML syntax. The XML has to be posted to: ```http://<IP-ADDRESS>/YamahaRemoteControl/ctrl```

## Supported devices
There is an official list on the Yamaha website which shows supported devices for their app. But I am not sure whether all devices work in the same way. I have only one model to test everything. If there is any receiver missing which works with the provided XML, feel free to make a pull request or open a new issue. Maybe I will reference to the original list from Yamaha in the future if I know that all of them work the same way. This is the list of tested devices:

- Yamaha RX-V475

## Functions
### Already documented

- get_basic_status: Gets some information about the current volume, input and something like that. It will usually be requested after some post command changed the devices settings
- get_play_info: Requests info about the music which is currently played (e.g. while using tuner, Spotify)
- get_preview_picture: Requests a preview picture of the used Yamaha AV-receiver model
- post_activate_straight_sound: Deactivates DSP and uses original sound
- post_change_dsp: Use some sound variances
- post_change_input: Change the input
- post_change_volume: Change the volume
- post_power_on_or_off: Switch the receiver on or off
- post_sleep_timer: Sets the sleep timer off or to a specific value
- post_cursor_movements *(Maybe some values missing)*: Use the arrow keys and some menu actions
- post_show_menu *(Maybe some values missing)*: Use some menu options
- post_switch_adaptive_drc: Sets adaptive drc to Auto / off
- post_switch_enhancer: Sets the enhancer to on / off
- post_switch_cinema_dsp_3d_mode: Sets cinema DSP 3D to Auto / off
- post_switch_direct: Sets direct to on / off

### To be documented

- post_change_szene: Change the current scene (e.g. BD/DVD or RADIO)
- post_change_treble: Change treble level
- post_change_basses: Change basses level
- *Some get_s are possibly missing*
- *(Maybe I've forgotten something more)*

## ToDo

- Document missing features
- Complete "receivers answer" in the XML files if missing
- Think about the organisation of the code

## Contributing
If there are any missing GET/POST operations, feel free to add them. I did that by using MITMproxy on Linux, added the devices IP to the Android WIFI as a proxy and then looked into the traffic after tapping the buttons within the AV Controller app. You could also help by correcting mistakes or adding new devices to the supported devices list. Using my documentation for creating a mobile device "app" or a desktop program would be highly appreciated.
