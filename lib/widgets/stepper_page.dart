import 'package:cozina/constants/constants.dart';
import 'package:cupertino_stepper/cupertino_stepper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StepperPage extends StatefulWidget {
  @override
  _StepperPageState createState() => _StepperPageState();
}

class _StepperPageState extends State<StepperPage> {
  int _currentStep = 0;
  StepperType stepperType = StepperType.vertical;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Theme(
                data: ThemeData(
                  colorScheme: Theme.of(context)
                      .colorScheme
                      .copyWith(primary: primaryColor),
                ),
                child: Stepper(
                  type: stepperType,
                  physics: ScrollPhysics(),
                  currentStep: _currentStep,
                  onStepTapped: (step) => tapped(step),
                  onStepContinue: continued,
                  onStepCancel: cancel,
                  steps: <Step>[
                    Step(
                      title: Text(
                        "Order Placed",
                        style: darkBlueColor18MediumTextStyle,
                      ),
                      content: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "12.08.2021 | 10 am",
                          style: darkBlueColor14MediumTextStyle,
                        ),
                      ),
                      isActive: _currentStep >= 0,
                      state: _currentStep >= 0
                          ? StepState.complete
                          : StepState.disabled,
                    ),
                    Step(
                      title: Text(
                        "Order Accepted",
                        style: darkBlueColor18MediumTextStyle,
                      ),
                      content: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "12.08.2021 | 10 am",
                          style: darkBlueColor14MediumTextStyle,
                        ),
                      ),
                      isActive: _currentStep >= 0,
                      state: _currentStep >= 1
                          ? StepState.complete
                          : StepState.disabled,
                    ),
                    Step(
                      title: Text(
                        "Food preparation started",
                        style: darkBlueColor18MediumTextStyle,
                      ),
                      content: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "12.08.2021 | 10 am",
                          style: darkBlueColor14MediumTextStyle,
                        ),
                      ),
                      isActive: _currentStep >= 0,
                      state: _currentStep >= 2
                          ? StepState.complete
                          : StepState.disabled,
                    ),
                    Step(
                      title: Text(
                        "Food Prepared",
                        style: darkBlueColor18MediumTextStyle,
                      ),
                      content: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "12.08.2021 | 10 am",
                          style: darkBlueColor14MediumTextStyle,
                        ),
                      ),
                      isActive: _currentStep >= 0,
                      state: _currentStep >= 3
                          ? StepState.complete
                          : StepState.disabled,
                    ),
                    Step(
                      title: Text(
                        "Food Picked uP and order completed",
                        style: darkBlueColor18MediumTextStyle,
                      ),
                      content: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "12.08.2021 | 10 am",
                          style: darkBlueColor14MediumTextStyle,
                        ),
                      ),
                      isActive: _currentStep >= 0,
                      state: _currentStep >= 4
                          ? StepState.complete
                          : StepState.disabled,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.list),
      //   onPressed: switchStepsType,
      // ),
    );
  }

  // switchStepsType() {
  //   setState(() => stepperType == StepperType.vertical
  //       ? stepperType = StepperType.horizontal
  //       : stepperType = StepperType.vertical);
  // }

  tapped(int step) {
    setState(() => _currentStep = step);
  }

  continued() {
    _currentStep < 4 ? setState(() => _currentStep += 1) : null;
  }

  cancel() {
    _currentStep > 0 ? setState(() => _currentStep -= 1) : null;
  }
}
  
  // List<Model> list = [];

  // @override
  // void initState() {
  //   super.initState();
  //   list.add(Model(status: "Order Placed", time: "12.08.2021 | 10 am"));
  //   list.add(Model(status: "Order Accepted", time: "12.08.2021 | 10 am"));
  //   list.add(
  //       Model(status: "Food Preparation Started", time: "12.08.2021 | 10 am"));
  //   list.add(Model(status: "Food Prepared", time: "12.08.2021 | 10 am"));
  //   list.add(Model(
  //       status: "Food PickedUp and Order Completed",
  //       time: "12.08.2021 | 10 am"));
    // list.add(Model("Visakhapatnam", Colors.green));
    // list.add(Model("Vijayawada", Colors.blue));
  // }

  // void addNew() {
  //   setState(() {
  //     list.add(Model("Karnool", Colors.black));
  //   });
  // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Container(
//             padding: EdgeInsets.all(15),
//             color: Colors.white,
//             child: ListView.builder(
//                 itemCount: list.length,
//                 itemBuilder: (con, ind) {
//                   return ind != 0
//                       ? Column(mainAxisSize: MainAxisSize.min, children: [
//                           Row(children: [
//                             Column(
//                               children: List.generate(
//                                 15,
//                                 (ii) => Padding(
//                                     padding: EdgeInsets.only(
//                                       left: 10,
//                                       right: 10,
//                                     ),
//                                     child: Container(
//                                       height: 4,
//                                       width: 4,
//                                       color: primaryColor,
//                                     )),
//                               ),
//                             ),
//                             Expanded(
//                                 child: Container(
//                               color: Colors.grey.withAlpha(60),
//                               height: 0.5,
//                               padding: EdgeInsets.only(
//                                 left: 20,
//                                 right: 20,
//                               ),
//                             ))
//                           ]),
//                           Row(children: [
//                             Icon(Icons.circle, color: primaryColor),
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Padding(
//                                   padding: EdgeInsets.only(left: 10),
//                                   child: Text(
//                                     list[ind].status,
//                                     style: darkBlueColor18MediumTextStyle,
//                                   ),
//                                 ),
//                                 heightSpace,
//                                 Padding(
//                                   padding: EdgeInsets.only(left: 10),
//                                   child: Text(
//                                     list[ind].time.toString(),
//                                     style: darkBlueColor14MediumTextStyle,
//                                   ),
//                                 )
//                               ],
//                             )
//                           ])
//                         ])
//                       : Row(children: [
//                           Icon(Icons.circle, color: primaryColor),
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Padding(
//                                 padding: EdgeInsets.only(left: 10),
//                                 child: Text(
//                                   list[ind].status,
//                                   style: darkBlueColor18MediumTextStyle,
//                                 ),
//                               ),
//                               heightSpace,
//                               Padding(
//                                 padding: EdgeInsets.only(left: 10),
//                                 child: Text(
//                                   list[ind].time.toString(),
//                                   style: darkBlueColor14MediumTextStyle,
//                                 ),
//                               )
//                             ],
//                           )
//                         ]);
//                 })));
//   }
// }

// class Model {
//   String status;
//   String time;
//   Model({
//     required this.status,
//     required this.time,
//   });


// }
