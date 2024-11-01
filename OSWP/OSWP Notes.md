
## IEEE 802.11

The IEEE's 802 committee develops local area network (LAN) standards and Metropolitan Network standards. These include Ethernet, Token Ring, Wireless LAN, Bridging, and Virtual Bridged LANes. 

IEEE 802.11 is the standard for wireless LAN (WLAN). The specifications cover the physical layer and the Media Access Control (MAC) section of the data link layer in the OSI model. 

The 802.11 committee has released amendments to the standards as wireless technology as advanced. The relevant ones are listed below:


* 802.11 - The original WLAN standard
* 802.11a - Upto 54Mbit/s on 5GHz
* 802.11b - 5.5Mbits/s and 11Mbits/s on 2.4GHz
* 802.11g - Upto 54Mbit/s on 2.4GHz, backwards compatible with 802.11b
* 802.11h - Regulatory requirements to limit power and transmission in the 5GHz band
* 802.11i - Provides enhanced security
* 802.11n - Provides higher throughput with the Multiple Input/Multiple Output  aka Wi-Fi 4
* 802.11c - Very high throughput <6GHz band, known as WiGig
* 802.11ax - High effiency (HE) Wireless LAN, aka Wi-Fi 6

### IEEE 802.11
The original 802.11 standard defines the 1 and 2Mbps data rates over radio frequencies using Direct-Sequence Spread-Spectrum (DSSS) and Frequency Hopping Spread Spectrum (FHSS). 

DSSS in use with 802.11, channels will be 22MHz wide. FHSS, hops across its allocated bandwidth. Technologies like GPS and Zigbee make use of DSSS while bluetooth is known for using FHSS. 

Collision - Transmitting simultaneously presents a problem when traffic "steps on" other traffic. It is not possible to spot collision, they are indistinguishable from interference or noise. 

IEEE 802.11 uses Carrier Sense Multiple Access with Collision Avoidance (CSMA/CA) before transmitting. Before a system on CSMA/CA network transmits data, it will first listen for a predetermined amount of time to ensure no other system is transmitting. This is the Carrier Sense Multiple Access (CSMA) protocol. If the system hears traffic it will wait before restarting the process. This is the Collision Avoidance protocol. 

Hidden Node problem - Sometimes two or more nodes try to communicate with the same access point but are too far from each other that they cannot hear each other's traffic. Applying CSMA/CA, the channel may become free for both at the same time, and both will transmit . However, this will result in interference at the access point. 

Request to Send/Clear To Send (RST/CTS) - This mechanism improves the odds of avoiding a collision. Using RTS/CTS, the station sends an RTS, which is acknowledged by the access point. Once the station receives the CTS, the data is exchanged. In the hidden node problem scenario, both stations that are in range of the access point (but out of range of each other) receives the CTS but only the station mentioned in the CTS transmits. 


### 802.11b

The IEEE 802.11b amendment added Complementary Code Keying (CCK), providing 5.5 and 11 Mbit/s rates on the 2.4GHz band (operating from 2.4GHz to 2.485GHz) on 14 channels. 

Figure below shows a visual representation of the 802.11b channels across the 2.4GHz frequency range.


![[Pasted image 20241027102744.png]]

Each channel is 22 MHz wide, there is only enough spectrum for 3 non overlapping channels in the frequency range. 

Center frequency of each channel:

|Channel|Center Frequency|
|---|---|
|1|2.412 GHz|
|2|2.417 GHz|
|3|2.422 GHz|
|4|2.427 GHz|
|5|2.432 GHz|
|6|2.437 GHz|
|7|2.442 GHz|
|8|2.447 GHz|
|9|2.452 GHz|
|10|2.457 GHz|
|11|2.462 GHz|
|12|2.467 GHz|
|13|2.472 GHz|
|14|2.484 GHz|


### 802.11a
The IEEE 802.11a was released concurrently with 802.11b. It uses the 5GHz band, offering more channels which do not overlap compared to those defined in 802.11b. This was also a less crowded spectrum, unaffected by lower-cost consumer devices crowding into the 2.4GHz frequency range. 

IEEE 802.11a uses Orthogonal Frequency-Division Multiplexing (OFDM) modulation to provide transfer rates of up to 54Mbit/s, using 20MHz channels. 

Simply put, OFDM divides each channel into multiple "subchannels", and then encodes data across multiple carrier frequencies at once. We usually refer to these subchannels as subcarriers, but they're also called tones. All subcarriers are allocated when transmitting. 

There are 64 subcarriers in each channel: 48 of them carry data, 4 are pilots (syncronization tones) and 12 are null, meaning there is no transmission. Each subcarrier is 312.5KHz wide. 

### 802.11g

IEEE 802.11g uses the same signal modulation technique as 802.11a (OFDM), but on the 2.4GHz band. The signal range is slightly better than 802.11a, and it is backward compatible with IEEE 802.11b. 802.11g will fallback to lower rates (and modulation) when a 802.11b device connects. 

As shown below the channel numbers and center frequencies are same as 802.11b 

![[Pasted image 20241027105123.png]]


Note that channel 14 was only available in Japan for 802.11b. 802.11a/b/g sometimes uses multiple antennas but shouldn't be confused with Multiple-Input Multiple-Output (MIMO). 802.11a/b/g is Single-Input Single-Output (SISO) which is the opposite of MIMO. In the case of 802.11a/b/g, the use of Multiple antennas is called antenna diversity. 

### 802.11n

IEEE 802.11n was intended to improve transfer rates and provide more range on 2.4GHz and 5GHz networks. There were 2 releases, first allowing speeds upto 74 Mbit/s, and subsequently speeds up to 300 Mb/s. The first release was based on the draft while IEEE was still working on it. The speed increase in 802.11n is due in large parts its use of MIMO technology. 

MIMO uses multiple antennas each with its own transmitter and receiver. It improves signal reception by taking advantage of *multipath propagation* phenomenon. Normally, signals bounce off of objects such as doors, walls etc, degrading reception quality. In contrast, MIMO leverages this issue to enhance reception. 

802.11n allows for the use of up to spatial streams and the equivalent number of antennas to send and receive at a higher transfer rate. Commerically, up to three streams are available and the channel width can be 40 MHZ instead of 20 MHz, thus doubling the data rate. 


**Greenfield Mode:** Greenfield introduces a new preamble (a pause that comes before a wireless signal hits a networking device) for 802.11n only, whereby only devices operating in 802.11n will be allowed on the network. 

Finally, in 802.11n a 20 MHz channel is divided into subcarriers, similar to 802.11a/g. The 64 subcarriers are divided slightly different. Four of them are used for pilots like in 802.11/ag but 52 are used for data (instead of 48) and thus eight are used as null. 

**Antennas**
The number of streams, and therefore the rates that can be reached depend on the number of antennas on the transmitter and receiver. 

The notation format is *txr:s*

* *t* : Number of transmit (TX) chains
* *r*:  Number of receiving (RX) chains
* *s*: Maximum number of spatial streams the radio can use

For example configuration would be 2x2:2, where radio has 2 RX chains and 2 TX chains, and 2 Streams. This notation is not only used for 802.11n but also for any other amendment that use MIMO. 

Another slightly different notation format is tTrR. The configuration above would be 2T2R. The number of streams is not present in this format. Generally, we can assume that the number of streams is equal to the highest of the two numbers present. 

The number of antennas doesn't always equate to the number of streams/chains, but the number of antennas is always greater or equal to the number of streams. As such a device that with four antennas could very well have 3 streams or even two. 

For example, the Alfa AWUS1900 wireless adapter has four antennas (four transmit and receive chains) but is a three spatial stream device: 4x4:3.

*When analyzing networks, the number of streams will be crucial information, as we need a device with as many streams (or more) in comparison to what the client has. With too few streams, we won't be able to decode the communication.* 

**MCS Rate**

802.11n uses different modulations, coding rates, and streams to achieve speeds of up to 600 Mb/s (400 Mb/s commercially). A Modulation and Coding Scheme (MCS) rate is just a number that refers to a specific modulation and coding rate, and in the case of 802.11n, the number of spatial streams in use. The rate also depends on the bandwidth of the channel, and to a lesser extent the guard interval which is the interval between frames. 

The coding rate (in the fourth column of the chart below) of a forward error correction code is the non-redundant portion of useful data. It is usually expressed in k/n, where for k bits of information, there is a total of n bits. n-k bits are redundant for error correction.

![[Pasted image 20241027121622.png]]

**HT40+/HT40-**

20MHz channels in 802.11n are sometimes called HT20. The HT stands for High Throughputand the 20 represents the bandwidth of the channel in MHz. HT40 bonds two 20 MHz channels together for increased rates. There is primary 20MHz channel, and the secondary 20MHz channel is four channels away from the primary channel. 

The reason the primary and secondary channels are not sequential (for example channel 1 HT40+ does not bond channels 1 and 2), is because these two channels' frequency ranges overlap. A primary and secondary channel allows devices that don't support 40 MHz channels to connect.

Let's look at one example. In channel 1 HT40+, the primary channel is channel 1 and the secondary is "+" four channels, or channel 5. Channel 1 HT40- doesn't exist as the secondary channel would go below the allowed frequency range. Channel 5 HT40-, on the other hand, would have the primary channel as channel 5 and the secondary as channel 1.

HT40+ starts at 1 and the last HT40+ channel is 7 (9 for Europe) in 2.4GHz. Similar restrictions apply to 5GHz channels.


![[Pasted image 20241027123341.png]]

HT40- starts at channel 5 and the last HT40- is 11 (13 for Europe).


![[Pasted image 20241027123417.png]]

### IEEE 802.11ac

Due to the requirement of 80MHz channels, 802.11ac is 5GHz only. Optionally, 802.11ac can have up to eight spatial streams and do transmit *beamforming*. Beamforming combines elements in an antenna array to steer the RF transmission in the direction of a specific device or group of devices. 

802.11ac supports MCS 8 and 9 using 256-QAM but the receiver but the receiver must be in close physical proximity to the transmitter. Some devices are capable of 1024-QAM to increase the rates even more. In this case the transmitter has to be closer since the signal required to reach those rates needs to be very strong. 1024-QAM is not part of 802.11ac, and for that reason hardware support is limited to certain vendors. 

The Guard Interval (GI) is 800 ns by default. It can be shortened (400ns), which increases data rates slightly. 

802.11ac has been split into 2 waves, each of which brings different features. The first wave is based on a draft version of 802.11ac (2.0). The second is based on the final version. 

802.11ac is SU-MIMO (Single-User, MIMO) but wave 2 is Multiuser MIMO. SU-MIMO transmits to one device at a time. In an environment where the AP had three transmits streams and three devices using one stream each, AP could not combine transmission to all devices at the same time, but only single at a time. 

Wave 2 is slightly different. Using the example above, it could handle all three devices at the same time. There are other requirements such as location and compatibility with MU-MIMO. It is one-way, limited to the downlink, going toward the stations.

Wave 2 also brought 160 MHz channels or two non-contiguous 80 MHz channels. The two channels can be in separate parts of the 5GHz spectrum.

Finally, 802.11ac has the same setup for subcarriers as 802.11n: 52 are data, 4 are pilots, and the 8 are null.

**Rates**
802.11ac rates are simplified (unlike 802.11n, where the numbers kept increasing with the number of streams). All modulations are available with any number of streams and thus the MCS value goes between 0 and 9 (10 with some proprietary rates using 1024-QAM).

![[Pasted image 20241027131531.png]]

### IEEE 802.11ad

It is also called WiGig. 

It allows communication at high speed (multi-gigabit) of audio, video and data and delivers speeds between 385Mbps and 6.7Gbps using SQPSK, QPSK, BPSK, 16 and 64-QAM. 

802.11ad allows operations in the 60 GHz band with 2.16 GHz of bandwidth. Transmissions at this frequency are absorbed by atmospheric oxygen,[5](https://portal.offsec.com/courses/pen-210-9545/learning/ieee-80211-15801/80211-standards-and-amendments-15827/ieee-80211ac-15926#fn-local_id_309-5) which limits its range.


Each 802.11ad channel has a bandwidth of 2.16GHz.

| Channel | Center frequency |
| ------- | ---------------- |
| 1       | 58.32GHz         |
| 2       | 60.48GHz         |
| 3       | 62.64GHz         |
| 4       | 64.8GHz          |
| 5       | 66.96GHz         |
| 6       | 69.12GHz         |

#### Frequency Bands
The available frequencies for 802.11ad depend on the region, meaning that some channels may not be available everywhere:

- _USA_: 57.05 GHz - 71GHz
- _Canada_: 57.05 GHz - 64GHz
- _South Korea_: 57 - 64 GHz
- _Europe, Japan, and Australia_: 57 - 66 GHz
- _China_: 59 - 64 GHz and 45 - 50 GHz (latter is also known as China Milli-Meter Wave, CMMW)

### IEEE 802.11ax

Also known as High Efficiency (HE), 802.11ax builds on 802.11ac and also works on 2.4GHz. It aims to improve the station throughput in dense environments, such as venues with large number of devices with large number of devices, while still being compatible with 802.11 devices. 802.11ax introduces 1024-QAM and Orthogonal Frequency-Division Multiple Access (MU-OFDMA). 

While 1024QAM allows devices to reach higher rates ( up to 1.2 Gbps per stream), the signal quality must be high in order to achieve them. 

OFDMA is more efficient because it can allocate specific parts of a 20/40/80/160 MHz (or 80+80 MHz) channel to different users, thus allowing different users to transmit and receive at the same time without interference.

As mentioned earlier, OFDM can only transmit to one device at a time. OFDMA, on the other hand, can assign part of the subcarriers (and 4x smaller subcarriers, 78.125 kHz each), aka Resource Units (RU), to be more efficient and allow for other devices to transmit at the same time.

For a 20 MHz channel, there are now 256 subcarriers, or tones. Resource units allocated to different users can be as small as 26 tones (a), which make the smallest channel 2 MHz wide. Each of these resource units can have different rates, power levels, and thus bandwidth.

802.11ax has the same potential as 802.11ac in terms of spatial streams, 8x8:8. Unlike 802.11ac, this also applies to client devices, not only access points. Another difference is MU-MIMO on 802.11ac (or 802.11n) is downlink only, whereas in 802.11ax, it can be uplink as well if the client supports it.

### IEEE 802.11h
Part of the 5 GHz spectrum is also used by radars, unmanned aircraft systems, DoD communication, instrumentation used to track rockets, missiles, and control satelites etc. Anything else on that frequency must be careful not to interfere with it. 802.11h provides Dynamic Frequency Selection (DFS) and Transmit Power Control (TPC) that are mandatory in Europe in countries regulated by ETSI for frequencies between 5.250 to 5.725 GHz. 

As soon as radar is detected, DFS has to change the frequency for at least 30 minutes so it doesn't interfere with it. In the US, DFS is mandated for frequencies between 5.250 to 5.350 GHz and 5.470 to 5.725 GHz. Other countries may mandate other standards. 

![[Pasted image 20241027145903.png]]

### Antenna Diversity vs MIMO

Antenna diversity uses multiple antennas to improve the quality of a wireless link. While antenna diversity selects the best antenna to receive or transmit, MIMO splits the data into multiple streams and uses multiple antennas to send them. The receiver then combines the streams. 


## Wireless Networks

As a penetration tester we are most of the time operating under uncertainty. It is common for us to know little or nothing about the target network when we begin. In addition, there are many ways in which a wireless network might be designed. As our attack vectors, methods and even the tools we use are dictated by the target network configuration and the security protocols in use, 

### Infrastructure

A basic infrastructure consists of at least one Access Point (AP) and a station (STA), these two form a Basic Service Set (BSS). The AP is usually connected to a wired network, called the Distribution System (DS). 

To extend the reach of the wireless signal, it is common for an additional AP to be connected to the same Distribution System. When a set of two or more APs are connected to the same wired network, this is called an Extended Service Set (ESS). Each additional AP defines a single logical network segment. 

![[Pasted image 20241030050316.png]]

On Linux-type operating systems, acting as a station is usually called _Managed_ mode and acting as an AP is usually called _Master_ mode.

### Wireless Distribution Systems

A wireless distribution system makes use of the wireless network as distribution system. To extend the reach of the wireless signal, APs are connected to each through wireless signal. There are two connectivity modes:

* Wireless bridging - Only allows WDS APs to communicate with each other
* Wireless repeating - Allows both stations and APs to communicate with each other

![[Pasted image 20241030051205.png]]


A WDS typically uses the same channel as the existing access point for back-haul. This channel sharing has an impact on high-traffic networks as the available data rates can be cut in half. In low-traffic networks, this likely won't be an issue.


### Ad-Hoc Networks

An ad-hoc network also known as Independent Basic Service Set (IBSS), consists of at least two stations communicating without an AP. 

In an Ad-Hoc network, one of the participating stations takes on some of the responsibilities of an AP, such as beaconing and authentication of new clients joining the network. The station taking on the responsibilities of the AP does not relay packets to other nodes like an AP does.

![[Pasted image 20241030051719.png]]

Neither WDS nor Ad-Hoc (with a routing protocol) are ideal due to both the complexity of the setup and bugs in the implementations of the standard by the various vendors.

The more repeaters that are added, the greater the complexity in setting up, as well as in managing and routing packets efficiently. In Ad-Hoc, bugs lead to random disconnection of certain nodes on the network. WDS is often limited to WEP or unencrypted networks, and WPA is tricky to get working.


#### Ad-Hoc Demo

This is a deviation from a standard Ad-Hoc or IBSS mode. This mode is often call *Pseudo-IBSS* because it's a pre-standard, pre-IBSS mode with just data. 

There are no management frames whatsoever (no beaconing to advertise the network, no association), and the BSSID is all zeros.


There are a number of pros and cons to Ad-Hoc Demo mode. It could be seen as a raw or bare Ad-Hoc mode. As such, we have to set the rate manually on all the wireless cards. The lack of management frames and collision avoidance mechanisms allow for a slightly higher throughput, but it requires a clear channel or strong signal.


### Mesh Networks

Mesh networks solve a problem where we can't run cables from one AP to the next. They can be configured using existing equipment and technologies. Additional APs are added to the infrastructure to determine the best "signal path" for a station on the network. In this case, additional APs act as both a client and also as an AP to further repeat the signal. 802.11s is an amendment to 802.11 to standardize mesh networking. 

One could create a mesh using Ad-Hoc mode. In this case the setup is fairly complex and requires additional software to handle packet routing across nodes using protocols such as AODV, BATMAN, OSLR. On the other hand 802.11s was designed for networks of up to 32 nodes, with a default routing protocol Hybrid Wireless Mesh Protocol (HWMP). 

A variety of vendors provide mesh-type solutions, but because their protocols are proprietary, they are neither interoperable nor compatible with 802.11s.

802.11s adds the following device classess:

* Mesh Point (MP) - Devices that establish a link between mesh devices. These can be either Mesh Portals, Mesh APs or even other mesh points
* Mesh AP (MAP) - Devices that have a functionality of a Mesh Point and an Access Point
* Mesh Portal (MPP) - Devices that provide a link between the wired network and the wireless network. 

![[Pasted image 20241030053856.png]]



Since Mesh is Peer-to-Peer, mesh devices have to handle neighbor discovery, connecting to peers, and security between each other. The connection is maintained as long as the devices are in range and continue to respond to frames. 

There are two peering modes available:

- _Mesh Peering Management (MPM)_: Unsecure peering
- _Authenticated Mesh Peering Exchange (AMPE)_: Secure peering

MPM is unencrypted and rogue stations may hijack connections. 

AMPE, the encrypted protocol uses either Simultaneous Authentication of Equals (SAE) or 802.1X to exchange encryption keys. SAE is a password-based authentication mechanism whereas 802.1X uses an authentication server. 

Although 802.1X is stronger than SAE, it uses an authentication server and, depending on the status of the 802.1X network, there may not be a path to the authentication server, or the path may become broken.

### Wi-Fi Direct

Wi-Fi direct allows direct, single-hop communication between devices and is most commonly used for printing file sharing and displaying pictures or videos. The connection is usually one-to-one, but devices can also form groups.

Wi-Fi Direct is also called Wi-Fi P2P. It is not an 802.11 standard or an amendment, but a technical specification from the Wi-Fi alliance.

Devices offering a service act as a software access point with WPS-style connections using WPA2 encryption. It must also allow service discovery. The features supported by the software access point are more or less complex depending on the services offered and may replace Bluetooth in some situations.

Some Wi-Fi Direct application examples are:

- Photo printing kiosks
- Picture frames to display photo albums
- Remote displays such as Miracast
- File sharing between devices
- Playing games
- Internet sharing (tethering)


### Monitor Mode

Monitor mode is not a wireless mode or architecture scheme, but rather the state of a wireless device that allows it to monitor all Wi-Fi signals within its range.

Let’s imagine a scenario in which we are in a parking lot outside our penetration testing target. There are a handful of laptops connected to the target’s Wi-Fi network. If we put our Wi-Fi card in monitor mode, we’ll see much more than just ourselves, the AP, and all the other clients connected to the same AP. We will also see traffic from any other network within range, such as nearby businesses, residences, and mobile Wi-Fi hot spots.

Monitor mode is essential for wireless penetration testing as it enables the capture of raw 802.11 frames and allows packet injection. The majority of the tools used to test Wi-Fi networks require our wireless interface to be in monitor mode.

## Wi-Fi Encryption

Wi-Fi works over radio waves which means it is subject to eavesdropping and therefore encryption has to be used to protect the transmitted data. 

Wired Equivalent Privacy (WEP) was created when 802.11 standard was released in order to give privacy features similar to those found in wired networks. 

As soon as flaws were discovered in WEP, the IEEE created a new group called 802.11i aimed at improving Wi-Fi security. Wi-Fi Protected Access (WPA) superseded WEP in 2003, followed by WPA2 in 2004 (802.11i standard). 

Soon after, technologies from various vendors allowed users to securely share the passphrase on devices to be added to on the network without having to type it. WPS (Wi-Fi Protected Access) was released in 2008 to standardize it. 

WPA3 was first announced by the Wi-Fi Alliance in January 2018 and released in June the same year. It is not meant to replace any existing security solutions but aims to solve a few key problems with the following:

* Foward secrecy, using Dragonfly handshake with SAE (Simultaneous 
* Simplify process of configuring devices with no display (such as IoT)
* A new 192-bit mode for enterprise networks with strong cipher suites
* Mandatory use of Protected Management Frames (PMF) from 802.11w

Opportunistic Wireless Encryption (OWE), also known as "Enhanced Opened", adds encryption to public Wi-Fi networks. 



### Open Wireless Networks
Open networks do not involve any encryption as anyone running as sniffer can see the traffic "as is". Public hotspots and older mesh networks are good examples of open networks. The process of connecting to an open network is shown below. 

![[Pasted image 20241101132718.png]]


A step by step outline of the process:

1. The client sends an authentication request to the AP
2. The AP sends an authentication response of "successful"
3. The STA sends an association request to the access point
4. The AP sends an association response if the capability of the clients meets that of the AP.

### Wired Equivalent Privacy (WEP)

