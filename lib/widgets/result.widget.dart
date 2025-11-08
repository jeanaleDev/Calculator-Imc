import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final double imc;
  final String status;
  final Color cor;
  const Result({
    super.key,
    required this.imc,
    required this.status,
    required this.cor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: EdgeInsets.symmetric(vertical: 24, horizontal: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xff1c1e26),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 8),
          Text(
            status,
            style: TextStyle(
              color: cor,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 12),
          Text(
            "Seu IMC é",
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
          SizedBox(height: 10),
          Text(
            imc.toStringAsFixed(2),
            style: TextStyle(color: Color(0xff18e0b5), fontSize: 24),
          ),
        ],
      ),
    );
  }
}
