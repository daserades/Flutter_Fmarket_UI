import 'package:flutter/material.dart';
import 'package:fmarket/urun_detay.dart';

class Kategori extends StatefulWidget {
  final String kategori;

  const Kategori({Key key, this.kategori}) : super(key: key);
  @override
  _KategoriState createState() => _KategoriState();
}

class _KategoriState extends State<Kategori> {
  List<Widget> gosterilecek;
  @override
  void initState() {
    super.initState();
    if (widget.kategori == "Temel Gıda") {
      gosterilecek = [
        urunKarti(
          "ZeytinYağı",
          "23.50 TL",
          "https://cdn.pixabay.com/photo/2014/05/28/00/27/olive-oil-356102_960_720.jpg",
        ),
        urunKarti(
          "Un",
          "110 TL",
          "https://media.istockphoto.com/photos/flour-in-a-bag-on-the-table-and-spikelets-picture-id484679158?s=612x612",
        ),
        urunKarti(
          "Pirinç",
          "52 TL",
          "https://cdn.pixabay.com/photo/2014/10/22/18/43/rice-498688_960_720.jpg",
        ),
        urunKarti(
          "Süt",
          "3.25 TL",
          "https://media.istockphoto.com/photos/rendering-of-milk-paper-packaging-isolated-on-white-background-picture-id1030316292?s=612x612",
        ),
        urunKarti(
          "Tereyağı",
          "33.99 TL",
          "https://cdn.pixabay.com/photo/2018/05/18/12/55/butter-3411126_960_720.jpg",
        )
      ];
    } else if (widget.kategori == "Şekerleme") {
      gosterilecek = [
        urunKarti(
          "Bonibon",
          "4,45 TL",
          "https://cdn.pixabay.com/photo/2017/01/04/19/41/caramel-1952997_960_720.jpg",
        ),
        urunKarti(
          "Kurabiye",
          "3,75 TL",
          "https://cdn.pixabay.com/photo/2015/05/07/15/08/pastries-756601__340.jpg",
        ),
        urunKarti(
          "Jelibon",
          "5,45 TL",
          "https://cdn.pixabay.com/photo/2016/08/24/21/33/gummybears-1618073__340.jpg",
        ),
        urunKarti(
          "Makaron",
          "9.99 TL",
          "https://cdn.pixabay.com/photo/2016/11/18/17/20/colorful-1835921__340.jpg",
        ),
        urunKarti(
          "Çikolatalı Bazda",
          "35.50 TL",
          "https://cdn.pixabay.com/photo/2014/10/13/16/11/cake-486874__340.jpg",
          mevcut: false,
        )
      ];
    } else if (widget.kategori == "İçecekler") {
      gosterilecek = [
        urunKarti(
          "Kahve",
          "10 TL",
          "https://cdn.pixabay.com/photo/2015/10/12/14/54/coffee-983955__340.jpg",
        ),
        urunKarti(
          "Kola",
          "6 TL",
          "https://media.istockphoto.com/photos/background-picture-id1175238202?b=1&k=6&m=1175238202&s=170667a&w=0&h=vNOr33n4JZlnbFSzf5Ts1s48TpPMnKZdlYsu5ghs3vE=",
          mevcut: false,
        ),
        urunKarti(
          "Ayran",
          "3 TL",
          "https://media.istockphoto.com/photos/pouring-homemade-kefir-buttermilk-or-yogurt-picture-id1243439079?b=1&k=6&m=1243439079&s=170667a&w=0&h=_tKM_zWXuhIJ7g-vyBGEGofXSuLWpcnxzdQrDXXJgjQ=",
        ),
        urunKarti(
          "Meyve Suyu",
          "8 TL",
          "https://cdn.pixabay.com/photo/2017/04/23/09/44/smoothies-2253423__340.jpg",
        ),
        urunKarti(
          "Çay",
          "2 TL",
          "https://cdn.pixabay.com/photo/2016/03/27/21/37/tea-1284366__340.jpg",
        ),
      ];
    } else if (widget.kategori == "Temizlik") {
      gosterilecek = [
        urunKarti(
          "Temizlik Süngeri",
          "2.50 TL",
          "https://cdn.pixabay.com/photo/2018/01/14/08/57/sponge-3081410__340.jpg",
          mevcut: false,
        ),
        urunKarti(
          "Çamaşır Suyu",
          "15 TL",
          "https://media.istockphoto.com/photos/cleaning-products-housework-spring-cleaning-picture-id1156463292?b=1&k=6&m=1156463292&s=170667a&w=0&h=I0IkUBtWDEg3qOcL7LJmWg8X1kKZfGywJKHlb5D2Eno=",
        ),
        urunKarti(
          "Cam Spreyi",
          "7 TL",
          "https://media.istockphoto.com/photos/cleaning-items-household-spray-brush-sponge-glove-picture-id606213136?b=1&k=6&m=606213136&s=170667a&w=0&h=pW5N1MBe9wSc3qkfCgJ-iUiC7B6gqrdDiB6B8zQtUdU=",
        ),
      ];
    }
  }

  Widget urunKarti(String isim, String fiyat, String resim,
      {bool mevcut = true}) {
    return GestureDetector(
      onDoubleTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => UrunDetay(
                      isim: isim,
                      fiyat: fiyat,
                      resim: resim,
                      mevcut: mevcut,
                    )));
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 4.0,
                spreadRadius: 2.0,
                color: Colors.grey.withOpacity(0.2),
              )
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: resim,
              child: Container(
                width: 120,
                height: 80,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        resim,
                      ),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(20.0)),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              isim,
              style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[600]),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              fiyat,
              style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.red[400]),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      childAspectRatio: 1,
      padding: EdgeInsets.all(10),
      children: gosterilecek,
    );
  }
}
