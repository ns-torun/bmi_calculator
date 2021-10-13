import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/input_card.dart';
import '../constants.dart';
import 'result_page.dart';
import '../components/calculate_brain.dart';

enum Gender {
  male,
  female,
}

class UserInput extends StatefulWidget {
  const UserInput({Key? key}) : super(key: key);

  @override
  _UserInputState createState() => _UserInputState();
}

class _UserInputState extends State<UserInput> {
  Gender? selectedGender;
  int height = 170;
  int weight = 65;
  int age = 25;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: const AssetImage('images/back.png'),
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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      child: InputCard(
                        color: selectedGender == Gender.male
                            ? kActiveColor
                            : kInactiveColor,
                        childCard: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(FontAwesomeIcons.mars,
                                size: 80, color: Colors.blue),
                            SizedBox(height: 10),
                            Text(
                              'MALE',
                              style: kLabelStyle,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      child: InputCard(
                        color: selectedGender == Gender.female
                            ? kActiveColor
                            : kInactiveColor,
                        childCard: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(FontAwesomeIcons.venus,
                                size: 80, color: Colors.pink),
                            SizedBox(height: 10),
                            Text(
                              'FEMALE',
                              style: kLabelStyle,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: InputCard(
                color: kActiveColor,
                childCard: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text('HEIGHT', style: kLabelStyle),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(height.toString(), style: kNumberStyle),
                        const Text('cm', style: kLabelStyle),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        inactiveTrackColor: const Color(0xFF8D8E98),
                        activeTrackColor: Colors.white,
                        thumbColor: const Color(0xFFEB1555),
                        overlayColor: const Color(0x29EB1555),
                        thumbShape:
                            const RoundSliderThumbShape(enabledThumbRadius: 15),
                        overlayShape:
                            const RoundSliderOverlayShape(overlayRadius: 30),
                      ),
                      child: Slider(
                          value: height.toDouble(),
                          min: 100,
                          max: 220,
                          onChanged: (double newValue) {
                            setState(() {
                              height = newValue.round();
                            });
                          }),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: InputCard(
                      color: kActiveColor,
                      childCard: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('WEIGHT', style: kLabelStyle),
                          Text(weight.toString(), style: kNumberStyle),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RawMaterialButton(
                                child: const Icon(
                                  FontAwesomeIcons.minus,
                                ),
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                elevation: 10,
                                constraints: const BoxConstraints.tightFor(
                                  width: 56,
                                  height: 56,
                                ),
                                shape: const CircleBorder(),
                                fillColor: const Color(0xFF4C4F5E),
                              ),
                              const SizedBox(width: 10),
                              RawMaterialButton(
                                child: const Icon(FontAwesomeIcons.plus),
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                elevation: 10,
                                constraints: const BoxConstraints.tightFor(
                                  width: 56,
                                  height: 56,
                                ),
                                shape: const CircleBorder(),
                                fillColor: const Color(0xFF4C4F5E),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: InputCard(
                      color: kActiveColor,
                      childCard: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text('AGE', style: kLabelStyle),
                          Text(age.toString(), style: kNumberStyle),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RawMaterialButton(
                                child: const Icon(FontAwesomeIcons.minus),
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                elevation: 10,
                                constraints: const BoxConstraints.tightFor(
                                  width: 56,
                                  height: 56,
                                ),
                                shape: const CircleBorder(),
                                fillColor: const Color(0xFF4C4F5E),
                              ),
                              const SizedBox(width: 10),
                              RawMaterialButton(
                                child: const Icon(FontAwesomeIcons.plus),
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                elevation: 10,
                                constraints: const BoxConstraints.tightFor(
                                  width: 56,
                                  height: 56,
                                ),
                                shape: const CircleBorder(),
                                fillColor: const Color(0xFF4C4F5E),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  CalculateBrain calc =
                      CalculateBrain(height: height, weight: weight);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultPage(
                        resultData: calc.calculateBMI(),
                        resultText: calc.getResult(),
                        resultAdvice: calc.getAdvice(),
                      ),
                    ),
                  );
                });
              },
              child: Container(
                height: 75,
                decoration: BoxDecoration(
                  color: const Color(0x99EB1555),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Center(
                  child: Text(
                    'CALCULATE',
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
