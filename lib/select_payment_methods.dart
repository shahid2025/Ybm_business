import 'package:flutter/material.dart';
class Select_payment_methods extends StatefulWidget {
  const Select_payment_methods({Key? key}) : super(key: key);

  @override
  State<Select_payment_methods> createState() => _Select_payment_methodsState();
}

class _Select_payment_methodsState extends State<Select_payment_methods> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: size.height*.03,
          ),
          Container(
            height: size.height*.1,
            width: size.width*.90,
            child: Row(
              children: [
                IconButton(onPressed: (){  }, icon: Icon(Icons.arrow_back_ios)),
                Padding(
                  padding: const EdgeInsets.only(left: 80.0),
                  child: Container(
                    height: size.height*.1,
                    width: size.width*.35,
                    alignment: Alignment.center,
                    child: Image.asset(
                      "assets/images/YBM_LOGO.png",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Text('Add Payment Method'),
          ),
          SizedBox(
            height: size.height*.2,
          ),
        ],
      ),
    );
  }
}
