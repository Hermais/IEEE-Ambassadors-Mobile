import 'package:bmi_calculator/custom_card.dart';
import 'package:flutter/material.dart';

import 'custom_floating_button.dart';

void main() {
  runApp( const MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _selectedSex = "male";
  int _height = 180;
  int _weight = 60;
  int _age = 25;

  @override
  Widget build(BuildContext context) {
    return
       Scaffold(
        appBar: AppBar(
          title: const Text('BMI CALCULATOR'),
        ),
        body: Scaffold(
            body: Center(
                child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomCard(
                        onTap: () {
                          setState(() {
                            _selectedSex = "male";
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.male,
                              size: 100.0,
                              color: (_selectedSex ) == 'male'
                                  ? Colors.deepPurple
                                  : null,
                            ),
                            Text("Male",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    color: (_selectedSex ) == 'male'
                                        ? Colors.deepPurple
                                        : null))
                          ],
                        )),
                    CustomCard(
                        onTap: () {
                          setState(() {
                            _selectedSex = "female";
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.female,
                                size: 100.0,
                                color: (_selectedSex ) == 'female'
                                    ? Colors.deepPurple
                                    : null),
                            Text("Female",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    color: (_selectedSex ) == 'female'
                                        ? Colors.deepPurple
                                        : null))
                          ],
                        )),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomCard(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text("Height",
                            style:
                                TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
                        Text("${_height.toString()} cm",
                            style: const TextStyle(fontSize: 23.0)),
                        Slider(
                            value: _height / 300.0,
                            onChanged: (value) {
                              setState(() {
                                _height = (value * 300).round();
                              });
                            })
                      ],
                    )),
                  ],
                ),
              ),
              Expanded(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomCard(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text("Weight", style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
                       Text("$_weight kg", style: const TextStyle(fontSize: 20.0)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomFloatingButton(
                            onPressed: () {
                              setState(() {
                                _weight++;
                              });
                            },
                            child: const Icon(Icons.add),
                          ),
                          CustomFloatingButton(
                            onPressed: () {
                              setState(() {
                                _weight--;
                              });
                            },
                            child: const Icon(Icons.remove),
                          )
                        ],
                      )
                    ],
                  )),
                  CustomCard(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text("Age", style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
                       Text("$_age years", style: const TextStyle(fontSize: 20.0)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomFloatingButton(
                            onPressed: () {
                              setState(() {
                                _age++;
                              });
                            },
                            child: const Icon(Icons.add),
                          ),
                          CustomFloatingButton(
                            onPressed: () {
                              setState(() {
                                _age--;
                              });
                            },
                            child: const Icon(Icons.remove),
                          )
                        ],
                      )
                    ],
                  )),
                ],
              )),
              Expanded(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton(
                      onPressed: () {
                        double bmi = _weight / ((_height / 100) * (_height / 100));
                        Navigator.of(context).push(

                            MaterialPageRoute(
                                builder: (context) => BMIResultPage(
                                  bmi: bmi,
                                  age: _age,
                                  gender: _selectedSex,
                                )));

                      },
                      child:
                          const Text("Calculate BMI", style: TextStyle(fontSize: 20.0))),
                ],
              ))
            ],
          ),
        ))),
      );

  }
}

class BMIResultPage extends StatelessWidget {
  final String gender;
  final double bmi;
  final int age;
  const BMIResultPage({super.key, required this.gender, required this.bmi, required this.age});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI Result"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              CustomCard(
                height: 100,
                  child: Row(
                mainAxisSize: MainAxisSize.min,

                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Gender: $gender", style: Theme.of(context).textTheme.titleLarge),
                    ),
                  )
                ],
              )),
              CustomCard(
                  height: 100,
                  child: Row(
                mainAxisSize: MainAxisSize.min,


                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("BMI: ${bmi.toStringAsFixed(2)}", style: Theme.of(context).textTheme.titleLarge),
                  )
                ],
              )),
              CustomCard(
                  height: 100,
                  child: Row(
                mainAxisSize: MainAxisSize.min,

                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Age: $age", style: Theme.of(context).textTheme.titleLarge),
                  )
                ],
              )),

            
            
          ],
        ),
      ),
    );
  }
}

