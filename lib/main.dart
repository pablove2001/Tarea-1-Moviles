import 'package:flutter/material.dart';

void main() => runApp(MyApp());

bool btn1 = false;

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Mc Flutter'),
        ),
        body: Container(
          height: 150,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          // ignore: sort_child_properties_last
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.supervised_user_circle,
                    size: 45,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Flutter McFlutter',
                        style: TextStyle(fontSize: 21),
                      ),
                      Text(
                        'Experienced App Developer',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('123 Main Street'),
                  Text('(415) 555-0198'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    icon: Icon(Icons.accessibility),
                    color: btn1 ? Colors.indigo : Colors.black,
                    onPressed: () {
                      btn1 = !btn1;
                      print('btn1 $btn1');
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.timer),
                    color: Colors.black,
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.phone_android),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.phone_iphone),
                    color: Colors.black,
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
          decoration:
              BoxDecoration(border: Border.all(color: Colors.black, width: 2)),
        ),
      ),
    );
  }
}
