import 'package:flutter/material.dart';

class GridPuertos extends StatelessWidget {
  const GridPuertos({super.key});

  @override
  Widget build(BuildContext context) {

    final estados = List.generate(
      24,
      (index) {
        if (index % 7 == 0) return Colors.red;
        if (index % 5 == 0) return Colors.orange;
        if (index % 2 == 0) return Colors.green;
        return Colors.grey;
      },
    );

    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: List.generate(
        24,
        (index) => Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
            color: estados[index],
            borderRadius: BorderRadius.circular(8),
          ),
          alignment: Alignment.center,
          child: Text(
            '${index + 1}',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 10,
            ),
          ),
        ),
      ),
    );
  }
}