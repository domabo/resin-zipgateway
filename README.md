## Unofficial Z/IP Gateway container for resin.io

See [Z-WavePublic/libzwaveip](http://github.com/Z-WavePublic/libzwaveip) for further details

## Usage

1. Create a new application and device on resin.io

2. Use etcher to create a SD Card for your Raspberry Pi 3 + DigiKey or equivalent

3. Check that the device shows up in your resin dashboard

4. `git clone` this repository and `git remote add resin ` the resin id from your app dashboard

5. Feel free to edit the .cfg file with IP6 host names etc. and `git push resin +master`

6. Observe no docker compile errors and wait for the device to update and reboot (maybe 5-10 min)

7. Observe the gateway starts automatically from the resin.io device summary page

8. Use resin portal to create a terminal session

9. Test the reference client to the address found when doing an avahi mdns browse:

``` bash
avahi-browse _z-wave._udp -r
./reference_client -s fd00:a622:xxxx:xxxx::n
(ZIP) list
```

## License

The zipgateway executable is provided in public domain from the Raspberry Pi image at  [http://zwavepublic.com/downloads](http://zwavepublic.com/downloads), and also forked from public domain [matrix-io/zipgateway](https://github.com/matrix-io/zipgateway).  According to Sigma Designs: The Z/IP Gateway is an application that handles all communication between Z-Wave and Z/IP in a similar way that a home router handles the communication between the home PC and the Internet.

The resin scripts here are APACHE-2.