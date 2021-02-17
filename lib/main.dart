import 'package:flutter/material.dart';
import 'package:fmarket/sepetim.dart';
import 'package:fmarket/urun_detay.dart';
import 'package:fmarket/urunler.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Projem',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  int _aktificerikNo = 0;
  List<Widget> _icerikler;

  @override
  void initState() {
    super.initState();
    _icerikler = [
      Urunler(),
      Sepetim(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.amber,
        elevation: 0.0,
        title: Text(
          "Uçarak Gelsin",
          style: TextStyle(
              color: Colors.red, fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
      ),
      body: _icerikler[_aktificerikNo],
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.red[400]),
              accountName: Text("Burak Can"),
              accountEmail: Text("Bcan@gmail.com"),
              currentAccountPicture: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://cdn.pixabay.com/photo/2016/11/21/14/53/adult-1845814__340.jpg"))),
              ),
            ),
            ListTile(
              title: Text("Siparişlerim"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Sepetim()));
              },
            ),
            ListTile(
              title: Text("İndirimlerim"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Ayarlar"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Çıkış Yap"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _aktificerikNo,
        selectedItemColor: Colors.red[400],
        unselectedItemColor: Colors.grey[600],
        items: [
          BottomNavigationBarItem(
              label: "Ürünler",
              icon: Icon(
                Icons.home,
              )),
          BottomNavigationBarItem(
              label: "Sepetim", icon: Icon(Icons.shopping_cart))
        ],
        onTap: (int tiklananButonPozisyonNo) {
          setState(() {
            _aktificerikNo = tiklananButonPozisyonNo;
          });
        },
      ),
    );
  }
}
