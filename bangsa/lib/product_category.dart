import 'package:bangsa/homepage.dart';
import 'package:bangsa/product_detail.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class ProductCategory extends StatefulWidget {
  const ProductCategory({Key? key}) : super(key: key);

  @override
  State<ProductCategory> createState() => _ProductCategoryState();
}

class _ProductCategoryState extends State<ProductCategory> {
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
        physics: BouncingScrollPhysics(),
        child: SafeArea(
          child: Container(
            color: Colors.grey[100],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Color(0xFF002A42),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 70,
                        height: 50,
                        child: Center(
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "Kabel USB",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(
                                    color: Color(0xFF002A42), width: 1),
                              ),
                              suffixIcon: Icon(Icons.search),
                              filled: true,
                              fillColor: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text('Laptop'),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Divider(
                    thickness: 1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text('Monitor 24 Inch'),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Divider(
                    thickness: 1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text('Asus ROG 6 / 256 GB'),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Divider(
                    thickness: 1,
                  ),
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
                                                        color:
                                                            Colors.yellow[700],
                                                        size: 11),
                                                    Icon(Icons.star,
                                                        color:
                                                            Colors.yellow[700],
                                                        size: 11),
                                                    Icon(Icons.star,
                                                        color:
                                                            Colors.yellow[700],
                                                        size: 11),
                                                    Icon(Icons.star_outline,
                                                        color:
                                                            Colors.yellow[700],
                                                        size: 11)
                                                  ],
                                                )
                                              : Row(
                                                  children: [
                                                    Icon(Icons.star,
                                                        color:
                                                            Colors.yellow[700],
                                                        size: 11),
                                                    Icon(Icons.star,
                                                        color:
                                                            Colors.yellow[700],
                                                        size: 11),
                                                    Icon(Icons.star,
                                                        color:
                                                            Colors.yellow[700],
                                                        size: 11),
                                                    Icon(Icons.star_outline,
                                                        color:
                                                            Colors.yellow[700],
                                                        size: 11),
                                                    Icon(Icons.star_outline,
                                                        color:
                                                            Colors.yellow[700],
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
                          ));
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
                                                        color:
                                                            Colors.yellow[700],
                                                        size: 11),
                                                    Icon(Icons.star,
                                                        color:
                                                            Colors.yellow[700],
                                                        size: 11),
                                                    Icon(Icons.star,
                                                        color:
                                                            Colors.yellow[700],
                                                        size: 11),
                                                    Icon(Icons.star_outline,
                                                        color:
                                                            Colors.yellow[700],
                                                        size: 11)
                                                  ],
                                                )
                                              : Row(
                                                  children: [
                                                    Icon(Icons.star,
                                                        color:
                                                            Colors.yellow[700],
                                                        size: 11),
                                                    Icon(Icons.star,
                                                        color:
                                                            Colors.yellow[700],
                                                        size: 11),
                                                    Icon(Icons.star,
                                                        color:
                                                            Colors.yellow[700],
                                                        size: 11),
                                                    Icon(Icons.star_outline,
                                                        color:
                                                            Colors.yellow[700],
                                                        size: 11),
                                                    Icon(Icons.star_outline,
                                                        color:
                                                            Colors.yellow[700],
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
                          ));
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
