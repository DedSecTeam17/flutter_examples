import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    theme: ThemeData(primaryColor: Colors.orange,
        accentColor: Colors.orangeAccent,
        brightness: Brightness.dark),
    debugShowCheckedModeBanner: false,
    title: 'App title',
    home: BottomNaviagtoinBar(),

  ));
}


class BottomNaviagtoinBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return BottomNaviagtoinBarState();
  }

}

class BottomNaviagtoinBarState extends State<BottomNaviagtoinBar> {
  int _selectedIndex = 0;

  List<String> l1 = ['lis1'];
  List<String> l2 = ['lis3'];
  List<String> l3 = ['lis4'];


  @override
  Widget build(BuildContext context) {
    // TODO: implement build


    final _widgetOptions = [
      ScreenExample(Colors.redAccent, 'Hi from home', l1),
      ScreenExample(Colors.indigoAccent, 'Hi from Business', l2),
      ScreenExample(Colors.orangeAccent, 'Hi from School', l3),

    ];
    return new Scaffold(
      appBar: AppBar(title: Text('App Bar'),),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.work), title: Text('Business')),
          BottomNavigationBarItem(
              icon: Icon(Icons.school), title: Text('School')),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


}


class ScreenExample extends StatelessWidget {

  Color color;
  String text;
  List<String> list;


  ScreenExample(this.color, this.text, this.list);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
        child: new ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return new Card(
              child: new ListTile(
                leading: Icon(Icons.verified_user),
                title: Text(list[index]),
                subtitle: Text(text, style: TextStyle(color: color),),
                trailing: Icon(Icons.school),
              ),
            );
          }, itemCount: list.length,)
    );
  }

}