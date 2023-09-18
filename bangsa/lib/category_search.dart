import 'package:bangsa/homepage.dart';
import 'package:bangsa/product_detail.dart';
import 'package:bangsa/utils/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'main.dart';

class CategorySearch extends StatefulWidget {
  const CategorySearch({Key? key}) : super(key: key);

  @override
  State<CategorySearch> createState() => _CategorySearchState();
}

class _CategorySearchState extends State<CategorySearch> {
  List<Product> productList = [
    Product(
      title: 'Asus ROG 6 / 256 GB',
      rating: 4,
      price: "Rp 10.200.000",
      imageUrl: 'assets/rog.jpg',
    ),
    Product(
      title: 'Iphone 11 4 / 128 GB',
      rating: 4,
      price: "Rp 6.500.000",
      imageUrl: 'assets/iphone.jpeg',
    ),
    Product(
      title: 'Charger Iphone 20 watt',
      rating: 3,
      price: "Rp 65.000",
      imageUrl: 'assets/charger_iphone.jpg',
    ),
    Product(
      title: 'Charger Iphone 20 watt',
      rating: 4,
      price: "Rp 800.000",
      imageUrl: 'assets/realme.jpg',
    ),
    Product(
      title: 'Xiaomi Redmi 9',
      rating: 4,
      price: "Rp 1.100.000",
      imageUrl: 'assets/redmi9.jpeg',
    ),
    Product(
      title: 'Asus ROG 6 / 256 GB',
      rating: 4,
      price: "Rp 10.200.000",
      imageUrl: 'assets/rog.jpg',
    ),
    Product(
      title: 'Iphone 11 4 / 128 GB',
      rating: 4,
      price: "Rp 6.500.000",
      imageUrl: 'assets/iphone.jpeg',
    ),
    Product(
      title: 'Charger Iphone 20 watt',
      rating: 3,
      price: "Rp 65.000",
      imageUrl: 'assets/charger_iphone.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Themes(),
      child: Scaffold(
        body: Column(
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
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: MediaQuery.of(context).size.height - 134,
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: MasonryGridView.builder(
                gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    topLeft: Radius.circular(10)),
                                child: Image.asset(
                                  productList[i].imageUrl,
                                  fit: BoxFit.cover,
                                  height: 100,
                                  width: MediaQuery.of(context).size.width,
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
      ),
    );
  }
}
