import 'package:bangsa/edit_profile.dart';
import 'package:bangsa/homepage.dart';
import 'package:bangsa/item_shop.dart';
import 'package:bangsa/utils/themes.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String option = "Sharp stuff";
  var optionList = [
    "Account contains violence",
    "Account contains spam",
    "This account pretends to be someone else",
    "The name of this shop is inappropriate",
  ];

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Themes(),
      child: Scaffold(
        floatingActionButton: Container(
            width: 50,
            height: 50,
            child: FittedBox(
                child: FloatingActionButton(
              backgroundColor: Color(0xff07507B),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => EditProfileScreen()));
              },
              child: Icon(
                Icons.edit,
              ),
            ))),
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
                Stack(children: [
                  Container(
                    margin: EdgeInsets.only(top: 46, left: 16),
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage()));
                        },
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
                  Container(
                    height: 100,
                    margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.36,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(33),
                            topRight: Radius.circular(33)),
                        color: Colors.white),
                  ),
                  Container(
                    padding: EdgeInsets.all(3),
                    margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.35,
                      top: MediaQuery.of(context).size.height * 0.3,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(888)),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(888),
                        child: Image.asset(
                          'assets/pp.jpg',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        )),
                  ),
                ]),
                Container(
                  padding: EdgeInsets.all(16),
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Username',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Color(0xff07507B)),
                      ),
                      Text('Rachel Amanda'),
                      SizedBox(
                        height: 32,
                      ),
                      Text(
                        'Bio',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Color(0xff07507B)),
                      ),
                      Text(
                          'Lörem ipsum nygisk sumyheliga jobbtorg är ogåning, hemire. Våsade nebuval, och biohäde renispertad är vången. Vit lanyre i abelt remuktig i tigt. Retrest tuhott. Våck eserar för att sul mikroren. Lörem ipsum nygisk sumyheliga jobbtorg är ogåning, hemire. Våsade nebuval, och biohäde renispertad är vången. Vit lanyre i abelt remuktig i tigt. Retrest tuhott. Våck eserar för att sul mikroren. '),
                      SizedBox(
                        height: 32,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.pin_drop,
                            color: Color(0xff07507B),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Text(
                            'Location',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Color(0xff07507B)),
                          ),
                        ],
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 40),
                          child: Text(
                            'Jl. Supriadi No 20 RT 02 RW 03 Kecamatan Sukun Kota Malang',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          )),
                      SizedBox(
                        height: 32,
                      ),
                      Container(
                        width: 104,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(width: 2, color: Colors.black),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  child: Image.asset(
                                    'assets/rog.jpg',
                                    width: 50,
                                    height: 50,
                                    fit: BoxFit.fill,
                                  ),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(16)),
                                ),
                                ClipRRect(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(16)),
                                    child: Image.asset(
                                      'assets/black_shoe.jfif',
                                      width: 50,
                                      height: 50,
                                      fit: BoxFit.fill,
                                    )),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                ClipRRect(
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(16)),
                                    child: Image.asset(
                                      'assets/iphone.jpeg',
                                      width: 50,
                                      height: 50,
                                      fit: BoxFit.fill,
                                    )),
                                ClipRRect(
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(16)),
                                    child: Image.asset(
                                      'assets/mouse.png',
                                      width: 50,
                                      height: 50,
                                      fit: BoxFit.fill,
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.warehouse_outlined,
                            color: Color(0xff07507B),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ProductScreen()));
                              },
                              child: Text('See more product'))
                        ],
                      )
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
                      "Report This Account",
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
                      ))),
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
