import 'package:flutter/material.dart';
import 'package:magic_8_ball/components/magic_8_ball.dart';

class RulesOfTheOracles extends StatefulWidget {
  const RulesOfTheOracles({super.key});

  @override
  State<RulesOfTheOracles> createState() => _RulesOfTheOraclesState();
}

class _RulesOfTheOraclesState extends State<RulesOfTheOracles> {
  String text = 'Drag the Magic 8-Ball around\n'
      'while concentrating on\n'
      'the question you most\n'
      'want answered.\n\n'
      'Let go, and the oracle will\n'
      'give you an answer - of sorts!';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Magic8Ball(),
              Text(text),
            ],
          ),
        ),
      ),
    );
  }
}
