import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

//
//[Directions]
//1-Create a TabController
//2-Create the tabs
//3-Create content for each tab

void main() {

  /// your app lunch from here
  runApp(new MaterialApp(
    //// remove debug logo  top left AppBar
    debugShowCheckedModeBanner: false,
//    application title
    title: 'My App',
//     whole  content
    home: TabsExample(),
  ));
}


class TabsExample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return TabsState();
  }

}


class TabsState extends State<TabsExample> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    /*
    * In order for tabs to work, we’ll need to keep the selected tab and content sections in sync. This is the job of the TabController.
*/
    return DefaultTabController(
        length: 13,
        child: new Scaffold(
          appBar: AppBar(
            title: Text('Tabs Example'),
            bottom: TabBar(
                tabs:
                [
                  Tab(icon: Icon(Icons.school),),
                  Tab(icon: Icon(Icons.home),),
                  Tab(icon: Icon(Icons.local_hospital),),
                ]
            ),
          ),
          body: TabBarView(children:
          [
//             any widget can work very well here <3
            new Container(
              margin: EdgeInsets.all(10.0),
              child: Center(child: Column(children: <Widget>[
                Text('Zain', style: TextStyle(color: Colors.white),),
                RaisedButton(onPressed: () {
                  launch("tel://21213123123");
                }, child: Text('اشترك الان'), color: Colors.orange,)
              ],)
              ),
            ),
          ]),
        ));
  }

}

