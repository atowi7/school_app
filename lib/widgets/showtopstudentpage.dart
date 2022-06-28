import 'dart:ui';

import 'package:flutter/material.dart';
import '../models/student.dart';
import './studentitem.dart';

class ShowTopStudentPage extends StatefulWidget {
  const ShowTopStudentPage({Key? key}) : super(key: key);

  @override
  State<ShowTopStudentPage> createState() => _ShowTopStudentPageState();
}

class _ShowTopStudentPageState extends State<ShowTopStudentPage> {
  final List<Student> _studentList = [
    Student(
      '',
      'محمد أحمد',
      'حلقة عمر بن الخطاب',
      'ممتاز',
    ),
    Student(
      '',
      'سالم أحمد',
      'حلقة عمر بن الخطاب',
      'ممتاز',
    ),
    Student(
      '',
      'عبدالله أحمد',
      'حلقة عمر بن الخطاب',
      'ممتاز',
    ),
    Student(
      '',
      'مهند أحمد',
      'حلقة عمر بن الخطاب',
      'ممتاز',
    ),
    Student(
      '',
      'ماجد أحمد',
      'حلقة عمر بن الخطاب',
      'ممتاز',
    ),
    Student(
      '',
      'محمد أحمد',
      'حلقة عمر بن الخطاب',
      'ممتاز',
    ),
    Student(
      '',
      'محمد أحمد',
      'حلقة عمر بن الخطاب',
      'ممتاز',
    ),
    Student(
      '',
      'محمد أحمد',
      'حلقة عمر بن الخطاب',
      'ممتاز',
    ),
    Student(
      '',
      'محمد أحمد',
      'حلقة عمر بن الخطاب',
      'ممتاز',
    ),
    Student(
      '',
      'محمد أحمد',
      'حلقة عمر بن الخطاب',
      'ممتاز',
    ),
    Student(
      '',
      'محمد أحمد',
      'حلقة عمر بن الخطاب',
      'ممتاز',
    ),
    Student(
      '',
      'محمد أحمد',
      'حلقة عمر بن الخطاب',
      'ممتاز',
    ),
    Student(
      '',
      'محمد أحمد',
      'حلقة عمر بن الخطاب',
      'ممتاز',
    ),
    Student(
      '',
      'محمد أحمد',
      'حلقة عمر بن الخطاب',
      'ممتاز',
    ),
    Student(
      '',
      'محمد أحمد',
      'حلقة عمر بن الخطاب',
      'ممتاز',
    ),
    Student(
      '',
      'محمد أحمد',
      'حلقة عمر بن الخطاب',
      'ممتاز',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return new Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text('الطلاب المتميزون'),
        ),
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView(
                  children: _studentList
                      .map(
                        (e) => StudentItem(
                          e.name,
                          e.section,
                          e.rate,
                        ),
                      )
                      .toList(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
