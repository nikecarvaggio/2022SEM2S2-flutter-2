import 'package:flutter/material.dart';
import 'package:noticias/pages/detalle.page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double weight = 5;
  int age = 5;
  double _currentRangeValues = 50;

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
              child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Height", style: TextStyle(fontSize: 35)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(_currentRangeValues.round().toString(),
                                style: TextStyle(
                                    fontSize: 35, fontWeight: FontWeight.bold)),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 10, 0,
                                  0), //apply padding to LTRB, L:Left, T:Top, R:Right, B:Bottom

                              child: Text("cm"),
                            ),
                          ],
                        ),
                        Slider(
                          value: _currentRangeValues,
                          min: 50,
                          max: 250,
                          activeColor: Color.fromARGB(255, 255, 255, 255),
                          inactiveColor: Color.fromARGB(255, 141, 141, 141),
                          thumbColor: Colors.red,
                          divisions: 200,
                          label: _currentRangeValues.round().toString(),
                          onChanged: (double value) {
                            setState(() {
                              _currentRangeValues = value;
                            });
                          },
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Color.fromARGB(255, 91, 78, 91),
                    ),
                  )),
            ),
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
                var calculateImc = _currentRangeValues / weight;
                var state = "";
                var color = Colors.black;
                if (calculateImc <= 10) {
                  state = "Bajo peso";
                  color = Colors.orange;
                }
                if (calculateImc <= 40) {
                  state = "Bajo peso";
                  color = Colors.green;
                }
                if (calculateImc <= 60) {
                  state = "Bajo peso";
                  color = Colors.red;
                }
                print(calculateImc);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailPage(
                              imc: calculateImc.toString(),
                              color: color,
                              state: state,
                            )));
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
