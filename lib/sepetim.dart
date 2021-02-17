import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sepetim extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(
              child: Text(
                "Sepetim",
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.red[400]),
              ),
            ),
          ),
          ListTile(
            title: Text("Çikolatalı Gofret"),
            subtitle: Text("2 adet x 3.50"),
            trailing: Text("7 TL"),
          ),
          ListTile(
            title: Text("Bisküvi"),
            subtitle: Text("3 adet x 2.5"),
            trailing: Text("7.5 TL"),
          ),
          ListTile(
            title: Text("Jelibon"),
            subtitle: Text("4 adet x 1.50"),
            trailing: Text("6 TL"),
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 25.0),
                child: Column(
                  children: [
                    Text(
                      "Toplam Tutar",
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.red[400]),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      "20.5 TL",
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              alignment: Alignment.center,
              height: 45.0,
              decoration: BoxDecoration(
                  color: Colors.red[400],
                  borderRadius: BorderRadius.circular(10)),
              child: Text(
                "Alışverişi Tamamla",
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
