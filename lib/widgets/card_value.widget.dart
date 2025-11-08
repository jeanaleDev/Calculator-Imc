import 'package:flutter/material.dart';

class CardValue extends StatelessWidget {
  final String label;
  final double value;
  final void Function(double) onChanged;
  final double min;
  final double max;

  const CardValue({
    super.key,
    required this.label,
    required this.value,
    required this.onChanged,
    required this.min,
    required this.max,
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
        children: [
          Text(label, style: TextStyle(color: Colors.white, fontSize: 14)),
          SizedBox(height: 10),
          Text(
            value.toStringAsFixed(2),
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          Slider(
            value: value,
            onChanged: onChanged,
            min: min,
            max: max,
            divisions: 100,
            activeColor: Color(0xff18e0b5),
            inactiveColor: Color(0xff18e0b5).withValues(alpha: 0.3),
          ),
        ],
      ),
    );
  }
}
