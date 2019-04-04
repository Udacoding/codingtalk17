import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'page/page_kedua.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
      ),
      home: HalamanUtama(),
      debugShowCheckedModeBanner: false, // untuk menghilangkan teks debug
    );
  }
}

class HalamanUtama extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Project Flutter Pertama'),
        backgroundColor: Colors.green,

        actions: <Widget>[
      //menambahkan action button
         new IconButton(icon: Icon(Icons.share), onPressed: (){
           Fluttertoast.showToast(
               msg: "Anda menekan tombol share",
               toastLength: Toast.LENGTH_SHORT,
               gravity: ToastGravity.CENTER,
               timeInSecForIos: 1,
               backgroundColor: Colors.red,
               textColor: Colors.white,
               fontSize: 16.0
           );

          }),

          //icon button untuk pindah halaman
          new IconButton(icon: Icon(Icons.skip_next), onPressed: (){

            //untuk perpindahan dari satu class ke class lain itu pkai navigation
            //Push : to (menuju) Dari class A ke class b
            //Pop : back Dari class b ke class A
            Navigator.push(context, MaterialPageRoute(builder: (context)=> PageKedua()));

          })
        ],
      ),

      //menambahkan bottom menu
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('Profile')),
          BottomNavigationBarItem(icon: Icon(Icons.inbox), title: Text('Inbox')),

        ],

      ),

      //penggunaan layout di flutter
      //Row
      //column

      body: Row(
//        child: new Row(
//          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//          children: <Widget>[
//            new Icon(Icons.add_alert, color: Colors.green, size: 40,),
//            new Icon(Icons.add_a_photo, color: Colors.green, size: 40,),
//            new Icon(Icons.cake, color: Colors.green, size: 40,),
//
//          ],
//        ),

//      child: new Column(
//        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//        children: <Widget>[
//          Text('Rizki Syaputra', style: new TextStyle(fontSize: 18.0, color: Colors.green),),
//          Text('Flutter', style: new TextStyle(fontSize: 18.0, color: Colors.green),),
//          Text('Developer', style: new TextStyle(fontSize: 18.0, color: Colors.green),),
//          Text('Udacoding', style: new TextStyle(fontSize: 18.0, color: Colors.green),),
//
//        ],
//      ),

      //menggabungkan row dan column
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[

          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.apps, color: Colors.green, size: 40.0,),
              Text('Aplikasi')
            ],
          ),

          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.phone, color: Colors.green, size: 40.0,),
              Text('Phone')
            ],
          ),

          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.video_call, color: Colors.green, size: 40.0,),
              Text('Video')
            ],
          ),
        ],
      ),
    );
  }
}

//class PageKedua extends StatelessWidget{
//
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('Page Kedua'),
//      ),
//
//      body: Row(
//        children: <Widget>[
//          RaisedButton(onPressed: (){
//            //untuk back
//            Navigator.pop(context);
//
//          }, child: Text('Back ke page Satu'),)
//        ],
//
//      ),
//    );
//  }
//}
//

