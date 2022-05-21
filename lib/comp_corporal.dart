import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

import 'imc_result.dart';
import 'rec_pass.dart';

//peso, altura, triceps, biceps, subscapular e supraciliaca

final TextEditingController _controladorPeso = TextEditingController();
final TextEditingController _controladorAltura = TextEditingController();
final TextEditingController _controladorTriceps = TextEditingController();
final TextEditingController _controladorBiceps = TextEditingController();
final TextEditingController _controladorSe = TextEditingController();
final TextEditingController _controladorSi = TextEditingController();

class Comp_Corporal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
            padding: EdgeInsets.only(top: 60, left: 40, right: 40),
            color: Colors.white,
            child: ListView(
              children: <Widget>[
                SizedBox(
                  width: 128,
                  height: 128,
                  child: Image.asset('assets/images/flutter_ico.png'),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  // autofocus: true,
                  controller: _controladorAltura,
                  keyboardType: TextInputType.number,

                  decoration: InputDecoration(
                    labelText: "Altura",
                    labelStyle: TextStyle(
                      color: Colors.black38,
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: _controladorPeso,
                  // autofocus: true,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Peso",
                    labelStyle: TextStyle(
                      color: Colors.black38,
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                  style: TextStyle(fontSize: 20),
                ),
                TextFormField(
                  controller: _controladorPeso,
                  // autofocus: true,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Triceps",
                    labelStyle: TextStyle(
                      color: Colors.black38,
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                  style: TextStyle(fontSize: 20),
                ),
                TextFormField(
                  controller: _controladorPeso,
                  // autofocus: true,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Biceps",
                    labelStyle: TextStyle(
                      color: Colors.black38,
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                  style: TextStyle(fontSize: 20),
                ),
                TextFormField(
                  controller: _controladorPeso,
                  // autofocus: true,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Se",
                    labelStyle: TextStyle(
                      color: Colors.black38,
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                  style: TextStyle(fontSize: 20),
                ),
                TextFormField(
                  controller: _controladorPeso,
                  // autofocus: true,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Si",
                    labelStyle: TextStyle(
                      color: Colors.black38,
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                  style: TextStyle(fontSize: 20),
                ),
                Container(
                  height: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [
                        0.3,
                        1
                      ],
                      colors: [
                        Color(0xFF2494F5),
                        Color(0xFF095A9D),
                      ],
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FlatButton(
                        child: Text(
                          "IMC",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        onPressed: () {
                          double altura = double.tryParse(_controladorAltura.text)!;

                          double peso = double.tryParse(_controladorPeso.text)!;

                          double imc = (peso) / (altura * altura);

                          print(imc);

                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Imc(imc)));
                        },
                      ),
                    ],
                  ),
                ),
              ],
            )));
  }
}