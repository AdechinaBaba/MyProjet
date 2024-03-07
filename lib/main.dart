import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      home: PageHome(),

    );
  }git init
}
class Person{
  String? name, sexe;
  int? age, size, message;
  Person({
    this.age, this.size, this.name, this.sexe, this.message,
  });
}

class PageHome extends StatelessWidget {
  const PageHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Mon appli"),),
        backgroundColor: Color(0x808080),
      ),
      body: BodySection(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0x808080),
        child: Icon(Icons.add),
        onPressed: (){},
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: 1,
        destinations: const <Widget>[
          NavigationDestination(icon: Icon(Icons.wifi, color: Color(0x808080)), label: "Actuality", ),
          NavigationDestination(icon: Icon(Icons.message, color: Color(0x808080),), label: "Disc"),
          NavigationDestination(icon: Icon(Icons.call, color: Color(0x808080),), label: "Call"),
        ],
      ),
    );
  }
}

class BodySection extends StatelessWidget {
  const BodySection({super.key});

  @override
  Widget build(BuildContext context) {
    Person person1 = new Person(name: "Jonathan",sexe: 'M', age: 21, size: 95, message: 2);
    Person person2 = new Person(name: "Sephora",sexe: 'M', age: 18, size: 70, message: 4);
    Person person3 = new Person(name: "Mendel",sexe: 'M', age: 19, size: 70, message: 1);
    Person person4 = new Person(name: "Mich-kath",sexe: 'F', age: 20, size: 80, message: 10);

    var personne = [person1, person2, person3, person4,
    ];
    return Container(

      padding: EdgeInsets.only(right: 10, left: 10, top: 5, bottom: 6),
      child: ListView(
        //scrollDirection: Axis.vertical,
        children: [
          /*InkWell(
            onTap: (){},
            splashColor: Color(0xff79b9b1),
            child: ListTile(
              leading: CircleAvatar(),
              title: Text("ddd"),
              subtitle: Text("jjddj"),
            ),

          ),
          InkWell(
            onTap: (){},
            splashColor: Color(0xff79b9b1),
            child: ListTile(
              leading: CircleAvatar(),
              title: Text("ddd"),
              subtitle: Text("jjj"),
            ),

          ),
          */

          ...personne.map((e) =>
              InkWell(
                onTap: (){print('object');},
                splashColor: Color(0xff79b9b1),
                child: ListTile(


                  title: Text(e.name.toString()),
                  subtitle: Text("Cc, comment vas tu? c'est "+ e.name.toString() +" \\\ Mes information : taille :" + e.size.toString() + "cm"+ " age:"+e.age.toString()),
                  trailing: Container(
                    padding: EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      color: Color(0x808080),
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      e.message.toString(),
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              )
          ).toList(),
        ],
      ),
    );

  }
}