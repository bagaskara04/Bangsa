import 'package:bangsa/categories.dart';
import 'package:bangsa/category_screen.dart';
import 'package:bangsa/homepage.dart';
import 'package:bangsa/notification_screen.dart';
import 'package:bangsa/product_category.dart';
import 'package:bangsa/product_detail.dart';
import 'package:bangsa/utils/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'main.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  List<String> images = [
    "assets/refrigerator.png",
    "assets/desktop.png",
    "assets/handphone.png",
    "assets/sneakers.png",
    "assets/pan.png",
    "assets/shoes.png",
    "assets/camera.png",
    "assets/guitar.png",
  ];

  List<String> titles = [
    "Electronic",
    "Komputer & Accessories",
    "Handphone & Accessories",
    "Shoes",
    "Furniture",
    "Leather Shoes",
    "Camera",
    "musical instrument",
  ];

  List<Product> productList = [
    Product(
      title: 'Iphone 11 4 / 128 GB',
      rating: 4,
      price: "Rp 6.500.000",
      imageUrl: 'assets/iphone.jpeg',
    ),
    Product(
      title: 'Asus ROG 6 / 256 GB',
      rating: 4,
      price: "Rp 10.200.000",
      imageUrl: 'assets/rog.jpg',
    ),
    Product(
      title: 'Mouse Rexus RGB',
      rating: 4,
      price: "Rp 230.000",
      imageUrl: 'assets/mouse.png',
    ),
    Product(
      title: 'Helm Bogo Classic',
      rating: 3,
      price: "Rp 300.000",
      imageUrl: 'assets/helm.jpg',
    ),
    Product(
      title: 'Meja Gaming / Meja Komputer Minimalis',
      rating: 4,
      price: "Rp 699.000",
      imageUrl: 'assets/desk.jfif',
    ),
    Product(
      title: 'Sepatu Olahraga',
      rating: 4,
      price: "Rp 350.000",
      imageUrl: 'assets/black_shoe.jfif',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Themes(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color(0xFF002A42),
                  Color(0xFF07507B),
                ],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/cart.png',
                            width: 40,
                            height: 40,
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Text(
                            'Bangsa',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () {
                              Route route = MaterialPageRoute(
                                builder: (context) => ProductCategory(),
                              );
                              Navigator.push(context, route);
                            },
                            child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 16),
                                width: 150,
                                height: 40,
                                child: Container(
                                    padding: EdgeInsets.only(left: 15),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(999),
                                        color: Colors.white),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.search_rounded,
                                          color: Colors.grey,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'Search',
                                          style: TextStyle(color: Colors.grey),
                                        )
                                      ],
                                    ))),
                          ),
                          InkWell(
                            onTap: (){
                              Route route = MaterialPageRoute(
                                builder: (context) => NotificationScreen(),
                              );
                              Navigator.push(context, route);
                            },
                            child: Container(
                              child: Stack(
                                alignment: Alignment.topRight,
                                children: [
                                  Icon(
                                    CupertinoIcons.bell,
                                    size: 40,
                                    color: Colors.white,
                                  ),
                                  Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.red,
                                    ),
                                    child: Center(
                                      child: Text(
                                        "3",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Categories',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Route route = MaterialPageRoute(
                            builder: (context) => Categories(),
                          );
                          Navigator.push(context, route);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Show more',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Icon(
                              Icons.navigate_next_outlined,
                              color: Colors.white,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 120,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: images.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        width: 90,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: InkWell(
                          onTap: () {
                            Route route = MaterialPageRoute(
                              builder: (context) => CategoryScreen(
                                category: titles[index],
                              ),
                            );
                            Navigator.push(context, route);
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(999),
                                    color: Colors.white,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                      images[index],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 8),
                              Center(
                                child: Text(
                                  titles[index],
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16)),
                      color: Colors.white),
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Homepage',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height - 406,
                        child: MasonryGridView.builder(
                          gridDelegate:
                              SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2),
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          itemCount: productList.length,
                          itemBuilder: (context, i) {
                            return GestureDetector(
                              onTap: () {
                                Route route = MaterialPageRoute(
                                  builder: (context) => ProductDetail(
                                    product: productList[i],
                                  ),
                                );
                                Navigator.push(context, route);
                              },
                              child: Card(
                                elevation: 10,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(10),
                                              topLeft: Radius.circular(10)),
                                          child: Image.asset(
                                            productList[i].imageUrl,
                                            fit: BoxFit.cover,
                                            height: 100,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                          )),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          productList[i].title,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            (productList[i].rating == 4)
                                                ? Row(
                                                    children: [
                                                      Icon(
                                                        Icons.star,
                                                        color:
                                                            Colors.yellow[700],
                                                        size: 11,
                                                      ),
                                                      Icon(Icons.star,
                                                          color: Colors
                                                              .yellow[700],
                                                          size: 11),
                                                      Icon(Icons.star,
                                                          color: Colors
                                                              .yellow[700],
                                                          size: 11),
                                                      Icon(Icons.star,
                                                          color: Colors
                                                              .yellow[700],
                                                          size: 11),
                                                      Icon(Icons.star_outline,
                                                          color: Colors
                                                              .yellow[700],
                                                          size: 11)
                                                    ],
                                                  )
                                                : Row(
                                                    children: [
                                                      Icon(Icons.star,
                                                          color: Colors
                                                              .yellow[700],
                                                          size: 11),
                                                      Icon(Icons.star,
                                                          color: Colors
                                                              .yellow[700],
                                                          size: 11),
                                                      Icon(Icons.star,
                                                          color: Colors
                                                              .yellow[700],
                                                          size: 11),
                                                      Icon(Icons.star_outline,
                                                          color: Colors
                                                              .yellow[700],
                                                          size: 11),
                                                      Icon(Icons.star_outline,
                                                          color: Colors
                                                              .yellow[700],
                                                          size: 11)
                                                    ],
                                                  ),
                                            Text(
                                              productList[i].price,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 11,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
