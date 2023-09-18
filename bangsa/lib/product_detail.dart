import 'package:bangsa/homepage.dart';
import 'package:bangsa/main.dart';
import 'package:bangsa/profile_screen.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  final Product product;

  ProductDetail({required this.product});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  String option = "Sharp stuff";
  var optionList = [
    "Sharp stuff",
    "Spam or misleading",
    "Terrorism",
    "Harmful or dangerous goods",
    "Fake information",
    "Sexual activity",
    "Fraud or embezzlement",
    "Hate teachings or symbols",
    "Bullying or harassment",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  widget.product.imageUrl,
                  width: MediaQuery.of(context).size.width,
                  height: 350,
                  fit: BoxFit.cover,
                ),
                Container(
                  margin: EdgeInsets.only(top: 46, left: 16),
                  child: InkWell(
                      onTap: () => Navigator.of(context).pop(),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 30,
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(top: 46, right: 16),
                  child: Align(
                      alignment: Alignment.topRight,
                      child: InkWell(
                        onTap: () {
                          showReportDialog(context);
                        },
                        child: Icon(
                          Icons.info_outline,
                          color: Colors.white,
                          size: 30,
                        ),
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.product.title,
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    widget.product.price,
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  (widget.product.rating == 4)
                      ? Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow[700],
                            ),
                            Icon(Icons.star, color: Colors.yellow[700]),
                            Icon(Icons.star, color: Colors.yellow[700]),
                            Icon(Icons.star, color: Colors.yellow[700]),
                            Icon(Icons.star_outline, color: Colors.yellow[700])
                          ],
                        )
                      : Row(
                          children: [
                            Icon(Icons.star, color: Colors.yellow[700]),
                            Icon(Icons.star, color: Colors.yellow[700]),
                            Icon(Icons.star, color: Colors.yellow[700]),
                            Icon(Icons.star_outline, color: Colors.yellow[700]),
                            Icon(Icons.star_outline, color: Colors.yellow[700])
                          ],
                        ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Divider(
                thickness: 5,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 16,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(999),
                      child: Image.asset(
                        'assets/pp.jpg',
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Toko Gaming'),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Aktif 2 jam yang lalu',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Center(
                  child: Container(
                    height: 30,
                    margin: EdgeInsets.only(right: 16),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: InkWell(
                        onTap: () {
                          Route route = MaterialPageRoute(
                            builder: (context) => ProfileScreen(),
                          );
                          Navigator.push(context, route);
                        },
                        child: Text(
                          'View Shop',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 3),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Divider(
                thickness: 5,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                'Description',
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Lörem ipsum nygisk sumyheliga jobbtorg är ogåning, hemire. Våsade nebuval, och biohäde renispertad är vången. Vit lanyre i abelt remuktig i tigt. Retrest tuhott. Våck eserar för att sul mikroren. Lörem ipsum nygisk sumyheliga jobbtorg är ogåning, hemire. Våsade nebuval, och biohäde renispertad är vången. Vit lanyre i abelt remuktig i tigt. Retrest tuhott. Våck eserar för att sul mikroren. ',
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'See More',
                  style: TextStyle(
                    color: Color(0xff002941),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(
                  Icons.keyboard_arrow_down_sharp,
                  color: Color(0xff002941),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Divider(
                thickness: 5,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Location',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  padding: EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.person,
                            size: 35,
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Text('Toko Gaming'),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Image.asset(
                        'assets/maps.jfif',
                        width: MediaQuery.of(context).size.width,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Around',
                          style: TextStyle(
                              color: Color(0xff07507B), fontSize: 12)),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Malang Kota'),
                      SizedBox(
                        height: 16,
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
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Row(
                      children: [
                        Container(
                          height: 54,
                          width: MediaQuery.of(context).size.width * 0.25,
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.black),
                              color: Colors.grey[200]),
                          child: Center(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 5,
                                ),
                                Icon(
                                  Icons.share,
                                  color: Color(
                                    0xff002A42,
                                  ),
                                ),
                                Text(
                                  'Share',
                                  style: TextStyle(
                                    color: Color(0xff002A42),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.25,
                          height: 54,
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.black),
                              color: Colors.grey[200]),
                          child: Center(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 5,
                                ),
                                Icon(
                                  Icons.bookmark_border,
                                  color: Color(
                                    0xff002A42,
                                  ),
                                ),
                                Text(
                                  'Favorite',
                                  style: TextStyle(
                                    color: Color(0xff002A42),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: 54,
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
                    child: Container(
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.chat,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Text(
                              'Chat Now',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  showReportDialog(BuildContext context) {
    showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          String? selectedRadio = "";
          return AlertDialog(
            content: StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Report This Product",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Container(
                      width: 150,
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Divider(
                          thickness: 3,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Column(
                      children:
                          List<Widget>.generate(optionList.length, (int index) {
                        return Row(
                          children: [
                            Radio<String>(
                              value: optionList[index],
                              groupValue: selectedRadio,
                              onChanged: (value) {
                                print(value);
                                setState(() => selectedRadio = value);
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Flexible(child: Text(optionList[index])),
                          ],
                        );
                      }),
                    ),
                  ],
                );
              },
            ),
            actions: [
              InkWell(
                  onTap: () => Navigator.of(context).pop(),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Cancel',
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Roboto',
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
              InkWell(
                  onTap: () => Navigator.of(context).pop(),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Report',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Roboto',
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
            ],
          );
        });
  }
}
