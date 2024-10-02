import 'package:flutter/material.dart';

class Sample extends StatefulWidget {
  Sample({super.key});

  @override
  State<Sample> createState() => _SampleState();
}

class _SampleState extends State<Sample> {
  bool isToggled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ToggleButtons(
                isSelected: [isToggled, !isToggled],
                onPressed: (index) {
                  setState(() {
                    if (index == 0) {
                      isToggled = !isToggled;
                    } else {
                      isToggled = !isToggled;
                    }
                  });
                },
                children: const [Text('off'), Text('on')],
              ),
              Text('Toggle is: ${isToggled ? "off" : "on"}'),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
