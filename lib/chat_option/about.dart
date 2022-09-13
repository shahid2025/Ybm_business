import 'package:flutter/material.dart';
class About_screen extends StatefulWidget {
  const About_screen({Key? key}) : super(key: key);

  @override
  _About_screenState createState() => _About_screenState();
}

class _About_screenState extends State<About_screen> {
  List<String> images  =['assets/drawer_icon_images/youtube_pic.png','assets/drawer_icon_images/twiter.png',
    'assets/drawer_icon_images/instagram.png','assets/drawer_icon_images/google.png'
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[Color(0xff41CAFF
                ), Color(0xff00ACEF
                )]),
          ),
        ),
        centerTitle: true,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: () {
          Navigator.pop(context);
        },),
        title: Text('About Us'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: size.height*.016,
          ),
          Container(
            height: size.height*.05,
            width: size.width*.90,
            alignment: Alignment.center,
            child: Text('About Us',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black))
            ,
          ),
          SizedBox(
            height: size.height*.016,
          ),
          Container(
              height: size.height/3.8,
              width: size.width*.80,
              alignment: Alignment.center,
              child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
                  'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, '
                  ' \n\nwhen an unknown printer took a galley of type and scrambled it to make a type specimen book. '
                  '\n\nIt has survived not only five centuries, but also the leap into electronic typesetting, remaining '
                  'essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing '
                  '\n\nLorem Ipsum passages,'
                  'nand more recently with desktop publishing software like Aldus PageMaker includinpsum.',textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 12,fontWeight: FontWeight.w300,color: Colors.black,))
          ),
          SizedBox(
            height: size.height*.2,
          ),
          Container(
            height: size.height*.05,
            width: size.width*.90,
            alignment: Alignment.center,
            child: Text('Social Media',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black)),
          ),
          Container(
            height: size.height/10,
            width: size.width*.85,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context,int index){
                  return Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Container(
                      width: size.width*.185,
                      height: size.height/8,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Image.asset(images[index].toString(),),
                      ),
                    ),
                  );

                }),
          )
        ],
      ),
    );
  }
}
