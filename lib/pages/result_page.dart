import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import '../constants.dart';

class ResultPage extends StatelessWidget {
  const ResultPage(
      {Key? key,
      required this.resultData,
      required this.resultText,
      required this.resultAdvice})
      : super(key: key);

  final String resultText;
  final String resultData;
  final String resultAdvice;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: const AssetImage(
            'images/back.png',
          ),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black12.withOpacity(0.6),
            BlendMode.darken,
          ),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text('BMI CALCULATOR'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.all(25),
                alignment: Alignment.bottomCenter,
                child: const Text(
                  'Your Result',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                decoration: BoxDecoration(
                  color: kActiveColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(resultText.toUpperCase(),
                        style: kResultText, textAlign: TextAlign.center),
                    Text(resultData,
                        style: kResultData, textAlign: TextAlign.center),
                    Text(resultAdvice,
                        style: kResultAdvice, textAlign: TextAlign.center),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: 75,
                decoration: BoxDecoration(
                  color: const Color(0x99EB1555),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Center(
                  child: Text(
                    'RE-CALCULATE',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
