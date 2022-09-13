import 'package:flutter/material.dart';
class Faq extends StatefulWidget {
  const Faq({Key? key}) : super(key: key);

  @override
  _FaqState createState() => _FaqState();
}

class _FaqState extends State<Faq> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: <Color>[
                Color(0xff41CAFF),
                Color(0xff00ACEF)
              ],
            ),
          ),
        ),
        centerTitle: true,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: () {  Navigator.pop(context);},),
        title: Text('Faqs'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: size.height*.02,
          ),
          Container(
            height: size.height*.05,
            width: size.width*.90,
            alignment: Alignment.center,
            child: Text('Frequently Asked Questions',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black))
            ,
          ),
          SizedBox(
            height: size.height*.028,
          ),
          Container(
            height: size.height*.05,
            width: size.width*.80,
            alignment: Alignment.centerLeft,
            child: Text('Q1.Some Questions Here?',textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600,color: Colors.black))
            ,
          ),
          Container(
            height: size.height*.15,
            width: size.width*.80,
            alignment: Alignment.center,
            child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
                'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s when an unknown printer'
          '  took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, '
           '     but also the leap into electronic typesetting, remaining essentially unchanged.',textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Color(0xff7a7a7a)))
            ,
          ),
          SizedBox(
            height: size.height*.018,
          ),
          Container(
            height: size.height*.05,
            width: size.width*.80,
            alignment: Alignment.centerLeft,
            child: Text('Q1.Some Questions Here?',textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600,color: Colors.black))
            ,
          ),
          Container(
            height: size.height*.15,
            width: size.width*.80,
            alignment: Alignment.center,
            child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
                'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s when an unknown printer'
                '  took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, '
                '     but also the leap into electronic typesetting, remaining essentially unchanged.',textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Color(0xff7a7a7a)))
            ,
          ),
          SizedBox(
            height: size.height*.018,
          ),
          Container(
            height: size.height*.05,
            width: size.width*.80,
            alignment: Alignment.centerLeft,
            child: Text('Q1.Some Questions Here?',textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600,color: Colors.black))
            ,
          ),
          Container(
            height: size.height*.15,
            width: size.width*.80,
            alignment: Alignment.center,
            child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
                'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s when an unknown printer'
                '  took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, '
                '     but also the leap into electronic typesetting, remaining essentially unchanged.',textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Color(0xff7a7a7a)))
            ,
          ),
        ],
      ),
    );
  }
}
