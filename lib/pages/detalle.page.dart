import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  String imc;
  String state;
  Color color;

  DetailPage(
      {super.key, required this.imc, required this.state, required this.color});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detalle del calculo"),
      ),
      body: Column(
        children: [
          /*** --------------- ABOSLUTAMENTE TODA PANTALLA ----------------- ***/
          Expanded(
              child: Container(
            color: const Color.fromRGBO(9, 14, 33, 1),
            /*** ---------- PRIMER TITULO RESULTADO ---------- ***/
            child: Column(
              children: [
                const Text("Resultado",
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                /*** ---------  -------- ***/
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(29, 30, 51, 1),
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            /*** -----------------ESTADO --------------- ***/
                            Expanded(
                              child: Row(
                                children: [
                                  Text(
                                    state,
                                    style: TextStyle(color: color),
                                  ),
                                ],
                              ),
                            ),
                            /*** -----------------VALOR O RESULTADO --------------- ***/
                            Expanded(
                                child: Row(
                              children: [
                                Text(
                                  imc.toString(),
                                  style: TextStyle(
                                      fontSize: 70,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )),
                            /*** ----------------- MENSAJE FINAL --------------- ***/
                            Expanded(
                                child: Row(
                              children: [
                                Text("Tienes un peso corporal bajo, come mas!"),
                              ],
                            ))
                          ],
                        )
                      ],
                    ),
                  ),
                ))
              ],
            ),
          ))
        ],
      ),
    );
  }
}
