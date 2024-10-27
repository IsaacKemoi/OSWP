
## IEEE 802.11

The IEEE's 802 committee develops local area network (LAN) standards and Metropolitan Network standards. These include Ethernet, Token Ring, Wireless LAN, Bridging, and Virtual Bridged LANs. 

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

