import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class EtkinListeOrnek extends StatelessWidget {
  List<Ogrenci> TumOgrenciler = [];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    OgrenciVerileriniGetir();
    return ListView.separated(
        separatorBuilder: (context, index) {
          if (index % 4 == 0 && index != 0) {
            return Container(
              height: 2,
              color: Colors.yellow,
              margin: EdgeInsets.all(4),
            );
          } else {
            return Container();
          }
        },
        itemCount: 20,
        //itemBuilder: (context, index) => Card(),
        itemBuilder: (context, index) {
          return Card(
              color:
                  index % 2 == 0 ? Colors.red.shade200 : Colors.green.shade200,
              elevation: 40,
              child: ListTile(
                leading: Icon(Icons.perm_contact_calendar),
                title: Text(TumOgrenciler[index]._isim),
                subtitle: Text(TumOgrenciler[index]._aciklamasi),
                trailing: Icon(Icons.add),
                onTap: () {
                  debugPrint(TumOgrenciler[index].toString());
                  toastMesajGoster(index, false);
                  alerDialogGoster(context, index);
                },
                onLongPress: () {
                  debugPrint(TumOgrenciler[index].toString());
                  toastMesajGoster(index, true);
                },
              ));
        });
  }

  void OgrenciVerileriniGetir() {
    TumOgrenciler = List.generate(
        300,
        (index) => Ogrenci("Ogrenci $index Adi", "Ogrenci $index Acıklaması",
            index % 2 == 0 ? true : false));
  }

  void alerDialogGoster(BuildContext ctx, int index) {
    showDialog(
      context: ctx,
      barrierDismissible: false,
      builder: (ctx) {
        return AlertDialog(
          title: Text("Alert Dialog Başlık"),
          content: SingleChildScrollView(
              child: ListBody(
            children: [
              Text("Ögrenci Adı :${TumOgrenciler[index]._isim}"),
              Text("Ögrenci Adı :${TumOgrenciler[index]._aciklamasi}"),
            ],
          )),
          actions: [
            ButtonTheme(
              child: ButtonBar(
                children: [
                  FlatButton(
                    child: Text("Tamam"),
                    color: Colors.green,
                    onPressed: () {
                      Navigator.of(ctx).pop();
                    },
                  ),
                  RaisedButton(
                    child: Text("Kapat"),
                    color: Colors.red,
                    onPressed: () {
                      Navigator.of(ctx).pop();
                    },
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  void toastMesajGoster(int index, bool uzunBasilma) {
    Fluttertoast.showToast(
      msg: uzunBasilma
          ? "uzun Basildi : " + TumOgrenciler[index].toString()
          : "tek Tıklama" + TumOgrenciler[index].toString(),
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
    );
  }
}

class Ogrenci {
  String _isim;
  String _aciklamasi;
  bool _cinsiyet;

  Ogrenci(this._isim, this._aciklamasi, this._cinsiyet);

  @override
  String toString() {
    // TODO: implement toString
    return "seçilen öğrenci adı: $_isim açıklaması $_aciklamasi";
  }
}
