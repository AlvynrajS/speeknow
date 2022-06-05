import 'package:flutter/material.dart';

class animation_screen extends StatefulWidget {
  const animation_screen({Key? key}) : super(key: key);

  @override
  State<animation_screen> createState() => _animation_screenState();
}

class _animation_screenState extends State<animation_screen>
    with SingleTickerProviderStateMixin {
  double containerWidth = 100;
  double containerHeight = 30;
  bool isLargeSize = false;
  late AnimationController controller;
  late Animation colorAnimation;
  late Animation sizeAnimation;
  // bool isLarge = false;
  @override
  void initState() {
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    colorAnimation =
        ColorTween(begin: Colors.red, end: Colors.green).animate(controller);
    sizeAnimation = Tween<double>(begin: 100.0, end: 300.0).animate(controller);
    controller.addListener(() {
      setState(() {});
    });
    // controller.repeat();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animations"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
                duration: Duration(seconds: 1),
                width: containerWidth,
                height: containerHeight,
                decoration: BoxDecoration(color: Colors.red.withOpacity(0.9)),
                padding: EdgeInsets.only(top: 5, left: 5, right: 5)),
            ElevatedButton(
                onPressed: (() {
                  isLargeSize = !isLargeSize;
                  if (isLargeSize) {
                    controller.reverse();
                  } else {
                    controller.forward();
                  }

                  setState(() {
                    containerWidth = isLargeSize ? 100 : 300;
                    containerHeight = isLargeSize ? 30 : 70;
                  });
                }),
                child: Text("Modified container")),
            Container(
              color: colorAnimation.value,
              width: sizeAnimation.value,
              height: sizeAnimation.value,
            )
          ],
        ),
      ),
    );
  }
}
