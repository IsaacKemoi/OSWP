
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

WEP aims to provide some degree of privacy to data exchanged on wireless networks. It is part of IEEE 802.11 standard and it is a scheme used to secure wireless network using Rivest Cipher 4 (RC4) to encrypt traffic and perform CRC32 checksum for message integrity. 

WEP encryption only uses a 24-bit initialization vector (IV) as when WEP standard was being drafted, the key size was limited due to US government export restrictions on cryptographic technologies. 

A 64-bit key was permitted, of which, 24 bits are used for the IVs, thus reducing the real key size to 40bits. Once the export restrictions were lifted, 128-bit WEP (using the same 24bit-IV) was implemented. 


#### RC4 Encryption

RC4 was designed by Ron Rivest from RSA security and was chosen for wireless encryption due to its simplicity and impressive speed. 

RC4 is a symmetric cipher, meaning that the same key is used to encrypt and decrypt data. It creates a stream of bits that are XOR'd with plain text to get the encrypted data. To decrypt it, we can simply XOR the encrypted text with the key stream in order to recover the plaintext. 

RC4 consists of two key elements:

* *Key Scheduling Algorithm* (KSA)  - Initializes the stable table with the IV and the WEP key
* *Pseudo-Random Generation Algorithm (PRGA)* - Creates the Key stresm


![[Pasted image 20241101153223.png]]

The figure below outlines the WEP encryption process:

![[Pasted image 20241101153243.png]]

An outline of the steps involved in WEP encryption is:

1. Concatenates the IV and the WEP key, then run KSA and PRGA to get the keystream
2. Create the integrity check value (ICV) of the message, then concatenate it to the message
3. XOR the plain text message plus the CRC32 and the keystream to obtain the encrypted text. 
4. The packet then contains the following elements :

* IV (used previously)
* Key ID
* Encrypted text
* ICV that is the CRC32 of the plain text

The WEP decryption process flows according to the diagram below:

![[Pasted image 20241101154116.png]]


The steps that take place during the decryption process are as follows:

1. Concatenates the IV and the key corresponding to the key ID, then runs the KSA and PRGA to obtain the keystream
2. XOR the encrypted message and the key stream, resulting in the message + ICV
3. Compared the decrypted ICV with the one received with the packet. If they are the same, the frame is intact and accepted, otherwise discard them as the packet is fake or corrupted. 

#### WEP Authentication

We can make use of two authentication systems. *Open* and *Shared* authentication. Open authentication is trivial and commonly used. Shared authentication, on the other hand is fairly uncommon and clients will often struggle trying open authentication before switching to shared authentication. 

**Open Authentication**
In open authentication, a client does not provide any credentials when authenticating to the Access Point. However, once associated, it must possess the correct key to encrypt and decrypt data frames.

**Shared Authentication**
During authentication, a challenge text is sent to the client. The challenge text must be encrypted with the WEP key by the client and sent back to the AP for verification, which allows the client to prove knowledge of the key. Once the encrypted challenge text is received, the AP attempts to decrypt it. If it is successful and matches the clear text version of the challenge text, the client is allowed to proceed to associate to the access point.


### Wi-Fi Protected Access

The IEEE 802.11i, aimed at improving wireless security, proceeded to develop two new link layer encryption protocols. Temporal Key Integrity Protocol (TKIP) and Counter Mode with CBC-MAC (CCMP). 

CCMP was designed from the ground up and took much time to complete in comparison to TKIP. TKIP ended up with the commercial name WPA1 and WPA2 was given to CCMP. 

WPA encryption comes in 2 flavours:

* **WPA Personal** - Makes use of pre-shared key authentication (WPA-PSK), a passphrase shared by all peers of the network. 
* **WPA Enterprise** - Uses 802.1X and a RADIUS server for Authentication , Authorization and Accounting. 

The below image illustrates the setup to create WPA secure communication channel;

![[Pasted image 20241101160910.png]]


### WPA Ciphers

TKIP support legacy hardware that could only handle WEP, and CCMP is based on Advanced Encryption System (AES). 

**TKIP**
TKIP is based on the 3rd draft of 802.11i committee. It was designed to be compatible with legacy hardware and  still use WEP as the encryption algorithm although it addresses the flaws found in WEP with the following elements. 

* Per packet key mixing
* IV sequencing to avoid replay attacks
* New Message Integrity Check (MIC), using the Michael algorithm and countermeasures such as MIC failures
* Key distribution and rekeying mechanism

**CCMP**
CCMP is the implementation of the final version of 802.11i and is also called Robust Security Network (RSN). It makes use of a new AES-based algorithm. It was designed from the ground up and is not compatible with older hardware. 


### WPA Network Connection

The secure communication channel is setup in four steps:

1. Agreement on security protocols
2. Authentication
3. Key distribution and verification
4. Data encryption and integrity

The below figure to create WPA Enterprise secure communication channel:

![[Pasted image 20241101171218.png]]

In WPA-PSK systems, the process is slightly simplified as only 3 steps are required. The authentication step is removed as illustrated below:


![[Pasted image 20241101171530.png]]

**Agreement on Security Protocols**
The different security protocols allowed by the AP are provided in its beacons:

* Authentication means, either PSK or 802.1X using an AAA server
* Unicast and multicast/broadcast traffic encryption suite: TKIP, CCMP

The STA first sends a probe request in order to receive network information (i.e. rates, encryption, channel, etc.) and will join the network by using open authentication followed by association where it indicates which ciphers will be used.

### WPA Authentication

The authentication step is only done in enterprise configuration. It is based on the Extensible Authentication Protocol (EAP) and can be done with the following:

* EAP-TLS with client and server certificates
* EAP-TTLS
* PEAP for hybrid authentication where only the server certificate is required

The authentication is started when the client selects the authentication mode to use. Several EAP messages, depending on the authentication method will be exchanged between the authenticator and the supplicant in order to generate a Master Key (MK). 

At the end of the procedure, if successful, a "Radius Accept" message is sent to the AP containing the MK and another message, an EAP message send to the client to indicate success. 

**Key Distribution and Verification**

The third phase focuses on the exchange of the different keys used for authentication message integrity, and message encryption. This is done in the 4-way handshake to exchange the Pairwise Transient Key (PTK) and the Group Temporal Key (GTK), respectively the keys use for unicast and multicast/broadcast, and then the Group Key handshake to renew the GTK. 

This part allows:

* Confirmation of the cipher suite used
* Confirmation of the PMK knowledge of the client
* Installation of the integrity and encryption keys
* Send GTK securely


An illustration of the key distribution and verification phase:

![[Pasted image 20241101181525.png]]


Note: The authenticator is the AP and the supplicant is the STA. 

1. The authenticator sends a nonce to the supplicant called *ANONCE*
2. The supplicant creates the PTK and sends its nonce, *SNONCE* with the MIC. After the construction of the PTK, it will check if the supplicant has the right PMK. If the MIC check fails, the supplicant has the wrong PMK. 
3. The message from the authenticator to the supplicant will contain, when WPA2/3 is used, the current GTK. This key is used to decrypt multicast/broadcast traffic. If that message fails to be received, it is re-sent. If 802.11w is negotiated, IGTK is included. With WPA1, GTK will be sent in a later exchange. 
4. Finally, the supplicant sends an acknowledgement to the authenticator. The supplicant installs the keys and starts encryption.

The group key handshake is much simpler than pairwise keys because it is done after the 4-way handshake (after installing keys) and thus we now have a secure link. It is also done via Extensible Authentication Protocol over LAN (EAPoL) messages but this time, the messages are encrypted. The diagram below illustrates this process.


![[Pasted image 20241101184130.png]]


This update happens for the following reasons:

* WPA1, after the 4-way handshake
* A station joins the network
* A station leaves the network
* When a timer expires (controlled by the authenticator,  AP)
* A station can request it by sending an unsolicited confirmation message
* A station can request by sending an EAPOL-key frame with both Request and Group Key bits set. 
**Pairwise Transient Key**

The process to generate PTK from the Pairwise Master Key (PMK) is shown below:

![[Pasted image 20241105214754.png]]

**Input**
It takes both Nonce values, both MAC addresses (supplicant and authenticator), and the PMK. The PMK calculation works as follows:

If the system is WPA personal, it uses the PBKDF2 function with the following values to generate the PSK (the PSK is then used as the PMK). 

* Password, the passphrase
* SSID (and its length)
* The number of iteration, 4096
* The length of the result key, 256 bits

For WPA Enterprise using a RADIUS server, the PMK is generated from the Master Key (obtained during the exchange with the server) via the TLS-PRF function.

**Hash Algorithm**
PRF-X using HMAC-SHA1, X being 128, 192,256,384,512, or 704 which indicates the size of output in bits.

**Output**

The PTK is then dvided in different keys. Below are the common parts from TKIP and CCMP:
1. Key Encryption Key (KEK) (128 bits; bits 0-127); used by the AP to encrypt additional data sent to the STA, for example RSN IE or the GTK.
2. Key Confirmation Key (KCK) (128-bit; bits 128-255): Used to compute the MIC on WPA EAPOL Key Messages
3. Temporal Key (TK) (128-bits; bits 256-383 or 256-511): Used to encrypt/decrypt unicast data packets

The CCMP PTK size is 384 bits, comprised of the three keys shown above. TKIP requires two more keys for message integrity, thus increasing the PTK size to 512 bits:

* MIC TX Key (64 bit; bits 384-447): Used to compute MIC on unicast data packets sent by the AP
* MIC RX Key ( 64 bit; bits 448 - 511): Used to compute MIC on unicast data packets sent by the STA

TK is 128-bit unless the following cipher suites are used:

* WEP-40 (40 bits)
* WEP-104 (104 bits)
* GCMP -256 (256 bits)
* CCMP-256 (256 bits)
* BIP-GMAC-256 (256 bits)
* BIP-CMAC-256 (256-bits)

**Group Temporal Key**

The GTK is used to encrypt and decrypt multicast/broadcast traffic. Its construction takes place according to the following illustration. Note that the GTK is just a random number, which means any pseudorandom function can be used to generate it. 

![[Pasted image 20241105230500.png]]


***Data Encryption and Integrity***


There are three different algorithms that can be used for data encryption and integrity:

* Temporal Key Integrity Protocol
* Counter Mode with CBC-MAC Protocol (CCMP)
* Wireless Robust authenticated Protocol (WRAP)

**Temporal Key Integrity Protocol**

![[Pasted image 20241105231447.png]]


**Counter Mode with CBC-MAC**
![[Pasted image 20241105231522.png]]

#### Wireless Robust Authenticated Protocol

WRAP is based on AES but uses the Offset Codebook Mode (OCB) cipher and authentication scheme. It was the first to be selected by the 802.11i working group but was abandoned due to intellectual property reasons.


## Wi-FI Protected Access 3

Simultaneous Authentication of Equals (SAE) replaces PSK in WPA personal, which is the same encryption method used in mesh networks (802.11s). It is a variant of Dragonfly. In WPA3-only mode, PMF is mandatory. In transition mode, mixed WPA2 and WPA3, PMF is optional in WPA2 and mandatory when establishing a connection in WPA3.

WPA Enterprise gets a 192-bit mode with stronger security protocols. Authentication and encryption will use GCMP-256. Key derivation and confirmation use HMAC -SHA384. Key establishment and authentication use ECDHE and ECDSA using a 384-bit elliptic curve. 

WPA3 doesn't use any new encryption algorithm, but now AES is the only cipher allowed. 

Where WPA/WPA2 (as well as Open networks and WEP) has a simple authentication and association phase, before the 4-way handshake, the authentication phase is reworked and this is where the dragonfly handshake happens. 

There are two phases, or exchanges in the authentication phase. First, a commit exchange followed by a confirm exchange.

There are two phases, or exchanges in the authentication phase. First, a commit exchange followed by a confirm exchange. In the commit exchange, both sides commit to a shared secret. In the confirm exchange, they confirm they both share the same password and then derive a PMK that will be then used in the 4-way exchange.

SAE offers a better way to establish a secure connection by using a Diffie-Hellman (DH) key exchange with an Elliptic Curve or a Prime Modulus.

The following is the list of the different groups for the Diffie-Hellman Exchange:

| Number     | Name                                                  |
| ---------- | ----------------------------------------------------- |
| 0          | NONE                                                  |
| 1          | 768-bit MODP Group                                    |
| 2          | 1024-bit MODP Group                                   |
| 3-4        | Reserved                                              |
| 5          | 1536-bit MODP Group                                   |
| 6-13       | Unassigned                                            |
| 14         | 2048-bit MODP Group                                   |
| 15         | 3072-bit MODP Group                                   |
| 16         | 4096-bit MODP Group                                   |
| 17         | 6144-bit MODP Group                                   |
| 18         | 8192-bit MODP Group                                   |
| 19         | 256-bit random ECP group                              |
| 20         | 384-bit random ECP group                              |
| 21         | 521-bit random ECP group                              |
| 22         | 1024-bit MODP Group with 160-bit Prime Order Subgroup |
| 23         | 2048-bit MODP Group with 224-bit Prime Order Subgroup |
| 24         | 2048-bit MODP Group with 256-bit Prime Order Subgroup |
| 25         | 192-bit Random ECP Group                              |
| 26         | 224-bit Random ECP Group                              |
| 27         | brainpoolP224r1                                       |
| 28         | brainpoolP256r1                                       |
| 29         | brainpoolP384r1                                       |
| 30         | brainpoolP512r1                                       |
| 31         | Curve25519                                            |
| 32         | Curve448                                              |
| 33-1023    | Unassigned                                            |
| 1024-65535 | Reserved for Private Use                              |
|            |                                                       |

The bare minimum requires all implementations to support group 19.


While all of them could be used, only the groups 15 to 21 are suitable for production due to security reasons. These groups have a prime with 3072 bits and above for FFC and a 256 bits prime and above when it is ECC.

![[Pasted image 20241105232942.png]]


## Opportunistic Wireless Encryption

Marketed as Enhanced Open by the Wi-Fi Alliance, OWE allows for the mitigation of attacks and eavesdropping on open networks by encrypting the connections. In an Open network situation, the authentication and association is a straightforward process, which leads to network access immediately. There is no authentication or encryption. 

With OWE, Diffie-Hellman exchange is done during the association phase and the result is then used as the secret to do a 4-way handshake. The client upon noticing the access point supports OWE, will had his public key to the Association Request which will be followed by the access point's public key in the Association Process. 

![[Pasted image 20241107212748.png]]

Diffie-Hellman may sound similar to a public key encryption (such as RSA). It is assymetric/public key technology but differs in the fact that it is not an encryption algorithm, it is aimed to generate and exchange a key which is then used for asymmetric encryption. In this case, for the 4-way handshake. 

Like WPA3, it also depends upon PMF and it must set as 'required' on the AP in order for OWE to be available (as opposed to 'optional'). When available, it will be indicated in the Beacon and Probe responses. Specifically, in the Authentication and Key Management (AKM) suite list in the RSN IE.

APs will likely support Transition mode, which allows Open networks and OWE at the same time, so legacy devices can still connect. Transition mode APs may have a separate BSSID/ESSID to handle both types of clients.

The hash algorithm will depend on the size of the key, which is linked to the DH group used. For Elliptic Curve Cryptography (ECC), with keys up to 256bits, SHA-256 is used. Until 384 bits, SHA-384 and for anything above, SHA-512. Using Finite Field Cryptography (FFC), up to 2048bits, SHA-256 will be used. Until 3072 bits, SHA-384 and for anything above, SHA-512.


While the Diffie-Hellman groups referenced are the sames as in WPA3, it is believed that only group 19, 20 and 21, which are ECC, will be used in OWE.

When connecting to the Access Point, two specific Information Elements (IE) must present in the association request sent by the client:

1. The RSN IE must indicate OWE AKM
2. An IE (ID 255) containing the public key and the group. Its content will be as follows:
- Element ID extension, which is a one octet and has the value of 32
- Element-specific data, subdivided in two parts, a two-octet field (in little endian), indicating the group used, followed by the public key

The public key encoding depends on its type. If it is FFC, then it must be encoded based on the integer-to-octet-string conversion of RFC6090. ECC is a bit more complex, as it depends on the curve used, which is defined in RFC6090 or RFC7748. On top of it, compact representation must be used if the curve is from RFC6090.

Additional checks must be performed by the receiver of the frames to ensure the validity of the public key and the group before generating the PMK.

Each party needs to perform the following:

1. Diffie-Hellman on one's private key and the other peer's public key
2. Feed the result to a element-to-scalar mapping function. We'll call the result z
3. Concatenate one's public key, the other party's public key, the Diffie-Hellman group as octets. This will be used as the salt in HKDF-extract[5](https://portal.offsec.com/courses/pen-210-9545/learning/wi-fi-encryption-15794/opportunistic-wireless-encryption-15854/opportunistic-wireless-encryption-16050#fn-local_id_45-5) along with the key, 'z'. It will generate a pseudo-random key called 'prk'. As mentioned above, the HMAC function used will depend on the key size (HMAC-SHA256, HMAC-SHA384 or HMAC-SHA512)
4. Generate the PMK to be used in the 4-way handshake with HKDF-expand.[5:1](https://portal.offsec.com/courses/pen-210-9545/learning/wi-fi-encryption-15794/opportunistic-wireless-encryption-15854/opportunistic-wireless-encryption-16050#fn-local_id_45-5) The parameters will be the pseudorandom key, the string "OWE Key Generation" as the context and the length in bits of the hashing algorithm used (256, 384 or 512)

A PMKID will be generated as well, by hashing the concatenation of both party's public keys using SHA256/384 or 512 (depending on the Diffie-Hellman used) and keeping the leftmost 128 bits. The client may choose to do PMK caching to avoid redoing the expensive authentication and indicate the PMKID in its association request. Both client and AP can cache the keys for a certain amount of time. If the access points accepts the PMKID, it will indicate it in the association response. Otherwise, the normal OWE association process will start.

### Wireless Protected Setup (WPS)

Also known as Wi-Fi simple configuration, this protocol allows users to pair devices to a network without having to enter the ESSID and/or its (sometimes complex) passphrase.

In the past, different vendors provided various solutions to this problem but they were incompatible between each other. The Wi-Fi alliance launched WPS in 2006 with the aim of standardizing the solutions.

WPS currently supports Open or WPA2 networks (with CCMP or GCMP) as well as WPA2 Enterprise networks. WPA (TKIP) has been deprecated in the current version of the specification.

Enrollment can be done in various ways such as using a push button on the access point, entering a PIN from a label, via a display on the Access Point, from its web interface (static or dynamic PIN), or using Near Field Communications (NFC) with tap to connect.

#### WPS Architecture

We define three components:

* Enrolee: a device seeking to join a WLAN
* Access point
* Registrar: an entity with the authority to issue or revoke credentials for a WLAN

There are 3 interfaces:

* E: Logically located between the Enrolee and the Registrar. The purpose is for the registrar to issue credentials to en Enrolee.
* M: The interface between the Registrar and the Access Point. It manages and configures the access point.
* A: enables the discovery of WPS access points (via the IE beacons) and for external registrars, enables communication between the enrolees and the registrars. 


![[Pasted image 20241107214759.png]]


Although the Registrar often runs on the access point (known as "standalone AP" or "internal registrar"), the Registrar and AP can be distinct systems, such as a mobile device used to configure the Enrollee. The Registrar can also be located on a centralized management interface.

Even though WPS is thought to be WPA-PSK only, it can technically also be used in some cases for WPA Enterprise. In the case of a WPA-PSK network, it is possible to have one client become a registrar and configure new clients.

#### WPS Configuration Method

A device supporting Wi-Fi Simple Configuration should always have a default PIN available (aka device password), printed on the AP or on a label affixed to it. However, it is recommended that the PIN be changeable by the end-user.

Two modes of operations are available: in-band configuration and out-of-band configuration. In-band is done via WLAN communication and out-of-band is done using any other communication channel or method, such as by using a NFC tag or USB thumbdrive.

Out-of band can be unencrypted and has the advantage that it can be reused with multiple enrolees but if an attacker gets their hands on the media, they have the WLAN credentials. Out-of-band methods can also hold encrypted WLAN credentials. It uses the enrollee public key obtained over the WLAN channel. One last possibility is to do a Diffie-Hellman key exchange over NFC, then encrypt the credentials delivered to the NFC interface using AES.

#### WPS Protocol

WPS protocol varies based on on the different possible scenarios. We will only address the most common scenario where the enrollee uses WPS PIN on a standalone AP. Detail protocols of other possible scenarios can be found in the Wi-Fi Simple Configuration technical specification. 

The below diagram shows setup using a standalone AP/Registrar

![[Pasted image 20241109120359.png]]

The first step is discovery, where the device queries the AP with a Wi-Fi Simple Configuration Information Element (IE) in the request. If it responds positively, the device will do the usual authentication and association process then proceeds to initiate the 802.1X process and respond with **WFA-SimpleConfig-Enrollee-1-0** identity. The enrollee gets provisioned after the exchange of messages M1 to M8. Finally, the device gets disconnected from the AP and reconnects with the credentials received earlier. 


The M1 and M2 messages may be exchanged while waiting for the user to input the enrollee device password from the device in the AP interface. 

When using an internal registrar and/or push button, the communication between the enrollee and the AP is essentially the same as what described above. Communication between the AP and the registrar is what differs. 


Once we reach M5, we know the first half of the PIN. If we receive a NACK after M6, the second half is incorrect.

#### WPS Registration Protocol Messages

The M1 to M8 EAP messages are specific to the WPS registration protocol and are created as follows:

1. M1 = Version || N1 || Description || PKE
2. M2 = Version || N1 || N2 || Description || PKR [ || ConfigData ] || HMACAuthKey( M1 || M2* )
3. M3 = Version || N2 || E-Hash1 || E-Hash2 || HMACAuthKey( M2 || M3* )
4. M4 = Version || N1 || R-Hash1 || R-Hash2 || ENCKeyWrapKey(R-S1) || HMACAuthKey( M3 || M4* )
5. M5 = Version || N2 || ENCKeyWrapKey(E-S1) || HMACAuthKey( M4 || M5* )
6. M6 = Version || N1 || ENCKeyWrapKey(R-S2) || HMACAuthKey( M5 || M6* )
7. M7 = Version || N2|| ENCKeyWrapKey(E-S2 [||ConfigData]) || HMACAuthKey( M6 || M7* )
8. M8 = Version || N1 || [ ENCKeyWrapKey(ConfigData) ] || HMACAuthKey( M7 || M8* )


The following explains the meaning of the different symbols and items used above:

- **||**: concatenation of parameters to form a message
- Subscripts are used in the context of a cryptographic function such as HMACKey. In this case, it refers to the **key** used by that function (**HMAC**)
- When a message is followed by *****, it is referring to the message minus its HMAC-SHA-256 value
- **Version**: identifies the type of _Registration Protocol_ message
- **N1** and **N2**: 128-bit nonces (random number generated once) generated by the Enrollee and the Registrar respectively
- **Description**: human-readable description of the sending device (UUID, manufacturer, model number, MAC address, etc.) and device capabilities such as supported algorithms, I/O channels, Registration Protocol role, etc. Description data is also included in 802.11 probe request and probe response messages
- **PKE** and **PKR**: Diffie-Hellman public keys of the Enrollee and Registrar, respectively. If support for other cipher suites (such as elliptic curve) is added in the future, a different protocol Version number will be used
- **AuthKey**: authentication key derived from the Diffie-Hellman secret gAB mod p, the nonces _N1_ and _N2_, and the Enrollee’s MAC address. If M1 and M2 are both transported over a channel that is not susceptible to man-in-the-middle attacks, the Enrollee’s device password may be omitted from the key derivation
- **E-Hash1** and **E-Hash2**: pre-commitments made by the Enrollee to prove knowledge of the two halves of its own device password
- **R-Hash1** and **R-Hash2**: pre-commitments made by the Registrar to prove knowledge of the two halves of the Enrollee’s device password
- **ENCKeyWrapKey(...)**: indicates symmetric encryption of the values in parentheses using the key _KeyWrapKey_ with the AES-CBC encryption algorithm per FIPS 197, with PKCS#5 v2.0 padding
- **R-S1** and **R-S2**: secret 128-bit nonces that, together with _R-Hash1_ and _R-Hash2_, can be used by the Enrollee to confirm the Registrar’s knowledge of the first and second half of the Enrollee’s device password, respectively
- **E-S1** and **E-S2**: secret 128-bit nonces that, together with _E-Hash1_ and _E-Hash2_, can be used by the Registrar to confirm the Enrollee’s knowledge of the first and second half of the Enrollee’s device password, respectively
- **HMACAuthKey(...)**: indicates an Authenticator attribute that contains a HMAC keyed hash over the values in parentheses and using the key _AuthKey_. The keyed hash function is HMAC-SHA-256 per FIPS 180-2 and RFC-2104. To reduce message sizes, only 64 bits of the 256-bit HMAC output are included in the Authenticator attribute
- **ConfigData**: WLAN settings and credentials for the Enrollee. Additional settings for other networks and applications may also be included in _ConfigData_. Although it is shown here as always being encrypted, encryption is only mandatory for keys and key bindings and is optional for other configuration data. It is the sender’s decision whether or not to encrypt a given part of the _ConfigData_

### 802.11w

While encryption protects data transmitted on the network, it still vulnerable to Denial of Service through common attacks using frames such as deauthentication or disassociation. 

Also known as Protected Management Frames, 802.11w was released in July 2009. It aims to improve the Medium Access Control layer by adding integrity to some critical management frames on WPA (TKIP or CCMP) networks to prevent replay protection. It is a mandatory requirement for 802.11ac or Passpoint certification. It became part of the 802.11 standard in March 2012.

The following frames are protected:

- Disassociation
- Deauthentication
- Action frames: Block ACK (request and response), QoS Admission Control, Radio Measurement, Spectrum Management and Fast BSS Transition
- Channel switch announcement (when directed to a client)
- Security Association Query
- Protected Dual of Public Action frame
- Vendor-specific Protected

Some of the frames mentioned above are unicast, while others are multicast/broadcast. The encryption used for the unicast is the same PTK used for unicast data frames. For the multicast ones, a new Integrity Group Temporal Key (IGTK) is received during the 4-way handshake, at the same time as the GTK.

Without 802.11w, when sending a deauth, the AP or one or all clients blindly accepts it and disconnects. In most cases, the client will reconnect automatically without the user knowing, and doing a 4-way handshake. Access points do send deauthentication and disassociation from time to time as part of normal operations but these frames can also be used to attack clients.

The first scenario, it will force the client (or all clients) to disconnect and reconnect. A 4-way handshake will happen, which can later be cracked offline. It is also useful for attacks against WEP.

The second scenario is a denial of service, when the deauthentication is sustained, as it will prevent one or more clients to connect.

While most of the time, denial of service is manually done, Wireless Intrusion Prevention System sometimes have an option to "contain" an AP, for example, when the administrator has identified it as a rogue. It will automatically and immediately disconnect clients attempting to connect to the rogue. In some cases, this option can be misused.

#### Connecti

PMF status is indicated in the beacon, in the RSN IE, and two bits show the settings, in the RSN capabilities.

First one, bit 6, is about PMF requirement. If set, if the client doesn't support PMF (either capable or required), it won't be able to connect.

Bit 7 indicates if the AP is PMF capable. It is automatically set when bit 6 is set. In this case, an AP will accept clients with and without PMF. Those with (capable or required), will benefit from the added protection while still allowing clients that cannot handle it as well.

When connecting, the client will have a RSN IE in its association request with its own settings for PMF.

The following table details the outcome of connection depending on the client and AP settings' for PMF:

|AP|Client|Connection|PMF|
|---|---|---|---|
|No|No|Yes|No|
|No|Capable|Yes|No|
|No|Required|No||
|Capable|No|Yes|No|
|Capable|Capable|Yes|Yes|
|Capable|Required|Yes|Yes|
|Required|No|No||
|Required|Capable|Yes|Yes|
|Required|Required|Yes|Yes|

In case a client or AP has invalid settings, no connection should occur. When a station does and tries to associate to an AP, association will be rejected.

#### Security Association Teardown Protection

This mechanism prevents attacks using unprotected association, disassociation or deauthentication frames from tearing down a connection.

A client who's lost the key will try to associate again, using an unprotected association frame. The AP seeing that, will decline the authentication asking the client to try again later, usually 10-20 seconds later. In the meantime, the AP will send a SA Query frame. Since the client doesn't have the key anymore, it isn't able to respond, and thus the AP will send a protected disassociation/deauthentication and clear the encryption keys. When it is time to associate again, it will work.

In the event an attacker tries to associate, while the real client is still there, it will get that same "come back in XXX" association response. The real client, still having the encryption keys, is able to respond to the SA Query and thus nothing happens, it doesn't get disconnected.


On the other side, when the AP loses the keys, at some point, the associated client will send a encrypted data frame to the AP, since it has the encryption keys. The AP, not having the client in its list anymore (or just not the keys anymore), will send a deauthentication/disassociation frame to the client (most likely a frame with reason code 6 or 7: class 2 frame received from nonauthenticated STA or class 3 frame received from nonassociated STA). The client will then send a protected SA Query to the AP, to make sure it is the legitimate access point. Since the AP doesn't have the keys, it isn't able to answer within the alloted time. The connection will be torn down and it will have to reconnect. In the event it is a fake or rogue AP, since both have the keys, the real AP will answer the SA Query and the connection will remain.

There are a few scenarios where a client or an AP can lose the keys and they are handled with this mechanism. It can happen in the event of a hardware or software issue and the device/connection is reset. Such as a firmware issue where the device crashes and is reset, or power went down for a second, thus resetting the device.

**Note**: A device only transmits when it needs to, and there may be periods of time when there is no traffic whatsoever between the AP and a specific client.

## Linux Wireless Tools, Drivers, and Stacks

It is very important as a penetration tester to understand the Linux Wireless subsystem and to be able to interact with the wireless system on the command line. We must be able to handle instances where drivers misbehaves using the tools described in this section. We'll also learn about Linux drivers and wireless stacks. Much of the information in this portion of the module will be useful when using unfamiliar or uncooperative wireless cards, when troubleshooting, and for future reference.

### Loading and Unloading Wireless Drivers

We start by configuring our wireless device with command line tools. When a device is plugged in or powered on, Linux should automatically load its drivers. We can use airmon-ng command to determine our device's driver. Airmon-ng is a utility from the aircrack-ng suite of tools for auditing Wi-Fi networks. 

```
sudo airmon-ng
```

Another useful command that we can use is *lsusb*. This command lists a system's USB devices and shows detailed information for each device.

```
sudo lsusb -vv
```

An important piece of information from the above command is the vendor ID, product ID and the chipset. 

![[Pasted image 20241109135350.png]]

In Windows, each and every piece of hardware needs to have its own drivers installed. Some devices are similar. They may have identical chips or different chips that behave similarly. It may even be the case that the two devices look alike will advertise different product IDs. 

On Linux, one driver can cover multiple devices, and sometimes multiple similar chipsets. For example, the Alfa AWUS036NHA has the same chipset as the TP-Link WN722N v1 as well as at least 50 other devices, which means a single driver handles them all. Because that specific driver is provided by the kernel, nothing needs to be installed. 

While it is possible to build drivers in the kernel itself in Linux, most drivers are usually Loadable kernel modules (LKM), which are loaded only when necessary to avoid wasting memory. Other operating system use loadable kernel modules as well, but name of the feature differ. 

While it is rarely necessary to change them, kernel modules have parameters to adjust settings of the hardware. These settings can be displayed using *modinfo* command and the name of the driver. We can use grep to filter important information. 

```
izack@kali:~$ sudo modinfo 88XXau | grep -E 'name|depends|filename|version|description|vermagic'
```

![[Pasted image 20241109141240.png]]


This information is important for determining dependencies, compatibility, and firmware requirements. The full path of the driver file is displayed in the *filename* field. Drivers are located in sub-directories of /lib/modules/\<kernel version>. This is consistent with *vermagic* field indicating the driver was compiled for 6.11.2-amd64. 

Our example didn't have the firmware field, it is also an important field. The two _firmware_ fields indicate both ath9k_htc/htc_9271-1.4.0.fw and ath9k_htc/htc_7010-1.4.0.fw firmwares can be loaded by this driver.

```
firmware:       ath9k_htc/htc_9271-1.4.0.fw
firmware:       ath9k_htc/htc_7010-1.4.0.fw
```

The driver lists all the device aliases it supports in the _alias_ fields. For instance, usb:v0CF3p9271 indicates a USB device, manufactured by vendor ID 0CF3 (Qualcomm Atheros Communications), with device ID 9271 (AR9271 802.11n). So when the device is installed, it identifies itself as usb:v0CF3p9271 and when the system determines the ath9k_htc driver supports that alias, it gets loaded in memory.

When the driver is loaded in memory, the system also loads the dependent modules listed in the _depends_ field. If the listed modules also have dependencies, those modules are loaded as well.

The items in the _params_ field are options for the device. Typically, we don't need to change the default parameters. Linux distributions may do so if they see fit.

In the following example, we will disable blinking on network activity on the ath9k_htc driver, by resetting the _blink_ parameter when loading the driver:

```
kali@kali:~$ sudo modprobe ath9k_htc blink=0
```

If an error occurs, it will be displayed in the console. If there is no error, there will be no output.

Linux distributions allow users to set and change parameters for modules using /etc/modprobe.d. This directory can also be used to blacklist modules.A good example of when to use blacklisting would be the case where an open source Broadcom driver and the closed source vendor drivers are both present on the system. If we run modinfo on both of them, we will see they share similar IDs. There should only be one driver claiming a device at a time, so we have to blacklist one of them. If we don't, the two drivers will fight for the same resource, causing unexpected results.

lsmod lists all the loaded modules as well as the dependencies of each module. Running the command with the ath9k_htc driver loaded outputs the following:

```
kali@kali:~$ lsmod
Module                  Size  Used by
ath9k_htc              81920  0
ath9k_common           20480  1 ath9k_htc
ath9k_hw              487424  2 ath9k_htc,ath9k_common
ath                    32768  3 ath9k_htc,ath9k_hw,ath9k_common
mac80211              802816  1 ath9k_htc
cfg80211              737280  4 ath9k_htc,mac80211,ath,ath9k_common
rfkill                 28672  3 cfg80211
uhci_hcd               49152  0
ehci_pci               16384  0
ehci_hcd               94208  1 ehci_pci
ata_piix               36864  0
mptscsih               36864  1 mptspi
usbcore               290816  5 ath9k_htc,usbhid,ehci_hcd,uhci_hcd,ehci_pci
usb_common             16384  1 usbcore
...
```



Notice that the output relevant to our wireless driver corresponds with our modinfo dependencies. The first column shows the loaded modules and the third column shows the number of, and names of the modules using it. 

Sometimes it is necessary to unload a driver. At times, we need to reload it (With or without different parameters) or we may want to use a different driver since only one driver can claim a device at time. 

Before unloading a driver, we need to remove the modules the device is dependent on with the *rmmod* command. Modules dependent on the main modules must be unloaded first. 

Let's examine what happens if we try to remove a module for our ath9k_htc driver that has remaining dependencies:

```
kali@kali:~$ sudo rmmod ath
rmmod: ERROR: Module ath is in use by:  ath9k_htc ath9k_hw ath9k_common
```


With our lsmod output as a guide, we can start removing modules that are not needed by other drivers. If we are unsure which module to remove next, we can run lsmod again and find one that isn't used by any other.

```
kali@kali:~$ sudo rmmod ath9k_htc ath9k_common ath9k_hw ath
```



### Wireless Tools

There are two sets of tools to set, show, or change wireless card parameters. *iw*, the modern set of tools, are made for the newer mac80211 framework. On the other side, *iwconfig* (and others such as *iwpriv*), dating back from 2000's were made for the IEEE80211 framework. While iwconfig can still be used for some of the mac8011 features, they are deprecated and limited compared to the capabilities of iw.

#### iwconfig and Other Utilities

* *iwconfig* - Manipulates the basic wireless parameters: change modes, set channels, and keys.
* *iwlist* - Allows for the initiation of scanning, listing frequencies, bit rates, and encryption keys.
* *iwspy* - Provides per-node link quality (not often implemented drivers)
* *iwpriv* - Allows for the manipulation of Wireless Extensions specific to a driver.

To see the channel numbers and corresponding frequencies that our wireless interface is able to detect, we can run *iwlist* with the interface name followed by the frequency parameter:

```
kali@kali:~$ sudo iwlist wlan0 frequency
```


![[Pasted image 20241109151805.png]]

#### The iw Utility
Even though we could still use iwconfig and other tools thanks to a compatibility layer, they are deprecated and we shouldn't use them anymore. The iw utility and its variety of options is the only command that we need for configuring a Wi-Fi device. 

Assuming the drivers have been loaded properly, running iw list will provide us with lots of detailed information about the wireless devices and their capabilities:

```
kali@kali:~$ sudo iw list
```

![[Pasted image 20241109152913.png]]

The output of the above commands shows the the wireless device supports a number of modes, including IBSS (ad hoc), monitor mode, managed mode (client), and AP mode. It also supports frequencies allowed. It also shows the allowed frequencies and the decibel levels. 

![[Pasted image 20241109161222.png]]

To get a list of wireless access points that are within range of our wireless card, we will use *iw* with the *dev wlan0*, which specifies our device. Next, we'll add the *scan* parameter. We then pipe this command through *grep SSID* to filter out output to only wireless network names. 


```
izack@kali:~$ sudo iw dev wlan0 scan | grep SSID
```

![[Pasted image 20241109161526.png]]

The channel that the target AP is transmitting is a critical piece of information. The *iw dev scan* output can be further refined by piping the results with *egrep* using the logical OR operation (|) to output strings which either contains "DS Parameter set" or "SSID":

```
izack@kali:~$ sudo iw dev wlan0 scan | egrep "DS Parameter set|SSID:"
```

![[Pasted image 20241109162229.png]]

We can create Virtual Interface (VIF) named "wlan0mon" in monitor mode using *iw*. 

```
kali@kali:~$ sudo iw dev wlan0 interface add wlan0mon type monitor
```

As with many commands, when there is no output displayed, we know the command was successful.

We can list the interfaces using *iw dev*, we should find the newly created interface in the list.

```
iw dev
```

With the newly created interface, we need to bring it up with *ip* (newly created interfaces are down by default).

```
sudo ip link set wlan0mon up
```

Using the *iw dev info* command, we will be able to inspect the newly created monitor mode interface.

```
kali@kali:~$ sudo iw dev wlan0mon info
Interface wlan0mon
	ifindex 4
	wdev 0x1
	addr 0c:0c:ac:ab:a9:08
	type monitor
	wiphy 0
	channel 11 (2462 MHz), width: 20 MHz, center1: 2462 MHz
```

We can verify that our interface is in monitor mode by starting a sniffer *tcpdump* to capture wireless frames:

```
kali@kali:~$ sudo tcpdump -i wlan0mon
tcpdump: verbose output suppressed, use -v or -vv for full protocol decode
listening on wlan0mon, link-type IEEE802_11_RADIO (802.11 plus radiotap header), capture size 262144 bytes
13:39:17.873700 2964927396us tsft 1.0 Mb/s 2412 MHz 11b -20dB signal antenna 1 [bit 14] Beacon (wifu) [1.0* 2.0* 5.5* 11.0* 9.0 18.0 36.0 54.0 Mbit] ESS CH: 3, PRIVACY[|802.11]
```

We can delete the virtual interface using the *iw dev interface del* command. 

```
sudo iw dev wlan0mon interface del
```

We can confirm it is deleted using:

```
sudo iw dev wlan0mon info
```

Central Regulatory Domain Agent (CRDA), helps radios stay compliant with wireless regulations around the world. It is used by the cfg80211 wireless subsystem to enforce the regulatory domain settings for a given location. Countries' regulations can be fairly complex, and CRDA sets the radio to operate within the regulations of the operating country. Specifically, it enforces transmit power limits on the radio, prevents the radio from transmitting on restricted frequencies, and abides by any other limitation, such as DFS. The *iw reg* command interacts with CRDA to query, and in some cases change it.

To display the current regulatory domain:

```
sudo iw reg get
```

To change or set the regulatory domain, we run **iw reg set \<COUNTRY>** where "COUNTRY" is the 2 letter code (ISO/IEC 3166-1 alpha 2 more precisely). For the US we will use:

```
sudo iw reg set US
```

The change is not permanent as the setting is only in memory. To make sure that it is always set at boot time, edit the file */etc/default/crda* with a text editor and fill in the REGDOMAIN variable.

Once set to US we check again:

```
kali@kali:~$ sudo iw reg get
global
country US: DFS-FCC
	(2402 - 2472 @ 40), (N/A, 30), (N/A)
	(5170 - 5250 @ 80), (N/A, 23), (N/A), AUTO-BW
	(5250 - 5330 @ 80), (N/A, 23), (0 ms), DFS, AUTO-BW
	(5490 - 5730 @ 160), (N/A, 23), (0 ms), DFS
	(5735 - 5835 @ 80), (N/A, 30), (N/A)
	(57240 - 63720 @ 2160), (N/A, 40), (N/A)
```

In summary, here is what we can learn from the output:

- In the 2.4GHz band, transmitting is allowed between 2.402GHz and 2.472GHz with up to 40MHz channel width and up to 30dBi power.
- In the 5GHz band, 5.170 to 5.250GHz is allowed with up to 80MHz channels at 23dBi, 5.250 to 5330GHz with up to 80MHz channels at 23dBi with DFS, 5.490 to 5.730GHz with up to 160MHz channels at 23dBi and DFS, 5.735 to 5.835 with up to 80MHz channels and up to 30dBi.
- In the 60GHz band, 57.240 to 63.720 GHz is allowed with channels up to 2.160GHz at 40dBi.


The regulatory domain we set can sometimes be overridden. CRDA rules processing[3](https://portal.offsec.com/courses/pen-210-9545/learning/linux-wireless-tools,-drivers,-and-stacks-15799/wireless-tools-15881/the-iw-utility-16009#fn-local_id_158-3) is fairly complex, and other factors comes into play to ensure the correct regulatory domain is used. For example, it will be overridden when connecting to an AP that is advertising a country. Some APs allow us to set a country, and will advertise it in their beacons. That may include detailed information on what channels are authorized.

A wireless card can sometimes advertise their regulatory domain through the driver. When plugging in the Alfa AWUS036NHA, it advertises its regulatory domain as GB:



#### The rfkill Utility

_rfkill_ is a tool to enable or disable connected wireless devices. We can use it for Wi-Fi, as well as for Bluetooth, mobile broadband such as 4G/LTE, 5G, WiMax, GPS, FM, NFC, and any other radio.

Let's run rfkill list to display all the enabled Wi-Fi and Bluetooth devices on the system:\

```
sudo rfkill list
```

"Soft blocked" refers to block from rfkill, done in software. 'Hard blocked' refers to a physical switch or BIOS parameter for the device. rfkill can only change soft blocks.

A radio can be disabled (soft blocked) using rfkill block followed by the device's ID number that is displayed in the rfkill list command. Using the previous output, we will execute the rfkill command to disable our Wi-Fi device:

```
sudo rfkill block 1
```

We can run rfkill list to list:

```
kali@kali:~$ sudo rfkill list 1
1: phy0: Wireless LAN
	Soft blocked: yes
	Hard blocked: no
```

To unblock a device use:

```
kali@kali:~$ sudo rfkill unblock 1
kali@kali:~$
```

We can block all radio devices using:

```
kali@kali:~$ sudo rfkill block all
```

To re-enable we can use *unblock all* parameter.


### Wireless Stacks and Drivers

The Linux operating system supports two wireless stacks. The ieee80211 subsystem has been deprecated in favor of the more recent mac80211 framework. Because of this, any recent kernel driver will be written using the mac80211 framework. 

We will review both of these as they are both still in use.

#### The ieee80211 Wireless Subsystem

When Wi-Fi first became widely available, we started with the relatively simple ieee80211 subsystem. This was good enough for Linux to interact with the various drivers and provide a common interface to handle Wi-Fi cards.

The Wireless Extension (WE), known as *wext*, is an extension to the Linux networking interface to deal with the specificity of Wi-Fi. It was implemented in three parts that interact with each other.

The first part was as set of tools to control the drivers, with iwconfig, iwlist, iwspy, and iwpriv. The second part was implementing wext in Wi-Fi drivers to answer actions triggered by wireless 

Finally, wext required a middle-man to communicate the actions of the different user tools to the drivers and respond back, which is in the kernel. 

Some early drivers relied on external utilities to control various aspects and capabilities of the wireless card. Each chipset had its own utility but none were compatible with each other. They had different syntax, different capabilities, and each one could only handle its own driver.

The landscape of wireless card drivers, utilities, and standards was still littered with inconsistencies. For example, most drivers could not implement master mode, change the card's power output, or support Wi-Fi Protected Access (WPA). Even the interface names weren't standardized under ieee80211, leading to obvious confusion about when to use "eth", "wifi", "ath", "wlan", etc.

Although wext was a step in the right direction, many wireless drivers still had different capabilities and each one implemented the wireless extensions differently.

#### The mac80211 Wireless Framework

As Wi-Fi evolved and became more complex, the mac80211[1](https://portal.offsec.com/courses/pen-210-9545/learning/linux-wireless-tools,-drivers,-and-stacks-15799/wireless-stacks-and-drivers-15860/the-ieee80211-wireless-subsystem-15997#fn-local_id_162-1) framework was introduced. Mac80211 centralizes a lot of the common code, and has been more flexible to handle newer wireless technologies and differences between chipsets.

The mac80211 wireless framework is included in all modern Linux kernels. Under mac80211, most common functions are standardized. This means that the wireless drivers don't need to re-implement them.

Standardizing the functions led to both new improvements and new requirements. Here is a list of some of those changes:

- Support for 802.11n, 802.11ac, and other modes is built-in.
- WEP and WPA support is provided via wpa_supplicant,[2](https://portal.offsec.com/courses/pen-210-9545/learning/linux-wireless-tools,-drivers,-and-stacks-15799/wireless-stacks-and-drivers-15860/the-ieee80211-wireless-subsystem-15997#fn-local_id_162-2) the de-facto tool to connect to wireless networks.
- Common Regulatory Domain with Central Regulatory Domain Agent (CRDA) enforces the different regulations regarding wireless communications in countries around the world (frequencies limitations, output power, and others).
- Master mode (also known as Access Point mode) requires _Host access point daemon_ (hostapd).[3](https://portal.offsec.com/courses/pen-210-9545/learning/linux-wireless-tools,-drivers,-and-stacks-15799/wireless-stacks-and-drivers-15860/the-ieee80211-wireless-subsystem-15997#fn-local_id_162-3)
- The iw command is used to manipulate the wireless interface settings instead of iwconfig, iwpriv, iwlist, and iwspy.
- The process of switching wireless modes is now standardized across all devices/drivers.
- Wireless interfaces have a common naming convention of "wlan" followed by one or two digits.
- All functions for the different modes (managed, master, monitor, mesh, etc.) are available for drivers, but not all chipsets support them.


mac80211 is actually part of a larger group of software libraries that includes nl80211 and cfg80211.

nl80211[7](https://portal.offsec.com/courses/pen-210-9545/learning/linux-wireless-tools,-drivers,-and-stacks-15799/wireless-stacks-and-drivers-15860/the-mac80211-wireless-framework-15996#fn-local_id_162-7) is the NetLink library dedicated for 802.11, and it helps tools such as wpa_supplicant, hostapd, iw, Wireshark, aircrack-ng, and other packet capture tools to communicate and interact with the drivers in the kernel, through cfg80211. We will discuss these tools later on.

cfg80211[8](https://portal.offsec.com/courses/pen-210-9545/learning/linux-wireless-tools,-drivers,-and-stacks-15799/wireless-stacks-and-drivers-15860/the-mac80211-wireless-framework-15996#fn-local_id_162-8) is part of the Linux kernel. It is the configuration API for 802.11 and interacts directly with FullMAC[9](https://portal.offsec.com/courses/pen-210-9545/learning/linux-wireless-tools,-drivers,-and-stacks-15799/wireless-stacks-and-drivers-15860/the-mac80211-wireless-framework-15996#fn-local_id_162-9) drivers and through mac80211 with SoftMAC drivers.

FullMAC drivers are fully integrated wireless chipsets, such as those in smartphones, with many of the wireless functions built-in to the hardware itself. Only a minimal driver is necessary.

SoftMAC on the other hand, are for simple radios and require more complex drivers. cfg80211 also interacts with the regulatory domain, CRDA, which we will discuss later on. Finally, mac80211 implements all the wireless functions needed for the SoftMAC radio to operate the different wireless modes.

The following diagram[10](https://portal.offsec.com/courses/pen-210-9545/learning/linux-wireless-tools,-drivers,-and-stacks-15799/wireless-stacks-and-drivers-15860/the-mac80211-wireless-framework-15996#fn-local_id_162-10) shows how these libraries interact together.

![[Pasted image 20241109190353.png]]

Figure above shows a FullMAC driver, brcmfmac,[11](https://portal.offsec.com/courses/pen-210-9545/learning/linux-wireless-tools,-drivers,-and-stacks-15799/wireless-stacks-and-drivers-15860/the-mac80211-wireless-framework-15996#fn-local_id_162-11) which is used with some Broadcom chips. On the other side, we find iwlwifi,[12](https://portal.offsec.com/courses/pen-210-9545/learning/linux-wireless-tools,-drivers,-and-stacks-15799/wireless-stacks-and-drivers-15860/the-mac80211-wireless-framework-15996#fn-local_id_162-12) a softMAC driver that handles recent Intel chipsets.

In wireless, we have the MAC Sublayer Management Entity (MLME), which takes care of the following management operations:

- Authentication
- Deauthentication
- Association
- Disassociation
- Reassociation
- Beaconing

FullMAC have all MLME operations (or a subset of the above) done by the wireless hardware itself and its firmware. An advantage of FullMAC is that it improves power consumption, which is critical on mobile chipsets and other low power computing devices. It also gives more control from vendors over what operations can be done using their hardware. It does, however, comes at a cost. Wi-Fi operations are complex and so is their code base. No implementation is exempt from bugs.[13](https://portal.offsec.com/courses/pen-210-9545/learning/linux-wireless-tools,-drivers,-and-stacks-15799/wireless-stacks-and-drivers-15860/the-mac80211-wireless-framework-15996#fn-local_id_162-13)

For SoftMAC devices, everything is implemented in the software of the driver's framework. All SoftMAC drivers using mac80211 will benefit from security fixes, improvements, and other bugs fixed with the framework. With Linux kernel releases or when a Linux distribution releases security fixes, all SoftMAC drivers are updated. FullMAC drivers, on the other hand, require their respective vendors to release fixes.

## Wireshark Essentials

Wireshark previously known as Ethereal, is the de-facto packet analysis tool. Wireshark can dissect a large number of common protocols, including Ethernet, IP, TCP, UDP, and 802.11, and more esoteric ones including ATM and EtherCAT. It handles live capture on different mediums, can open or save data in a number of capture formats, and allows us to do analysis and data graphing. The display  and capture filters allows us to narrow down the amount of data displayed and received which often comes in handy.

Wireshark is available in GUI and as a command line tool tshark. Wireshark includes other command line tools including, *dumpcap*, which handles packet capture but does not do any dissection, and *SSHdump* which simplifies remote packet capture via SSH. A number of other utilities are also provided.

### Fundamentals

Wireshark by default captures Ethernet packets, even when we are using a wireless interface. In order to collect only raw wireless frames, the Wi-Fi adapter must be put in monitor mode prior to launching Wireshark.

```
sudo ip link set wlan0 down
```

```
sudo iwconfig wlan0 mode monitor
```

```
sudo ip link set wlan0 up
```



Wireshark does not channel hop. It will stay on whatever channel the wireless adapter is currently on. To quickly scan all channels on 2.4GHz, we can run the following shell script in the background in a terminal.

```
for channel in 1 6 11 2 7 10 3 8 4 9 5
do
  iw dev wlan0mon set channel ${channel}
  sleep 1
done
```

We could also use *airodump-ng* to do channel hopping. Airodump-ng is meant to be a full-blown tool to capture wireless frames and as a handy default behavior of channel hopping without saving data. Running the below command will achieve the same results as the above command:

```
sudo airodump-ng wlan0mon
```

We can save the capture in different formats. The most common format is PCAP, the capture file may be compressed with GZIP to save disk space.

Two of the less common formats such as PCAPng and nanosecond PCAP can both be accurate to the nanosecond. They are a thousand times more precise than PCAP, which uses microsecond precision. Having said this, the regular PCAP format works just fine for most scenarios and it also has excellent compatibility with other tools handling packet captures.


### Wireshark Filters

Wireshark uses two types of filters:

1. *Display filters* - Which limit the packets that are displayed
2. *Capture Filters* - Which limit the packets that are captured


#### Wireshark Display Filters

We can create our own display filters under *Analyzer* > *Display Filter Expressions* using Fields (Which can be considered as objects with attributes or properties) and relations (\==, !=, contains, matches) to filter for specific packets. The fields are categorized in a logical manner. 

In certain packet fields such as *wlan.fc.type* the *Predefined Values* window contains a number of options that relate to different byte values. For example wlan.fc.type can have four different values:0,1,2,3. These related to *Management, Control,Data, and Extension* frames respectively. 

**Packet Details**

We can also build filters based on items from a selected packet. We can filter based on the packet details of one packet.

**Display Filters Bookmarks**

When doing a lot of packet filtering, we may want to reuse filters. This is where the bookmark comes in handy. They allow us to save display filters for later use. 

To search for BSSID of specific AP, we can use the filter *wlan.addr == 5C:E9:31:BE:DD:40*


### Wireshark Capture Filters

Capture Filters allow Wireshark to only capture a specific type of data. There are a number of reasons why we might want to use capture filters instead of display filters. 

When capturing, Wireshark and tshark temporarily store and dissect each packet in memory (unless specified otherwise in the options). As the amount of data increases, the memory and CPU requirement grow. If packets can't be dissected, they are dropped, and one of those dropped packets could contain crucial information. Using a capture filter allows us to cut down on the amount of data captured so we can focus on the data that we really need.

Another reason to use a capture filter is when we are only allowed to look at specific traffic, such as when isolating traffic of one or more devices.

We need to be careful when creating this type of filter, as we can't recover data that we don't capture. If we make a mistake with a display filter, we can simply remove the filter to "unhide" the necessary packets.

Capture filters on Wi-Fi are limited to filtering on:

1. MAC addresses and on 
2. Frame types/subtypes. 


They are documented in the *pcap-filter* man page. 


For example we might want to filter out beacons Wi-Fi frames. Beacons are the most common types of Wi-Fi frames that are sent by the AP approximately 10 times per second. Beacon frames aren't particularly useful when looking at traffic and are often the first type of frames excluded using display filters. We can save a bit of time by filtering them beforehand.

In the capture filter we can use the "not subtype beacon" filter not to capture beacon frames.

