import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('الصفحة الرئيسية'),
        ),
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  'مرحبا أ.محمد شاهان',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              ElevatedButton(
                child: Text(
                  'تقييم الطلاب',
                  style: TextStyle(fontSize: 25),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "/ratestd");
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(
                    MediaQuery.of(context).size.width*0.25,
                    MediaQuery.of(context).size.height*0.25,
                  ),
                  shape: CircleBorder(),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              ElevatedButton(
                child: Text(
                  'نتائج الطلاب',
                  style: TextStyle(fontSize: 25),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "/showratedstds");
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(
                   MediaQuery.of(context).size.width*0.25,
                    MediaQuery.of(context).size.height*0.25,
                  ),
                  shape: CircleBorder(),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              ElevatedButton(
                child: Text(
                  'المتميزون',
                  style: TextStyle(fontSize: 25),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "/showtopstds");
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(
                    MediaQuery.of(context).size.width*0.25,
                    MediaQuery.of(context).size.height*0.25,
                  ),
                  shape: CircleBorder(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
