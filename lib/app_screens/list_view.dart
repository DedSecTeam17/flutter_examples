import 'package:flutter/material.dart';



class User {
  String _name;
  String _job;
  int _age;

  User(this._name, this._job, this._age);

  int get age => _age;

  String get job => _job;

  String get name => _name;

  static List<User> getUsers(){
    List<User> users=List<User>();
    users.add(new User("Mohammed Elamin", "Software Develoepr", 34));
    users.add(new User("Ali Omer Mohammed", "UI/UX designer", 22));
    users.add(new User("Sam ala omer", "Software Arch", 33));
    return users;
  }



}
class Items extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   List<User> list=List<User>();
   list.add(new User("Mohammed Elamin", "Software Developer", 22));
   list.add(new User("Mohammed Elamin", "UI/UX developer", 22));



   Widget  listView=ListView.builder(itemCount :list.length,itemBuilder: (BuildContext context, int index) {

     User user=list[index];
     return new Card(
       child:
         ListTile(
           leading: Icon(Icons.face),
           title: Text(user.name),
           subtitle: Text(user.job),
           trailing: Text(user.age.toString()),
           onTap: (){
             debugPrint("Hi there");
           },
         )
         ,
     );
   });


    return listView;
  }

}