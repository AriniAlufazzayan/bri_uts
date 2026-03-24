import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {

  Widget menuItem(IconData icon, String title) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.blue[600],
            borderRadius: BorderRadius.circular(15),
          ),
          child: Icon(icon, color: Colors.white),
        ),
        SizedBox(height: 2),
        Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 12),
        ),
      ],
    );
  }

  Widget fiturItem(IconData icon, String title) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.blue[600],
            borderRadius: BorderRadius.circular(15),
          ),
          child: Icon(icon, color: Colors.white, size: 20),
        ),
        SizedBox(height: 6),
        Text(
          title,
          style: TextStyle(color: Colors.black, fontSize: 11),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          Stack(
            clipBehavior: Clip.none,
            children: [

              Container(
                padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                height: 130,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Row(
                      children: [
                        Text(
                          "BRImo",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 7),
                        Text(
                          "Hai, Arini Alufazzayan",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),

                    Row(
                      children: [
                        Icon(Icons.notifications, color: Colors.white),
                        SizedBox(width: 10),
                        Icon(Icons.headset_mic, color: Colors.white),
                        SizedBox(width: 5),
                        Text(
                          "Pusat Bantuan",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Positioned(
                top: 90,
                left: 20,
                right: 20,
                child: Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.blue[700],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Saldo Rekening Utama",
                            style: TextStyle(color: Colors.white70),
                          ),
                          Icon(Icons.visibility_off, color: Colors.white),
                        ],
                      ),

                      SizedBox(height: 8),

                      Text(
                        "Rp •••••••",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 15),

                      Text(
                        "Semua Rekeningmu",
                        style: TextStyle(color: Colors.white),
                      ),

                      SizedBox(height: 12),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          menuItem(Icons.swap_horiz, "Transfer"),
                          menuItem(Icons.qr_code, "BRIVA"),
                          menuItem(Icons.account_balance_wallet, "E-Wallet"),
                          menuItem(Icons.phone_android, "Pulsa/Data"),
                        ],
                      ),

                      SizedBox(height: 14),

                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 200, 255, 255),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            icon: Icon(Icons.search, color: Color.fromARGB(255, 9, 91, 105)),
                            hintText: "Cari Fitur",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 190),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 7),
            child: GridView.count(
              crossAxisCount: 4,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              mainAxisSpacing: 15,
              crossAxisSpacing: 15,
              children: [
                fiturItem(Icons.account_balance_wallet, "Top Up"),
                fiturItem(Icons.receipt_long, "Tagihan"),
                fiturItem(Icons.swipe_vertical, "Setor & Tarik"),
                fiturItem(Icons.qr_code_scanner, "QRIS"),
                fiturItem(Icons.send, "Transfer"),
                fiturItem(Icons.credit_card, "Debit Virtual"),
                fiturItem(Icons.note, "Catatan"),
                fiturItem(Icons.more_horiz, "DLL"),
              ],
            ),
          ),

          SizedBox(height: 100),
        ],
      ),
    );
  }
}