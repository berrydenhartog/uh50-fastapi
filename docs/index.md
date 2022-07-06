# Welcome to Ultraheat 50 metrics

This application uses fastapi to server a uwsgi website. It reads imformation from a serial interface and converts the data to human readable output. It outputs the data in json so it can be exposed to serveral home automation platforms like HomeAssistant, Toon and homey.

## Hardware

Before you can use this application you will need a infrared reader with usb and connect it to the Ultraheat 50. THen you need a laptop, raspberry pi or a NUC to connect the infrared reader. The infrared reader i am using is the `hichi IR USB`.

## Other models

Other models may also work but you will need to change label searcher to the correct label

```python
   while "/LUGCUH50\r\n" not in ir_buffer:
```
