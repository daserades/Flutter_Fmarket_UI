import 'package:flutter/material.dart';

class UrunDetay extends StatelessWidget {
  final String isim;
  final String resim;
  final String fiyat;
  final bool mevcut;

  const UrunDetay({Key key, this.isim, this.resim, this.fiyat, this.mevcut})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Hero(
                tag: resim,
                child: Image.network(resim),
              ),
              IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.red[400],
                  size: 40.0,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Column(
            children: [
              Text(isim,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(
                height: 10.0,
              ),
              Text(fiyat,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.red[400],
                  )),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15.0, left: 15.0),
                child: Text(
                    "Ürün için gerekli açıklamalar bu kısımda olacak.Bu bölgede gösterilecek",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    )),
              ),
              SizedBox(
                height: 25.0,
              ),
              Material(
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width - 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                        color: mevcut ? Colors.red[400] : Colors.black,
                        borderRadius: BorderRadius.circular(12.0)),
                    child: Center(
                      child: Text(mevcut ? "Sepete Ekle" : "Stokta Yok",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
