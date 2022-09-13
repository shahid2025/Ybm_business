import 'package:flutter/material.dart';
class ButtonWidget extends StatefulWidget {
  final  buttonColor;
  final  borderRadius;
  final  buttonText;
  final  textcolor;
  final  wholewidth;

  final void Function() ? onTap;
  const ButtonWidget({Key? key,required this.buttonColor,required this.borderRadius,required this.buttonText,
    required this.textcolor, required this.onTap, required this.wholewidth,}) : super(key: key);

  @override
  _ButtonWidgetState createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: MediaQuery.of(context).orientation==Orientation.portrait?
      size.height*.06:
      size.height*.08,
      width: MediaQuery.of(context).orientation==Orientation.portrait?
      widget.wholewidth:
      size.width*.40,
      // color: Colors.blue,
      //   alignment: Alignment.centerRight,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.black26, offset: Offset(0, 4), blurRadius: 5.0)
        ],
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.topCenter,
          stops: [0.0, 1.0],
          colors: [
            Color(0xff41CAFF),
            Color(0xff00ACEF),


          ],
        ),
        color: widget.buttonColor,
        borderRadius: widget.borderRadius,
      ),
      child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
              ),
            ),
            //  minimumSize: MaterialStateProperty.all(Size(width, 50)),
            backgroundColor:
            MaterialStateProperty.all(Colors.transparent),
            // elevation: MaterialStateProperty.all(3),
            shadowColor:
            MaterialStateProperty.all(Colors.transparent),
          ),
          onPressed: widget.onTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(widget.buttonText
                ,textAlign: TextAlign.center,
                style: TextStyle(
                    color: widget.textcolor,
                    letterSpacing: .05,
                    fontSize: 15
                ),
              ),
              //   Icon(Icons.arrow_forward)
            ],
          )

      ),);
  }
}


