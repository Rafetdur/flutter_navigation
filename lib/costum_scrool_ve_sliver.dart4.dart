import 'dart:math' as matematik;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class CollapsableToolbarOrnek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.red,
          expandedHeight: 200,
          floating: true,
          pinned: false,
          snap: true,
          flexibleSpace: FlexibleSpaceBar(
            title: Text("Costum Scrollview App"),
            centerTitle: true,
            background: Image.asset(
              "assets/images/rafet.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),

        SliverPadding(
          padding: EdgeInsets.all(10),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(_dinamikElemanUretenFonksiyon,
                childCount: 6),
          ),
        ),
        SliverFixedExtentList(
            delegate: SliverChildListDelegate(
              SabitListeElemanlari(),
            ),
            itemExtent: 100),
        SliverFixedExtentList(
            delegate: SliverChildBuilderDelegate(_dinamikElemanUretenFonksiyon,
                childCount: 6),
            itemExtent: 50),
        SliverPadding(
          padding: EdgeInsets.all(10),
        ),
        //Sabit elemanlarla bir atırda kaç eleman olacagını söyledigimiz grid türü
        SliverGrid(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          delegate: SliverChildListDelegate(
            SabitListeElemanlari(),
          ),
        ),
        // Dinamik (builder ile üretilen) Sabit elemanlarla bir atırda kaç eleman olacagını söyledigimiz grid türü

        SliverGrid(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          delegate: SliverChildBuilderDelegate(_dinamikElemanUretenFonksiyon,
              childCount: 6),
        ),
        // Dinamik (builder ile üretilen) Sabit elemanlarla bir satırdaki bir elemanın max genişliğini söylediğimiz olacagını söyledigimiz grid türü
        SliverGrid(
          gridDelegate:
              SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 200),
          delegate: SliverChildBuilderDelegate(_dinamikElemanUretenFonksiyon,
              childCount: 6),
        ),
        SliverGrid.count(
          crossAxisCount: 6,
          children: SabitListeElemanlari(),
        ),
        SliverGrid.extent(
          maxCrossAxisExtent: 300,
          children: SabitListeElemanlari(),
        ),

        SliverPadding(
          padding: EdgeInsets.all(4),
          sliver: SliverList(
            delegate: SliverChildListDelegate(
              SabitListeElemanlari(),
            ),
          ),
        ),
      ],
    );
  }

  List<Widget> SabitListeElemanlari() {
    return [
      Container(
        height: 100,
        color: Colors.amber,
        alignment: Alignment.center,
        child: Text("Sabit Liste Elemanı 1",
            style: TextStyle(fontSize: 15), textAlign: TextAlign.center),
      ),
      Container(
        height: 100,
        color: Colors.teal,
        alignment: Alignment.center,
        child: Text("Sabit Liste Elemanı 2",
            style: TextStyle(fontSize: 15), textAlign: TextAlign.center),
      ),
      Container(
        height: 100,
        color: Colors.red,
        alignment: Alignment.center,
        child: Text("Sabit Liste Elemanı 3",
            style: TextStyle(fontSize: 15), textAlign: TextAlign.center),
      ),
      Container(
        height: 100,
        color: Colors.amber,
        alignment: Alignment.center,
        child: Text("Sabit Liste Elemanı 4",
            style: TextStyle(fontSize: 15), textAlign: TextAlign.center),
      ),
      Container(
        height: 100,
        color: Colors.blue,
        alignment: Alignment.center,
        child: Text("Sabit Liste Elemanı 5",
            style: TextStyle(fontSize: 15), textAlign: TextAlign.center),
      ),
      Container(
        height: 100,
        color: Colors.orange,
        alignment: Alignment.center,
        child: Text("Sabit Liste Elemanı 6",
            style: TextStyle(fontSize: 15), textAlign: TextAlign.center),
      ),
      Container(
        height: 100,
        color: Colors.amber,
        alignment: Alignment.center,
        child: Text("Sabit Liste Elemanı 7",
            style: TextStyle(fontSize: 15), textAlign: TextAlign.center),
      ),
      Container(
        height: 100,
        color: Colors.blue,
        alignment: Alignment.center,
        child: Text("Sabit Liste Elemanı 8",
            style: TextStyle(fontSize: 15), textAlign: TextAlign.center),
      ),
      Container(
        height: 100,
        color: Colors.orange,
        alignment: Alignment.center,
        child: Text("Sabit Liste Elemanı 9",
            style: TextStyle(fontSize: 15), textAlign: TextAlign.center),
      ),
      Container(
        height: 100,
        color: Colors.amber,
        alignment: Alignment.center,
        child: Text("Sabit Liste Elemanı 10",
            style: TextStyle(fontSize: 15), textAlign: TextAlign.center),
      ),
    ];
  }

  Widget _dinamikElemanUretenFonksiyon(BuildContext context, int index) {
    return Container(
      height: 100,
      color: RastgeleRenkUret(),
      alignment: Alignment.center,
      child: Text("Dinamik Liste Elemanı ${index + 1}",
          style: TextStyle(fontSize: 15), textAlign: TextAlign.center),
    );
  }

  RastgeleRenkUret() {
    return Color.fromARGB(
        matematik.Random().nextInt(255),
        matematik.Random().nextInt(255),
        matematik.Random().nextInt(255),
        matematik.Random().nextInt(255));
  }
}
