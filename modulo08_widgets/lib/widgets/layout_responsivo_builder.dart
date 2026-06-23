import 'package:flutter/material.dart';

class LayoutResponsivoBuilder extends StatelessWidget {
  const LayoutResponsivoBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {

        final tarjetas = List.generate(
          4,
          (index) => Card(
            child: SizedBox(
              height: 100,
              child: Center(
                child: Text(
                  'Tarjeta ${index + 1}',
                ),
              ),
            ),
          ),
        );

        if (constraints.maxWidth < 600) {

          return ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: tarjetas,
          );
        }

        return GridView.count(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 2,
          children: tarjetas,
        );
      },
    );
  }
}