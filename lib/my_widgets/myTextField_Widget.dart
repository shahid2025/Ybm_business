import 'package:flutter/material.dart';
class MyTextFieldWidget extends StatefulWidget {
  final hintText;
  final IconData? IconLeft;
  final Color? IconLeftcolor;
  final dynamic IconRight;
 final heightContainer;
 final widthContainer;
   final  check;
  final TextEditingController textEditingController;
  final bool obscuretxt;

  const MyTextFieldWidget({Key? key, required this.hintText,this.IconLeft, this.IconRight,
    this.heightContainer, this.widthContainer, this.IconLeftcolor,
    required this.check,required this.textEditingController, this.obscuretxt= false, }) : super(key: key);

  @override
  _MyTextFieldWidgetState createState() => _MyTextFieldWidgetState();
}

class _MyTextFieldWidgetState extends State<MyTextFieldWidget> {

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return  Container(

      height: size.height*.06,
      width: size.width*.85,
      decoration: BoxDecoration(
          color: Color(0xfff0f0f0),
          borderRadius: BorderRadius.circular(12)
      ),
      child: TextFormField(
           controller:widget.textEditingController ,
        obscureText: widget.obscuretxt,
        decoration:  InputDecoration(
          contentPadding: widget.check==true ? EdgeInsets.only(left:8,top: 13,bottom: 0): EdgeInsets.only(left:9,bottom: 6),
            prefixIcon:widget.check==true?Icon(widget.IconLeft,color: widget.IconLeftcolor,size: 15,):null,
            suffixIcon:widget.IconRight,
            border: InputBorder.none,
            // border: OutlineInputBorder(
            //   borderRadius: BorderRadius.circular(9),
            // ) ,


            hintText: widget.hintText,hintStyle: TextStyle(fontSize: 12)
        ),
      ),
    );
  }
}
