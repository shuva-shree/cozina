
import 'package:cozina/constants/constants.dart';
import 'package:flutter/material.dart';


class StateDropDown extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _StateDropDownState();
}

class _StateDropDownState extends State<StateDropDown> {
  List<String> _locations = [
    'State',
    'Delhi',
    'Madhya Pradesh',
    'Tamil Nadu',
    'Maharashtra',
    'West Bengal',
  ]; 
  String _selectedLocation = 'State'; 

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 40,
      width: 120,
      margin: EdgeInsets.fromLTRB(
        fixPadding,
        fixPadding,
        fixPadding,
        fixPadding,
      ),
      padding: EdgeInsets.symmetric(horizontal: fixPadding * 1.5),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: greyColor.withOpacity(0.1),
            spreadRadius: 2.5,
            blurRadius: 2.5,
          ),
        ],
      ),
      child: new DropdownButtonHideUnderline(
        child: DropdownButton(
          isExpanded: true,
          iconEnabledColor: primaryColor,
          // underline: ,
          hint: Text(
            'State',
            style: greyColor16SemiBoldTextStyle,
          ), // Not necessary for Option 1
          value: _selectedLocation,
          onChanged: (String? newValue) {
            setState(() {
              _selectedLocation = newValue!;
            });
          },
          items: _locations.map((location) {
            return DropdownMenuItem(
              child: new Text(
                location,
                style: greyColor16SemiBoldTextStyle,
              ),
              value: location,
            );
          }).toList(),
        ),
      ),
    );
  }
}
