import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class handler_salectbankcard extends StatefulWidget {
  final String title;
  final String image;
  final String name;

  const handler_salectbankcard({
    Key? key,
    required this.title,
    required this.image,
    required this.name,
  }) : super(key: key);

  @override
  _handler_salectbankcardState createState() => _handler_salectbankcardState();
}

class _handler_salectbankcardState extends State<handler_salectbankcard> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390.w,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0xFF9C9C9C), // Shadow color
            blurRadius: 4.0,
            spreadRadius: 0.1,
            offset: Offset(0, 2.0),
          ),
        ],
        color: Colors.white,
        border: Border.all(color: Color(0xffDDE2E8)),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: SizedBox(
          width: 30.w,
          child: Image.asset(
            widget.image, // Corrected line
            width: 26.w,
            height: 26.h,
          ),
        ),
        title: Text(
          widget.title,
          style: TextStyle(
            fontSize: 16.sp,
            color: Color(0xff000000),
            fontWeight: FontWeight.w600,
          ),
        ),
        trailing: SizedBox(
          width: 50.w,
          child: GestureDetector(
            onTap: () {
              setState(() {
                isSelected = !isSelected;
              });
            },
            child: isSelected
                ? Icon(Icons.radio_button_checked)
                : Icon(Icons.radio_button_unchecked),
          ),
        ),
        subtitle: Text(
          widget.name,
          style: TextStyle(
            fontSize: 16.sp,
            color: Color(0xff000000),
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
