import 'package:flutter/material.dart';


void main() {
  runApp(matrialDrawerNav());
}

class matrialDrawerNav extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return matrialDrawerNavState();
  }

}

class matrialDrawerNavState extends State<matrialDrawerNav> {
  int _selectedIndex = 0;

//   list of widget
  final drawerItems = [
    new DrawerItem("Aeroplane", Icons.local_airport),
    new DrawerItem("Pizza", Icons.local_pizza),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'App title ',
        home: Scaffold(
            appBar: AppBar(title: Text('TabBar title'),),
            body: drawerItems[this._selectedIndex],
            floatingActionButton: FloatingActionButton(
              onPressed: () {}, child: Icon(Icons.add),),
            drawer: DrawerExample(onTap: (int val) {
              setState(() {
                this._selectedIndex = val;
              });
            },))
    );
  }
}

class DrawerExample extends StatelessWidget {


  Function onTap;

  DrawerExample({this.onTap});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(padding: EdgeInsets.zero, children: <Widget>[

        DrawerHeader(child: Text('Drawer Header'),
          decoration: BoxDecoration(color: Colors.greenAccent),),
        ListTile(
          title: Text('Item 1'),
          onTap: () {
            onTap(0);
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text('Item 2'),
          onTap: () {
            onTap(1);
            Navigator.pop(context);
          },
        ),
      ],),
    );
  }

}

class DrawerItem extends StatelessWidget {
  String s;
  IconData icon;

  DrawerItem(this.s, this.icon);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(children: <Widget>[
        Icon(icon),
        Text(s),
      ],),
    );
  }

}