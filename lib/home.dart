// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:calculadora_imc/blocs/imc.bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String genre = "M";
  var bloc = new ImcBloc();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: null,
      child: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                          top: 10, left: 10), //apply padding to all four sides
                      child: Text('Calculadora de IMC',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                    CupertinoButton(
                      onPressed: () {
                        showCupertinoModalPopup<void>(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              decoration: const BoxDecoration(
                                  color: CupertinoColors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15.0),
                                      topRight: Radius.circular(15.0))),
                              height: MediaQuery.of(context).size.height - 20,
                              width: MediaQuery.of(context).size.width,
                              child: Scrollbar(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: <Widget>[
                                    Center(
                                      child: const Padding(
                                        padding: EdgeInsets.only(top: 20, bottom: 20),
                                        child: Text(
                                          'Categorias IMC',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 10, left: 20),
                                      child: Text(
                                        'Masculino: Menor que 20',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 20),
                                      child: Text(
                                        'Feminino: Menor que 19',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 1, left: 20),
                                      child: Text(
                                        'Abaixo do peso',
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.black),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 20, left: 20),
                                      child: Text(
                                        'Masculino: 20 a 24.9',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 0, left: 20),
                                      child: Text(
                                        'Feminino: 19 a 23.9',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 1, left: 20),
                                      child: Text(
                                        'Peso normal',
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.black),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 20, left: 20),
                                      child: Text(
                                        'Masculino: 25 a 29.9',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 0, left: 20),
                                      child: Text(
                                        'Feminino: 24 a 28.9',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 1, left: 20),
                                      child: Text(
                                        'Obesidade leve',
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.black),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 20, left: 20),
                                      child: Text(
                                        'Masculino: 30 a 39.9',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 0, left: 20),
                                      child: Text(
                                        'Feminino: 29 a 38.9',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 1, left: 20),
                                      child: Text(
                                        'Obesidade moderada',
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.black),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 20, left: 20),
                                      child: Text(
                                        'Masculino: Mais de 40',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 0, left: 20),
                                      child: Text(
                                        'Feminino: Mais de 39',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 1, left: 20),
                                      child: Text(
                                        'Obesidade morbida',
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.black),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: const Icon(CupertinoIcons.info_circle_fill,
                          color: Colors.black, size: 20),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            genre = "M";
                          });
                        }, // Image tapped
                        child: Image.asset(
                          'assets/images/male.png',
                          height: 100,
                          color: genre == "F"
                              ? Colors.white.withOpacity(0.2)
                              : null,
                          colorBlendMode: BlendMode.modulate,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            genre = "F";
                          });
                        }, // Image tapped
                        child: Image.asset(
                          'assets/images/female.png',
                          height: 100,
                          color: genre == "M"
                              ? Colors.white.withOpacity(0.2)
                              : null,
                          colorBlendMode: BlendMode.modulate,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Text('Homem',
                          style: TextStyle(
                              fontSize: 18,
                              color:
                                  genre == "F" ? Colors.grey : Colors.black)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Text('Mulher',
                          style: TextStyle(
                              fontSize: 18,
                              color:
                                  genre == "M" ? Colors.grey : Colors.black)),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 15, right: 15, top: 30),
                      child:
                          Text('Seu peso (kg)', style: TextStyle(fontSize: 20)),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 15, right: 15, top: 30),
                      child: Text('Sua altura (cm)',
                          style: TextStyle(fontSize: 20)),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Expanded(
                      child: Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: CupertinoTextField(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white)),
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 36),
                            placeholder: 'Peso',
                            controller: bloc.pesoControl,
                            keyboardType: TextInputType.number,
                          )),
                    ),
                    Expanded(
                      child: Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: CupertinoTextField(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white)),
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 36),
                            placeholder: 'Altura',
                            controller: bloc.alturaControl,
                            keyboardType: TextInputType.number,
                          )),
                    )
                  ],
                ),
                if (bloc.resultMsg != "")
                  Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 30),
                        child: Text(
                          'Seu IMC',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          bloc.resultImc,
                          textAlign: TextAlign.center,
                          // ignore: prefer_const_constructors
                          style: TextStyle(
                              fontSize: 36, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Text(
                          bloc.resultMsg,
                          textAlign: TextAlign.center,
                          // ignore: prefer_const_constructors
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      CupertinoButton(
                          onPressed: () {
                            setState(() {
                              bloc.restart();
                            });
                          },
                          child: const Text('Calcular IMC novamente'))
                    ],
                  ),
                if (bloc.resultMsg == "")
                  Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: CupertinoButton(
                          color: const Color(0xff06b0e1),
                          onPressed: () {
                            setState(() {
                              var isValid = bloc.calculate(genre);
                              if (!isValid)
                                // ignore: curly_braces_in_flow_control_structures
                                showCupertinoDialog(
                                    context: context,
                                    builder: (context) {
                                      return CupertinoAlertDialog(
                                        title: Text('Atenção'),
                                        content: Text(
                                            'Informe corretamente os dados'),
                                        actions: <Widget>[
                                          CupertinoButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: Text('ok'))
                                        ],
                                      );
                                    });
                            });
                          },
                          child: const Text('Calcular seu IMC'))),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
