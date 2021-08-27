import 'package:flutter/material.dart';
import 'reusebable_card.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ReusebableCard(
                    colour: Color(0xFF1D1E33),
                  ),
                ),
                Expanded(
                  child: ReusebableCard(
                    colour: Color(0xFF1D1E33),
                  ),
                )
              ],
            )),
            Expanded(
              child: Expanded(
                child: ReusebableCard(
                  colour: Color(0xFF1D1E33),
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusebableCard(
                      colour: Color(0xFF1D1E33),
                    ),
                  ),
                  Expanded(
                    child: ReusebableCard(
                      colour: Color(0xFF1D1E33),
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
