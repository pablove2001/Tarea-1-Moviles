import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool btn1 = false;
  bool btn2 = false;
  bool btn3 = false;
  bool btn4 = false;

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
                      setState(() {});
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.timer),
                    color: btn2 ? Colors.indigo : Colors.black,
                    onPressed: () {
                      btn2 = !btn2;
                      setState(() {});
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.phone_android),
                    color: btn3 ? Colors.indigo : Colors.black,
                    onPressed: () {
                      btn3 = !btn3;
                      setState(() {});
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.phone_iphone),
                    color: btn4 ? Colors.indigo : Colors.black,
                    onPressed: () {
                      btn4 = !btn4;
                      setState(() {});
                    },
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
