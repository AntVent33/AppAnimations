// ignore_for_file: camel_case_types, avoid_unnecessary_containers

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class detalle5Page extends StatefulWidget {
  const detalle5Page({Key? key}) : super(key: key);

  @override
  _detalle5Page createState() => _detalle5Page();
}

class _detalle5Page extends State<detalle5Page> {
  final dur = const Duration(milliseconds: 1000);
  var isOn = false;
  var curve = Curves.elasticInOut;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('detalle'),
        ),
        body: Column(
          children: <Widget>[
            Container(
              child: Hero(
                tag: 'det5',
                child: Image.asset(
                  'assets/espinacas.png',
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(30.0),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque molestie dolor a libero luctus mollis. Donec interdum pellentesque ipsum.',
                style: TextStyle(fontSize: 30),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isOn = !isOn;
                });
              },
              child: AnimatedContainer(
                  duration: dur,
                  width: 75,
                  height: 25,
                  color: isOn ? Colors.green : Colors.blue[400],
                  child: AnimatedAlign(
                    duration: dur,
                    alignment:
                        isOn ? Alignment.centerRight : Alignment.centerLeft,
                    curve: curve,
                    child: AnimatedContainer(
                        duration: dur,
                        width: 20,
                        height: 24,
                        color: isOn ? Colors.purple[900] : Colors.red),
                  )),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Agregar al carrito.',
                style: TextStyle(fontSize: 15),
              ),
            ),
          ],
        ));
  }
}
