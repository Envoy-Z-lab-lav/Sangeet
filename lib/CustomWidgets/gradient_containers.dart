import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:sangeet/Helpers/config.dart';

class GradientContainer extends StatefulWidget {
  final Widget? child;
  final bool? opacity;

  const GradientContainer({required this.child, this.opacity});

  @override
  _GradientContainerState createState() => _GradientContainerState();
}

class _GradientContainerState extends State<GradientContainer> {
  final MyTheme currentTheme = GetIt.I<MyTheme>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF000326), Color(0xFF000326)],
        ),
      ),
      child: widget.child,
    );
  }
}

class BottomGradientContainer extends StatefulWidget {
  final Widget child;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final BorderRadiusGeometry? borderRadius;

  const BottomGradientContainer({
    required this.child,
    this.margin,
    this.padding,
    this.borderRadius,
  });

  @override
  _BottomGradientContainerState createState() =>
      _BottomGradientContainerState();
}

class _BottomGradientContainerState extends State<BottomGradientContainer> {
  final MyTheme currentTheme = GetIt.I<MyTheme>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: widget.margin ?? const EdgeInsets.fromLTRB(25, 0, 25, 25),
      padding: widget.padding ?? const EdgeInsets.fromLTRB(10, 15, 10, 15),
      decoration: BoxDecoration(
        borderRadius: widget.borderRadius ??
            const BorderRadius.all(Radius.circular(15.0)),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF000326), Color(0xFF000326)],
        ),
      ),
      child: widget.child,
    );
  }
}

class GradientCard extends StatefulWidget {
  final Widget child;
  final BorderRadius? borderRadius;
  final double? elevation;

  const GradientCard({
    required this.child,
    this.borderRadius,
    this.elevation,
  });

  @override
  _GradientCardState createState() => _GradientCardState();
}

class _GradientCardState extends State<GradientCard> {
  final MyTheme currentTheme = GetIt.I<MyTheme>();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: widget.elevation ?? 3,
      shape: RoundedRectangleBorder(
        borderRadius: widget.borderRadius ?? BorderRadius.circular(10.0),
      ),
      clipBehavior: Clip.antiAlias,
      margin: EdgeInsets.zero,
      child: DecoratedBox(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF000326), Color(0xFF000326)],
          ),
        ),
        child: widget.child,
      ),
    );
  }
}
