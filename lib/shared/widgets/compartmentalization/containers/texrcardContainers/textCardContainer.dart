import 'package:flutter/material.dart';

class TextCardContainer extends StatelessWidget {
  const TextCardContainer(
      {super.key, required this.constraints, required this.titleController});
  final BoxConstraints constraints;
  final String titleController;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: constraints.maxHeight * 0.05,
        width: constraints.maxWidth * 0.7,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            titleController,
            style: const TextStyle(
              fontSize: 17,
            ),
            textAlign: TextAlign.center,
          ),
        ));
  }
}
