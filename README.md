This is a work in progress. The objective is to be able to mine Packetcrypt on HiveOS using the Custom Miner feature.

Currently, the procedure is as follows:

1. On HiveOS, create a new wallet called PKT using your wallet address.
2. Go to Flight Sheets > Add New
3. Choose PKT for coin, and the PKT Wallet for wallet, then go to Custom Miner.
4. Your config should look like this:
    !!NOTE!! When updating the miner, Hive will automatically update the miner name. Make sure to rename it to "packetcrypt" without any numbers afterwards.


![image](https://user-images.githubusercontent.com/73498310/147879593-1709d1e6-904f-4924-abb2-7e587e9ff87d.png)


5. Add your pools. You can choose any pool order you want out of the following: http://pool.pkt.world http://pool.pktpool.io http://pool.pkteer.com http://pktco.in http://pool-pkt.dlinodes.com
6. Apply the flightsheet to your worker and check the stats. Note that it will be reported as "kH" instead of "Ke", but that's just how Hive works for now.

NOTE: The miner stats are working, but we are still working on displaying "goodrate" percentages. Currently only total ke/s is shown.
