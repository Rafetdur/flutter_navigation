import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class NavigasyonIslemleri extends StatelessWidget {
  String baslik = "B SAYFASI";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return WillPopScope(
      onWillPop: () {
        debugPrint("on will pop çalişti");
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Navigasyon işlemleri",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text("A sayfasına git"),
                color: Colors.blue,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ASayfasi(),
                    ),
                  );
                },
              ),
              RaisedButton(
                child: Text("B sayfasına git ve veri gönder"),
                color: Colors.red,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BSayfasi(baslik),
                    ),
                  );
                },
              ),
              RaisedButton(
                child: Text("C sayfasına git ve Geri gönder"),
                color: Colors.purple,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CSayfasi(),
                    ),
                  );
                },
              ),
              RaisedButton(
                child: Text("D sayfasına git ve Gelirken Veri Getir"),
                color: Colors.pink,
                onPressed: () {
                  Navigator.push<bool>(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DSayfasi(),
                    ),
                  ).then((popOlayindanSonraGelenDeger) {
                    debugPrint(
                        "Pop İşleminden Sonra Gelen Değer $popOlayindanSonraGelenDeger");
                  });
                },
              ),
              RaisedButton(
                child: Text("E sayfasına git ve Geri Gelme"),
                color: Colors.pink,
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => ESayfasi()));
                },
              ),
              RaisedButton(
                child: Text("Liste sayfasına git"),
                color: Colors.pink,
                onPressed: () {
                  Navigator.pushNamed(context, "/ListeSayfasi");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ListeSinifi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Liste Sayfası",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap:() {
                Navigator.pushNamed(context, "/detay/$index");
              } ,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Liste Elemanı $index"),
                ),
              ),
            );
          },
          itemCount: 60,
        ));
  }
}

class ListeDetay extends StatelessWidget {
int  tiklanilanindex=0;
ListeDetay(this.tiklanilanindex);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Liste Detay Sayfası",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Liste Elemanı $tiklanilanindex tıklanıldı"),
        ),
      ),
    );
  }
}

class GSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "G Sayfası",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "G SAYFASI",
                style: TextStyle(color: Colors.red, fontSize: 24),
              )
            ],
          ),
        ));
  }
}

class FSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "F Sayfası",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "F SAYFASI",
                style: TextStyle(color: Colors.red, fontSize: 24),
              ),
              RaisedButton(
                child: Text("G Sayfasına git"),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, "/GPage");
                },
              )
            ],
          ),
        ));
  }
}

class ESayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "E Sayfası",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "E SAYFASI",
                style: TextStyle(color: Colors.green, fontSize: 24),
              ),
              RaisedButton(
                child: Text("F Sayfasına git"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FSayfasi()));
                },
              )
            ],
          ),
        ));
  }
}

class DSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return WillPopScope(
      onWillPop: () {
        debugPrint("on will pop çalıştı");
        Navigator.pop(context, false);
        return Future.value(false);
      },
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              "D Sayfası",
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "D SAYFASI",
                  style: TextStyle(color: Colors.pink, fontSize: 24),
                ),
                RaisedButton(
                  color: Colors.pink,
                  child: Text("Geri dön ve Veri Gönder"),
                  onPressed: () {
                    Navigator.pop<bool>(context, true);
                    //true demek ürün silindi demek
                    //false ürün silinemedi veya kullanıcı vazgeçti
                  },
                ),
              ],
            ),
          )),
    );
  }
}

class ASayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "A Sayfası",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "A SAYFASI",
                style: TextStyle(color: Colors.red, fontSize: 24),
              )
            ],
          ),
        ));
  }
}

class BSayfasi extends StatelessWidget {
  String gelenBaslikVerisi;

  BSayfasi(this.gelenBaslikVerisi);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text(
            gelenBaslikVerisi,
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                gelenBaslikVerisi,
                style: TextStyle(color: Colors.red, fontSize: 24),
              )
            ],
          ),
        ));
  }
}

class CSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "C Sayfası",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "C SAYFASI",
                style: TextStyle(color: Colors.purple, fontSize: 24),
              ),
              RaisedButton(
                color: Colors.purple,
                child: Text("Geri dön"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              RaisedButton(
                color: Colors.purple,
                child: Text("A Sayfasına Git"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ASayfasi()));
                },
              ),
            ],
          ),
        ));
  }
}
