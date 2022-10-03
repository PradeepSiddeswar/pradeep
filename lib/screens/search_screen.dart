// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                        padding: EdgeInsets.only(left: 350.0, top: 30),
                        onPressed: () {
                          // Get.back();
                        },
                        icon: const Icon(
                          Icons.close,
                          color: Colors.black,
                        )),
                    Text(
                      "Temple Search",
                      style: GoogleFonts.playfairDisplay(
                        textStyle: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1.5,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Select Country'),
                        Container(
                          // margin: const EdgeInsets.fromLTRB(100, 80, 20, 0),
                          padding: EdgeInsets.fromLTRB(80, 0.0, 30, 20),
                          // margin: EdgeInsets.fromLTRB(30, 1, 40, 1),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0)),
                          child: DropdownButton<String>(
                            items: <String>[
                              'India',
                              'SriKanka',
                              'Bangladesh',
                              'Pakistan'
                            ].map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (_) {},
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Select State',
                          textAlign: TextAlign.values.first,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              padding: EdgeInsets.fromLTRB(80, 0.0, 30, 20),
                              // margin: const EdgeInsets.fromLTRB(100, 80, 20, 0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0)),
                              child: DropdownButton<String>(
                                items: <String>[
                                  'Dehli',
                                  'Karnataka',
                                  'Tamilnadu',
                                  'Kerala'
                                ].map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (_) {},
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Text(
                      'Select District',
                    ),
                    Row(
                      children: [
                        Column(
                          // mainAxisAlignment: MainAxisAlignment.end,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Align(
                              alignment: Alignment.topRight,
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(80, 0.0, 30, 20),
                              // margin: const EdgeInsets.fromLTRB(100, 80, 20, 0),

                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0)),
                              child: DropdownButton<String>(
                                items: <String>[
                                  'Bangalore',
                                  'chennai',
                                  'Kochi',
                                  'New Delhi'
                                ].map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (_) {},
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Text('Select City'),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(80, 0.0, 30, 20),
                          // margin: const EdgeInsets.fromLTRB(100, 80, 20, 0),

                          child: DropdownButton<String>(
                            items: <String>[
                              'Bangalore',
                                  'chennai',
                                  'Kochi',
                                  'New Delhi'
                            ].map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (_) {},
                          ),
                        ),
                      ],
                    ),
                    Text('Select Area'),
                    Row(
                      children: [
                        Container(
                          // margin: const EdgeInsets.fromLTRB(100, 80, 20, 0),
                          padding: EdgeInsets.fromLTRB(80, 0.0, 30, 20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0)),
                          child: DropdownButton<String>(
                            items: <String>[
                             'Bangalore',
                                  'chennai',
                                  'Kochi',
                                  'New Delhi'
                            ].map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (_) {},
                          ),
                        ),
                      ],
                    ),
                    Text('Select Main God'),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(50, 0.0, 20, 20),
                          // margin: const EdgeInsets.fromLTRB(100, 80, 20, 0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0)),
                          child: DropdownButton<String>(
                            items: <String>[
                              'Meenakshi Amma Temple',
                              'Sri Laxhmi Narayanan Golden Temple',
                              'Brihadeeshwara Temple',
                              'Arunachaleswarar Temple'
                            ].map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (_) {},
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Text('Select Speciality'),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      // margin: const EdgeInsets.fromLTRB(100, 80, 20, 0),
                      padding: EdgeInsets.fromLTRB(80, 0.0, 30, 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0)),
                      child: DropdownButton<String>(
                        items: <String>[
                          'Rajesh',
                          'rajuKumar',
                          'pradeep',
                          ''
                        ].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (_) {},
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 200),
                      child: Column(
                        children: [
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  onSurface: Colors.blue),
                              onPressed: () {},
                              child: Text('Submit')),
                        ],
                      ),
                    )
                  ]),
            ),
          ],
        ),
      ),
    ));
  }
}
