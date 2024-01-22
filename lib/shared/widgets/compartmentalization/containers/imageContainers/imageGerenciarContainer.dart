import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class GerenciarImageContainer extends StatelessWidget {
  const GerenciarImageContainer({super.key, required this.constraints, required this.imageController, this.imageDatabase, this.imageUpdate});
  final BoxConstraints constraints;
  final String imageController;
  final String? imageDatabase;
  final bool? imageUpdate;

  @override
  Widget build(BuildContext context) {
    return Container(
                              height: constraints.maxHeight * 0.3,
                              width: double.infinity,
                              child: Image.asset(
                                imageUpdate! ?
                                 imageController : imageDatabase!,
                                fit: BoxFit.fill,
                                errorBuilder: (context, error, stackTrace) {
                                  return Image.asset(
                                    "assets/images/product_image_not_available.png",
                                    fit: BoxFit.cover,
                                  );
                                },
                              ),
                            );
  }
}