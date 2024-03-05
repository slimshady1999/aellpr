import 'package:flutter/material.dart';
import 'package:shimmer_effect/shimmer_effect.dart';

class CustomShimmerLoading extends StatelessWidget {
  const CustomShimmerLoading(
      {super.key,
      required this.height,
      required this.width,
      this.radius = 15,
      required this.color});

  final double height, width, radius;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ShimmerEffect(
        baseColor: Colors.grey,
        highlightColor: Colors.grey,
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(10)),
        ));
  }
}
