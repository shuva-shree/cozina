import 'package:cozina/constants/constants.dart';
import 'package:cozina/screens/auth/signup.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool visible = false;
  late double width;

  resetButton() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: fixPadding * 2.0,
        vertical: fixPadding * 1.5,
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(10.0),
        onTap: () {
          // }=> Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => Otp()
          // ),
          // ),
        },
        child: Container(
          height: 40,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: primaryColor.withOpacity(0.2),
                spreadRadius: 2.5,
                blurRadius: 2.5,
              ),
            ],
          ),
          child: Text(
            'Get Password Reset Link',
            style: whiteColor15BoldTextStyle,
          ),
        ),
      ),
    );
  }

  Future<void> _showDialog(context) {
    return showDialog(
      
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            child: Container(
              color: bgColor,
              height: 250,
              padding: EdgeInsets.symmetric(horizontal: 7),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(Icons.cancel_outlined)),
                  ),
                  Text(
                    "Forgot Password",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: darkBlueColor),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      decoration: InputDecoration(hintText: "Email"),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  resetButton(),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: bgColor,
      body: Stack(
        alignment: Alignment.center,
        children: [
          // cornerImage(),
          ListView(
            physics:
                BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            children: [
              heightSpace,
              heightSpace,
              SizedBox(
                height: 50,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Cozina",
                  style: TextStyle(
                      fontSize: 40,
                      color: primaryColor,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(fixPadding * 2.0,
                      fixPadding, fixPadding * 2.0, fixPadding * 2.0),
                  child: Text(
                    'Log In',
                    style: darkBlueColor22BoldTextStyle,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              userNameTextField(),
              passwordTextField(),
              SizedBox(
                height: 60,
              ),
              signinButton(),
              // otherSigninOptions(),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Not a memeber Already?",
                    style: greyColor16MediumTextStyle,
                  ),
                  TextButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUp()),
                    ),
                    child: Text(
                      " Register",
                      style: TextStyle(fontSize: 17, color: accentColor),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  userNameTextField() {
    return Container(
      margin: EdgeInsets.fromLTRB(
        fixPadding * 2.0,
        fixPadding,
        fixPadding * 2.0,
        fixPadding * 2.0,
      ),
      padding: EdgeInsets.all(fixPadding * 1.5),
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
      child: Row(
        children: [
          Icon(
            Icons.person_outline,
            color: greyColor,
            size: 20,
          ),
          widthSpace,
          Expanded(
            child: TextField(
              cursorColor: primaryColor,
              style: greyColor16MediumTextStyle,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.zero,
                hintStyle: greyColor16MediumTextStyle,
                hintText: 'Email',
                border: UnderlineInputBorder(borderSide: BorderSide.none),
              ),
            ),
          ),
        ],
      ),
    );
  }

  passwordTextField() {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        fixPadding * 2.0,
        0.0,
        fixPadding * 2.0,
        0.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            padding: EdgeInsets.all(fixPadding * 1.5),
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
            child: Row(
              children: [
                Icon(
                  Icons.lock_outline,
                  color: greyColor,
                  size: 20,
                ),
                widthSpace,
                Expanded(
                  child: TextField(
                    obscureText: !visible,
                    cursorColor: primaryColor,
                    style: greyColor16MediumTextStyle,
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.zero,
                      hintStyle: greyColor16MediumTextStyle,
                      hintText: 'Password',
                      border: UnderlineInputBorder(borderSide: BorderSide.none),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      visible = !visible;
                    });
                  },
                  child: Icon(
                    visible
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                    color: greyColor,
                    size: 15,
                  ),
                ),
                widthSpace,
              ],
            ),
          ),
          heightSpace,
          // GestureDetector(
          //   onTap: () => _showDialog,
          //   child: Text('Forgot Password?',

          //     style:greyColor16MediumTextStyle,)
          //   ),
          TextButton(
              onPressed: () {
                // ignore: unnecessary_statements
                _showDialog(context);
              },
              child: Text(
                'Forgot Password?',
                style: greyColor16MediumTextStyle,
              )),
        ],
      ),
    );
  }

  signinButton() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: fixPadding * 2.0,
        vertical: fixPadding * 1.5,
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(10.0),
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SignUp()),
        ),
        child: Container(
          height: 50,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: primaryColor.withOpacity(0.2),
                spreadRadius: 2.5,
                blurRadius: 2.5,
              ),
            ],
          ),
          child: Text(
            'Log In',
            style: whiteColor20BoldTextStyle,
          ),
        ),
      ),
    );
  }
}
