import 'package:flutter/material.dart';
class Photo extends StatefulWidget {
  const Photo({Key? key}) : super(key: key);

  @override
  _PhotoState createState() => _PhotoState();
}

class _PhotoState extends State<Photo> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 60.0),
        child: FloatingActionButton(
          backgroundColor: Color(0xff00ACEF),
          child: Icon(Icons.add,),
          onPressed: () {},
          mini: true,

        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              width: size.width*.90,
              height: size.height*.38,
              child: GridView.builder(
                //shrinkWrap: true,
                itemCount: 4,
                //  itemCount: images.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:   2,
                    //mainAxisSpacing: 1
                    mainAxisExtent: 130
                  // (orientation == Orientation.portrait) ? 2 : 3
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        //color: Colors.blue,
                        child: Image.asset('assets/images/car_images.jpg',
                          //Image.asset(images[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}