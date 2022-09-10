import 'package:flutter/material.dart';
import 'package:noticias/pages/detalle.page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double weight = 0;
  int age = 0;
  double _currentRangeValues = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Calculadora IMC"),
        ),
        body: Column(
          children: [
            Expanded(
                child: Container(
              child: Row(
                children: [
                  Expanded(
                      child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.man_outlined,
                                  size: 100,
                                ),
                                Text("Man")
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Color.fromARGB(255, 91, 78, 91),
                            ),
                          ))),
                  Expanded(
                      child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.woman_outlined,
                                  size: 100,
                                ),
                                Text("Woman")
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Color.fromARGB(255, 91, 78, 91),
                            ),
                          )))
                ],
              ),
            )),
            Expanded(
                child: Container(
              child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    child: Slider(
                      value: _currentRangeValues,
                      max: 200,
                      divisions: 200,
                      label: _currentRangeValues.round().toString(),
                      onChanged: (double value) {
                        setState(() {
                          _currentRangeValues = value;
                        });
                      },
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Color.fromARGB(255, 91, 78, 91),
                    ),
                  )),
            )),
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Weight"),
                              Text(
                                weight.toString(),
                                style: TextStyle(
                                    fontSize: 40, fontWeight: FontWeight.bold),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        if (weight == 0) {
                                        } else {
                                          weight = weight - 1;
                                        }
                                      });
                                    },
                                    icon: Icon(Icons.remove_circle),
                                    iconSize: 50,
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        weight = weight + 1;
                                      });
                                    },
                                    icon: Icon(Icons.add_circle),
                                    iconSize: 50,
                                  )
                                ],
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Color.fromARGB(255, 91, 78, 91),
                          ),
                        ))),
                Expanded(
                    child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Age"),
                              Text(
                                age.toString(),
                                style: TextStyle(
                                    fontSize: 40, fontWeight: FontWeight.bold),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        if (age == 0) {
                                        } else {
                                          age = age - 1;
                                        }
                                      });
                                    },
                                    icon: Icon(Icons.remove_circle),
                                    iconSize: 50,
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        age = age + 1;
                                      });
                                    },
                                    icon: Icon(Icons.add_circle),
                                    iconSize: 50,
                                  )
                                ],
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Color.fromARGB(255, 91, 78, 91),
                          ),
                        )))
              ],
            )),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DetailPage()));
              },
              child: Container(
                height: 100,
                color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Calcular",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
