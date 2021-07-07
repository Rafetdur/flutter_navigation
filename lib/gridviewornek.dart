import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridViewOrnek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 100,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext, int index) {
          return GestureDetector(
            child: Container(
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                border: new Border(
                    top: new BorderSide(
                        color: Colors.green,
                        width: 5.0,
                        style: BorderStyle.solid
                    ),
                    bottom: BorderSide(
                      color: Colors.purple,
                      width: 10,
                    )
                ),
                //borderRadius: new BorderRadius.all(new Radius.circular(10.0),),
                boxShadow: [
                  new BoxShadow(
                    color: Colors.green,
                    offset: new Offset(10.0, 5.0),
                    blurRadius: 20.0,
                  )
                ],
                shape: BoxShape.circle,
                color: Colors.blue[100 * ((index + 1) % 8)],
                gradient: LinearGradient(
                    colors: [Colors.yellow, Colors.red],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter),
                image: DecorationImage(
                    image: AssetImage(
                      ("assets/images/rafet.jpg"),
                    ),
                    fit: BoxFit.contain,
                    alignment: Alignment.topCenter),
              ),
              margin: EdgeInsets.all(20),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Merhaba flutter $index",
                  style: TextStyle(fontSize: 40, color: Colors.white),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            onTap: () => debugPrint("Merhaba Flutter $index tıklanıldı"),
            onDoubleTap: () => debugPrint("Merhaba Flutter $index çift tıklanıldı"),
            onLongPress: () => debugPrint("Merhaba Flutter $index uzun basıldı"),
            onHorizontalDragStart: (e) => debugPrint("Merhaba Flutter $index uzun basıldı $e"),
          );
        });
  }
}
/*
* GridView.extent(
      //reverse: true,
      maxCrossAxisExtent: 500,
      primary: true,
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.all(10),
      crossAxisSpacing: 20,
      mainAxisSpacing: 40,
      children: [
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Merhaba flutter 1",textAlign: TextAlign.center,),
        ), Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Merhaba flutter 2",textAlign: TextAlign.center,),
        ), Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Merhaba flutter 3",textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text(
            "Merhaba flutter 4",
            textAlign: TextAlign.center,
          ),
        ),Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Merhaba flutter 5",textAlign: TextAlign.center,),
        ), Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Merhaba flutter 6",textAlign: TextAlign.center,),
        ), Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Merhaba flutter 7",textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text(
            "Merhaba flutter 8",
            textAlign: TextAlign.center,
          ),
        ),Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Merhaba flutter 9",textAlign: TextAlign.center,),
        ), Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Merhaba flutter 10",textAlign: TextAlign.center,),
        ), Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Merhaba flutter 11",textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text(
            "Merhaba flutter 12",
            textAlign: TextAlign.center,
          ),
        ),

      ],
    );*/
/*GridView.count(
      crossAxisCount: 2,
      reverse: true,
      primary: true,
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.all(10),
      crossAxisSpacing: 20,
      mainAxisSpacing: 40,
      children: [
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Merhaba flutter 1",textAlign: TextAlign.center,),
        ), Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Merhaba flutter 2",textAlign: TextAlign.center,),
        ), Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Merhaba flutter 3",textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text(
            "Merhaba flutter 4",
            textAlign: TextAlign.center,
          ),
        ),Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Merhaba flutter 5",textAlign: TextAlign.center,),
        ), Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Merhaba flutter 6",textAlign: TextAlign.center,),
        ), Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Merhaba flutter 7",textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text(
            "Merhaba flutter 8",
            textAlign: TextAlign.center,
          ),
        ),Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Merhaba flutter 9",textAlign: TextAlign.center,),
        ), Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Merhaba flutter 10",textAlign: TextAlign.center,),
        ), Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text("Merhaba flutter 11",textAlign: TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal.shade300,
          child: Text(
            "Merhaba flutter 12",
            textAlign: TextAlign.center,
          ),
        ),

      ],
    );
*
* */
