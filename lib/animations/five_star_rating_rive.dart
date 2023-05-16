import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class FiveStarRatingRive extends StatefulWidget {
  const FiveStarRatingRive({Key? key}) : super(key: key);

  @override
  State<FiveStarRatingRive> createState() => _FiveStarRatingRiveState();
}

class _FiveStarRatingRiveState extends State<FiveStarRatingRive> {

  late SMIInput<bool>? _press;
  late StateMachineController? controller;

  void _onRiveInit(Artboard artboard) {
    controller =
        StateMachineController.fromArtboard(artboard, 'State Machine 1');
    artboard.addController(controller!);
    _press = controller?.findInput('rating');

    // _animationController = AnimationController(vsync: this, duration: const Duration(seconds: 10));
    // _animation = Tween<double>(begin: 0.0, end: 100.0).animate(_animationController);
    //
    // _animation.addListener(() {
    //   // print(_animation.value);
    //   setState(() {
    //
    //   });
    // });
    //
    // _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: RiveAnimation.asset(
        '/assets/rating_animation.riv',
        onInit: _onRiveInit,
        fit: BoxFit.contain,
      ),
    );
  }
}
