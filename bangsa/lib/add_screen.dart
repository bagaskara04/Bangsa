import 'package:bangsa/homepage.dart';
import 'package:bangsa/utils/themes.dart';
import 'package:flutter/material.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({Key? key}) : super(key: key);

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
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
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomePage()));
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          )),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "",
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
              children: [
                SizedBox(
                  width: 16,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(999),
                  child: Image.asset(
                    'assets/pp.jpg',
                    width: 100,
                    height: 100,
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
                      Text(
                        'Rachell',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Color(0xff07507B)),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'offers on the market place',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Color(0xff07507B)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFB7B7B7),
                      hintText: 'Title',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Color(0xFFB7B7B7)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Color(0xFFB7B7B7)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFB7B7B7),
                      hintText: 'Price',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Color(0xFFB7B7B7)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Color(0xFFB7B7B7)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 60,
                    padding: EdgeInsets.only(left: 16, right: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFB7B7B7),
                    ),
                    child: DropdownButton(
                      icon: Icon(Icons.arrow_drop_down),
                      isExpanded: true,
                      style: TextStyle(color: Colors.black),
                      dropdownColor: Color(0xFFB7B7B7),
                      hint: Text('Categories'),
                      borderRadius: BorderRadius.circular(10),
                      items: [
                        DropdownMenuItem(
                          value: 'Electronic',
                          child: Text(titles[0]),
                        ),
                        DropdownMenuItem(
                          value: 'option2',
                          child: Text(titles[1]),
                        ),
                        DropdownMenuItem(
                          value: 'option3',
                          child: Text(titles[2]),
                        ),
                        DropdownMenuItem(
                          value: 'Electronic',
                          child: Text(titles[3]),
                        ),
                        DropdownMenuItem(
                          value: 'option2',
                          child: Text(titles[4]),
                        ),
                        DropdownMenuItem(
                          value: 'option3',
                          child: Text(titles[5]),
                        ),
                        DropdownMenuItem(
                          value: 'option2',
                          child: Text(titles[6]),
                        ),
                        DropdownMenuItem(
                          value: 'option3',
                          child: Text(titles[7]),
                        ),
                      ],
                      onChanged: (value) {},
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 60,
                    padding: EdgeInsets.only(left: 16, right: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFB7B7B7),
                    ),
                    child: DropdownButton(
                      icon: Icon(Icons.arrow_drop_down),
                      isExpanded: true,
                      style: TextStyle(color: Colors.black),
                      dropdownColor: Color(0xFFB7B7B7),
                      hint: Text('Conditions'),
                      borderRadius: BorderRadius.circular(10),
                      items: [
                        DropdownMenuItem(
                          value: 'option1',
                          child: Text('Original'),
                        ),
                        DropdownMenuItem(
                          value: 'option2',
                          child: Text('Refurbish'),
                        ),
                        DropdownMenuItem(
                          value: 'option3',
                          child: Text('Second'),
                        ),
                      ],
                      onChanged: (value) {},
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFB7B7B7),
                      hintText: 'Description',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Color(0xFFB7B7B7)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Color(0xFFB7B7B7)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFB7B7B7)),
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 16,
                          ),
                          Icon(
                            Icons.add_circle_outline,
                            color: Colors.black,
                            size: 50,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Add Photo',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFB7B7B7),
                      hintText: 'Location',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Color(0xFFB7B7B7)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Color(0xFFB7B7B7)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF002A42)),
                    child: Center(
                      child: Text(
                        "Upload",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
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
