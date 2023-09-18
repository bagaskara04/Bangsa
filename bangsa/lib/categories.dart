import 'package:bangsa/category_search.dart';
import 'package:bangsa/homepage.dart';
import 'package:bangsa/product_detail.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
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

  List<Product> productList2 = [
    Product(
      title: 'Iphone 11 4 / 128 GB',
      rating: 4,
      price: "Rp 6.500.000",
      imageUrl: 'assets/iphone.jpeg',
    ),
    Product(
      title: 'Mouse Rexus RGB',
      rating: 4,
      price: "Rp 230.000",
      imageUrl: 'assets/mouse.png',
    ),
    Product(
      title: 'Sepatu Olahraga',
      rating: 4,
      price: "Rp 350.000",
      imageUrl: 'assets/black_shoe.jfif',
    ),
  ];

  List<Product> productList1 = [
    Product(
      title: 'Asus ROG 6 / 256 GB',
      rating: 4,
      price: "Rp 10.200.000",
      imageUrl: 'assets/rog.jpg',
    ),
    Product(
      title: 'Sepatu Olahraga',
      rating: 4,
      price: "Rp 350.000",
      imageUrl: 'assets/black_shoe.jfif',
    ),
    Product(
      title: 'Mouse Rexus RGB',
      rating: 4,
      price: "Rp 230.000",
      imageUrl: 'assets/mouse.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
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
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Container(
                  margin: EdgeInsets.only(left: 15, bottom: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          )),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Categories',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Route route = MaterialPageRoute(
                      builder: (context) => CategorySearch(),
                    );
                    Navigator.push(context, route);
                  },
                  child: itemCategory("${titles[0]}\n", images[0]),
                ),
                InkWell(
                  onTap: () {
                    Route route = MaterialPageRoute(
                      builder: (context) => CategorySearch(),
                    );
                    Navigator.push(context, route);
                  },
                  child: itemCategory(titles[1], images[1]),
                ),
                InkWell(
                  onTap: () {
                    Route route = MaterialPageRoute(
                      builder: (context) => CategorySearch(),
                    );
                    Navigator.push(context, route);
                  },
                  child: itemCategory(titles[2], images[2]),
                ),
                InkWell(
                  onTap: () {
                    Route route = MaterialPageRoute(
                      builder: (context) => CategorySearch(),
                    );
                    Navigator.push(context, route);
                  },
                  child: itemCategory("${titles[3]}\n", images[3]),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Route route = MaterialPageRoute(
                      builder: (context) => CategorySearch(),
                    );
                    Navigator.push(context, route);
                  },
                  child: itemCategory("${titles[4]}\n", images[4]),
                ),
                InkWell(
                  onTap: () {
                    Route route = MaterialPageRoute(
                      builder: (context) => CategorySearch(),
                    );
                    Navigator.push(context, route);
                  },
                  child: itemCategory(titles[5], images[5]),
                ),
                InkWell(
                  onTap: () {
                    Route route = MaterialPageRoute(
                      builder: (context) => CategorySearch(),
                    );
                    Navigator.push(context, route);
                  },
                  child: itemCategory("${titles[6]}\n", images[6]),
                ),
                InkWell(
                  onTap: () {
                    Route route = MaterialPageRoute(
                      builder: (context) => CategorySearch(),
                    );
                    Navigator.push(context, route);
                  },
                  child: itemCategory("${titles[7]}", images[7]),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Recommendation',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: 150,
              padding: EdgeInsets.only(left: 16),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Divider(
                  thickness: 3,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              height: 200,
              padding: EdgeInsets.only(left: 16),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: productList1.length,
                itemBuilder: (BuildContext context, int i) {
                  return GestureDetector(
                    onTap: () {
                      Route route = MaterialPageRoute(
                        builder: (context) => ProductDetail(
                          product: productList1[i],
                        ),
                      );
                      Navigator.push(context, route);
                    },
                    child: Padding(
                      padding: EdgeInsets.only(right: 16),
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      topLeft: Radius.circular(10)),
                                  child: Image.asset(
                                    productList1[i].imageUrl,
                                    fit: BoxFit.fill,
                                    height: 100,
                                    width: 170,
                                  )),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  productList1[i].title,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
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
                                    (productList1[i].rating == 4)
                                        ? Row(
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow[700],
                                                size: 11,
                                              ),
                                              Icon(Icons.star,
                                                  color: Colors.yellow[700],
                                                  size: 11),
                                              Icon(Icons.star,
                                                  color: Colors.yellow[700],
                                                  size: 11),
                                              Icon(Icons.star,
                                                  color: Colors.yellow[700],
                                                  size: 11),
                                              Icon(Icons.star_outline,
                                                  color: Colors.yellow[700],
                                                  size: 11)
                                            ],
                                          )
                                        : Row(
                                            children: [
                                              Icon(Icons.star,
                                                  color: Colors.yellow[700],
                                                  size: 11),
                                              Icon(Icons.star,
                                                  color: Colors.yellow[700],
                                                  size: 11),
                                              Icon(Icons.star,
                                                  color: Colors.yellow[700],
                                                  size: 11),
                                              Icon(Icons.star_outline,
                                                  color: Colors.yellow[700],
                                                  size: 11),
                                              Icon(Icons.star_outline,
                                                  color: Colors.yellow[700],
                                                  size: 11)
                                            ],
                                          ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                                      productList1[i].price,
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
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Best Store',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: 100,
              padding: EdgeInsets.only(left: 16),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Divider(
                  thickness: 3,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              height: 200,
              padding: EdgeInsets.only(left: 16),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: productList2.length,
                itemBuilder: (BuildContext context, int i) {
                  return GestureDetector(
                    onTap: () {
                      Route route = MaterialPageRoute(
                        builder: (context) => ProductDetail(
                          product: productList2[i],
                        ),
                      );
                      Navigator.push(context, route);
                    },
                    child: Padding(
                      padding: EdgeInsets.only(right: 16),
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      topLeft: Radius.circular(10)),
                                  child: Image.asset(
                                    productList2[i].imageUrl,
                                    fit: BoxFit.fill,
                                    height: 100,
                                    width: 170,
                                  )),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  productList2[i].title,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
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
                                    (productList2[i].rating == 4)
                                        ? Row(
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow[700],
                                                size: 11,
                                              ),
                                              Icon(Icons.star,
                                                  color: Colors.yellow[700],
                                                  size: 11),
                                              Icon(Icons.star,
                                                  color: Colors.yellow[700],
                                                  size: 11),
                                              Icon(Icons.star,
                                                  color: Colors.yellow[700],
                                                  size: 11),
                                              Icon(Icons.star_outline,
                                                  color: Colors.yellow[700],
                                                  size: 11)
                                            ],
                                          )
                                        : Row(
                                            children: [
                                              Icon(Icons.star,
                                                  color: Colors.yellow[700],
                                                  size: 11),
                                              Icon(Icons.star,
                                                  color: Colors.yellow[700],
                                                  size: 11),
                                              Icon(Icons.star,
                                                  color: Colors.yellow[700],
                                                  size: 11),
                                              Icon(Icons.star_outline,
                                                  color: Colors.yellow[700],
                                                  size: 11),
                                              Icon(Icons.star_outline,
                                                  color: Colors.yellow[700],
                                                  size: 11)
                                            ],
                                          ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                                      productList2[i].price,
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
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 16,
            )
          ],
        ),
      ),
    );
  }

  Widget itemCategory(String title, String image) {
    return Container(
      width: 70,
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Card(
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(999),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(999)),
            ),
          ),
          SizedBox(height: 8),
          Center(
            child: Text(
              title,
              style: TextStyle(
                fontSize: 10,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
