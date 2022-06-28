import 'package:flutter/material.dart';

class RatedStudentsResultPage extends StatefulWidget {
  const RatedStudentsResultPage({Key? key}) : super(key: key);

  @override
  State<RatedStudentsResultPage> createState() => _RatedStudentsPageState();
}

class _RatedStudentsPageState extends State<RatedStudentsResultPage> {
  double _progress = 0.9;

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
                  'تقدير الطلاب',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: SizedBox(
                              height: 200,
                              width: 200,
                              child: CircularProgressIndicator(
                                value: _progress,
                                strokeWidth: 15,
                                valueColor:
                                    AlwaysStoppedAnimation(getProgressColor(_progress)),
                                backgroundColor: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        Center(
                            child: Column(
                          children: [
                            SizedBox(
                              height: 85,
                            ),
                            Text(
                              'عبدالرحمن العطوي',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              _progress.toString(),
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                Navigator.pushNamed(context, "/showratedstd");
                                ;
                              },
                              icon: Icon(
                                Icons.show_chart,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        )),
                      ],
                    );
                  },
                  itemCount: 50,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
