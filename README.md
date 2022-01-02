This is a work in progress. The objective is to be able to mine Packetcrypt on HiveOS using the Custom Miner feature.

Currently, the procedure is as follows:

1. On HiveOS, create a new wallet called PKT using your wallet address.
2. Go to Flight Sheets > Add New
3. Choose PKT for coin, and the PKT Wallet for wallet, then go to Custom Miner.
4. Your config should look like this:
 ![image](https://user-images.githubusercontent.com/73498310/147879593-1709d1e6-904f-4924-abb2-7e587e9ff87d.png)
6. Add your pools. You can choose any pool order you want out of the following, but be aware that if Sribni is not listed first then it will reject your anns: http://pool.srizbi.com http://pool.pkt.world http://pool.pktpool.io http://pool.pkteer.com http://pktco.in
7. Apply the flightsheet to your worker and if your CPU gets hot, it should be working.

NOTE: The miner stats are not yet implemented. You will not see a hashrate or any information at all on the main HiveOS dashboard. 
