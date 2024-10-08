import 'package:flutter/material.dart';
import 'package:untitled/result.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isMale = false;
  double sliderValue = 50.0;
  int weightValue = 20;
  int ageValue = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0A0E21),
      appBar: AppBar(
        backgroundColor: Color(0xff1A1F38),
        centerTitle: true,
        title: const Text(
          "BMI Calculator",
          style: TextStyle(
              fontSize: 35, fontWeight: FontWeight.w700, color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      child: Container(
                        decoration: BoxDecoration(
                            color:
                                isMale ? Color(0xff1A1F38) : Color(0xfff10606),
                            borderRadius: BorderRadius.circular(15)),
                        width: MediaQuery.of(context).size.width * .3,
                        height: 150,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.female,
                              color: Colors.white,
                              size: 70,
                            ),
                            Text(
                              "Female",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 24,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color:
                                isMale ? Color(0xfff10606) : Color(0xff1A1F38),
                            borderRadius: BorderRadius.circular(15)),
                        width: MediaQuery.of(context).size.width * .3,
                        height: 150,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.male,
                              color: Colors.white,
                              size: 70,
                            ),
                            Text(
                              "Male",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 24,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xff1A1F38),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          "Height",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                        Text(
                          "cm",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    Text(
                      "${sliderValue.round()}",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    Slider(
                      value: sliderValue,
                      divisions: 4,
                      onChanged: (value) {
                        setState(() {
                          sliderValue = value;
                        });
                      },
                      min: 50,
                      max: 120,
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xff1A1F38),
                          borderRadius: BorderRadius.circular(15)),
                      width: MediaQuery.of(context).size.width * .3,
                      height: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Weight",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 24,
                                color: Colors.white),
                          ),
                          Text(
                            "$weightValue",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 24,
                                color: Colors.white),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                radius: 18,
                                backgroundColor: Colors.white,
                                child: Icon(Icons.remove),
                              ),
                              CircleAvatar(
                                radius: 18,
                                backgroundColor: Colors.white,
                                child: Icon(Icons.add),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xff1A1F38),
                          borderRadius: BorderRadius.circular(15)),
                      width: MediaQuery.of(context).size.width * .3,
                      height: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Age",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 24,
                                color: Colors.white),
                          ),
                          Text(
                            "$ageValue",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 24,
                                color: Colors.white),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              InkWell(
                                onTap: () {
                                  if (ageValue > 1) {
                                    setState(() {
                                      ageValue--;
                                    });
                                  }
                                },
                                child: CircleAvatar(
                                  radius: 18,
                                  backgroundColor: Colors.white,
                                  child: Icon(Icons.remove),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    ageValue++;
                                  });
                                },
                                child: CircleAvatar(
                                  radius: 18,
                                  backgroundColor: Colors.white,
                                  child: Icon(Icons.add),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              print("Hello to flutter");
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ResultScreen(
                    result: 0,
                  ),
                ),
              );
            },
            child: Container(
              width: double.infinity,
              height: 80,
              decoration: BoxDecoration(color: Color(0xfff10606)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Calculate",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
