import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Profile Demo',
      home: new MyHomePage(title: 'Profile'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return new Stack(
      children: <Widget>[
        new Container(
          color: Colors.cyanAccent[700],
        ),
        new Scaffold(
            appBar: new AppBar(
              title: new Text(widget.title),
              centerTitle: false,
              elevation: 0.0,
              backgroundColor: Colors.transparent,
            ),
            drawer: new Drawer(
              child: new Container(),
            ),
            backgroundColor: Colors.transparent,
            body: new Center(
              child: new Column(
                children: <Widget>[
                  new SizedBox(
                    height: _height / 12,
                  ),
                  new CircleAvatar(
                      radius: _width < _height ? _width / 4 : _height / 4,
                      backgroundImage: NetworkImage(
                          'https://scontent.fcgk32-1.fna.fbcdn.net/v/t1.0-9/37347192_130231041215381_3848015948158074880_n.jpg?_nc_cat=103&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeE75qH6OdoHTqT2F7w4MDRNXVu3tyP-nVVdW7e3I_6dVV0mg2cGnuKf7mfuy0nou-swchBsGScURRRGxI4DQiVs&_nc_ohc=yVkGpd5Ke4sAX-d-OEu&_nc_ht=scontent.fcgk32-1.fna&oh=dd00a2fd85f5d73209214125f3954260&oe=60849F96')),
                  new SizedBox(
                    height: _height / 25.0,
                  ),
                  new Text(
                    'Sandy Ardian',
                    style: new TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: _width / 15,
                        color: Colors.white),
                  ),
                  new Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        new Container(
                          padding: EdgeInsets.all(5.0),
                          width: 300.0,
                          height: 35.0,
                          margin: EdgeInsets.all(10.0),
                          child: new Text(
                            ' Mahasiswa ',
                            style: new TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 18,
                                color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        new Container(
                          margin: EdgeInsets.all(5),
                          height: 1,
                          width: 80,
                          color: Colors.white,
                        ),
                        Card(
                            color: Colors.white,
                            margin: EdgeInsets.only(
                                left: 25, right: 25, top: 20, bottom: 10),
                            child: ListTile(
                                leading: Icon(
                                  Icons.phone,
                                  size: 30,
                                  color: Colors.cyanAccent[700],
                                ),
                                title: Text(
                                  '+6282121064965',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.cyanAccent[700]),
                                ))),
                        Card(
                            color: Colors.white,
                            elevation: 0.0,
                            margin: EdgeInsets.only(left: 25, right: 25),
                            child: ListTile(
                                leading: Icon(
                                  Icons.email,
                                  size: 30,
                                  color: Colors.cyanAccent[700],
                                ),
                                title: Text(
                                  'sandy.065118201@unpak.ac.id',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.cyanAccent[700]),
                                ))),
                      ])
                ],
              ),
            ))
      ],
    );
  }
}
