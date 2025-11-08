import 'package:flutter/material.dart';
import 'package:imccloneweb2/widgets/calc_button.widget.dart';
import 'package:imccloneweb2/widgets/card_value.widget.dart';
import 'package:imccloneweb2/widgets/result.widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double peso = 70.0;
  double altura = 1.70;
  double imc = 0.0;
  String status = "Aguardando Cálculo ";
  Color corresult = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0XFF1c1e26),
        title: Text(
          "Calculadora IMC",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 14),
            Result(imc: imc, status: status, cor: corresult),
            CardValue(
              label: "Peso (kg)",
              value: peso,
              onChanged: (v) => setState(() => peso = v),

              min: 30,
              max: 180,
            ),
            CardValue(
              label: "Altura(m)",
              value: altura,
              onChanged: (v) => setState(() => altura = v),
              min: 1.0,
              max: 2.2,
            ),
            SizedBox(height: 30),

            CalcButton(
              onPressed: () {
                setState(() {
                  if (altura <= 0) {
                    status = "Altura deve ser maior que zero!";
                    corresult = Colors.red;
                    imc = 0.0;
                    return;
                  }
                  imc = peso / (altura * altura);

                  if (imc < 18.5) {
                    status = "Abaixo do peso!!!";
                    corresult = Colors.yellow;
                  } else if (imc < 24.9) {
                    status = "Peso normal!";
                    corresult = Colors.green;
                  } else if (imc < 29.9) {
                    status = "Sobrepeso!!!";
                    corresult = Colors.orange;
                  } else if (imc < 34.9) {
                    status = "Obesidade grau 1";
                    corresult = Colors.deepOrange;
                  } else if (imc < 39.9) {
                    status = "Obesidade grau 2";
                    corresult = Colors.redAccent;
                  } else {
                    status = "Obesidade grau 3";
                    corresult = Colors.red;
                  }
                });
              },
            ),
            SizedBox(height: 60),
          ],
        ),
      ),
    );
  }
}
