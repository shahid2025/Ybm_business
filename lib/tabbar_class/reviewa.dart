import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class Reviews extends StatefulWidget {
  const Reviews({Key? key}) : super(key: key);

  @override
  _ReviewsState createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                //  alignment: Alignment.centerLeft,
                  width: size.width*.90,
                  height: size.height*.50,
                  child:ListView.builder(
                      itemCount: 3,
                      itemBuilder: (context,int index)
                      {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: size.width*.90,
                            height: size.height*.15,
                            child: Row(
                              children: [
                                ClipRRect(
                                  borderRadius:BorderRadius.circular(12),
                                  child: Container(

                                    width: size.width*.25,
                                    height: size.height*.12,
                                    child: Image.asset('assets/images/katrina.jpg',fit: BoxFit.cover,),
                                  ),
                                ),
                                SizedBox(
                                  width: size.width*.05,
                                ),
                                Container(
                                  width: size.width*.55,
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: size.height*.014,
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            Container(
                                              child: Text('Elizbith chris',style:
                                              TextStyle(fontSize: 12,fontWeight: FontWeight.w600,color: Colors.black),),
                                            ),
                                            SizedBox(
                                              width: size.width*.12,
                                            ),
                                            RatingBar.builder(
                                              itemSize: 16,
                                              initialRating: 4,

                                              minRating: 1,
                                              direction: Axis.horizontal,
                                              allowHalfRating: true,
                                              itemCount: 5,
                                              itemPadding: EdgeInsets.symmetric(horizontal: 0.0),
                                              itemBuilder: (context, _) => Icon(
                                                Icons.star,size: 12,
                                                color: Colors.amber,
                                              ),
                                              onRatingUpdate: (rating) {
                                                print(rating);
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: size.height*.01,
                                      ),
                                      Container(
                                        width: size.width*.55,
                                        alignment: Alignment.centerLeft,
                                        child: Text('12 Dec, 2021',style:
                                        TextStyle(fontSize: 10,fontWeight: FontWeight.w500,color: Color(0xff707586)),),
                                      ),
                                      SizedBox(
                                        height: size.height*.014,
                                      ),
                                      Container(
                                        //   width: ,
                                        child: Text('It is a long established fact that a reader '
                                            '   will be distracted by the readable content'
                                            ' of a page when looking at its layout.',style:
                                        TextStyle(fontSize: 10,fontWeight: FontWeight.w500,color: Color(0xff0f1218)),),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}