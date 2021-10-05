import 'package:cozina/constants/constants.dart';
import 'package:cupertino_stepper/cupertino_stepper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StepperPage extends StatefulWidget {
  @override
  _StepperPageState createState() => _StepperPageState();
}

class _StepperPageState extends State<StepperPage> {
  // int currentStep = 0;

  // @override
  // Widget build(BuildContext context) {
  //   return CupertinoPageScaffold(
  //     navigationBar: CupertinoNavigationBar(
  //       middle: Text('CupertinoStepper for Flutter'),
  //     ),
  //     child: SafeArea(
  //       child: OrientationBuilder(
  //         builder: (BuildContext context, Orientation orientation) {
  //           switch (orientation) {
  //             case Orientation.portrait:
  //               return _buildStepper(StepperType.vertical);
  //             case Orientation.landscape:
  //               return _buildStepper(StepperType.horizontal);
  //             default:
  //               throw UnimplementedError(orientation.toString());
  //           }
  //         },
  //       ),
  //     ),
  //   );
  // }

  // CupertinoStepper _buildStepper(StepperType type) {
  //   final canCancel = currentStep > 0;
  //   final canContinue = currentStep < 5;
  //   return CupertinoStepper(
  //     type: type,
  //     currentStep: currentStep,
  //     onStepTapped: (step) => setState(() => currentStep = step),
  //     onStepCancel: canCancel ? () => setState(() => --currentStep) : null,
  //     onStepContinue: canContinue ? () => setState(() => ++currentStep) : null,
  //     steps: [
  //       for (var i = 0; i < 5; ++i)
  //         _buildStep(
  //           title: Text('Step ${i + 1}'),
  //           isActive: i == currentStep,
  //           state: i == currentStep
  //               ? StepState.editing
  //               : i < currentStep
  //                   ? StepState.complete
  //                   : StepState.indexed,
  //         ),
  //       _buildStep(
  //         title: Text('Error'),
  //         state: StepState.error,
  //       ),
  //       _buildStep(
  //         title: Text('Disabled'),
  //         state: StepState.disabled,
  //       )
  //     ],
  //   );
  // }

  // Step _buildStep({
  //   required Widget title,
  //   StepState state = StepState.indexed,
  //   bool isActive = false,
  // }) {
  //   return Step(
  //     title: title,
  //     subtitle: Text('Subtitle'),
  //     state: state,
  //     isActive: isActive,
  //     content: LimitedBox(
  //       maxWidth: 300,
  //       maxHeight: 300,
  //       child: Container(color: CupertinoColors.systemGrey),
  //     ),
  //   );
  // }

  List<Model> list = [];

  @override
  void initState() {
    super.initState();
    list.add(Model(status: "Order Placed", time: "12.08.2021 | 10 am"));
    list.add(Model(status: "Order Accepted", time: "12.08.2021 | 10 am"));
    list.add(
        Model(status: "Food Preparation Started", time: "12.08.2021 | 10 am"));
    list.add(Model(status: "Food Prepared", time: "12.08.2021 | 10 am"));
    list.add(Model(
        status: "Food PickedUp and Order Completed",
        time: "12.08.2021 | 10 am"));
    // list.add(Model("Visakhapatnam", Colors.green));
    // list.add(Model("Vijayawada", Colors.blue));
  }

  // void addNew() {
  //   setState(() {
  //     list.add(Model("Karnool", Colors.black));
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.all(15),
            color: Colors.white,
            child: ListView.builder(
                itemCount: list.length,
                itemBuilder: (con, ind) {
                  return ind != 0
                      ? Column(mainAxisSize: MainAxisSize.min, children: [
                          Row(children: [
                            Column(
                              children: List.generate(
                                15,
                                (ii) => Padding(
                                    padding: EdgeInsets.only(
                                      left: 10,
                                      right: 10,
                                    ),
                                    child: Container(
                                      height: 4,
                                      width: 4,
                                      color: primaryColor,
                                    )),
                              ),
                            ),
                            Expanded(
                                child: Container(
                              color: Colors.grey.withAlpha(60),
                              height: 0.5,
                              padding: EdgeInsets.only(
                                left: 20,
                                right: 20,
                              ),
                            ))
                          ]),
                          Row(children: [
                            Icon(Icons.circle, color: primaryColor),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text(
                                    list[ind].status,
                                    style: darkBlueColor18MediumTextStyle,
                                  ),
                                ),
                                heightSpace,
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text(
                                    list[ind].time.toString(),
                                    style: darkBlueColor14MediumTextStyle,
                                  ),
                                )
                              ],
                            )
                          ])
                        ])
                      : Row(children: [
                          Icon(Icons.circle, color: primaryColor),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  list[ind].status,
                                  style: darkBlueColor18MediumTextStyle,
                                ),
                              ),
                              heightSpace,
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  list[ind].time.toString(),
                                  style: darkBlueColor14MediumTextStyle,
                                ),
                              )
                            ],
                          )
                        ]);
                })));
  }
}

class Model {
  String status;
  String time;
  Model({
    required this.status,
    required this.time,
  });
}
