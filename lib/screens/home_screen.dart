import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/category_card.dart';
import '../widgets/itemCard.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> _images = [
    'https://i.pinimg.com/736x/18/f7/bc/18f7bcbde1fd3a3b0ab7ad04f11481df--simple-furniture-minimal-furniture-design.jpg',
    'https://ii1.pepperfry.com/media/catalog/product/m/a/494x544/mark-dressing-table-by-durian-mark-dressing-table-by-durian-z1o05e.jpg',
    'https://images-na.ssl-images-amazon.com/images/I/51XOEvrTwWL._AC_SL1001_.jpg',
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor:Theme.of(context).primaryColor,
       leading: Icon(Icons.menu, color: Colors.white,),
        actions: [
          Icon(Icons.search, color: Colors.white,),
          Container(
            width: 40,
            margin: EdgeInsets.only(right: 20,top: 10,bottom: 10,left: 5),
            decoration: BoxDecoration(
              border: Border.all(width: 1.5,color: Colors.white),
                image: DecorationImage(
                  fit: BoxFit.cover,
                    image: NetworkImage(
                    'https://static01.nyt.com/images/2020/03/15/magazine/15mag-billie-03/15mag-billie-03-superJumbo-v3.jpg')),
                borderRadius: BorderRadius.circular(5),
                ),
          )
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*0.35,
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40))),
            ),

            Positioned(
              top: 40,
              left: 25,
              right: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Explore',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    height: 220,
                    child: ListView.builder(
                        itemCount: _images.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (ctx, index) {
                          return Container(
                            height: 220,
                            width: 160,
                            margin: EdgeInsets.only(right: 30),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(_images[index],),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                          );
                        }),
                  ),
                  SizedBox(height:40),
                  Container(
                    height: 40,
                    child: ListView.builder(
                        itemCount: cats.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (ctx, index) {
                          return InkWell(
                              onTap: () {
                                setState(() {
                                  cats[currentCat]['isSelected'] = false;
                                  currentCat = index;
                                  cats[currentCat]['isSelected'] = true;
                                });
                              },
                              child: catCard(index: index,context: context));
                        }),
                  ),
                  SizedBox(
                    height: 35
                  ),
                  Container(
                    height: 200,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (ctx, index) {
                            return itemCard(context,index: index);
                          }))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }}