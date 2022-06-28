import 'package:flutter/material.dart';

class StudentItem extends StatelessWidget {
  final String name;
  final String section;
  final String rate;

  StudentItem(this.name, this.section, this.rate);
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        width: MediaQuery.of(context).size.width-100,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              20,
            ),
            color: Theme.of(context).primaryColor,
          ),
          child: Center(
            child: Text(
              name,
            ),
          ),
        ),
      ),
      SizedBox(
        width: MediaQuery.of(context).size.width-100,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              20,
            ),
            color: Theme.of(context).primaryColor.withOpacity(.5),
          ),
          child: Center(
            child: Text(
              section,
            ),
          ),
        ),
      ),
      SizedBox(
        width: MediaQuery.of(context).size.width-100,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              20,
            ),
            color: Theme.of(context).primaryColor.withOpacity(.2),
          ),
          child: Center(
            child: Text(
              rate,
            ),
          ),
        ),
      ),
    ],);
  }
}
