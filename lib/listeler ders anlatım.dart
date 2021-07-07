import 'package:flutter/material.dart';


class ListeKonuAnlatimi extends StatelessWidget {
  //Liste için veri kaynağı oluştur
  List<int> ListeNumaralari =List.generate(300, (index)=>index);
  List<String>ListeAltBaslik = List.generate(300, (index) => "Liste elemenı alt başlık $index");

  @override
  Widget build(BuildContext context) {

    return ListView(
        children: ListeNumaralari
        .map(
    (oankiEleman)=>  Column (
      children:[



      Container(
        child: Card(
          color: Colors.teal.shade100,
          margin: EdgeInsets.all(10),
          elevation: 10,
          child: ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.android),
              radius: 12,
            ),
            title: Text("liste eleman başlık"),
            subtitle: Text(" liste elemanı alt başlık"),
            trailing: Icon(Icons.add_circle),
          ),
        ),
      ),
      Divider(
        color: Colors.orange,
        height: 32,
        indent: 20,
      ),
      ],
    ),
    ).toList(),
    );
  }
}


/*
[    Column (
            Container(
              child: Card(
                color: Colors.teal.shade100,
                margin: EdgeInsets.all(10),
                elevation: 10,
                child: ListTile(
                  leading: CircleAvatar(
                    child: Icon(Icons.android),
                    radius: 12,
                  ),
                  title: Text("liste eleman başlık"),
                  subtitle: Text(" liste elemanı alt başlık"),
                  trailing: Icon(Icons.add_circle),
                ),
              ),
            ),
            Divider(
              color: Colors.orange,
              height: 32,
              indent: 20,
            ),
          ],
        ),

      ],
 */