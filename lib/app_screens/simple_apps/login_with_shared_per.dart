import 'package:flutter/material.dart';
import 'package:myapp/app_screens/Auth/User.dart';
import 'package:myapp/app_screens/Auth/user_auth.dart';
import 'package:myapp/app_screens/ui_widget/ButtonExamples.dart';
import 'package:myapp/app_screens/ui_widget/TestField_Examples.dart';


void main() {
  runApp(MaterialApp(
    theme: ThemeData(primaryColor: Colors.amber,
        accentColor: Colors.amberAccent,
        brightness: Brightness.dark),
    title: 'App',
    home: new FormExample(),
  ));
}


class FormExample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return FormExampleState();
  }

}


class FormExampleState extends State<FormExample> {

  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  var _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build



    return Scaffold(
      appBar: AppBar(title: Text('Form With Shared Perfences'),),
      body: new Container(
          margin: EdgeInsets.all(10.0),
          child: ListView(children: <Widget>[
            Card(
              child: Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>
                    [
                      TextFiledCustom(
                        label: 'Email',
                        hint: 'Enter email',
                        textInputType: TextInputType.emailAddress,
                        textEditingController: emailController,
                        filedValidation: (String val) {
                          if (val.isEmpty) {
                            return 'empty not allowed';
                          }
                        },),
                      TextFiledCustom(
                        label: 'Enter Password',
                        hint: 'Enter Email',
                        textInputType: TextInputType.emailAddress,
                        textEditingController: passwordController,
                        filedValidation: (String val) {
                          if (val.isEmpty) {
                            return 'empty not allowed';
                          }
                        },),
                      Row(children: <Widget>[
                        Expanded(child: Btn(text: 'Logon',
                          onPress: () async {
                          setState(() {
                            if (_formKey.currentState.validate()) {
//                              save  user in shared perf
                              User user = new User(emailController.text,
                                  passwordController.text);
                              UserAuth.getInstance().destroyUserDate();
                              UserAuth.getInstance().saveUserData(user);

                              Navigator.push(context, MaterialPageRoute(
                                  builder: (BuildContext context) {
                                    return HomeApp();
                                  }));



                            }
                          });

                          },
                          color: Colors.deepOrangeAccent,))
                      ],)
                    ],

                  )
              ),
            ),
          ],)
      ),
    );
  }

}


class HomeApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return HomeAppState();
  }

}


class HomeAppState extends State<HomeApp> {
  User _user;

  void updateUser() {
    UserAuth.getInstance().getCurrentUserData().then((user) {
      setState(() {
        _user = user;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build


    updateUser();
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.amber,
          accentColor: Colors.amberAccent,
          brightness: Brightness.dark),
      title: 'Home',
      home: Scaffold(
        drawer: Drawer(
      child: ListView(
      children: <Widget>[
      DrawerHeader(
      child: Text('App'),
      decoration: BoxDecoration(color: Colors.amber),
    ),
    ListTile(
    leading: Icon(Icons.usb),
    title: Text('log out'),
      onTap: (){
      this.moveToPreviousScreen();
      },
    )
    ],),),
        appBar: AppBar(title: Text('Home'),


        ),
        body: WillPopScope(
            child: new Container(
              child: Card(
                child:
                Column(children: <Widget>
                [

                  ListTile(
                    leading: Icon(Icons.email),
                    title:  Text(_user.email),
                  ),
                  ListTile(
                      leading: Icon(Icons.lock),
                      title:  Text(_user.password),
                  ),
//                  Text('User Email ------->' + _user.email),
//                  Text('User Password ---->' + _user.password),
                ],)
                ,),
            ),
            onWillPop: () {
              moveToPreviousScreen();
            }),

      ),

    );
  }

  void moveToPreviousScreen() {
    Navigator.pop(context);
  }

}
