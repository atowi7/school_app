import 'package:flutter/material.dart';

class RatedStudentResultPage extends StatefulWidget {
  const RatedStudentResultPage({Key? key}) : super(key: key);

  @override
  State<RatedStudentResultPage> createState() => _RatedStudentPageState();
}

class _RatedStudentPageState extends State<RatedStudentResultPage> {
  Color getProgressColor(double progress) {
    if (progress >= 0.9) {
      return Colors.green;
    } else if (progress >= 0.8) {
      return Colors.blue;
    } else if (progress >= 0.7) {
      return Colors.orange;
    } else {
      return Colors.red;
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('نتائج الطالب'),
        ),
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 5,
              ),
              Center(
                child: Text(
                  'تقدير ',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text('ممتاز'),
                      Icon(
                        Icons.circle,
                        color: getProgressColor(0.9),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text('جيد جدا'),
                      Icon(
                        Icons.circle,
                        color: getProgressColor(0.8),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text('جيد'),
                      Icon(
                        Icons.circle,
                        color: getProgressColor(0.7),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text('ضعيف'),
                      Icon(
                        Icons.circle,
                        color: getProgressColor(0.6),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Center(
                child: Text(
                  'الحفظ',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  controller: ScrollController(),
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text('مقدار الحفظ'),
                      subtitle: Text('التقدير'),
                      trailing: Icon(
                        Icons.circle,
                        color: getProgressColor(0.9),
                      ),
                    );
                  },
                  itemCount: 50,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Center(
                child: Text(
                  'المراجعة',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  controller: ScrollController(),
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text('مقدار المراجعة'),
                      subtitle: Text('التقدير'),
                      trailing: Icon(
                        Icons.circle,
                        color: getProgressColor(0.8),
                      ),
                    );
                  },
                  itemCount: 50,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
