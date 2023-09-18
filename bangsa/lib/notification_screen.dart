import 'package:bangsa/homepage.dart';
import 'package:bangsa/product_detail.dart';
import 'package:bangsa/utils/themes.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Themes(),
      child: Scaffold(
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
                        "Notifications",
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
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Today',
                    style: TextStyle(
                      color: Color(0xff002A42),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Stack(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 16,
                                ),
                                Icon(
                                  Icons.person,
                                  color: Color(0xff002A42),
                                  size: 50,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 16,
                                    ),
                                    Text(
                                      'Kurniawan',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff002A42)),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    ProductDetail(
                                                      product: Product(
                                                        title:
                                                            'Iphone 11 4 / 128 GB',
                                                        rating: 4,
                                                        price: "Rp 6.500.000",
                                                        imageUrl:
                                                            'assets/iphone.jpeg',
                                                      ),
                                                    )));
                                      },
                                      child: Text(
                                        'Iphone 11 4 / 128 GB',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                          'assets/product.png',
                                          width: 15,
                                          height: 15,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'Produk dilihat',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 16),
                              child: Text(
                                '11.26',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                            width: 27,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(999)),
                            padding: EdgeInsets.all(5),
                            child: Center(
                              child: Text(
                                '1',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            )),
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 16,
                                ),
                                Icon(
                                  Icons.person,
                                  color: Color(0xff002A42),
                                  size: 50,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 16,
                                    ),
                                    Text(
                                      'Kurniawan',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff002A42)),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    ProductDetail(
                                                      product: Product(
                                                        title:
                                                            'Iphone 11 4 / 128 GB',
                                                        rating: 4,
                                                        price: "Rp 6.500.000",
                                                        imageUrl:
                                                            'assets/iphone.jpeg',
                                                      ),
                                                    )));
                                      },
                                      child: Text(
                                        'Iphone 11 4 / 128 GB',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                          'assets/product.png',
                                          width: 15,
                                          height: 15,
                                        ),
                                        SizedBox(
                                          width: 10,
                                          height: 10,
                                        ),
                                        Text(
                                          'Produk dilihat',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 16),
                              child: Text(
                                '11.00',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                            width: 27,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(999)),
                            padding: EdgeInsets.all(5),
                            child: Center(
                              child: Text(
                                '1',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            )),
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 16,
                                ),
                                Icon(
                                  Icons.person,
                                  color: Color(0xff002A42),
                                  size: 50,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 16,
                                    ),
                                    Text(
                                      'Kurniawan',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff002A42)),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    ProductDetail(
                                                      product: Product(
                                                        title:
                                                            'Iphone 11 4 / 128 GB',
                                                        rating: 4,
                                                        price: "Rp 6.500.000",
                                                        imageUrl:
                                                            'assets/iphone.jpeg',
                                                      ),
                                                    )));
                                      },
                                      child: Text(
                                        'Iphone 11 4 / 128 GB',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                          'assets/product.png',
                                          width: 15,
                                          height: 15,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'Produk dilihat',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 16),
                              child: Text(
                                '10.34',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                            width: 27,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(999)),
                            padding: EdgeInsets.all(5),
                            child: Center(
                              child: Text(
                                '1',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            )),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Yesterday',
                    style: TextStyle(
                      color: Color(0xff002A42),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 16,
                            ),
                            Icon(
                              Icons.person,
                              color: Color(0xff002A42),
                              size: 50,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 16,
                                ),
                                Text(
                                  'Beni',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff002A42)),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => ProductDetail(
                                                  product: Product(
                                                    title:
                                                        'Iphone 11 4 / 128 GB',
                                                    rating: 4,
                                                    price: "Rp 6.500.000",
                                                    imageUrl:
                                                        'assets/iphone.jpeg',
                                                  ),
                                                )));
                                  },
                                  child: Text(
                                    'Iphone 11 4 / 128 GB',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'assets/product.png',
                                      width: 15,
                                      height: 15,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Produk dilihat',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                              ],
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 16),
                          child: Text(
                            '11.00',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 16,
                            ),
                            Icon(
                              Icons.person,
                              color: Color(0xff002A42),
                              size: 50,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 16,
                                ),
                                Text(
                                  'Sunarto',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff002A42)),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => ProductDetail(
                                                  product: Product(
                                                    title:
                                                        'Iphone 11 4 / 128 GB',
                                                    rating: 4,
                                                    price: "Rp 6.500.000",
                                                    imageUrl:
                                                        'assets/iphone.jpeg',
                                                  ),
                                                )));
                                  },
                                  child: Text(
                                    'Iphone 11 4 / 128 GB',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'assets/product.png',
                                      width: 15,
                                      height: 15,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Produk dilihat',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                              ],
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 16),
                          child: Text(
                            '10.04',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 16,
                            ),
                            Icon(
                              Icons.person,
                              color: Color(0xff002A42),
                              size: 50,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 16,
                                ),
                                Text(
                                  'Sunarto',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff002A42)),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => ProductDetail(
                                                  product: Product(
                                                    title:
                                                        'Iphone 11 4 / 128 GB',
                                                    rating: 4,
                                                    price: "Rp 6.500.000",
                                                    imageUrl:
                                                        'assets/iphone.jpeg',
                                                  ),
                                                )));
                                  },
                                  child: Text(
                                    'Iphone 11 4 / 128 GB',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'assets/product.png',
                                      width: 15,
                                      height: 15,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Produk dilihat',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                              ],
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 16),
                          child: Text(
                            '09.04',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 16,
                            ),
                            Icon(
                              Icons.person,
                              color: Color(0xff002A42),
                              size: 50,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 16,
                                ),
                                Text(
                                  'Beni',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff002A42)),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => ProductDetail(
                                                  product: Product(
                                                    title:
                                                        'Iphone 11 4 / 128 GB',
                                                    rating: 4,
                                                    price: "Rp 6.500.000",
                                                    imageUrl:
                                                        'assets/iphone.jpeg',
                                                  ),
                                                )));
                                  },
                                  child: Text(
                                    'Iphone 11 4 / 128 GB',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'assets/product.png',
                                      width: 15,
                                      height: 15,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Produk dilihat',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                              ],
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 16),
                          child: Text(
                            '05.02',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
