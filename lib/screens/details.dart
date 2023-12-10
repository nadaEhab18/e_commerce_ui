
import 'package:e_commerce_ui/screens/hpmePage.dart';
import 'package:flutter/material.dart';

class ItemDetails extends StatefulWidget {
  final dataItem ;
  const ItemDetails({Key? key, this.dataItem}) : super(key: key);

  @override
  State<ItemDetails> createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.shopping_basket_outlined,color: Colors.black,),
            Text(' E-Commerce ',style: TextStyle(
              color: Colors.black,
            ),),
            Text('App',style: TextStyle(
              color: Colors.orange,
            ),),

          ],
        ),
        iconTheme: IconThemeData(
          color: Colors.grey,
        ),
        backgroundColor: Colors.grey[200],
        elevation: 0.0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(Icons.menu,
            size: 30,),
          ),
        ],
      ),
      body: ListView(
        children: [
        
          Image.asset(widget.dataItem['image']),
          Text(widget.dataItem['title'],
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Text(widget.dataItem['subtitle'],
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
          ),
          Text(widget.dataItem['price'],
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.orange
            ),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Color : ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              ),
              SizedBox(width: 10,),
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.grey,
                  border: Border.all(color: Colors.orange),
                ),
              ),
              Text('  Gray',
              style: TextStyle(
                fontSize: 18,
              ),
              ),
              SizedBox(width: 10,),
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.black,
                ),
              ),
              Text('  Black',
                style: TextStyle(
                  fontSize: 18,
                ),
              )
            ],
          ),

          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Size :  39 ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              ),
              Text(' 40  41  42  43',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),

            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 60,vertical: 20),
            child: MaterialButton(onPressed: () {} ,
              padding: EdgeInsets.symmetric(vertical: 15),
              child:Text('Add To Card',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
              ),
                color: Colors.black,

              ),
          ),



        ],
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
