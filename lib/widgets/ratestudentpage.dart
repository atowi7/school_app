import 'package:flutter/material.dart';

class RateStudentPage extends StatefulWidget {
  const RateStudentPage({Key? key}) : super(key: key);

  @override
  State<RateStudentPage> createState() => _RateStudentPageState();
}

class _RateStudentPageState extends State<RateStudentPage> {
  final _amount1 = TextEditingController();
  final _amount2 = TextEditingController();

  String _choosenValue = '';
  String _initValue1 = 'اختار الاسم';
  String _initValue2 = 'التقدير';
  String _initValue3 = 'التقدير';

  final List _stdList = [
    'عبدالرحمن العطوي',
    'عبدالرحمن العطوي',
    'عبدالرحمن العطوي',
    'عبدالرحمن العطوي',
    'عبدالرحمن العطوي',
    'عبدالرحمن العطوي',
  ];

  final _rateList = [
    'ممتاز',
    'جيدا جدا',
    'جيد',
    'ضعيف',
    'غياب',
  ];

  void _showAlterDialog(BuildContext context) {
    Widget okBtn = ElevatedButton(
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('تم'),
          ),
        );
        Navigator.of(context).pop();
      },
      child: Text(
        'نعم',
      ),
    );
    Widget cancelBtn = ElevatedButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      child: Text(
        'لا',
      ),
    );

    AlertDialog alert = AlertDialog(
      backgroundColor: Theme.of(context).primaryColor,
      content: Column(
       mainAxisSize: MainAxisSize.min, 
        children: [
        Text('!تنبيه',style: TextStyle(color: Colors.white,),),
        SizedBox(height: 5,),
        Text('!هل أنت متأكد',style: TextStyle(color: Colors.white,),),
        SizedBox(height: 5,),
        Directionality(
          textDirection: TextDirection.rtl,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              okBtn,
              cancelBtn,
            ],
          ),
        ),
      ],),
    );

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        });
  }

  @override
  Widget build(BuildContext context) {
    return new Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('تقييم الطلاب'),
        ),
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  'من فضلك قيم الطالب',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              DropdownButton(
                value: _choosenValue.isEmpty ? null : _initValue1,
                hint: Text(_initValue1),
                items: _stdList.map((e) {
                  return DropdownMenuItem<String>(
                    child: Text(e),
                    value: e,
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    _initValue1 = newValue as String;
                  });
                },
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 500,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'مقدار الحفظ',
                      ),
                      controller: _amount1,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  DropdownButton(
                    value: _choosenValue.isEmpty ? null : _initValue2,
                    hint: Text(_initValue2),
                    items: _rateList.map((e) {
                      return DropdownMenuItem<String>(
                        child: Text(e),
                        value: e,
                      );
                    }).toList(),
                    onChanged: (newValue) {
                      _initValue2 = newValue as String;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    child: Text(
                      'حفظ',
                    ),
                    onPressed: () {
                      if (_initValue1 == 'اختار الاسم') {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('من فضلك اختار الاسم'),
                          ),
                        );
                      } else if (_initValue2 == 'التقدير' ||
                          _amount1.text.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('خطأ'),
                          ),
                        );
                      } else {
                        _showAlterDialog(context);
                      }
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 500,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'مقدار المراجعة',
                      ),
                      controller: _amount2,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  DropdownButton(
                    value: _choosenValue.isEmpty ? null : _initValue3,
                    hint: Text(_initValue3),
                    items: _rateList.map((e) {
                      return DropdownMenuItem<String>(
                        child: Text(e),
                        value: e,
                      );
                    }).toList(),
                    onChanged: (newValue) {
                      _initValue3 = newValue as String;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    child: Text(
                      'حفظ',
                    ),
                    onPressed: () {
                      if (_initValue1 == 'اختار الاسم') {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('من فضلك اختار الاسم'),
                          ),
                        );
                      } else if (_initValue3 == 'التقدير' ||
                          _amount1.text.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('من فضلك قيم الطالب!'),
                          ),
                        );
                      } else {
                        _showAlterDialog(context);
                      }
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
