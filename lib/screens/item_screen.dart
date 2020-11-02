import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ItemScreen extends StatefulWidget {
  @override
  _ItemScreenState createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  Widget circulerContainer(Color color){
    return  Padding(
      padding: const EdgeInsets.only(right:5.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        elevation: 5,
        child: Container(
          height: 25,
          width: 25,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: color,
              border: Border.all(color: Colors.white,width: 2),
             // boxShadow: [BoxShadow(color: Colors.black,blurRadius: 0.2)]
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Sofa',
            style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Icon(
               FontAwesomeIcons.shoppingBag,
                color: Theme.of(context).primaryColor,
              ),
            )
          ],
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Theme.of(context).primaryColor,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              })
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height *0.28,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage('https://www.audenza.com/asset/image/image_inventory/xl/3341.jpg')),
                    borderRadius: BorderRadius.circular(10),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Blue Sofa',style: TextStyle(
                    color: Colors.black87,fontWeight:FontWeight.bold,fontSize: 20),),
                Text('\$65',style: TextStyle(
                    color: Colors.black87,fontWeight:FontWeight.bold,fontSize: 20),),
              ],
            ),
            SizedBox(height: 5,),
            Text('This is text can be changed This is text can be changed ,This is text can be changed This is text can be changed (This is text can be changed) This is text can be changed This is text can be changed This is text can be changed.',
            style: TextStyle(height:1.4,fontSize: 16,wordSpacing: 1,color: Colors.black26,fontWeight: FontWeight.w400),),
            SizedBox(height: 20,),
            Row(
              children: [
                Text('Color',style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.w700),),
                SizedBox(width: 20,),
                circulerContainer(Theme.of(context).primaryColor),
                circulerContainer(Colors.blue[900]),
                circulerContainer(Colors.amber[700]),
                circulerContainer(Colors.black),
                circulerContainer(Colors.grey),
              ],
            ),
            SizedBox(height: 15,),
            Row(
              children: [
                Text('Quantity',style:
                TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.w700),),
                SizedBox(width: 20,),
                Container(
                  height: 35,
                  width: 110,
                  decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Theme.of(context).accentColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                        elevation: 5,
                        child: CircleAvatar(
                          radius: 14,
                          backgroundColor: Theme.of(context).primaryColor,
                          child:Icon(Icons.add,color: Colors.white,),
                        ),
                      ),
                      Text('01',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700),),
                      Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                        elevation: 5,
                        child: CircleAvatar(
                          radius: 14,
                          backgroundColor: Theme.of(context).primaryColor,
                          child:Icon(Icons.remove,color: Colors.white,),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 50,),
            Material(
              color: Theme.of(context).accentColor,
              borderRadius: BorderRadius.circular(25),
              child: MaterialButton(
                onPressed: (){},
                height: 28,
                minWidth: 220,
                child: Text('Add to cart',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              ),
            ),
            SizedBox(height: 15,),
            Material(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(25),
              child: MaterialButton(
                onPressed: (){},
                height: 28,
                minWidth: 220,
                child: Text('Buy Now',style: TextStyle(
                    color:Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
