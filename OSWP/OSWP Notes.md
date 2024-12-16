
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

Capture filters also allow us to refine our results based on the values in each frame we receive. One of those values contained in a wireless frame is between one and four MAC address. To only capture frames from a specific device, we'll have to build a filter to match one of these addresses:

Let's try and capture the wireless traffic of the device 3A:30:F9:0F:E1:95. To ensure we capture all relevant traffic, let's include all four possible locations where our MAC address might appear.

```
(wlan addr1 3A:30:F9:0F:E1:95) or (wlan addr2 3A:30:F9:0F:E1:95) or (wlan addr3 3A:30:F9:0F:E1:95) or (wlan addr4 3A:30:F9:0F:E1:95)
```


When can combine the above filter with our earlier capture filter for removing beacons. 

```
((wlan addr1 3A:30:F9:0F:E1:95) or (wlan addr2 3A:30:F9:0F:E1:95) or (wlan addr3 3A:30:F9:0F:E1:95) or (wlan addr4 3A:30:F9:0F:E1:95)) and (not subtype beacon)
```


We can further filter to remove control frames we don't need such as Acknolwedgment, requests to send (rts), clear to send (cts), etc. We can filter these out with "not type control". 

There are other control frames we filter out as well. Let's cut out management frames we don't need such as probe requests and response. We can do this with "not subtype prob_req" and "not subtype prob-resp". We will add this to our capture filter:

```
((wlan addr1 3A:30:F9:0F:E1:95) or (wlan addr2 3A:30:F9:0F:E1:95) or (wlan addr3 3A:30:F9:0F:E1:95) or (wlan addr4 3A:30:F9:0F:E1:95)) and not (subtype beacon) and not (type ctl) and not (subtype probe-req) and not (subtype probe-resp)
```


To understand the Address Fields in 802.11 frames.

1. https://80211notes.blogspot.com/2013/09/understanding-address-fields-in-80211.html

### Exercise
1. Beacons (--> Use "subtype beacon")
2. Probes (requests and responses)
3. Association (requests and responses)
4. Data (any)
5. A specific MAC address

### Wireshark at the Command Line

There are interesting commands we can use with the 'Wireshark' command line. 

-D to list interfaces

```
sudo wireshark -D
```

-i to select interface. Using a hyphen as input to the interface will capture on STDIN. This will come in handy when using pipes.

*-k* options automatically starts the capture. 

*-I* option switches on Monitor mode on the specified interface.

```
sudo wireshark -i wlan0 -I -k
```


We can add a beacon frame capture filter using *-f* option.

```
sudo wireshark -i wlan0mon -k -f "not subtype beacon"
```

Wireshark can capture the first few bytes of each frame instead of the full frame with -s option followed by the length in bytes.


```
sudo wireshark -i wlan0mon -k -s 60
```

We can also use Wireshark to simply open capture files, with or without additional parameters. If we use parameters, we have to specify them _before_ the capture filename. Capture files usually have an extension of .cap or .pcap.

```
wireshark wifi.pcap
```

Wireshark doesn't need elevated privileges (sudo) when opening files, unless the file's permissions requires it.

### Exercise

Start Wireshark from the command line using the following options:

1. Initiate immediate capture with your wireless interface.
2. Initiate immediate capture and place your wireless interface in monitor mode.
3. Initiate immediate capture with a capture filter.
4. Open a .pcap file.

### Remote Packet Capture

Not only can we use Wireshark to capture packets passing through a local interface, but it can also capture packets remotely from another system's interface. This comes in handy when the local system doesn't have the ability to capture packets, or when we are trying to diagnose an issue remotely.

There are a few different ways that we can capture packets remotely. The first one, using the command line, is to run a command remotely using SSH, output the results, and pipe them to Wireshark. We could also use Wireshark's built-in tool, _SSHdump_,[1](https://portal.offsec.com/courses/pen-210-9545/learning/wireshark-essentials-15802/remote-packet-capture-15815/remote-packet-capture-15984#fn-local_id_11-1) to achieve the same as the command line.

SSHdump is easier and more convenient, but command-line options are more stable. Typically, sshdump is not invoked directly, instead it can be configured through Wireshark GUI or its command line. The following will start Wireshark and start capturing from the host remote host:

```
wireshark '-oextcap.sshdump.remotehost:"remotehost"' -i sshdump -k
```


Let's take a quick look at two other methods for remote capture. First, we could use a _RPCAP URI_.[2](https://portal.offsec.com/courses/pen-210-9545/learning/wireshark-essentials-15802/remote-packet-capture-15815/remote-packet-capture-15984#fn-local_id_11-2) This only works on Windows, where Wi-Fi packet capture is severely limited. Second, we could use _udpdump_[3](https://portal.offsec.com/courses/pen-210-9545/learning/wireshark-essentials-15802/remote-packet-capture-15815/remote-packet-capture-15984#fn-local_id_11-3) to receive data through a UDP listener. Both of these methods have very limited use and will not be practical for our purposes.

### Remote Packet Capture Setup

Learning objectives:

* Capture locally and output wireless packets on STDOUT
* Pipe the STDOUT wireless packets to wireshark
* Finally, capture remotely and pipe the output to local wireshark

#### Capture and Output Packets on STDOUT

We can use any tool capable of capturing data and outputting to STDOUT. The ones we will demonstrate here will be tcpdump, dumpcap, and tshark. We may find our self in an environment where not all the tools are not present, we want to know how to use each of them. 

Another thing we need to take into consideration is the CPU usage. Dumpcap has lower overhead compared to tcpdump and tshark. 
The difference in CPU usage between these tools may be negligible when using a desktop or a laptop as the remote capture device. It's more likely that we will notice a difference when we start transferring more traffic or if we use low power devices such as routers, single-board computers (SBC),[1](https://portal.offsec.com/courses/pen-210-9545/learning/wireshark-essentials-15802/remote-packet-capture-15815/remote-packet-capture-setup-15983#fn-local_id_12-1) or access points as capture devices.

On *tcpdump*, assuming we have enabled monitor mode, we can specify interface with *-i*. We will write the raw packets to a file with *-w* but to *STDOUT* with a hyphen *-* rather than to a filename. Next, the *-U* option output each packet as it arrives. This last option is helpful since the default behavior is to wait for the system's buffer to fill before outputting bursts of packet output.

```
sudo tcpdump -i wlan0mon -w - -U
```


*Dumpcap* tool is similar to tcpdump when sending the captured data to STDOUT. One difference is that dumpcap requires the *-P* option to output the data in PCAP format.

```
sudo dumpcap -w - -P -i wlan0mon
```

To do the same with tshark we will use the below command:

```
sudo tshark -w - -i wlan0mon
```


#### Pipe Packets to Wireshark

Pipes are a form of Inter-Process Communication (IPC) objects of which there are two types: named and unnamed pipes. 

_Named pipes_, also known as First in, First out (FIFO) IPC objects, are present on the filesystem and allow bi-directional communications.

_Unnamed pipes_, also known as unnamed IPC objects, make use of the _pipe()_ function. One way we might use this function is when we chain commands in terminals by using the pipe (|) character.[2](https://portal.offsec.com/courses/pen-210-9545/learning/wireshark-essentials-15802/remote-packet-capture-15815/remote-packet-capture-setup-15983#fn-local_id_12-2)


Choosing between one type or the other depends on the application, its options, and capabilities. Some applications may not support any and some may only support one kind. In the case of Wireshark, both options are available.

**Unnamed Pipes**

Unnamed pipes allows us to chain commands together by passing the output of one command to the input of another. For example:

```
ls /var/log | more
```

We can use more than 1 pipe, for example:

```
ls /var/log | sort -r | more
```

Similarly we can use the same with packets capture and pipe output to wireshark.

```
sudo tcpdump -U -w - -i wlan0mon | wireshark -k -i -
```

Since pipes only transfer STDOUT, that data becomes STDIN for what is displayed in Wireshark. All we are shown in the command terminal is STDERR.

**Named Pipe Devices**
They also allow two or more processes to communicate but, as the name suggests, they have a name and (in the case of \*Nix OSs) are present on the file system. This has the additional benefit of allowing us to set permissions and limit access.

Our focus is on Linux, but named pipes also exist on Windows, where they are handled a bit differently.

Let's create the named pipe using *mkfifo* followed by its chosen pathname:

```
mkfifo /tmp/named_pipe
```

We can use ls to confirm that it exists on the file system:

```
ls -l /tmp/named_pipe
```


Wireshark's *-i* option is very versatile, it allows us to use the named pipe as the interface, like so:

```
sudo wireshark -k -i /tmp/named_pipe
```

Another option is to configure our named pipe from within Wireshark. In the Wireshark menu, we will navigate to _Capture_ > _Options..._.

![[Pasted image 20241124152519.png]]

Let's initiate the packet capture in a terminal.

```
sudo tcpdump -U -w - -i wlan0mon > /tmp/named_pipe
```

To summarize, the difference between the two pipe methods is the unnamed pipe writes the capture tool data directly into Wireshark. On the other hand, Wireshark uses the named pipe as an interface and then the capture tool data is written to the named pipe.
#### Run the Command Remotely

Now that we have a good foundation, let's see how it looks when we have actually involve a remote system where we have SSH access. SSH is versatile, and while it is useful for administering remote systems with an interactive shell, it also has the ability to run a command, display the output on STDOUT, and then exit.

With a remote system's wireless interface in monitor mode, initiating a remote capture is just a matter of putting the pieces together with an SSH session.

First, we connect to the remote system with the SSH command followed by our tcpdump command. Then we pipe this into wireshark.

It is always a good idea to enclose the command in double quotes to make sure the parameters don't accidentally become SSH parameters.

```
ssh root@10.11.0.196 "sudo -S tcpdump -U -w - -i wlan0mon" | sudo wireshark -k -i -
```

Once we execute the command, Wireshark starts on our local machine and the terminal prompts for the remote system's SSH password. After entering the password, captured data is written to Wireshark, which displays the wireless frames as they arrive.

#### Exercises

1. Using an unnamed pipe, execute tcpdump with your wireless device and direct it to Wireshark.
2. Using a named pipe, execute tcpdump with your wireless device and direct it to Wireshark.
3. Initiate a remote SSH tcpdump command and pipe the capture to Wireshark. This may be executed via localhost, to another virtual machine, or to another system on which you have SSH access.


### Built-in Wireshark

It is also possible to capture remote packets with SSH within Wireshark. We need to select "External Capture" under devices. 

When you want to use another user other than the root user on the remote system to run the capture:

```
sudo dpkg-reconfigure wireshark-common / yes'
```

```
sudo usermod -a -G wireshark kali'
```

You can replace 'kali' with the user you intend to user on the target system.


When _Save parameter(s) on capture start_ is checked, the next time SSHdump is used, it won't prompt for settings and will start automatically. If the settings are not properly set and an error results, Wireshark does not make resetting to the defaults easy. They can be reset via _Edit_ > _Preferences..._ > _Advanced_. In the resulting _Search:_ textbox, we type "sshdump". Then double click every modified parameter (anything in bold) to set SSHDump back to the default values. Click on _OK_ and SSHDump is back to its default configuration.


#### Exercise

Using Wireshark's SSH option, initiate a dumpcap capture on a remote system. This may be executed via localhost, to another virtual machine, or to another system on which you have SSH access.
## Advanced Preferences


### Coloring Rules

Rather than creating a series of rules, one easy option is to import a wireless coloring rules file from the Wireshark coloring rules wiki.[1](https://portal.offsec.com/courses/pen-210-9545/learning/wireshark-essentials-15802/advanced-preferences-15813/coloring-rules-16017#fn-local_id_55-1)

Link: https://wiki.wireshark.org/ColoringRules


### Wireshark Columns

We can set columns for any fields in a packet.

### Capture Snaplen

Setting a _snaplen_,[1](https://portal.offsec.com/courses/pen-210-9545/learning/wireshark-essentials-15802/advanced-preferences-15813/wireshark-columns-16016#fn-local_id_57-1) or snapshot length, allows us to limit how much data we capture for each packet. Wireshark, tshark, dumpcap, and tcpdump can all set the snaplen for a capture.

For reasons similar to using a capture filter, snaplen is useful when we are not allowed to capture the entire packet of a target or we don't need the entire payload.

There is one caveat to snaplen. We have to configure it when setting up the capture, and we cannot change it while the capture is running.

  
4.4.1. Remote Packet Capture Setup

4.4.2. Built-in Wireshark

 4.5. Advanced Preferences

4.5.1. Coloring Rules

4.5.2. Wireshark Columns

4.5.3. Capture snaplen

4.5.4. IEEE 802.11 Preferences

4.5.5. WEP and WPA1/2 Decryption

4.5.6. WLAN Statistics

4.6. Wrapping Up

My Kali

My Windows

VPN

Linux Wireless Tools, Drivers, and Stacks

Frames and Network Interaction

# 4. Wireshark Essentials

_Wireshark_,[1](https://portal.offsec.com/courses/pen-210-9545/learning/wireshark-essentials-15802/advanced-preferences-15813/capture-snaplen-16015#fn-local_id_41-1) previously known as _Ethereal_,[2](https://portal.offsec.com/courses/pen-210-9545/learning/wireshark-essentials-15802/advanced-preferences-15813/capture-snaplen-16015#fn-local_id_41-2) is the de-facto packet analysis tool. Wireshark can dissect a large number of common protocols, including Ethernet, IP, TCP, UDP, and 802.11, and more esoteric ones including ATM[3](https://portal.offsec.com/courses/pen-210-9545/learning/wireshark-essentials-15802/advanced-preferences-15813/capture-snaplen-16015#fn-local_id_41-3) and EtherCAT.[4](https://portal.offsec.com/courses/pen-210-9545/learning/wireshark-essentials-15802/advanced-preferences-15813/capture-snaplen-16015#fn-local_id_41-4) It handles live capture on different mediums, can open or save data in a number of capture formats, and allows us to do analysis and data graphing. The display and capture filters allow us to narrow down the amount of data displayed and received, which often comes in handy.

Last but not least, Wireshark is available on a wide variety of operating systems as a GUI and as a command line tool called _TShark_.[5](https://portal.offsec.com/courses/pen-210-9545/learning/wireshark-essentials-15802/advanced-preferences-15813/capture-snaplen-16015#fn-local_id_41-5) Wireshark includes other command line tools including _dumpcap_,[6](https://portal.offsec.com/courses/pen-210-9545/learning/wireshark-essentials-15802/advanced-preferences-15813/capture-snaplen-16015#fn-local_id_41-6) which handles packet capture but doesn't do any dissection, and _SSHdump_, which simplifies remote packet capture via SSH. A number of other utilities are also provided.

In this module, we'll explore Wi-Fi-specific Wireshark features.

1

(Wireshark Foundation, 2021), [https://www.wireshark.org/](https://www.wireshark.org/) [↩︎](https://portal.offsec.com/courses/pen-210-9545/learning/wireshark-essentials-15802/advanced-preferences-15813/capture-snaplen-16015#fnref-local_id_41-1)

2

(Linux.com, 2006), [https://www.linux.com/news/ethereal-changes-name-wireshark](https://www.linux.com/news/ethereal-changes-name-wireshark) [↩︎](https://portal.offsec.com/courses/pen-210-9545/learning/wireshark-essentials-15802/advanced-preferences-15813/capture-snaplen-16015#fnref-local_id_41-2)

3

(Wikipedia, 2021), [https://en.wikipedia.org/wiki/Asynchronous_transfer_mode](https://en.wikipedia.org/wiki/Asynchronous_transfer_mode) [↩︎](https://portal.offsec.com/courses/pen-210-9545/learning/wireshark-essentials-15802/advanced-preferences-15813/capture-snaplen-16015#fnref-local_id_41-3)

4

(Wikipedia, 2021), [https://en.wikipedia.org/wiki/EtherCAT](https://en.wikipedia.org/wiki/EtherCAT) [↩︎](https://portal.offsec.com/courses/pen-210-9545/learning/wireshark-essentials-15802/advanced-preferences-15813/capture-snaplen-16015#fnref-local_id_41-4)

5

(Wireshark Foundation, 2021), [https://www.wireshark.org/docs/man-pages/tshark.html](https://www.wireshark.org/docs/man-pages/tshark.html) [↩︎](https://portal.offsec.com/courses/pen-210-9545/learning/wireshark-essentials-15802/advanced-preferences-15813/capture-snaplen-16015#fnref-local_id_41-5)

6

(Wireshark Foundation, 2021), [https://www.wireshark.org/docs/man-pages/dumpcap.html](https://www.wireshark.org/docs/man-pages/dumpcap.html) [↩︎](https://portal.offsec.com/courses/pen-210-9545/learning/wireshark-essentials-15802/advanced-preferences-15813/capture-snaplen-16015#fnref-local_id_41-6)

## 4.1. Getting Started

To begin, let's explore the Wireshark GUI and discuss various features and settings. Wireshark will capture Ethernet packets by default, even when we are using a wireless interface. In order to collect only raw wireless frames, the Wi-Fi adapter must be put in monitor mode prior to launching Wireshark.

```
kali@kali:~$ sudo ip link set wlan0 down

kali@kali:~$ sudo iwconfig wlan0 mode monitor

kali@kali:~$ sudo ip link set wlan0 up
```

> Listing 1 - Monitor mode commands

### 4.1.1. Welcome Screen

When launched, Wireshark presents a screen like the one in Figure 1 below.

![Figure 1: Wireshark startup screen](https://static.offsec.com/offsec-courses/PEN-210/images/Wireshark_Essentials/f03571fd586e8ebeee3733014b96dff2-ws_welcome_screen2.png)

Figure 1: Wireshark startup screen

This screen displays the _Display Filter_, recently opened files, the _Capture Filter_ setup, the list of interfaces, the traffic sparklines, and other relevant information. The sparklines show network activity on each of the interfaces and they go up and down depending on the amount of traffic. Wireshark refreshes the interfaces list as they are removed or added, but it doesn't show ones that are down.

To the right of the capture filter textbox there is a dropdown that displays the different types of interfaces available. Checking and unchecking will show or hide certain interfaces based on their type. We will select _Wireless_ in order to focus on wireless only.

![Figure 2: Interface types selector](https://static.offsec.com/offsec-courses/PEN-210/images/Wireshark_Essentials/7e6e429bdb1728030440b9cf93cea6f5-ws_interface_type_dd.png)

Figure 2: Interface types selector

The options shown in Figure 2 are dynamic and depend on what is available on the current system. If there are no wireless interfaces, the _Wireless_ option will not be present. We might see other categories such as _USB_ for USB devices, _Bluetooth_ for Bluetooth devices, and _Virtual_ for interfaces related to virtualization software.

After closing the interface type selector, the list of interfaces below the capture filter textbox will update. In this case, because only _Wireless_ is selected, only the wlan0mon interface remains.

There are two ways to start the capture. We can either double-click on the interface, or we can select the interface and then click on the shark fin right below the _File_ menu. The shark fin will turn blue once we choose an interface.

![Figure 3: Interface types selector](https://static.offsec.com/offsec-courses/PEN-210/images/Wireshark_Essentials/22e1d932be8602d9f24840ce3398cfd3-ws_wlan0mon_no_menu2.png)

Figure 3: Interface types selector

### 4.1.2. Packet Display

Once we start the capture, packets begin appearing in our display. We can see the Wireshark window arranged into three frames.

- _Packet List_ contains a list of all captured packets with details in customizable columns containing information such as source, destination, protocol, etc.
- _Packet Details_ contains dissected details of the currently selected packet.
- _Packet Bytes_ contains the hexadecimal representation of the actual bytes of the packet. When an item is selected in _Packet Details_, the corresponding bytes are highlighted in this field.

![Figure 4: Capturing - Packet list](https://static.offsec.com/offsec-courses/PEN-210/images/Wireshark_Essentials/28ec08b84c6898a4576c704dc8c80e11-we_capture_filled4.png)

Figure 4: Capturing - Packet list

In the upper left of our display, the toolbar now has the _Start Capture_ button greyed out. The red _Stop Capture_ button and the green _Restart Capture_ button are now active.

The packet list layout can be rearranged in various ways. Let's select _Edit_ > _Preferences_ > _Appearance_ > _Layout_ to choose another arrangement.

![Figure 5: Capturing - Packet list layout](https://static.offsec.com/offsec-courses/PEN-210/images/Wireshark_Essentials/ebe2d6e7648ab6f6a6fffd9a7bc09d92-we_packet_list_layout.png)

Figure 5: Capturing - Packet list layout

We can change the layout, order, or disable panes if desired. We will select the second layout, which places the _Packet Details_ and _Packet Bytes_ side by side. This will be helpful when examining the content of the frames.

![Figure 6: Capturing - Packet list layout option](https://static.offsec.com/offsec-courses/PEN-210/images/Wireshark_Essentials/b873c1aa728b8baccd85000356405121-we_capture_filled_sidebyside2.png)

Figure 6: Capturing - Packet list layout option

### 4.1.3. Wireless Toolbar

The Wireshark wireless toolbar will allow us to change channels manually as well as set the channel width. This toolbar is disabled by default but can be enabled by checking _View_ > _Wireless Toolbar_.

![Figure 7: Wireless toolbar checkbox](https://static.offsec.com/offsec-courses/PEN-210/images/Wireshark_Essentials/07b2d61e990736cadf8a089426ebf833-ws_wireless_toolbar_menu2.png)

Figure 7: Wireless toolbar checkbox

Once selected, the toolbar gets added below the display filter toolbar.

![Figure 8: Wireless toolbar checkbox](https://static.offsec.com/offsec-courses/PEN-210/images/Wireshark_Essentials/0ad1ea358e7b3dc8d62f60dc79e28c6e-ws_wireless_toolbar2.png)

Figure 8: Wireless toolbar checkbox

The _802.11 Preferences_ button, at the far right of the toolbar, is a shortcut to the 802.11 protocol preferences, which contains various 802.11 settings. We'll go over these later in this module.

Wireshark doesn't _channel hop_.[1](https://portal.offsec.com/courses/pen-210-9545/learning/wireshark-essentials-15802/advanced-preferences-15813/capture-snaplen-16015#fn-local_id_45-1) It will stay on whatever channel the wireless adapter is currently on. To quickly scan all channels on 2.4GHz, we can run the following shell script in the background in a terminal.

```
for channel in 1 6 11 2 7 10 3 8 4 9 5
do
  iw dev wlan0mon set channel ${channel}
  sleep 1
done
```

> Listing 2 - Wireshark simple channel hopping script

We could also use _airodump-ng_[2](https://portal.offsec.com/courses/pen-210-9545/learning/wireshark-essentials-15802/advanced-preferences-15813/capture-snaplen-16015#fn-local_id_45-2) to do channel hopping. Airodump-ng is meant to be a full-blown tool to capture wireless frames and has a handy default behavior of channel hopping without saving any data. Running sudo airodump-ng wlan0mon will achieve a result similar to the shell script above.

1

(The Free Dictionary, 2021), [https://idioms.thefreedictionary.com/channel+hopping](https://idioms.thefreedictionary.com/channel+hopping) [↩︎](https://portal.offsec.com/courses/pen-210-9545/learning/wireshark-essentials-15802/advanced-preferences-15813/capture-snaplen-16015#fnref-local_id_45-1)

2

(Aircrack-ng, 2020), [https://aircrack-ng.org/doku.php?id=airodump-ng](https://aircrack-ng.org/doku.php?id=airodump-ng) [↩︎](https://portal.offsec.com/courses/pen-210-9545/learning/wireshark-essentials-15802/advanced-preferences-15813/capture-snaplen-16015#fnref-local_id_45-2)

### 4.1.4. Saving and Exporting Packets

After doing a packet capture, we can save the whole contents of the packet list into a file use _File_ > _Save_ or _File_ > _Save As..._. The most common format is _PCAP_.[1](https://portal.offsec.com/courses/pen-210-9545/learning/wireshark-essentials-15802/advanced-preferences-15813/capture-snaplen-16015#fn-local_id_46-1) The capture file may be compressed with _GZIP_ to save disk space.

Two of the less common formats, such as _PCAPng_[2](https://portal.offsec.com/courses/pen-210-9545/learning/wireshark-essentials-15802/advanced-preferences-15813/capture-snaplen-16015#fn-local_id_46-2) and _nanosecond PCAP_, can both be accurate to the nanosecond. They are a thousand times more precise than PCAP, which uses microsecond precision. Having said this, the regular PCAP format works just fine for most scenarios and it also has excellent compatibility with other tools handling packet captures.

Wireshark offers the ability to filter what is saved to a file. We can edit this using the _File_ > _Export Specified Packets..._ option.

![Figure 9: Export specified packets](https://static.offsec.com/offsec-courses/PEN-210/images/Wireshark_Essentials/510236cb86fbe1f8216c9ef53bcd40b7-ws_export_specified_packets2.png)

Figure 9: Export specified packets

This is similar to _Save_ and _Save as..._ but with a number of options shown in the lower left box. Selecting _Displayed_ saves only those packets shown as a result of a currently applied filter. _Captured_ saves all the packets.

We can further refine the choice of packets using radio buttons.

- _All packets_ is the default option
- _Selected packets only_ saves one or multiple packets selected with the B key.
- _Marked packets only_ includes packets marked in the packet list by right-clicking and selecting _Mark/Unmark Packet_.
- _First to last marked_ saves all packets between the first and last marked packets.
- _Range_ includes packets that have packet numbers landing in a particular range (for example, packets 5-10).
- _Remove ignored packets_ will exclude ignored packets. To ignore a packet, we right click on it and select _Ignore/Unignore Packet_.

#### Exercises

1. Plug in your wireless card and enable monitor mode.
2. Open Wireshark and start capturing frames.
3. Enable the wireless toolbar and switch between channels 1, 6, and 11.
4. Save the capture file for later use.

1

(Wireshark Foundation, 2015), [https://wiki.wireshark.org/Development/LibpcapFileFormat](https://wiki.wireshark.org/Development/LibpcapFileFormat) [↩︎](https://portal.offsec.com/courses/pen-210-9545/learning/wireshark-essentials-15802/advanced-preferences-15813/capture-snaplen-16015#fnref-local_id_46-1)

2

(M. Tuexen, et al, 2021), [https://datatracker.ietf.org/doc/html/draft-tuexen-opsawg-pcapng-02](https://datatracker.ietf.org/doc/html/draft-tuexen-opsawg-pcapng-02) [↩︎](https://portal.offsec.com/courses/pen-210-9545/learning/wireshark-essentials-15802/advanced-preferences-15813/capture-snaplen-16015#fnref-local_id_46-2)

## 4.2. Wireshark Filters

As we will discover, a packet capture consists of collecting a lot of data. Filters allow us to cut down on the amount of data we have to wade through so that we deal with only what is necessary or relevant. Wireshark uses two types of filters in order to limit what needs to be analyzed, _display filters_, which limit the packets that are displayed, and _capture filters_, which limit the amount of data captured.

### 4.2.1. Wireshark Display Filters

Display filters[1](https://portal.offsec.com/courses/pen-210-9545/learning/wireshark-essentials-15802/advanced-preferences-15813/capture-snaplen-16015#fn-local_id_48-1) affect which packets are visible in Wireshark's packet list. These filters impact what is displayed only, meaning that Wireshark may be capturing additional packets that are not visible.

Display filters are applied and edited in the _Filter_ toolbar located between the _Main_ toolbar and the packet list.

![Figure 10: Packet list columns](https://static.offsec.com/offsec-courses/PEN-210/images/Wireshark_Essentials/5d3735ae9378c65d38953f8693a9ae99-ws_columns2.png)

Figure 10: Packet list columns

We will use display filters in a few different features in order to customize Wireshark and make our work easier.

#### Display Filter Expression

The best way to understand the syntax of Wireshark display filters is to create one with the Display Filter Expression screen. Let's select _Analyze_ > _Display Filter Expression..._ to open the screen with all the available filters.

![Figure 11: Display Filter Expression builder](https://static.offsec.com/offsec-courses/PEN-210/images/Wireshark_Essentials/2481db9036d05499adbaa2253515fc8b-ws_wireshark_dfe2.png)

Figure 11: Display Filter Expression builder

Each display filter has a _field name_ and _relation_, as well as a _value_, if applicable. The textbox highlighted in green is where the filter expression is displayed.

We can think of the _field_ as an object with one or more items. The field can be built using dot-notation. This is similar to what we would see in object-oriented programming languages. The _Field Name_ displays the object and a short description.

Hovering the mouse in the _Relation_ window displays a pop-up that provides more details.

![Figure 12: Display Filter Expression builder - Relation explanations](https://static.offsec.com/offsec-courses/PEN-210/images/Wireshark_Essentials/75e843c63bdded3cf5c75f7e7312dce0-ws_wireshark_dfe_hints2.png)

Figure 12: Display Filter Expression builder - Relation explanations

A display filter expression's _relation_ can be one of the following: _is present_, _==_, _!=_, _<_, _>_, _>=_, _<=_, _contains_, _matches_, or _in_. Depending on the field selected, not all relations will be available.

The _Search_ field, located below the _Field Name_ list, is useful when we can't remember a specific filter. It will narrow down the list of field names as we type, and it shows matching results from both the names and their descriptions.

![Figure 13: Display Filter Expression builder - Searching for 'wlan.fc'](https://static.offsec.com/offsec-courses/PEN-210/images/Wireshark_Essentials/694cbd850b5cb1fedc785e90b098453b-ws_wireshark_dfe_search2.png)

Figure 13: Display Filter Expression builder - Searching for 'wlan.fc'

The _Predefined Values_ window contains a number of options that relate to different byte values in certain packet fields. For example, _wlan.fc.type_ can have four different values: 0, 1, 2, and 3. These relate to _Management_, _Control_, _Data_, and _Extension_ frames, respectively. Our chosen "wlan.fc.type == 2" filter in Figure 13 has "byte value 2", which filters for _data frames_.

Clicking _OK_ updates the contents of the display filter toolbar with our selected filter and the resultant packets as shown in Figure 14.

![Figure 14: Display Filter Expression builder - Applied filter 'wlan.fc.type == 2'](https://static.offsec.com/offsec-courses/PEN-210/images/Wireshark_Essentials/404b27c84c7668ae172a9ba59176bc61-ws_apply_filter_wlan_fc_3.png)

Figure 14: Display Filter Expression builder - Applied filter 'wlan.fc.type == 2'

#### Packet Details

We can also build filters based on items from a selected packet. Let's illustrate this by creating a data frame packet filter. We will start by selecting a data packet from the packet list.

![Figure 15: Display Filter Expression builder - Data frame](https://static.offsec.com/offsec-courses/PEN-210/images/Wireshark_Essentials/f6e1ecbc0fada79d021afa70293ab710-we_packet_list_data_fc2.png)

Figure 15: Display Filter Expression builder - Data frame

In the packet's detail window, let's expand the _IEEE 802.11 Data, Flags_ field and the _Frame Control Field_ and then right click the _Type: Data frame (2)_ element. Finally, we'll select _Apply as Filter_ (selecting _Analyze_ in the Main toolbar also displays these options).

![Figure 16: Apply as Filter submenu](https://static.offsec.com/offsec-courses/PEN-210/images/Wireshark_Essentials/38de25b9783feff99bc489c58a940429-we_wireshark_apply_filter2.png)

Figure 16: Apply as Filter submenu

Now we have a number of options to choose from.

- _Selected_ clears the display filter bar of any existing queries and generates a new query to search for this specific value. For example, wlan.fc.type with a value of "2" generates "wlan.fc.type == 2" in the display filter bar.
- _... and Selected_ appends to any existing query by using an _AND_ (&&) condition. Taking the query we created above and adding a wlan.fc.subtype value of "0" generates "(wlan.fc.type == 2) && (wlan.fc.subtype== 0)" in the display filter bar.
- _... or Selected_ does the same as the above filter but instead of using an AND, it uses an _OR_ (||) condition.

All the choices containing "Not" negate their equivalent in the positive form. For example, if we have "wlan.fc.type == 2" as an existing filter and use _... and not Selected_ with wlan.fc.subtype and value of "0", the filter becomes "(wlan.fc.type == 2) && !(wlan.fc.subtype == 0)".

Note that _Apply as filter_ builds and applies the filter immediately. While _Prepare a filter_ only updates the contents of the display filter bar and doesn't apply the filter until we click _Apply display filter_ at the end of the display filter textbox.

![Figure 17: Apply as Filter submenu](https://static.offsec.com/offsec-courses/PEN-210/images/Wireshark_Essentials/3aa321e21cd5f064084b19b4270cff65-we_apply_df_blue_button3.png)

Figure 17: Apply as Filter submenu

_Prepare a filter_ is useful when we want to build a complex filter that will require multiple steps. As the list of collected packets gets longer, it can take time to process each new subfilter that gets applied. It might be easier to wait to apply the filter until after we have finished writing the complete query.

#### Display Filter Toolbar

We can also create and access display filters directly in the Display Filter toolbar. On the left, a blue ribbon icon will bring us to bookmarked filters.

![Figure 18: Display Filter bar](https://static.offsec.com/offsec-courses/PEN-210/images/Wireshark_Essentials/e8f2a6e435bf69c73204ed71140fa4e0-ws_display_filter_bar2.png)

Figure 18: Display Filter bar

To the right of the filter bar there is an arrow and a dropdown icon. The arrow will apply the filter, while the dropdown will show the most recent display filters.

![Figure 19: Display Filter bar - Recent filters dropdown](https://static.offsec.com/offsec-courses/PEN-210/images/Wireshark_Essentials/3610378176ad90f74cc8d95e13338677-ws_recent_df.png)

Figure 19: Display Filter bar - Recent filters dropdown

When creating a filter, Wireshark's autocompletion displays valid filters as the expression is typed.

![Figure 20: Display filter autocomplete](https://static.offsec.com/offsec-courses/PEN-210/images/Wireshark_Essentials/7d1b9abbfe4b70919439179a921a5574-ws_dfilter_autocomplete.png)

Figure 20: Display filter autocomplete

The toolbar provides filtering hints with colored backgrounds. A valid filter is displayed with a green background. An invalid filter is indicated by a red background. For example, the "wlan.fc.type = 1" filter is syntactically incorrect because it uses only a single "=", so it appears with a red background.

![Figure 21: Invalid filter](https://static.offsec.com/offsec-courses/PEN-210/images/Wireshark_Essentials/d9184f5a570297da97c0ecbe99e6aa61-ws_wireshark_red_df.png)

Figure 21: Invalid filter

A yellow background indicates a possibly questionable filter.

![Figure 22: Filter with possibly unexpected results](https://static.offsec.com/offsec-courses/PEN-210/images/Wireshark_Essentials/b23f8d6d0d478d67984d5f9ad7696fdc-ws_wireshark_yellow_df.png)

Figure 22: Filter with possibly unexpected results

Yellow doesn't always mean the filter is incorrect. In most cases, it will be correct as most filters reference a single field. In this specific example, it is correct and will show packets with a wlan.fc.type with a value not equal to "1". It is good practice to use the double equal and then negate the entire expression instead. This would be written as "!(wlan.fc.type == 1)".

#### Display Filters Bookmarks

When doing a lot of packet filtering, we may want to reuse filters. This is where the bookmarks come in handy. They allow us to save display filters for later use. The bookmark button is located on the left of the Display Filter toolbar.

![Figure 18: Display Filter bar](https://static.offsec.com/offsec-courses/PEN-210/images/Wireshark_Essentials/e8f2a6e435bf69c73204ed71140fa4e0-ws_display_filter_bar2.png)

Figure 18: Display Filter bar

Clicking on the bookmark reveals a default set of display filters and any additional saved filters.

![Figure 23: Display Filter bar](https://static.offsec.com/offsec-courses/PEN-210/images/Wireshark_Essentials/4a98d379e7f9044f44fba2f587a6c0df-ws_df_toolbar_bookmark_icon.png)

Figure 23: Display Filter bar

When a valid filter is in the Display Filter toolbar, _Save this filter_ is clickable in the bookmark dropdown menu. Saving the filter opens the _Display Filters_ screen and the new filter is displayed at the bottom of the list. Selecting _OK_ saves the filter in the bookmark list.

![Figure 24: Display filter window - Save filter](https://static.offsec.com/offsec-courses/PEN-210/images/Wireshark_Essentials/1cd3ebbd07016c2e9a61959c422fa25c-ws_df_save_filter2.png)

Figure 24: Display filter window - Save filter

We can create and save a new filter by either selecting _Manage Display Filters_ from the bookmarks dropdown menu or via _Analyze_ > _Display Filters..._. Both of these options open the Display Filters screen.

We can edit an existing filter by selecting it and applying valid changes. Valid changes are indicated by the green (or yellow) background in the Filter field. Filters from the list can be deleted with the minus ("-") button or duplicated with the _Copy_ button.

#### Display Filter Buttons

We can add a shortcut to the Display Filter toolbar for frequently used filters by selecting the plus ("+") icon located on the very right of the toolbar. This opens a Create Shortcut Button panel.

![Figure 25: Display Filter button settings](https://static.offsec.com/offsec-courses/PEN-210/images/Wireshark_Essentials/54e66238305aeb93990cafc9d150d0cd-ws_display_filter_button_empty2.png)

Figure 25: Display Filter button settings

We will enter the name of the shortcut in the _Label_ field and enter the filter in the _Filter_ field. The _Comment_ field is for a description that appears when hovering the mouse over the shortcut button.

Let's create a "Data" button using our "wlan.fc.type == 2" data frames filter and an "802.11 data frames" comment.

![Figure 26: Display Filter button creation](https://static.offsec.com/offsec-courses/PEN-210/images/Wireshark_Essentials/bfcf82e4637372d6cdbdd81de837f97a-ws_display_filter_button_creation2.png)

Figure 26: Display Filter button creation

Selecting _OK_ creates our _Data_ button to the right on the Display Filter toolbar. Hovering the mouse on the button displays the filter's comment.

![Figure 27: Display Filter button](https://static.offsec.com/offsec-courses/PEN-210/images/Wireshark_Essentials/79ae5ad5bef04a423d3929f0c3aa2f34-ws_display_filter_button2.png)

Figure 27: Display Filter button

Clicking on our new button sets the content of the filter toolbar to "wlan.fc.type == 2". Right-clicking the button gives us options to edit, disable, or remove the button.

![Figure 28: Display Filter buttons preferences](https://static.offsec.com/offsec-courses/PEN-210/images/Wireshark_Essentials/418e32c45bee23fb3a0bffef020c50a3-ws_dfilter_button_right_click2.png)

Figure 28: Display Filter buttons preferences

Editing a button will bring back the creation panel below the Display Filter bar. This time, the creation panel will be prefilled with the button's existing settings.

Filter buttons can also be created, deleted, or edited via _Edit_ > _Preferences..._, and selecting _Filter Buttons_ in the left panel.

![Figure 29: Display Filter buttons preferences](https://static.offsec.com/offsec-courses/PEN-210/images/Wireshark_Essentials/eecaaae92de6cb77f821aa1503beeffb-ws_display_filter_buttons_prefs2.png)

Figure 29: Display Filter buttons preferences

#### Exercise

Configure your lab AP to use WPA encryption, either with TKIP or CCMP (sometimes shown as AES). Ensure that your wireless card is in monitor mode on the same channel as your AP.

With a capture running, create a display filter for the BSSID of your lab AP. The BSSID is usually printed on a sticker on the back on the AP but can also be found in the frames by looking for Beacon frames with your SSID.

1

(Wireshark Foundation, 2017), [https://wiki.wireshark.org/DisplayFilters](https://wiki.wireshark.org/DisplayFilters) [↩︎](https://portal.offsec.com/courses/pen-210-9545/learning/wireshark-essentials-15802/advanced-preferences-15813/capture-snaplen-16015#fnref-local_id_48-1)

### 4.2.2. Wireshark Capture Filters

_Capture Filters_[1](https://portal.offsec.com/courses/pen-210-9545/learning/wireshark-essentials-15802/advanced-preferences-15813/capture-snaplen-16015#fn-local_id_49-1) allow Wireshark to only collect a specific type of data. Display filters, which we just discussed, decrease the amount of data _displayed_, while capture filters limit the amount of data _received_. While they might seem similar, there are a number of reasons why we might opt to use capture filters instead of display filters.

Capture filters are also sometimes called Berkeley Packet Filters (BPF).[2](https://portal.offsec.com/courses/pen-210-9545/learning/wireshark-essentials-15802/advanced-preferences-15813/capture-snaplen-16015#fn-local_id_49-2)

When capturing, Wireshark and tshark temporarily store and dissect each packet in memory (unless specified otherwise in the options). As the amount of data increases, the memory and CPU requirements grow. If packets can't be dissected, they may be dropped, and one of those dropped packets could contain crucial information. Using a capture filter allows us to cut down on the amount of data captured so we can focus on the data that we really need.

Another reason to use a capture filter is when we are only allowed to look at specific traffic, such as when isolating the traffic of one or more devices.

We need to be careful when creating this type of filter, as we can't recover data that we don't capture. If we make a mistake with a display filter, we can simply remove the filter to "unhide" the necessary packets.

Capture filters for Wi-Fi are limited to filtering on MAC addresses and on frame types/subtypes. They are documented in the _pcap-filter_ man page.[3](https://portal.offsec.com/courses/pen-210-9545/learning/wireshark-essentials-15802/advanced-preferences-15813/capture-snaplen-16015#fn-local_id_49-3)

#### Example: Filtering out Beacons

The most common type of Wi-Fi frames are beacons. Every AP sends them approximately 10 times per second to announce its presence. Beacon frames aren't particularly useful when looking at traffic and are often the first type of frames excluded using display filters. We can save a bit of time by filtering them beforehand. Let's select our wireless interface (wlan0mon) and then place "not subtype beacon" in the capture filter field.

![Figure 30: Capture filter - ignore beacons](https://static.offsec.com/offsec-courses/PEN-210/images/Wireshark_Essentials/23fc8e4a06ede392e476a15f42ba745b-we_capture_filter_startup_screen.png)

Figure 30: Capture filter - ignore beacons

Next we click the shark fin to start our capture without beacon frames, thereby eliminating unnecessary traffic and data.

![Figure 31: Capture filter - Capturing](https://static.offsec.com/offsec-courses/PEN-210/images/Wireshark_Essentials/7fda537adc2abbdc9394053320a75f6e-we_capture_filter_packet_list.png)

Figure 31: Capture filter - Capturing

Capture filters refine our results based on values in each frame we receive. One of those values contained in a wireless frame is between one and four MAC addresses.[4](https://portal.offsec.com/courses/pen-210-9545/learning/wireshark-essentials-15802/advanced-preferences-15813/capture-snaplen-16015#fn-local_id_49-4) To only capture frames from a specific device, we'll have to build a filter to match one of these addresses.

Let's try and capture the wireless traffic of the device 3A:30:F9:0F:E1:95. We'll start our capture with the following filter. To ensure we capture all relevant traffic, let's include all four possible locations where our MAC address might appear.

```
(wlan addr1 3A:30:F9:0F:E1:95) or (wlan addr2 3A:30:F9:0F:E1:95) or (wlan addr3 3A:30:F9:0F:E1:95) or (wlan addr4 3A:30:F9:0F:E1:95)
```

> Listing 3 - Filtering for a device

The parentheses included here are optional, but they make it a bit easier to read the filter.

![Figure 32: Capture filter - Capturing a specific device](https://static.offsec.com/offsec-courses/PEN-210/images/Wireshark_Essentials/59d86c7f162ca56410c1253de3437922-we_capture_filter_addr2.png)

Figure 32: Capture filter - Capturing a specific device

In Figure 32, we find that our filter was successful. We are only capturing frames related to our specified device.

Let's combine our device capture filter with the beacon frames filter.

```
((wlan addr1 3A:30:F9:0F:E1:95) or (wlan addr2 3A:30:F9:0F:E1:95) or (wlan addr3 3A:30:F9:0F:E1:95) or (wlan addr4 3A:30:F9:0F:E1:95)) and (not subtype beacon)
```

> Listing 4 - Device capture filter with the beacon frames filter

We are still capturing control frames we don't need, such as acknowledgement, request to send (rts), clear to send (cts), etc. We can filter these out with "not type control".

There are other frames we can filter out as well. Let's cut out management frames we don't need, such as probe requests and responses. We can do this with "not subtype probe-req" and "not subtype probe-resp". We will add these to our capture filter.

```
((wlan addr1 3A:30:F9:0F:E1:95) or (wlan addr2 3A:30:F9:0F:E1:95) or (wlan addr3 3A:30:F9:0F:E1:95) or (wlan addr4 3A:30:F9:0F:E1:95)) and not (subtype beacon) and not (type ctl) and not (subtype probe-req) and not (subtype probe-resp)
```

> Listing 5 - Our expanded capture filter

The capture filter is quite long, so we may want to save it for future use. We'll click on the bookmark to reveal the _Save this filter_ option as well as a default set of capture filters and any previously saved filters.

![Figure 33: Capture filter - Capture filter bookmarks](https://static.offsec.com/offsec-courses/PEN-210/images/Wireshark_Essentials/ba5fac602c3e075cbd5c37755e9943d3-we_capture_filters_save.png)

Figure 33: Capture filter - Capture filter bookmarks

We'll select the save option, which opens the _Manage Capture Filters_ screen, Let's save our new capture filter as "wifu".

![Figure 34: Capture filter - Saving a capture filter](https://static.offsec.com/offsec-courses/PEN-210/images/Wireshark_Essentials/3689e6b21b0bfe93e715359f0f766d3c-we_capture_filter_manage_filters.png)

Figure 34: Capture filter - Saving a capture filter

Finally, we'll apply the saved filter. Now our capture only collects relevant frames.

![Figure 35: Capture filter - relevant frames](https://static.offsec.com/offsec-courses/PEN-210/images/Wireshark_Essentials/a1e3163b9e356beadb26f2af19e7923a-we_capture_filter_wifu2.png)

Figure 35: Capture filter - relevant frames

#### Exercise

Start a packet capture in Wireshark with a capture filter for:

1. Beacons
2. Probes (requests and responses)
3. Association (requests and responses)
4. Data (any)
5. A specific MAC address

1

(Wireshark Foundation, 2016), [https://wiki.wireshark.org/CaptureFilters](https://wiki.wireshark.org/CaptureFilters) [↩︎](https://portal.offsec.com/courses/pen-210-9545/learning/wireshark-essentials-15802/advanced-preferences-15813/capture-snaplen-16015#fnref-local_id_49-1)

2

(Wikipedia, 2021), [https://en.wikipedia.org/wiki/Berkeley_Packet_Filter](https://en.wikipedia.org/wiki/Berkeley_Packet_Filter) [↩︎](https://portal.offsec.com/courses/pen-210-9545/learning/wireshark-essentials-15802/advanced-preferences-15813/capture-snaplen-16015#fnref-local_id_49-2)

3

(Tcpdump Group, 2021), [https://www.tcpdump.org/manpages/pcap-filter.7.html](https://www.tcpdump.org/manpages/pcap-filter.7.html) [↩︎](https://portal.offsec.com/courses/pen-210-9545/learning/wireshark-essentials-15802/advanced-preferences-15813/capture-snaplen-16015#fnref-local_id_49-3)

4

(Wi-Fi Notebook, 2013), [http://80211notes.blogspot.com/2013/09/understanding-address-fields-in-80211.html](http://80211notes.blogspot.com/2013/09/understanding-address-fields-in-80211.html) [↩︎](https://portal.offsec.com/courses/pen-210-9545/learning/wireshark-essentials-15802/advanced-preferences-15813/capture-snaplen-16015#fnref-local_id_49-4)

## 4.3. Wireshark at the Command Line

Although Wireshark is a GUI, it has a number of useful command line parameters. To display a list of all of the possible parameters, we can run wireshark --help from the command line. Listing 6 shows some of Wireshark's most useful options.

```
kali@kali:~$ wireshark --help
Wireshark 3.2.1 (Git v3.2.1 packaged as 3.2.1-1)
Interactively dump and analyze network traffic.
See https://www.wireshark.org for more information.

Usage: wireshark [options] ... [ <infile> ]

Capture interface:
  -i <interface>, --interface <interface>
                           name or idx of interface (def: first non-loopback)
  -f <capture filter>      packet filter in libpcap filter syntax
  -s <snaplen>, --snapshot-length <snaplen>
                           packet snapshot length (def: appropriate maximum)
...
  -k                       start capturing immediately (def: do nothing)
...
  -I, --monitor-mode       capture in monitor mode, if available
...
  -D, --list-interfaces    print list of interfaces and exit
...
```

> Listing 6 - List of Wireshark interfaces

Let's cover the items shown in the listing above.

The -D option lists all the available interfaces along with their index numbers.

```
kali@kali:~$ sudo wireshark -D
Capture-Message: 14:05:44.552: Capture Interface List ...
Capture-Message: 14:05:44.697: Loading External Capture Interface List ...
1. eth0
2. lo (Loopback)
3. any
4. wlan0mon
5. nflog
6. nfqueue
7. ciscodump (Cisco remote capture)
8. dpauxmon (DisplayPort AUX channel monitor capture)
9. randpkt (Random packet generator)
10. sdjournal (systemd Journal Export)
11. sshdump (SSH remote capture)
12. udpdump (UDP Listener remote capture)
```

> Listing 7 - List of Wireshark interfaces

The -i option is to specify the name or the index of the interface to capture on. It should be followed by the interface name or index. Using a single hyphen, -, as the interface name will capture on STDIN. This will come in handy when using pipes, as we will explain later.

It's common to use the -k option after -i. The -k option automatically starts the capture. With our wireless interface in monitor mode, we can start our capture with the following command.

```
kali@kali:~$ sudo wireshark -i wlan0mon -k
QStandardPaths: XDG_RUNTIME_DIR not set, defaulting to '/tmp/runtime-root'
...
```

> Listing 8 - Starting capture on wlan0mon

This will automatically open the GUI with the packet capture running.

One scenario where we might use -i _without_ -k is when we want to start Wireshark, select an interface that isn't up yet, and then manually start the capture once the interface is up. For now, let's continue to use -k.

Next, let's add the -I option, which enables monitor mode in the selected wireless interface.

```
kali@kali:~$ sudo wireshark -i wlan0 -I -k
QStandardPaths: XDG_RUNTIME_DIR not set, defaulting to '/tmp/runtime-root'
...
```

> Listing 9 - Putting wlan0 in monitor mode and starting capture

We can also use the -i option with an interface's index. We checked the index in Listing 7. Let's replace wlan0mon with the corresponding index number, 4.

```
kali@kali:~$ sudo wireshark -i 4 -I -k
QStandardPaths: XDG_RUNTIME_DIR not set, defaulting to '/tmp/runtime-root'
...
```

> Listing 10 - Starting capture with interface index

Let's continue to add to this command. We can add a beacon frame capture filter with the -f option.

```
kali@kali:~$ sudo wireshark -i wlan0mon -k -f "not subtype beacon"
QStandardPaths: XDG_RUNTIME_DIR not set, defaulting to '/tmp/runtime-root'
```

> Listing 11 - Starting capture with a Beacon frame capture filter

Wireshark can capture the first few bytes of each frame instead of the full frame with -s option followed by the length in bytes.

```
kali@kali:~$ sudo wireshark -i wlan0mon -k -s 60
QStandardPaths: XDG_RUNTIME_DIR not set, defaulting to '/tmp/runtime-root'
```

> Listing 12 - Starting capture with a snapshot length of 60 bytes

We can also use Wireshark to simply open capture files, with or without additional parameters. If we use parameters, we have to specify them _before_ the capture filename. Capture files usually have an extension of .cap or .pcap.

```
kali@kali:~$ wireshark wifi.pcap 
16:36:29.699          Warn Invalid borders specified for theme pixmap:
        /usr/share/themes/Kali-Dark/gtk-2.0/assets/trough-scrollbar-horiz.png,
borders don't fit within the image
...
```

> Listing 13 - Opening wifi.pcap

Wireshark doesn't need elevated privileges (sudo) when opening files, unless the file's permissions requires it.

#### Exercises

Start Wireshark from the command line using the following options:

1. Initiate immediate capture with your wireless interface.
2. Initiate immediate capture and place your wireless interface in monitor mode.
3. Initiate immediate capture with a capture filter.
4. Open a .pcap file.

## 4.4. Remote Packet Capture

Not only can we use Wireshark to capture packets passing through a local interface, but it can also capture packets remotely from another system's interface. This comes in handy when the local system doesn't have the ability to capture packets, or when we are trying to diagnose an issue remotely.

There are a few different ways that we can capture packets remotely. The first one, using the command line, is to run a command remotely using SSH, output the results, and pipe them to Wireshark. We could also use Wireshark's built-in tool, _SSHdump_,[1](https://portal.offsec.com/courses/pen-210-9545/learning/wireshark-essentials-15802/advanced-preferences-15813/capture-snaplen-16015#fn-local_id_51-1) to achieve the same as the command line.

SSHdump is easier and more convenient, but command-line options are more stable.

Let's take a quick look at two other methods for remote capture. First, we could use a _RPCAP URI_.[2](https://portal.offsec.com/courses/pen-210-9545/learning/wireshark-essentials-15802/advanced-preferences-15813/capture-snaplen-16015#fn-local_id_51-2) This only works on Windows, where Wi-Fi packet capture is severely limited. Second, we could use _udpdump_[3](https://portal.offsec.com/courses/pen-210-9545/learning/wireshark-essentials-15802/advanced-preferences-15813/capture-snaplen-16015#fn-local_id_51-3) to receive data through a UDP listener. Both of these methods have very limited use and will not be practical for our purposes.

1

(Dario Lombardo), [https://www.wireshark.org/docs/man-pages/sshdump.html](https://www.wireshark.org/docs/man-pages/sshdump.html) [↩︎](https://portal.offsec.com/courses/pen-210-9545/learning/wireshark-essentials-15802/advanced-preferences-15813/capture-snaplen-16015#fnref-local_id_51-1)

2

(WinPcap, 2007), [https://www.winpcap.org/docs/docs_40_2/html/group__remote.html](https://www.winpcap.org/docs/docs_40_2/html/group__remote.html) [↩︎](https://portal.offsec.com/courses/pen-210-9545/learning/wireshark-essentials-15802/advanced-preferences-15813/capture-snaplen-16015#fnref-local_id_51-2)

3

(Wireshark Foundation, 2021), [https://www.wireshark.org/docs/man-pages/udpdump.html](https://www.wireshark.org/docs/man-pages/udpdump.html) [↩︎](https://portal.offsec.com/courses/pen-210-9545/learning/wireshark-essentials-15802/advanced-preferences-15813/capture-snaplen-16015#fnref-local_id_51-3)

### 4.4.1. Remote Packet Capture Setup

Let's begin to work towards remote packet capture. We'll begin locally, by covering how to capture and output wireless packets on STDOUT. Next, we'll cover how to pipe the STDOUT wireless packets to Wireshark. Finally, we'll cover how to combine those two, doing the first part remotely and the second part locally.

#### Capture and Output Packets on STDOUT

We can use any tool capable of capturing data and outputting to STDOUT. The ones we will demonstrate here will be tcpdump, dumpcap, and tshark.

Since not all tools will be available on all systems, it is important for us to know how to use each of them. Another thing we need to take into consideration is CPU usage. Dumpcap has lower overhead compared to tcpdump and tshark. The difference in CPU usage between these tools may be negligible when using a desktop or a laptop as the remote capture device. It's more likely that we will notice a difference when we start transferring more traffic or if we use low power devices such as routers, single-board computers (SBC),[1](https://portal.offsec.com/courses/pen-210-9545/learning/wireshark-essentials-15802/advanced-preferences-15813/capture-snaplen-16015#fn-local_id_52-1) or access points as capture devices.

Let's begin with tcpdump. Assuming we have enabled monitor mode, we can specify our capture interface with -i wlan0mon. We will write the raw packets to a file with -w but to STDOUT with a hyphen, - rather than to a file name. Next, the -U option outputs each packet as it arrives. This last option is helpful since the default behavior is to wait for the system's buffer to fill before outputting bursts of packet output.

```
kali@kali:~$ sudo tcpdump -i wlan0mon -w - -U
�ò�tcpdump: listening on wlan0mon, link-type IEEE802_11_RADIO (802.11 plus radiotap header), capture size 262144 bytes
```

> Listing 14 - TCPdump output on stdout

Let's review the tcpdump output a bit. The non-printable characters are the raw .pcap that will be decoded by Wireshark.

Incidentally, this link type message is sent to STDERR for output into the terminal. The non-printable characters are sent to STDOUT and will be what we use with Wireshark.

We exit tcpdump with C+c and statistics of the capture are output in the console.

```
151 packets captured
160 packets received by filter
0 packets dropped by kernel
1 packet dropped by interface
```

> Listing 15 - Statistics from TCPdump when exiting Wireshark

The dumpcap tool's usage is similar to tcpdump when sending the captured data to STDOUT. One difference is that dumpcap requires the -P option to output the data in PCAP format.

```
kali@kali:~$ sudo dumpcap -w - -P -i wlan0mon
Capturing on 'wlan0mon'
�ò�File: -
9UY^m*.Hl	�������������5����5��1�d
...
```

> Listing 16 - dumpcap output on stdout

To do the same thing with tshark, we would use the command below.

```
kali@kali:~$ sudo tshark -w - -i wlan0mon
Running as user "root" and group "root". This could be dangerous.
Capturing on 'wlan0mon'

�M<+���������6Intel(R) Core(TM) i7-9750H CPU @ 2.60GHz (with SSE4.2)Linux 5.4.0-kali3-amd64:Dumpcap (Wireshark) 3.2.1 (Git v3.2.1 packaged as 3.2.1-1)�wlan0mon
...
```

> Listing 17 - tshark output on stdout

#### Pipe Packets to Wireshark

Now that we understand the basics of packet capture to STDOUT, the next step is to pipe the packets to Wireshark.

Pipes are a form of Inter-Process Communication (IPC) objects of which there are two types, named and unnamed pipes.

_Named pipes_, also known as First in, First out (FIFO) IPC objects, are present on the filesystem and allow bi-directional communications.

_Unnamed pipes_, also known as unnamed IPC objects, make use of the _pipe()_ function. One way we might use this function is when we chain commands in terminals by using the pipe (|) character.[2](https://portal.offsec.com/courses/pen-210-9545/learning/wireshark-essentials-15802/advanced-preferences-15813/capture-snaplen-16015#fn-local_id_52-2)

Choosing between one type or the other depends on the application, its options, and capabilities.[3](https://portal.offsec.com/courses/pen-210-9545/learning/wireshark-essentials-15802/advanced-preferences-15813/capture-snaplen-16015#fn-local_id_52-3) Some applications may not support any and some may only support one kind. In the case of Wireshark, both options are available.

#### Unnamed Pipe

Unnamed pipes allow us to chain commands together by passing the output of one command to the input of another. We will show an example with the following command.

```
kali@kali:~$ ls /var/log | more
```

> Listing 18 - Pipe example

In listing 18, we ran two commands. The first is ls /var/log, which lists the contents of the /var/log directory. As the output from the command may be too long to fit in the terminal display, piping the output to the more command will allow us to page through the results. In this case, the output of the first command becomes the input for the second command.

We're not limited to using a single pipe, either. Let's explore the possibilities a bit by building on the previous command. We will insert sort between ls /var/log and more in order to sort the list of files and directories in reverse order. After we've done that, more will let us page through the newly sorted results.

```
kali@kali:~$ ls /var/log | sort -r | more
```

> Listing 19 - Chaining commands using multiple pipes

Let's apply this concept to packet capture by launching our tcpdump command (or an equivalent dumpcap or tshark command) and piping the output to Wireshark.

```
kali@kali:~$ sudo tcpdump -U -w - -i wlan0mon | wireshark -k -i -
tcpdump: listening on wlan0mon, link-type IEEE802_11_RADIO (802.11 plus radiotap header), capture size 262144 bytes
```

> Listing 20 - Capturing traffic and piping it to Wireshark

Wireshark launches and displays the flowing wireless frames as they arrive.

![Figure 36: tcpdump live output piped to Wireshark](https://static.offsec.com/offsec-courses/PEN-210/images/Wireshark_Essentials/d54846f8668e54a03dd1b96ccb90b91e-ws_live_local_capture2.png)

Figure 36: tcpdump live output piped to Wireshark

Since pipes only transfer STDOUT, that data becomes STDIN for what is displayed in Wireshark. All we are shown in the command terminal is STDERR.

#### Named Pipe Devices

Named pipes are similar to unnamed pipes. They also allow two or more processes to communicate, but, as the name suggests, they have a name and (in the case of *Nix OSs) are present on the file system. This has the additional benefit of allowing us to set permissions and limit access.

Our focus is on Linux, but named pipes also exist on Windows, where they are handled a bit differently.[4](https://portal.offsec.com/courses/pen-210-9545/learning/wireshark-essentials-15802/advanced-preferences-15813/capture-snaplen-16015#fn-local_id_52-4)

Let's create the named pipe using mkfifo followed by its chosen pathname.

```
kali@kali:~$ mkfifo /tmp/named_pipe

kali@kali:~$ ls -l /tmp/named_pipe
prw-r--r-- 1 kali kali 0 Jul 27 20:47 /tmp/named_pipe
```

> Listing 21 - Creating and checking named pipe

The "p" in the beginning of the file permissions indicates it is a pipe.

Wireshark's -i option is quite versatile. Let's use this named pipe as our interface.

```
kali@kali:~$ sudo wireshark -k -i /tmp/named_pipe
```

> Listing 22 - Starting capture with Wireshark on a named pipe

After executing the command, Wireshark starts but will not display packets until another capture tool writes data to the named pipe.

Another option is to configure our named pipe from within Wireshark. In the Wireshark menu, we will navigate to _Capture_ > _Options..._.

![Figure 37: Capture interfaces list](https://static.offsec.com/offsec-courses/PEN-210/images/Wireshark_Essentials/a21588b31648e1c6eb1362c72539d57f-ws_wireshark_capture_options2.png)

Figure 37: Capture interfaces list

Let's click on the _Manage Interfaces_ button, select the _Pipes_ tab, and click on the _+_ to create a new pipe. Finally, we'll enter the named pipe's path name, /tmp/named_pipe.

![Figure 38: Manage interfaces - Named pipes](https://static.offsec.com/offsec-courses/PEN-210/images/Wireshark_Essentials/f1fe30b857130a9829d23ef7c9405d52-ws_wireshark_manage_named_pipes2.png)

Figure 38: Manage interfaces - Named pipes

Once done, we click _OK_ and the pipe is added to the interface list.

![Figure 39: Capture interfaces list with added named pipe](https://static.offsec.com/offsec-courses/PEN-210/images/Wireshark_Essentials/a21354bfcdcaa0bed1d724014c3cb986-ws_wireshark_added_named_pipe2.png)

Figure 39: Capture interfaces list with added named pipe

Let's select the named pipe and click _Start_. Again, Wireshark will not display wireless packets until a capture tool writes data to the named pipe.

Let's initiate the packet capture in a terminal.

```
kali@kali:~$ sudo tcpdump -U -w - -i wlan0mon > /tmp/named_pipe
```

> Listing 23 - Starting capture on wlan0mon and sending data to the named pipe

The wireless packets will now be displayed in Wireshark.

To summarize, the difference between the two pipe methods is the unnamed pipe writes the capture tool data directly into Wireshark. On the other hand, Wireshark uses the named pipe as an interface and then the capture tool data is written to the named pipe.

#### Run the Command Remotely

Now that we have a good foundation, let's see how it looks when we actually involve a remote system where we have SSH access. SSH is versatile, and while it is useful for administrating remote systems with an interactive shell, it also has the ability to run a command, display the output on STDOUT, and then exit.

With a remote system's wireless interface in monitor mode, initiating a remote capture is just a matter of putting the pieces together with an SSH session.

First, we connect to the remote system with the SSH command followed by our tcpdump command. Then we pipe this into wireshark.

It is always a good idea to enclose the command in double quotes to make sure the parameters don't accidentally become SSH parameters.

```
kali@kali:/$ ssh root@10.11.0.196 "sudo -S tcpdump -U -w - -i wlan0mon" | sudo wireshark -k -i -
QStandardPaths: XDG_RUNTIME_DIR not set, defaulting to '/tmp/runtime-root'
root@10.11.0.196's password:******
tcpdump: listening on wlan0mon, link-type IEEE802_11_RADIO (802.11 plus radiotap header), capture size 262144 bytes
```

> Listing 24 - Capturing traffic with tcpdump on remote host and piping it to Wireshark

Once we execute the command, Wireshark starts on our local machine and the terminal prompts for the remote system's SSH password. After entering the password, captured data is written to Wireshark, which displays the wireless frames as they arrive.

#### Exercises

1. Using an unnamed pipe, execute tcpdump with your wireless device and direct it to Wireshark.
2. Using a named pipe, execute tcpdump with your wireless device and direct it to Wireshark.
3. Initiate a remote SSH tcpdump command and pipe the capture to Wireshark. This may be executed via localhost, to another virtual machine, or to another system on which you have SSH access.

1

(Wikipedia, 2021), [https://en.wikipedia.org/wiki/Single-board_computer](https://en.wikipedia.org/wiki/Single-board_computer) [↩︎](https://portal.offsec.com/courses/pen-210-9545/learning/wireshark-essentials-15802/advanced-preferences-15813/capture-snaplen-16015#fnref-local_id_52-1)

2

(Brandon Wamboldt, 2014), [https://web.archive.org/web/20210424033800/https://brandonwamboldt.ca/how-linux-pipes-work-under-the-hood-1518/](https://web.archive.org/web/20210424033800/https://brandonwamboldt.ca/how-linux-pipes-work-under-the-hood-1518/) [↩︎](https://portal.offsec.com/courses/pen-210-9545/learning/wireshark-essentials-15802/advanced-preferences-15813/capture-snaplen-16015#fnref-local_id_52-2)

3

(Jyoti Singh, 2018), [https://web.archive.org/web/20200429051020/https://www.embhack.com/pipe-and-fifo/](https://web.archive.org/web/20200429051020/https://www.embhack.com/pipe-and-fifo/) [↩︎](https://portal.offsec.com/courses/pen-210-9545/learning/wireshark-essentials-15802/advanced-preferences-15813/capture-snaplen-16015#fnref-local_id_52-3)

4

(Wireshark Foundation, 2020), [https://wiki.wireshark.org/CaptureSetup/Pipes](https://wiki.wireshark.org/CaptureSetup/Pipes) [↩︎](https://portal.offsec.com/courses/pen-210-9545/learning/wireshark-essentials-15802/advanced-preferences-15813/capture-snaplen-16015#fnref-local_id_52-4)

### 4.4.2. Built-in Wireshark

Let's review how to do remote packet capture with SSH from _within_ Wireshark. If we've previously isolated our devices to only the wireless interfaces, we can refocus to _External Capture_ devices. We'll select _External Capture_ and then de-select all others in the interface's dropdown menu.

![Figure 40: External virtual interfaces in dropdown box](https://static.offsec.com/offsec-courses/PEN-210/images/Wireshark_Essentials/4a23d111b445d94ca74382390d917887-ws_interface_type_dd_extcap_large.png)

Figure 40: External virtual interfaces in dropdown box

Next, let's click on the cog wheel to the left of _SSH remote capture: sshdump_ at the bottom of the _Capture_ section to open the options window.

![Figure 41: External virtual interfaces](https://static.offsec.com/offsec-courses/PEN-210/images/Wireshark_Essentials/d263aa2922a3afd18262381f893ba14e-ws_wireshark_extcap_interfaces.png)

Figure 41: External virtual interfaces

Wireshark typically captures from interfaces on the local system. These "External Capture" interfaces are using _ExtCap_,[1](https://portal.offsec.com/courses/pen-210-9545/learning/wireshark-essentials-15802/advanced-preferences-15813/capture-snaplen-16015#fn-local_id_53-1) which allows executables to be seen as capture interfaces. All of these are separate binaries: ciscodump, dpauxmon, randpkt, sdjournal, sshdump, and udpdump. They provide data in PCAP format and can be found in the /usr/lib/x86_64-linux-gnu/wireshark/extcap/ directory (on a 64bit Kali). Some of these tools have man pages but they all are executed with a few arguments. All of them are similarly configured in the Wireshark GUI.

On this first screen, let's configure the IP address of the remote host. The _Remote SSH server port_ field is required, so we'll enter the default of port 22.

![Figure 42: SSHdump - Server tab](https://static.offsec.com/offsec-courses/PEN-210/images/Wireshark_Essentials/7ebb65c2888543fdc1fb538ec0abe0aa-ws_sshdump_server2.png)

Figure 42: SSHdump - Server tab

On the _Authentication_ tab, we enter the SSH credentials for the remote host. SSHdump handles both password-based authentication and key-based authentication.

![Figure 43: SSHdump - Authentication tab](https://static.offsec.com/offsec-courses/PEN-210/images/Wireshark_Essentials/60c7e7d7e1b4a040db44edaf6f750a46-ws_sshdump_auth2.png)

Figure 43: SSHdump - Authentication tab

SSH key-based and ProxyCommand authentication are also options, but we will confine our capture to using a username and password.

In this example, we are authenticating to the remote system as root. To use a standard user instead, you will need to run 'sudo dpkg-reconfigure wireshark-common / yes' to reconfigure the wireshark package and 'sudo usermod -a -G wireshark kali' to add the user (kali in this example) to the wireshark group

Next, we enter the required parameters in the _Capture_ tab.

![Figure 44: SSHdump - Capture tab](https://static.offsec.com/offsec-courses/PEN-210/images/Wireshark_Essentials/7fa9e2389562d88a64501a7753fbddea-ws_sshdump_capture2.png)

Figure 44: SSHdump - Capture tab

The SSHDump tool is basically an application that builds an sshdump command line argument. The _Remote interface_ textbox is the equivalent of appending -i wlan0mon in the _Remote capture command_ textbox.

The user on the remote system must be able to either initiate a capture or have access to sudo. If it's the latter, check the _Use sudo on the remote machine_ checkbox.

In this example, we will use dumpcap to minimize CPU usage, although we could use any capture tool as long as it is available on the remote capture device.

The last tab is to enable debugging and to specify where to save the log messages in case we encounter errors.

![Figure 45: SSHdump - Debug tab](https://static.offsec.com/offsec-courses/PEN-210/images/Wireshark_Essentials/bb30af0b99deb4bb6f17d48460d18221-ws_sshdump_debug2.png)

Figure 45: SSHdump - Debug tab

Once ready, we click _Start_. If the parameters are correct and the remote system is reachable, the capture will start shortly.

When _Save parameter(s) on capture start_ is checked, the next time SSHdump is used, it won't prompt for settings and will start automatically. If the settings are not properly set and an error results, Wireshark does not make resetting to the defaults easy. They can be reset via _Edit_ > _Preferences..._ > _Advanced_. In the resulting _Search:_ textbox, we type "sshdump". Then double click every modified parameter (anything in bold) to set SSHDump back to the default values. Click on _OK_ and SSHDump is back to its default configuration.

#### Exercise

Using Wireshark's SSH option, initiate a dumpcap capture on a remote system. This may be executed via localhost, to another virtual machine, or to another system on which you have SSH access.

1

(Wireshark Foundation, 2021), [https://www.wireshark.org/docs/man-pages/extcap.html](https://www.wireshark.org/docs/man-pages/extcap.html) [↩︎](https://portal.offsec.com/courses/pen-210-9545/learning/wireshark-essentials-15802/advanced-preferences-15813/capture-snaplen-16015#fnref-local_id_53-1)

## 4.5. Advanced Preferences

Wireshark has a large number of available options that we can configure to improve our workflow. In the next few sections, we will cover some of the more common preferences that we use.

### 4.5.1. Coloring Rules

To make analysis easier, we can apply colored highlights to packets in the packet list. In order to turn colors on or off, we will toggle _View_ > _Colorize Packet List_. We can edit the rules under _View_ > _Coloring rules_.

![Figure 46: Coloring rules menu](https://static.offsec.com/offsec-courses/PEN-210/images/Wireshark_Essentials/948c1628b269f0244f4cb95b993d0333-ws_wireshark_coloring_rules_menu2.png)

Figure 46: Coloring rules menu

Wireshark's default coloring rules are mostly for Ethernet networks, but we can add additional rules for wireless frames.

![Figure 47: Coloring rules](https://static.offsec.com/offsec-courses/PEN-210/images/Wireshark_Essentials/7a8a7605f7d5b3c4fbf8c0b88ccd1cf5-ws_wireshark_coloring_rules_default2.png)

Figure 47: Coloring rules

Wireshark processes the rules in order until a match is found, applies the coloring, then stops. It also skips disabled (unchecked) rules.

In order to add a rule, we will click on the _+_ button, fill in the display filter, and name it. To select colors, we simply click on the boxes containing _Foreground_ (for the font color) and _Background_ where we can either use the preselected colors or use the color picker to add different ones. Once we click _OK_, we should see the colors applied to the current capture as long as we remembered to check the _View_ > _Colorize Packet List_ option.

The red _X_ button will delete the currently selected rule, and the button next to it will duplicate the currently selected rule. The following button clears the whole list. Moving the rules around is just a matter of clicking on them and moving them up and down.

Rather than creating a series of rules, one easy option is to import a wireless coloring rules file from the Wireshark coloring rules wiki.[1](https://portal.offsec.com/courses/pen-210-9545/learning/wireshark-essentials-15802/advanced-preferences-15813/capture-snaplen-16015#fn-local_id_55-1) To do this, we will download and save the file to the system, select _Import..._, browse to the color rules file, and select _Open_. Once we see the new wireless rules displayed with the default color rules, we can select _OK_ to apply them.

![Figure 48: Packet list using coloring WLAN rules](https://static.offsec.com/offsec-courses/PEN-210/images/Wireshark_Essentials/c09571ba3293f148d87cadcc064534c8-we_packet_list_colored2.png)

Figure 48: Packet list using coloring WLAN rules

It's much easier to quickly notice important traffic thanks to the coloring. Now, looking at the traffic flowing, we recognize the types of frames of interest. Coloring reassociation, authentication, deauthentication, disassociation, eapol, eap, etc., makes them stand out. We can also use the color rules to analyze traffic.

1

(Wikipedia, 2015), [https://wiki.wireshark.org/ColoringRules](https://wiki.wireshark.org/ColoringRules) [↩︎](https://portal.offsec.com/courses/pen-210-9545/learning/wireshark-essentials-15802/advanced-preferences-15813/capture-snaplen-16015#fnref-local_id_55-1)

### 4.5.2. Wireshark Columns

If we'd like, we can move, resize, remove, hide, and add new columns in the Wireshark Packet List.

We can create a column from any item of interest from within a packet. For example, we can add a channel column from a probe request packet. Let's expand the _802.11 radio information_ field, right click _Channel 11_, and select _Apply as a column_.

![Figure 49: New column added from 802.11 radio information](https://static.offsec.com/offsec-courses/PEN-210/images/Wireshark_Essentials/f4d20d1ef33de1c10d413ea7ed1bafd5-ws_wireshark_channel_added_as_column_menu.png)

Figure 49: New column added from 802.11 radio information

We can see the Channel column appear in the Packet List window. We can also create a column by selecting the item and then selecting _Analyze_ > _Apply as a column_.

![Figure 50: New column added from 802.11 radio information](https://static.offsec.com/offsec-courses/PEN-210/images/Wireshark_Essentials/3c73a05a6d942e9618f16f42b59f0e6f-ws_wireshark_channel_added_as_column1.png)

Figure 50: New column added from 802.11 radio information

We can move a column by dragging it to the left or the right and then dropping it where we want it.

To remove a column, right-click on the selected column header and select _Remove This Column_ at the bottom of the pop-up menu. Deselecting the column in the section above hides it.

![Figure 51: Right click on Channel column](https://static.offsec.com/offsec-courses/PEN-210/images/Wireshark_Essentials/336ae6bb90ea43ee711783680cc237ce-ws_wireshark_column_right_click2.png)

Figure 51: Right click on Channel column

We can also manage columns in Preferences by going to _Edit_ > _Preferences..._. In the left panel, inside the _Appearance_ item, we will open _Columns_. Creating and editing a column this way follows the same general principals as before.

![Figure 52: Manage columns in Preferences](https://static.offsec.com/offsec-courses/PEN-210/images/Wireshark_Essentials/177ad516fbd39dbc0ee03878124e00ea-ws_wireshark_column_preferences2.png)

Figure 52: Manage columns in Preferences

### 4.5.3. Capture snaplen

Setting a _snaplen_,[1](https://portal.offsec.com/courses/pen-210-9545/learning/wireshark-essentials-15802/advanced-preferences-15813/capture-snaplen-16015#fn-local_id_57-1) or snapshot length, allows us to limit how much data we capture for each packet. Wireshark, tshark, dumpcap, and tcpdump can all set the snaplen for a capture.

For reasons similar to using a capture filter, snaplen is useful when we are not allowed to capture the entire packet of a target or we don't need the entire payload.

There is one caveat to snaplen. We have to configure it when setting up the capture, and we cannot change it while the capture is running.

Be careful setting the snaplen value. Wireless frame headers can vary in length due to the DLT (whose size varies across drivers), QoS,[2](https://portal.offsec.com/courses/pen-210-9545/learning/wireshark-essentials-15802/advanced-preferences-15813/capture-snaplen-16015#fn-local_id_57-2) and encryption. We will need to set the snaplen value appropriately to avoid cutting the packet too short. We will invariably get the first few bytes of some packet payloads.

The Wireshark snaplen setting isn't available on the welcome screen. It has to be configured in _Capture Interfaces_ via _Capture_ > _Options..._.

![Figure 53: Capture > Options... menu](https://static.offsec.com/offsec-courses/PEN-210/images/Wireshark_Essentials/116c85ea11e3184e9282c0d103714685-ws_capture_options2.png)

Figure 53: Capture > Options... menu

In the Capture Interfaces screen, we double-click on the _default_ value in the interface's _Snaplen (B)_ column to set its value (in bytes). To capture most frames without their payload, we can add 24 to the size of radiotap headers. Currently, with the wireless card recommended for the course, the size of radiotap headers is 36 bytes, which brings the snaplen to 60.

![Figure 54: Capture Interfaces - Setting snaplen to 48](https://static.offsec.com/offsec-courses/PEN-210/images/Wireshark_Essentials/faf985f0ce102a195eba221003d15ae8-ws_set_snaplen2.png)

Figure 54: Capture Interfaces - Setting snaplen to 48

To return the capture to the default snaplen value, enter 262144 in the _Snaplen (B)_ field.

Using the command line, the option to set the snaplen is -s followed by the value in bytes. Wireshark, tshark, dumpcap, and tcpdump all use the same command line option.

1

(Wireshark Foundation, 2010), [https://wiki.wireshark.org/SnapLen](https://wiki.wireshark.org/SnapLen) [↩︎](https://portal.offsec.com/courses/pen-210-9545/learning/wireshark-essentials-15802/advanced-preferences-15813/capture-snaplen-16015#fnref-local_id_57-1)

2

(mrn-cciew, 2014), [https://mrncciew.com/2014/10/13/cwap-802-11-data-frame-types/](https://mrncciew.com/2014/10/13/cwap-802-11-data-frame-types/) [↩︎](https://portal.offsec.com/courses/pen-210-9545/learning/wireshark-essentials-15802/advanced-preferences-15813/capture-snaplen-16015#fnref-local_id_57-2)

### 4.5.4. IEEE 802.11 Preferences

In the IEEE 802.11 protocols, we can change various settings regarding 802.11.

As we've seen before, we can access preferences through the shortcut on the right of the wireless toolbar or via _Edit_ > _Preferences_, then expanding _Protocols_ and clicking on _IEEE 802.11_.

![[Pasted image 20241126224251.png]]

When we hover the mouse over the different checkboxes and radio buttons, Wireshark displays helpful hints.

While some options are geared toward dealing with things like old driver bugs, a few may be useful. When we receive a large amount of data, CPU usage will rise. To save on CPU usage, we can disable _Call subdissector for retransmitted 802.11 frames_, and _Ignore vendor-specific HT elements_ to increase performance.

### WEP and WPA1/2 Decryption

Wireshark is able to decrypt WEP and WPA1/2 captures. As shown in the Figure 55, we have to check _Enable decryption_ and provide decryption keys. To do this, we can click on _Edit..._ located to the right of _Decryption keys_.

To add a WEP key, let's select _wep_ in the _Key type_, then fill in the _Key_ field with the WEP key in hexadecimal. If it's helpful, we can separate each byte with a colon as shown in Figure 56.

![[Pasted image 20241126225029.png]]

The _wpa-pwd_ is for WPA passphrases. The format is PASSPHRASE:ESSID.

![[Pasted image 20241126225046.png]]

We can omit the ESSID and only specify the passphrase. In this case, Wireshark applies this passphrase to any network, using it along with the last found ESSID in the packet list.

![[Pasted image 20241126225103.png]]

The last option, _wpa-psk_, allows us to enter the hexadecimal Pairwise Master Key (PMK). This is useful when decrypting WPA1/2 Enterprise packets, when using PSK and the ESSID, or when the passphrase contains a colon (:) character. We will discuss creating a PMK in the next section.

![[Pasted image 20241126225123.png]]

There are a few limitations to the decryption. First, due to how WPA/WPA2 was designed, we can only decrypt sessions after a full 4-way handshake. Second, Wireshark can usually handle up to 256 associations when decrypting WPA/WPA2, but it may fail if there are too many associations. Finally, the decrypted packets cannot be exported.


#### wpa_passphrase

_wpa_passphrase_[1](https://portal.offsec.com/courses/pen-210-9545/learning/wireshark-essentials-15802/advanced-preferences-15813/wep-and-wpa12-decryption-16013#fn-local_id_59-1) is part of _wpa_supplicant_[2](https://portal.offsec.com/courses/pen-210-9545/learning/wireshark-essentials-15802/advanced-preferences-15813/wep-and-wpa12-decryption-16013#fn-local_id_59-2) and we can use it to generate the PMK.[3](https://portal.offsec.com/courses/pen-210-9545/learning/wireshark-essentials-15802/advanced-preferences-15813/wep-and-wpa12-decryption-16013#fn-local_id_59-3) It is meant to create a wpa_supplicant configuration file, but we are able to use it with Wireshark as well. It's fairly simple to use.

The wpa_passphrase command requires one parameter, the SSID. The second parameter, a passphrase, is optional. If we don't provide a passphrase, it will prompt for user input. For security reasons, we don't recommend providing the passphrase as every command typed in a shell is saved in the history.

We use the below command to generate the 

```
wpa_passphrase <ESSID> <Password>
```

![[Pasted image 20241126230125.png]]

Now, we just need to add a new entry with a wpa-psk type key and copy the content of psk in the Key value. We do not want to provide an ESSID.


### WLAN Statistics

As the name suggests, _WLAN Statistics_ displays an overview for all the wireless frames in the packet list. The information can be focused on certain packets or devices by using display filters.

We can see the statistics in _Wireless_ > _WLAN traffic_. If we use wpa-Induction.pcap[1](https://portal.offsec.com/courses/pen-210-9545/learning/wireshark-essentials-15802/advanced-preferences-15813/wep-and-wpa12-decryption-16013#fn-local_id_60-1) from the Wireshark sample files, these are the results that will be displayed.

![[Pasted image 20241126230337.png]]

We can use a display filter to focus the statistics using certain packets or devices. In the example below, we'll use the filter "wlan.bssid == 00:0c:41:82:b2:55" to focus on the Coherer SSID.

![[Pasted image 20241126230429.png]]

Expanding the only BSSID left reveals all the MAC addresses linked to it. This will include the broadcast address and BSSID itself as indicated by the "Base station" in the last column.

We can export the summary can by clicking on _Save as..._. The resulting file contains the following.

#### Exercises

1. Open wpa-Induction.pcap and enable coloring rules with the rules available in Wireshark's website. Locate and identify the authentication (pink), association (light blue and light green), and the four EAPoL (dark green) frames. All these frames should be close-by.
2. Using display filters, use "eapol" to locate EAPoL frames and "wlan.fc.type_subtype in {0x0 0x1 0xb}" to locate association request/response and authentication frames.
3. Add a column for the data rate, which can be found in the _802.11 radio information_, and search for frames with a rate of 54 (Mbit).
4. Set-up a WPA access point with a passphrase of your choice containing special characters. Start a packet capture and connect a device. Browse the web for a little while, then stop the capture.
5. Use wpa_passphrase to generate the PMK, then add it in Wireshark to decrypt the capture. If all four EAPoL frames and beacons are present, DNS queries, HTTP, TLS, and other protocols should be displayed.



#### Solution

1. We can identify the different packets using the coloring rules (Authentication, Association, EAPOL)

![[Pasted image 20241129235105.png]]

2. To filter for EAPO frames we can use "eapol" display filter and the below for capturing Association request and response. 


```
wlan.fc.type_subtype in {0x0, 0x1, 0xb}
```


3. To filter on the data rate use the below filter:

```
wlan_radio.data_rate == 54
```


## Frames and Network Interaction

A number of different frames are used in order to ensure that everything gets through as efficiently as possible. 

* The object of this module is to understand more about frames used in Wi-Fi networks, including their headers and fields. 
* We will also learn how wireless devices interact with various types of networks

### Packets vs Frames

Packets and Frames are not interchangeable terms. A packet is the Protocol Data Unit for the Network Layer (layer 3), while a Frame is a unit in the data link layer. Packet capture is actually a misnomer because some hardware can capture at layer 3, but some at layer 2. Some specialized tools can even capture at the physical layer.

In spite of this, "Packet Capture" has become a common term for data captured at either layer 2 or 3. In our case, all of our captures, and most of the tools we will use, operate at layer 2.

### 802.11 MAC Frames


The figure below depicts the overall structure of a 802.11 MAC frame.

![[Pasted image 20241130122024.png]]

The structure is split in threee parts:

* MAC Headers  - Contains fields that are common for all frames. The first few fields are mandatory and others may be present depending on the specific frame.
* Frame Body - Carries data or contains additional information. Not all frames will used this section.
* Frame Check Sequence (FCS) - is the Cyclical Redundancy Check (CRC) of the current wireless frame. A CRC is performed over all previous fields to generate the FCS. The frame FCS is re-calculated once the frame arrives at the destination. If it is identical to the one received, then the frame is received without errors. It sometimes isn't present in the captured frames.
* In capture files, sometimes Radiotap headers come before the MAC header. These headers are placed by the driver on the receiver, and contains metadata for the specific frame , including the signal level , the rate, the channel it was received on, and other information. The content and size vary from one driver to another and sometimes from one frame to another.


#### MAC Header

The following image shows the details of the *Header* field of a 802.11 MAC frame.

![[Pasted image 20241130130516.png]]


**Frame Control Field**

* Protocol version - Provides the version of the 802.11 protocol used. This value is currently 0
* *Type* - The type is most important field in the frame, and it determines the function of the frame, as well as the presence of some other fields in the frame. There are four different frame types with corresponding values: management (0), control (1), data (2), and extension (3). We will cover the first three later in this module. The fourth is a rare exception, so we won't cover it.
* *Subtype* - Each frame type can have one of several subtype field values. These determine the specific function and define the payload.
* *To DS* and *From DS*  - These fields indicate whether the frame is going into a distribution system (ToDS) or exiting the distribution system (FromDS)
* *MoreFrag* - This field indicates whether more fragments of the frame will follow this one.
* *Retry* - The retry field tells us if the frame is being retransmitted. A retransmit occurs when unicast frames aren't acknowledged in time.
* *Power Mgmt* - This will show us whether the sending client is in active mode (0) or power-save mode (1).
* *More Data* - This field indicates if there is data buffered for a client.
* *Protected Frame* - This will reveal whether or not encryption or authentication are used in the frame.
* *+HTC/Order* - This field tells us if the frame contains an HT Control Field.[1](https://portal.offsec.com/courses/pen-210-9545/learning/frames-and-network-interaction-15800/80211-mac-frames-15849/mac-header-16007#fn-local_id_48-1) In some rare instances, it is used to indicate that the frame is being sent using the Strictly-Ordered service class.

**Duration/ID**

Depending on the frame type and subtype, Duration/ID can have a different meaning. In Power-Save Poll frames (type 1, subtype 10), it contains the client Association Identity (AID) in the 14 least significant bits. The two most significant bits are set. When required, Duration/ID is the duration of the frame in microseconds. In some instances, it has a fixed value of 32768.

**Addresses**
The following table represents the different cases of these addresses, depending on the From/To DS bits in the Frame Control field.


|FromDS|ToDS|Address 1|Address 2|Address 3|Address 4|
|---|---|---|---|---|---|
|0|0|Destination Address|Source Address|BSSID|n/a|
|0|1|BSSID|Source Address|Destination Address|n/a|
|1|0|Destination Address|BSSID|Source Address|n/a|
|1|1|Recipient Address|Transmitter Address|Destination Address|Source Address|

The first case, where ToDS and FromDS are both set to 0, will occur in IBSS mode (ad-hoc) or when the frame is a management or control frame. The _FromDS_ and _ToDS_ bits are not set as is the case when two clients communicate with one another directly, but this is rarely the case nowadays.

When only ToDS is set, the traffic is coming from a client and meant to reach either the AP or anything connected to it. This would be the case with a ping (ICMP request).

When only FromDS is set, the traffic is going from the AP to the client. Recalling the previous example, this would be a response to the ping.

When both are set, it indicates we are in WDS mode. In this case, one AP is talking to the another, which is why the fourth address field is present in the frame.

**Sequence Control**

The Sequence Control field consists of two sub-fields and is used to recognize frame duplication.

The _Sequence Number (12 bit)_ subfield indicates the sequence number of each frame. The sequence number is the same for each frame sent for a fragmented frame. The value range for this field is 0-4095. When it reaches 4095, the next sequence will be 0.

The _Fragment Number (4 bit)_ subfield indicates the number of each fragment of a frame sent. The value range for this field is 0-15.

#### QoS control and HT Control Fields

The presence of the QoS control and HT Control fields depend on other values in the frame body. The _QoS Control_[2](https://portal.offsec.com/courses/pen-210-9545/learning/frames-and-network-interaction-15800/80211-mac-frames-15849/mac-header-16007#fn-local_id_48-2) is present only in Quality of Service (QoS) data frames to indicate the quality of service parameters. The _HT Control_ is only present if the _+HTC/Order_ bit is set.

Further reading:

1.  [https://mrncciew.com/2014/10/20/cwap-ht-control-field/](https://mrncciew.com/2014/10/20/cwap-ht-control-field/) [↩︎](https://portal.offsec.com/courses/pen-210-9545/learning/frames-and-network-interaction-15800/80211-mac-frames-15849/mac-header-16007#fnref-local_id_48-1)
2. [https://mrncciew.com/2014/10/03/cwap-mac-header-qos-control/](https://mrncciew.com/2014/10/03/cwap-mac-header-qos-control/) [↩︎](https://portal.offsec.com/courses/pen-210-9545/learning/frames-and-network-interaction-15800/80211-mac-frames-15849/mac-header-16007#fnref-local_id_48-2)

### Frame Types

Understanding of the common types of frames we'll encounter on Wi-Fi Networks is an essential knowledge. We'll focus on aspects of the frame types that help describe how devices interact with each other. 

The following frame types are important for our purpose:

* Management
* Control
* Data Frames
* Extension ( not very common)

#### Management Frames

Management frames are used to negotiate and control the relationship between AP and Clients. The following table summarizes the different types (subtypes) of management frames:

|Subtype|Field Description|
|---|---|
|0|Association Request|
|1|Association Response|
|2|Re-association Request|
|3|Re-association Response|
|4|Probe Request|
|5|Probe Response|
|6|Measurement Pilot|
|7|Reserved|
|8|Beacon|
|9|ATIM|
|10|Disassociation|
|11|Authentication|
|12|Deauthentication|
|13|Action|
|14|Action No ACK|
|15|Reserved|
All these frames have similar structure as the base MAC 802.11 frame. The payload varies depending on the subtype.

##### Beacon
Beacon frames are the most common frames as they are sent approximately 10 times per second. Beacons are broadcast by the AP to keep the network syncronised.

The beacon frame contains useful information about the network such as the SSID (unless it is hidden), the channel, data rate available, type of encryption and the regulatory domain. They are typically sent at the lowest basic rate in order to reach the clients farthest away from the AP. 

The structure of a beacon frame is as follows:
![[Pasted image 20241130181458.png]]

Although SSID and ESSID are used interchangeably in Wi-Fi tools and AP configuration, there is a small difference. SSID is for single APs. ESSID is when multiple APs in an Extended Service Set (ESS) share the same SSID. The official name of the field in management frames is SSID.

The information in the frame's payload is split into 2 parts. The first part contains fixed parameters, which will always stay the same. The first parameter includes *Timestamp*, which contains an 8-bytes value for a *Timing Syncronization Function* (TFS). *Beacon Interval* indicates how often the beacons are sent. It is expressed in Time Units (TU) where 1 TU is 1.024 ms. *Capabilities Information* is subdivided into 14 flags. 

*Information Elements* are variable in size but have a common structure. The first byte indicates the ID of the element and describes how the payload is interpreted. The second indicates the length of the following field (IE payload), which has a maximum length of 255 bytes. 

![[Pasted image 20241130183258.png]]

Information Elements are usually arranged in order based on the ID. In special cases, some IDs are shared among multiple items, so their meaning depends also on the first few bytes in the IE's payload. A good example of this is WPA TKIP, where it depends on the first three bytes in the payload. The other special case is the Element ID Extension, which depends on the value of the first byte of its payload. This is used for 802.11ax information among other things.

Although this section is dynamic, some elements such as the SSID will always be present. Figure 5 includes the SSID element, which has an ID of _0_. The length of the field is _8_ and it is named _supafast_.

![[Pasted image 20241130184934.png]]

Another field to note in the capture is the Supported Rates of the AP. It shows rates of 6 to 54Mbit/s, which, alone, indicates either an 802.11g or 802.11a network.

![[Pasted image 20241130185122.png]]

A 802.11b or mixed 802.11b/g would have these rates between 1 and 11. A mixed 802.11b/g will also have extended supported rates typically between 6 and 54, but this isn't the case in the extended rates below.

![[Pasted image 20241130185246.png]]

The channel number, _36_, indicates the network is operating in the 5GHz band.

![[Pasted image 20241130185415.png]]

The country element indicates the regulatory domain, channels availability, and transmit power. Clients sometimes use it to further improve their compliance. On Linux this is called "beacon hinting". 

![[Pasted image 20241212182934.png]]

On this particular AP, the regulatory domain is set to US. It gives a set of channels, as well as maximum transmit power. Eight channels are available at a transmit power of 23dBm, starting at channel 36 (40, 44, 48, 52, 56, 60, and 64). There are 11 channels starting at 100 with 23dBm (104, 108, 112, 116, 120, 124, 128, 136, and 140). There are five channels starting at 149 with 30dBm (153, 157, 161, and 165). The reason why it doesn't give precise channel numbers for every single one is because in the 5GHz band they are always separated by 20MHz, which is 4 channels apart, and they don't overlap.

The _HT Capabilities_ and _HT Information_ elements, indicate whether the AP supports High Throughput (HT), or 802.11n, and include other relevant information.

![[Pasted image 20241212184829.png]]

Two elements, _VHT Capabilities_ and _VHT Operation_, indicate the presence of Very High Throughput (VHT), or 802.11ac, and the features supported. Another similarly named field, _VHT Tx Power Envelope_, helps further improve regulatory compliance.

![[Pasted image 20241212184847.png]]

This AP also supports 80MHz channels, with a center channel at 42. It spans from channels 36 to 48, or 5.170GHz to 5.250GHz. If the second centered segment was filled, it would support 160MHz channels or 80+80MHz. The difference is if it ends up being a contiguous 160MHz or not; 80+80 are two 80MHz channels which aren't next to each other.

Finally, the _HE Capabilities_ and _HE Operation_ elements indicate High Efficiency (HE), or 802.11ax, and the features supported.

![[Pasted image 20241212184934.png]]

The AP supports 80MHz in HE, as indicated by the _Rx and Tx MCS Map_. It only has one stream, as indicated by the first line in _Basic HE-MCS and NSS Set_, with rates using MCS 0 to 7, which means up to 360Mbit/s.

***Probe***

Probe frames are used to scan for existing APs. Probe requests are sent by clients searching for APs, and they are often sent on multiple channels. An AP will answer with a probe response that contains information about itself.

Probe requests may contain specific criteria, including for example, encryption and rates. APs or ad-hoc (IBSS) nodes will only respond to probe requests that match what they offer. When the probe request is directed to a specific SSID, only the AP with that SSID will respond. 

The structure of probe requests and responses is similar to beacons. Probe request payloads only consist of IEs. The response, which comes from the AP, will contain both the same static and the same dynamic section as the beacon.

A probe request will contain at the very least a SSID IE. It may contain more, depending on the device.

The following capture includes a broadcast probe request.

![[Pasted image 20241212185853.png]]

A probe response, from the AP, follows the request.

![[Pasted image 20241212190107.png]]

***Authentication***
Authentication frames are used when connecting to an AP. There is no authentication request or response. Both the client and the AP use the same authentication frame.

The payload contains four fields.

![[Pasted image 20241212190426.png]]

Within an authentication frame, the _Authentication Algorithm_ identifies the type of authentication used. The most common is _Open authentication_, but we will also encounter _Simultaneous Authentication of Equals,_ which is used with WPA3, and in rare cases, _Shared Authentication_, which is used with WEP Shared Authentication.

The authentication process consists of several authentication frames (the exact number of frames exchanged can vary). The _Authentication Transaction Sequence Number_ keeps track of the current state of the authentication process and will usually be a value between 1 and 4.

The _Status Code_ indicates success (_0_) or failure (other values). Other than _0_, each value indicates a different type of failure.

*MAC filtering is an after-thought by vendors, and not part of the 802.11 standard. Implementation varies from one vendor to another. When MAC filtering is enabled on the AP and the MAC address of the client is not authorized to connect, the AP may or may not answer. If it does answer, it can either indicate a failure, or success.*

Depending on the authentication algorithm and the sequence number, the frame sometimes contain data after all these fields. The meaning of the data in this section depends on the value of the authentication algorithm and the authentication sequence fields.

In the following figure, a client is starting an open authentication phase with an AP.

![[Pasted image 20241212190903.png]]

The second frame includes the response from the AP.

![[Pasted image 20241212190917.png]]

***Association***

Association frames are used to connect to an AP and are always preceded by authentication frames. The client sends an association request, which is usually followed by an association response from the AP.

![[Pasted image 20241212191130.png]]


The capabilities are identical to the beacon frame. The listen interval is expressed in TU and indicates how often it will wake up to listen to beacons when in power-save mode. Although it is followed by optional IEs, an SSID IE, along with one of the supported rates field, are required to associate to the AP. When connecting to an AP with encryption, the selected encryption parameters must be specified in this frame as well.


The following figure contains an association request for the "airport-wifi" network.

![[Pasted image 20241212191822.png]]

APs reject or accept an Association Request with an Association Response.

*When MAC filtering is in place and the MAC address is not authorized, the behavior of the AP can vary. It will either ignore or deny the device.*

The Association Response has the following structure.

![[Pasted image 20241212191919.png]]

Figure 20 includes a successful association response as indicated by the _Status code_

![[Pasted image 20241212192010.png]]

***Deauthentication***


Deauthentication frames invalidate the authentication between a client and an AP. While they are used in attacks, they also occur when a client is disconnecting or when the AP forces the client to re-authenticate for security reasons. 

Deauthentication frame structure consists of one 2-byte long field in the frame body. This field the *Reason Code*, indicates the reason for deauthentication. 

In the following frame, the client is disconnecting and *uses a reason code 3* ("Deauthenticated because sending STA is leaving"). 

![[Pasted image 20241212201529.png]]

In the next example, the frame was sent by aireplay-ng to the BSSID 00:89:6e:1a:43:90. It uses the reason code 7 ("Class 3 frame received from nonassociated client").

![[Pasted image 20241212201550.png]]

#### Control Frames

Control frames help to deliver data frames as well as other unicast frames. They need to be heard reliably, so they are short and sent at a low rate. The following table shows the different types of control frames.

|Subtype|Field Description|
|---|---|
|0-6|Reserved|
|7|Control Wrapper|
|8|Block ACK Request|
|9|Block ACK|
|10|PS-Poll|
|11|RTS|
|12|CTS|
|13|ACK|
|14|CF End|
|15|CF End + CF-ACK|

***ACK***

An ACK frame tells the sending client that the frame was received correctly. These frames are sent for each unicast (directed towards a specific device) frame sent.

![[Pasted image 20241212204551.png]]

Below is a capture of ACK frame:

![[Pasted image 20241212204945.png]]

The ACK frame has a _Type_ field set to 1, which means it is a control frame. The ACK _Subtype_ field is 13.

Block ACK allows one to disable ACK for a certain number of frames and then acknowledge them, which improves throughput. They contain a bitmap of the fragments and each bit represents the status of one of them (ACK/NACK).

***RTS/CTS***

RTS/CTS is a supplement to the CSMA/CA mechanism that helps in reducing collisions. It adds overhead to the wireless communication, because additional frames have to be added before and after the communication. Figure below illustrates
![[Pasted image 20241212205206.png]]

First, Node 1 sends a "Request to Send" to Node 2. If there was no collision and the request is accepted, Node 2 sends a "Clear to Send" to Node 1 telling it to proceed. Other devices in the surroundings hearing the CTS wait as well. Next, Node 1 sends its data. The data is acknowledged with an ACK frame by Node 2. If the data send fails, no ACK frame is sent.

Let's review the RTS frame structure, which has a length of 20 bytes.

![[Pasted image 20241212205257.png]]

By comparison, a CTS frame has the same length (14 bytes) and structure as an ACK frame.

![[Pasted image 20241212205350.png]]

RTS/CTS in action:

![[Pasted image 20241212205619.png]]

Let's review this capture frame-by-frame to start getting a better understanding of how this transaction takes place.

In the second frame, the AP sends a RTS to the client. Notice that the frame _Type_ is 1 (Control frame) and the _Subtype_ is 11 (RTS).

![[Pasted image 20241212210511.png]]

In the following frame, the client responds to the AP with CTS. The _Subtype_ of the frame is 12 (CTS).

![[Pasted image 20241212210530.png]]

After it receives a CTS message from the client, the AP sends a data frame from the internal network.

![[Pasted image 20241212210601.png]]



Once it has successfully received the data frame, the client sends an ACK (_Subtype_ 13) back to the AP.

![[Pasted image 20241212210625.png]]

In some instances, devices use CTS-to-self[3](https://portal.offsec.com/courses/pen-210-9545/learning/frames-and-network-interaction-15800/frame-types-15847/control-frames-16004?category=in-progress#fn-local_id_466-3) protection mechanism before sending data. As mentioned earlier, all other devices hearing CTS will hold before transmitting. The amount of time to wait is specified in this frame's _duration_ field, displayed in Figure 31. As a result, some devices send a CTS before their transmission in improve the likelihood of a successful transfer.

### Data Frames
Data frames are primarily used to carry data between devices. Below are the different types of data frames:

| Subtype | Field Description              |
| ------- | ------------------------------ |
| 0       | Data                           |
| 1       | Data + CF ACK                  |
| 2       | Data + CF Poll                 |
| 3       | Data + CF ACK + CF Poll        |
| 4       | Null Function (No Data)        |
| 5       | CF ACK (No Data)               |
| 6       | CF Poll (No Data)              |
| 7       | CF ACK + CF Poll (No Data)     |
| 8       | QoS Data                       |
| 9       | QoS Data + CF ACK              |
| 10      | QoS Data + CF Poll             |
| 11      | QoS Data + CF ACK + CF Poll    |
| 12      | QoS Null (No Data)             |
| 13      | Reserved                       |
| 14      | QoS CF Poll (No Data)          |
| 15      | QoS CF ACK + CF Poll (No Data) |

The most common data frames are Data (subtype 0), Null Function (subtype 4), and their equivalent with QoS (subtypes 8 and 12 respectively).

QoS data frames are used when prioritizing traffic sensitive to delays, such as voice or video. They contain a *QoS Control field* before the payload.

***Data***

Let's analyze a DHCP request captured on an open network. It happens to be a QoS data frame.

![[Pasted image 20241212212705.png]]

***Null Data***

Null frames consist only of MAC headers and a FCS. Clients use them when they are going into power-saving mode.

Below, where we note that the power management (PWR MGT) bit is set.

![[Pasted image 20241212213216.png]]

When the client exits power-saving mode, it will send the same frame with the power management bit reset. The AP will send the client any buffered frames that are waiting.

### Interacting with Networks

We can separate the process of connecting to a wireless network into 3 steps: probe, authentication, and association. 

![[Pasted image 20241212221921.png]]

***Probe***: During the **probe** stage, the client first sends a probe on all channels to discover an AP. Then the APs that are in range answer the probe request.

***Authentication***: During authentication, the client will usually select the AP with the strongest signal whose SSID was previously chosen in the OS user interface. The actual authentication process varies based on for example the type of encryption. This stages ends when the AP sends a response to the authentication. 

***Association***: The client sends an association request. As with authentication, this stage also varies. Once this stage has been completed, the client can communicate with the network.

When WPA encryption is used or when on *Opportunistic Wireless Encryption (OWE)* networks, there is one more step. After association, a client is required to go through key exchanges and verification. This is required to be able to use the network.

#### Open Network




#### WEP (Wired Encryption Equivalent)

There are 2 types of authentication for WEP:

* WEP Open authentication
* WEP Shared Authentication

With Open Authentication the process is identical to an open network. With shared authentication, the client receives a random data called challenge text from the AP. The client has to encrypt the challenge to prove that it has the right key. The AP will then try to decrypt using its own key. If successful, the client will be allowed to continue with Association. Shared authentication is much less common than open authentication, and the broadcasting AP doesn't advertise it. For this reason, many clients will try open authentication first. If they get denied one or more times, they will try shared authentication.

The connection process for WEP is similar to Open network, the only difference is that *Privacy* bit is set in the beacons, probe response, and association frames.The *privacy* bit indicates encryption. Because of the lack of WPA or WPA2 tags in these frames, we also know that the security algorithm is WEP. 

#### EAPOL

EAPOL frames are most commonly used during the handshake when connecting to an AP with WPA, WPA2 and WPA3 or OWE. It stands for Extensible Authentication Protocol (EAP) over LAN. We will also encounter them during a WPS exchange, or when Protected Management Frames (PMF), 802.11w, is used in the network.

Understanding the structure of EAPOL frames is important:

![[Pasted image 20241213211059.png]]

The authentication section of the EAPOL frame is divided into several fields:

* *The Protocol Version* (1 byte)  has a value of 1,2, or 3. These values represent 802.1X-2001, 802.1X-2004, or 802.1X-2010 respectively. Values of 1 and 2 are the most common.
* *The Packet Type* (1 byte) usually has a value of 3, which means it is a key.
* The *Packet Body Length* - fields 2 bytes indicates the packet body length or the amount of data after this field.
* The *Descriptor Type* (1 byte) usually has a value of either 2, which indicates "EAPOL RSN Key" when WPA 2 is in use, or 254, which indicates "EAPOL WPA Key" when WPA1 is in use.
* The *Key Information* (2 bytes) specifies the characteristics of the key, which is divided in smaller parts.
* The *Key Length* (2 bytes) gives us the length of the PTK. A value of 5 or 13 indicates WEP40 or WEP104, and the values of 16 or 32 indicates TKIP, CCMP, GCMP, BIP-CMAC, or BIP-GMAC cipher.
* The *Replay Counter* (8 bytes) is increased incrementally each time EAPOL frames travel back and forth. This helps to avoid replaying old messages. The replay counter is usually 1 in the first part of the handshake (frame 1 and 2) and 2 in the second part. In cases when the exchange fails, because of an incorrect key or a weak signal, the number will go higher. 
* The *Key Nonce* (32 bytes) contains a nonce from the transmitter
* The *EAPOL Key IV* (16 bytes) contains the IV used with the KEK. When it's not required, this field will contain a 0.
* The *Key Receive Sequence Counter* (8 bytes) is used in messages 3 and 4, to indicate the counter for the GTK. It is not used with WEP, but does have a few other uses. 
* The *Key Identifier* is unused field, reserved for future use. It is set to 0.
* The *Key MIC* (variable size) is the MIC of this packet, called EAPoL-Key from and including Protocol version. Its size will depend on the AKM used.
* The *Key Data Length* field (2 bytes) defines the length of the upcoming Key Data field
* The *Key Data* field includes additional data for the key exchange. The data may also be one or more Robust Security Network Elements (RSNE) or Key Data Elements (KDE). An RSNE starts with 0x30 and KDE starts with 0xdd

The key information field is further divided into a number of smaller fields.

- By default, the _Key descriptor version_ (bits 0, 1 and 2) is set to 0, but could also be set to values of 1, 2, or 3 to indicate a specific algorithm. The values of 1, 2, and 3 are mappings to algorithms used for the MIC, its length, and the encryption key. One (1) is for ARC4 encryption with HMAC-MD5, two (2) is for NIST AES key wrap with HMAC-SHA1-128, and three (3) is NIST AES key wrap with AES-128-CMAC.
- When the _Key Type_ (bit 3) is set, the result is going to be a PTK. When not set, the result is going to be a group key or SMK.
- Bits 4 and 5 are reserved and not in use at this time.
- If _Install_ (bit 6) is set, the client will need to install the keys.
- _Key ACK_ (bit 7) indicates whether or not the receiving party expects an EAPoL-Key message.
- When _Key MIC_ (bit 8) is set, a MIC is present.
- _Secure_ (bit 9) is set when the initial key exchange is complete. It will be set in message 3 (from the Authenticator to Supplicant) and in message 4 (from the Supplicant to Authenticator).
- _Error_ (bit 10) is set when a MIC failure happens.
- _Request_ (bit 11) is only set by a Supplicant in a MIC Failure report. It can also requests the Authenticator to initiate a 4-way handshake or group key handshake.
- The _Encrypted Key Data_ (bit 12) is set if the Key Data field is encrypted.
- _SMK Message_ (bit 13) specifies if the packet is part of a SMK handshake.

_Key Data_ can contain two types of data: key data cryptographic encapsulation(s) (KDE) or RSNE. The structure of KDE is as follows.

![[Pasted image 20241213234859.png]]

The RSNE structure is a bit more complex.

![[Pasted image 20241213235125.png]]


The last element will only be present if the one before it is also present. The Pairwise Cipher Suite List contains items in the following format

![[Pasted image 20241213235239.png]]

##### WPA1


#### WPA2

The first frame is a beacon from the AP, which advertises WPA1 and WPA2, both with AES/CCMP and TKIP. Group cipher in both cases is TKIP, which means that all frames that are broadcast or multicast will be encrypted using TKIP. The unicast ones will depend on the cipher selected by the client. 

Below shows beacons with RSN IE.

![[Pasted image 20241216143906.png]]

The below shows beacon with WPA IE:
![[Pasted image 20241216144015.png]]

In the association request (frame 82), the client selected WPA2 with AES or RSN as well as TKIP for the Group cipher. 

![[Pasted image 20241216145507.png]]

The AP responds with a successful Association Response (frame 84), and then proceeds to start the 4-way handshake.

![[Pasted image 20241216145611.png]]

This 4-way handshake is similar to the one in the WPA1 section. There are a few key differences because it is WPA2 CCMP.

In this first EAPoL message, the key information indicates it's using CCMP with HMAC-SHA1 MIC.

![[Pasted image 20241216145651.png]]

The WPA Data field shows an RSNE with a PMKID

![[Pasted image 20241216145829.png]]

We note an RSNE in the WPA Key Data field, showing details of the cipher used.

![[Pasted image 20241216150349.png]]

This third message likely contains the GTK in the Key Data field. We suspect this is the case because when we decrypt the capture we notice there is no GTK handshake afterward. The data field would also contain the IGTK if 802.1w was negotiated.

![[Pasted image 20241216150540.png]]

Finally, the last EAPoL indicates the client has installed the keys, and the AP can now do it as well, to encrypt the traffic.

![[Pasted image 20241216150804.png]]

#### WPA3

We need to understand a WPA3 dragonfly handshake followed by a 4-way handshake.

The first frame is a beacon from the AP, advertising the ESSID  "WPA3-Network", SAE in the RSN IE, and 802.11w (which is mandatory for WPA3).

![[Pasted image 20241216164113.png]]

The second frame is a probe request and the third is a response to that request. It contains the same IEs as the beacon and advertises SAE, 802.11w, and BIP in the RSN IE. There is one exception, the Traffic Indication Map.

![[Pasted image 20241216164127.png]]

The dragonfly handshake occurs during authentication part. In the first authentication frame (5), we note that the algorithm isn't "Open authentication" like it was with WEP, WPA1, or WPA2. Now the algorithm is Simultaneous Authentication of Equals (SAE) using the default group, 19. This first authentication frame is the start of the commit phase where both sides commit to a shared secret.

![[Pasted image 20241216165042.png]]
The second frame (7) of the authentication stage is where the AP sends its scalar and finite field element.

![[Pasted image 20241216165120.png]]

This next frame (9) is the confirm message from the client.

![[Pasted image 20241216165154.png]]

And finally, in frame 11, there is an answer from the AP.

![[Pasted image 20241216165205.png]]

The association phase, which comes next, is uneventful. First the client indicates the specifics of the RSNA, including AES for unicast and multicast, SAE, and 802.11w.

![[Pasted image 20241216165444.png]]


Next, the AP sends the association response, accepting it.

![[Pasted image 20241216165502.png]]

The association stage concludes with the 4-way handshake, which uses AES/CCMP.

![[Pasted image 20241216170437.png]]

***Disagreeing on Group***

In most cases, a client and an AP will settle on the default group, 19. However, it is possible to configure groups on the AP and the client. In this section we'll explore a PCAP in which the client has a custom selection of groups that is different than what the AP would normally accept. The client will will go through the groups one by one until it finds one the AP can agree on.

The first frame is a beacon from the AP, advertising "WPA3-Network" with SAE and mandatory 802.11w.

![[Pasted image 20241216171716.png]]

The third frame is a response to the probe request with the same information as in the beacon.

![[Pasted image 20241216171728.png]]

The authentication for the dragonfly handshake starts at frame 51 where the client tries using group 15.

![[Pasted image 20241216171805.png]]

![[Pasted image 20241216171823.png]]

Next, the client tries again. This time with group 16.

![[Pasted image 20241216171859.png]]

The AP rejects this one as well.

![[Pasted image 20241216171911.png]]

Next, the client tries group 19.

![[Pasted image 20241216171922.png]]

Group 19 is the default group and is required in any implementation, so it will always be accepted.

![[Pasted image 20241216171941.png]]

Now the client proceeds to the confirm phase.

![[Pasted image 20241216171957.png]]

The following frame from the AP concludes the authentication phase, which is successful, as indicated by the status code.

![[Pasted image 20241216172013.png]]

From here, the client will associate to the AP and complete the 4-way handshake.

#### Opportunistic Wireless Encryption
Frame 1 below shows a beacon with a RSN tag offering OWE only.

![[Pasted image 20241216172341.png]]
Like WPA3, OWE requires 802.11w. This protects some management frames that are susceptible to attacks.

The following figure contains a client probe that also has an RSN IE with OWE, and 802.11w.

![[Pasted image 20241216172856.png]]

The open authentication, with frames 51 and 52 from the client and the AP respectively, is uneventful. Whereas WPA3 used the authentication for the dragonfly handshake, OWE does public key exchange in the association phase. The association request from the client is in frame 55.

![[Pasted image 20241216173103.png]]

The last IE in the association request is an extended IE, which contains the Diffie-Hellman parameters from the client. These include the Diffie-Hellman group used, default group 19, and the public key.

In the following frame, the AP sends its information as well.

![[Pasted image 20241216173125.png]]

From there, they can both derive the same PMK for use in the 4-way handshake like in WPA2, in frame 59, 61, 63, and 65.


#### Wi-Fi Protected Setup

We explore a successful WPS exchange. It has duplicate frames (frames with the retry bit set) because some frames were not acknowledged by the receiving device. When the ACK is not received within a specific amount of time, the frame it is supposed to acknowledge is assumed lost. The transmitter sends it again, however, this time the retry bit is set.

