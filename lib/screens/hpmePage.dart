import 'package:e_commerce_ui/screens/details.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List categories = [
    {
      'iconName': Icons.laptop,
      'title': 'Laptop',
    },
    {
      'iconName': Icons.phone_android,
      'title': 'Mobile',
    },
    {
      'iconName': Icons.electric_bike,
      'title': 'Bike',
    },
    {
      'iconName': Icons.card_giftcard,
      'title': 'Gifts',
    },
    {
      'iconName': Icons.electric_car_outlined,
      'title': 'Car',
    },
  ];

  List items = [
    {
      'image': 'assets/images/image Product (5).png',
      'title': 'Black Bag',
      'subtitle': 'Finde ein Geschenk für ',
      'price': '\$359',
    },
    {
      'image': 'assets/images/image Product (9).png',
      'title': 'Red Bag',
      'subtitle': 'Finde ein Geschenk für ',
      'price': '\$359',
    },
    {
      'image': 'assets/images/image Product (11).png',
      'title': 'Gucci',
      'subtitle': 'Finde ein Geschenk für ',
      'price': '\$359',
    },
    {
      'image': 'assets/images/image Product (5).png',
      'title': 'Black Gucci',
      'subtitle': 'Finde ein Geschenk für ',
      'price': '\$359',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      fillColor: Colors.grey[200],
                      filled: true,
                      prefixIcon: Icon(
                        Icons.search_outlined,
                        color: Colors.grey,
                      ),
                      hintText: 'Search',
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Icon(
                    Icons.menu,
                    size: 40,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Categories',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 90,
              child: ListView.builder(
                  itemCount: categories.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, i) {
                    return Container(
                      margin: EdgeInsets.only(right: 10),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.grey[300],
                            ),
                            child: Icon(
                              categories[i]['iconName'],
                              size: 40,
                            ),
                            padding: EdgeInsets.all(15),
                          ),
                          Text(
                            categories[i]['title'],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[800],
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 7),
              child: Text(
                'Best Selling',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            GridView.builder(
                itemCount: items.length,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisExtent: 230),
                itemBuilder: (context, i) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => ItemDetails(dataItem: items[i])));
                    },
                    child: Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(20),
                            width: 250,
                            // color: Colors.grey[100],
                            child: Image.asset(
                              items[i]['image'].toString(),
                              height: 100,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            padding :EdgeInsets.only(left: 20) ,
                            child: Text(items[i]['title'].toString(),
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Container(
                            padding :EdgeInsets.only(left: 20) ,
                            margin : EdgeInsets.symmetric(vertical: 5),
                            child: Text(
                              items[i]['subtitle'].toString(),
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                            padding :EdgeInsets.only(left: 20) ,
                            child: Text(
                              items[i]['price'].toString(),
                              style: TextStyle(
                                color: Colors.orange,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                })
          ],
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      iconSize: 40,
      selectedItemColor: Colors.orange,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: '*'
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: '*'
        ),BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: '*'
        ),
      ],
    );
  }
}
