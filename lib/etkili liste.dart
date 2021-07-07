import 'package:flutter/cupertino.dart';

class EtkinListeOrnek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemBuilder: (context, index) => Text("Eleman $index"));
  }
}
