import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

enum _AniProps { opacity, translateX }

class FadeBottomAnimation extends StatelessWidget {
  final int delay;
  final Widget child;

  const FadeBottomAnimation({
    Key? key,
    required this.delay,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tween = MultiTween<_AniProps>()
      ..add(_AniProps.opacity, Tween(begin: 0.0, end: 1.0))
      ..add(_AniProps.translateX, Tween(begin: 50.0, end: 0.0));

    return PlayAnimation<MultiTweenValues<_AniProps>>(
      delay: Duration(milliseconds: 300 * delay),
      duration: const Duration(milliseconds: 500),
      tween: tween,
      child: child,
      builder: (context, child, value) => Opacity(
        opacity: value.get(_AniProps.opacity),
        child: Transform.translate(
          offset: Offset(0, value.get(_AniProps.translateX)),
          child: child,
        ),
      ),
    );
  }
}
