import 'package:flutter/material.dart';

import 'navigasyon_işlemleri.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Flutter Dersleri",
      initialRoute: "/CPage/DPage/FPage",
      routes: {
        '/': (context) => NavigasyonIslemleri(),
        '/CPage': (contex) => CSayfasi(),
        '/DPage': (contex) => DSayfasi(),
        '/GPage': (contex) => GSayfasi(),
        '/FPage': (contex) => FSayfasi(),
        '/CPage/DPage': (contex) => DSayfasi(),
        '/CPage/DPage/FPage': (contex) => FSayfasi(),
        '/ListeSayfasi': (context) => ListeSinifi(),
      },
      onGenerateRoute: (RouteSettings settings) {
        List<String> pathElemanlari =
            settings.name.split("/"); // /detay/$index /urun/detay/id
        if (pathElemanlari[1] == 'detay') {
          return MaterialPageRoute(
              builder: (contex) => ListeDetay(int.parse(pathElemanlari[2])));
        }
      },
      onUnknownRoute: (RouteSettings) =>
          MaterialPageRoute(builder: (contex) => DSayfasi()),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      // home: NavigasyonIslemleri(),
    ),
  );
}
