import 'dart:ui';

import 'package:flutter/material.dart';
class ShowStudentPage extends StatefulWidget {
  const ShowStudentPage({ Key? key }) : super(key: key);

  @override
  State<ShowStudentPage> createState() => _ShowStudentPageState();
}

class _ShowStudentPageState extends State<ShowStudentPage> {
  @override
  Widget build(BuildContext context) {
    return new Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 203, 203, 203),
        appBar: AppBar(
          title: Text('نتائج الطلاب'),
        ),
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  'أهلا بالاسم',
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Container(width: double.infinity,color:Colors.lightBlue ,child: Center(child: Text('عبدالرحمن العطوي',))),
                      subtitle: Container(width: double.infinity,color:Colors.lightGreen ,child: Center(child: Text('التقدبر العام:'))),
                    );
                  },
                  itemCount: 10,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}