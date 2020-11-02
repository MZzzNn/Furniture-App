import 'package:flutter/material.dart';
import '../screens/item_screen.dart';
List<Map<String,dynamic>> _material = [
  {
    'price':'\$ 65',
    'star':'4.9',
    'images': 'https://i.pinimg.com/originals/f7/fc/65/f7fc651cc6db3db174b85918dd7a3f21.png',
  },
  {
    'price':'\$ 30',
    'star':'3.8',
    'images':'https://www.pngkey.com/png/full/7-75781_wing-chair-png-image-duck-egg-blue-armchair.png',
  },
  {
    'price':'\$ 70',
    'star':'4.2',
    'images': 'https://www.decorist.com/static/cache-thumbnail/b0/69/b0695bd5e2ebe287044ef638a21a2a07.png',
  },
  {
    'price':'\$ 30',
    'star':'2.9',
    'images': 'https://www.nicepng.com/png/full/256-2563918_carole-velvet-single-sofa-accent-chair-by-christopher.png',
  },
  {
    'price':'\$ 30',
    'star':'3.2',
    'images':'https://www.decorist.com/static/cache-thumbnail/2e/e2/2ee2ca5690847a00939af4228d18680f.png',
  },
];
Widget itemCard(BuildContext context,{int index}) {
  return InkWell(
    onTap: () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => ItemScreen()));
    },
    child: Container(
      padding: EdgeInsets.only(right: 20),
      width: 170,
      height: 200,
      child: Stack(
        children: [
          Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: Container(
                height: 10,
                width: 170,
                color: Colors.white,
              )
          ),
          Positioned(
            top: 10,
            right: 1,
            left: 1,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color:Theme.of(context).accentColor,),
                  height: 150,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Green Chaire',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),),
                      Row(
                        children: [
                          Text(_material[index]['price'],style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),),
                          Expanded(child: SizedBox()),
                          Icon(Icons.star,color:Theme.of(context).primaryColor,size: 15,),
                          Text(_material[index]['star'],style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 13,
                          ),),
                        ],
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 10,
            left: 10,
            child: Container(
              height: 130,
              decoration: BoxDecoration(
                  image:DecorationImage(
                      fit: BoxFit.contain,
                      image: NetworkImage(_material[index]['images']))
              ),
            ),
          ),
          Positioned(
            top: 2,
            right: 15,
            child: Container(
              width: 40,
              height: 15,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Theme.of(context).primaryColor),
              child: Center(
                child: Text(
                  'New',
                  style: TextStyle(color: Colors.white,fontSize: 12),
                ),
              ),
            ),
          ),

        ],
      ),
    ),
  );
}