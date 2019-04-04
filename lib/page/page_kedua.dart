import 'package:flutter/material.dart';

class PageKedua extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Kedua'),
      ),

      body: Row(
        children: <Widget>[
          RaisedButton(onPressed: (){
            //untuk back
            Navigator.pop(context);

          }, child: Text('Back ke page Satu'),)
        ],

      ),
    );
  }
}

