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

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      // backgroundColor: bgColor,
      backgroundColor: bgColor,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          //  () => Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => SignUpScreen()),
          // ),
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
      ),
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
                height: 30,
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
                    'Sign In',
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
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Not a memeber Already?",
                    style: greyColor16MediumTextStyle,
                  ),
                  Text(
                    " Register",
                    style: TextStyle(fontSize: 17, color: primaryColor),
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
                hintText: 'User Name',
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
          Text(
            'Forget Password?',
            style: greyColor16MediumTextStyle,
          ),
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
            'Sign In',
            style: whiteColor20BoldTextStyle,
          ),
        ),
      ),
    );
  }
}