import 'package:flutter/material.dart';
import 'package:myapp/app_screens/MonyCalculater.dart';
import 'package:myapp/app_screens/list_view.dart';
import 'app_screens/first_screen.dart';


import 'app_screens/rows_columns.dart';

import 'app_screens/container_screen.dart';


void main() =>

    runApp(
        new MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Home app',
            home: new Scaffold(
                appBar: new AppBar(title: Text("App Bar"),),
                body: new Container(margin: EdgeInsets.all(10.0),
                  child: new Card(
                    child: new CalculatorApp(),
                    elevation: 10.0,),
                ),
                floatingActionButton: FabBtn("Mohammed Elmain")
            ),
            theme: new ThemeData(
              brightness: Brightness.dark,
              primaryColor: Colors.indigo,
              accentColor: Colors.indigoAccent,


            )

        )
    );


class Jobs extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return JobsState();
  }

}


class JobsState extends State<Jobs> {

  String _job = "";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    var jobs = [
      "Software Developer",
      "Software Tester",
      "Software Arch",
      "Software Maintainer"
    ];

    return new DropdownButton<String>(items: jobs.map((String job) {
      return DropdownMenuItem<String>(
        value: job,
        child: Text(job),
      );
    }).toList(), onChanged: (String item) {
      setState(() {
        _job = item;
        debugPrint(_job);
      });
    }, value: _job,);
  }

}


//
class YourName extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return YourNameSate();
  }
}

class YourNameSate extends State<YourName> {
  String _yourName = "Hi there";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(22.0),
      child: new Column(children: <Widget>[
        new TextField(
          onChanged: (String name) {
            setState(() {
              _yourName = name;
              debugPrint(name);
            });
          },
        ),
        Padding(
          child: Text(_yourName,
            style: TextStyle(color: Colors.deepOrange, fontSize: 22.0),)
          , padding: EdgeInsets.all(32.0),)
      ],),

    );
  }
}


// Implement fab btn
class FabBtn extends StatelessWidget {

  String _name;


  FabBtn(this._name);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(onPressed: () {
      showSnackBar(context, _name);
    },
        child: Icon(Icons.add),
        backgroundColor: Colors.deepOrange,
        tooltip: 'Add new Item');
  }


  // snack bar implementation
  void showSnackBar(BuildContext context, String user_name) {
    var snackBar = SnackBar(content:
    Text("Welcome  :   " + user_name),
      action: SnackBarAction(label: "Undo", onPressed: () {}),
    );
    Scaffold.of(context).showSnackBar(snackBar);
  }

}