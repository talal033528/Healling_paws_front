import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healing_paws/features/getstarted/widgets/botton.dart';

import 'package:table_calendar/table_calendar.dart';

class CalendarTextField extends StatefulWidget {
  final String hinttext; // Add hinttext as a parameter

  CalendarTextField({required this.hinttext});

  @override
  _CalendarTextFieldState createState() => _CalendarTextFieldState();
}

class _CalendarTextFieldState extends State<CalendarTextField> {
  DateTime _selectedDay = DateTime.now();
  DateTime _focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        boxShadow: [
          BoxShadow(
            color: Color(0xFF9C9C9C), // Shadow color
            blurRadius: 4.0,
            spreadRadius: 0.1,
            offset: Offset(0, 2.0),
          ),
        ],
      ),
      child: TextField(
        style: TextStyle(color: Color(0xFf9BA8BB), fontSize: 14),
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xffDBE2EC),
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xffDBE2EC),
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          fillColor: const Color(0xFFffffff),
          filled: true,
          // contentPadding: const EdgeInsets.all(10),
          labelText: "Date of Birth",
          labelStyle: TextStyle(color: Color(0xff000000), fontSize: 14.sp),
          hintText: widget.hinttext, // Use hinttext from the widget parameter
          hintStyle: const TextStyle(fontSize: 14, color: Color(0xFf9BA8BB)),

          suffixIcon: IconButton(
            icon: Image.asset(
              "assets/images/calendar.png",
              width: 19.w,
              height: 19.h,
            ),
            //  Icon(
            //   Icons.calendar_month,
            //   color: Color(0xFf9BA8BB),
            // ),
            onPressed: () {
              _showCalendarDialog(context,
                  widget.hinttext); // Pass hinttext to _showCalendarDialog
            },
          ),
        ),
      ),
    );
  }

  void _showCalendarDialog(BuildContext context, String hinttext) {
    // Add hinttext parameter
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          content: Container(
            width: 400.w,
            height: 380.h,
            child: TableCalendar(
              rowHeight: 43,
              headerStyle: HeaderStyle(
                formatButtonVisible: false,
                titleCentered: true,
                titleTextStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  // color: Color(0xff29B6F6),
                ),
                leftChevronIcon:
                    Icon(Icons.arrow_left, color: Color(0xff29B6F6)),
                rightChevronIcon:
                    Icon(Icons.arrow_right, color: Color(0xff29B6F6)),
              ),
              calendarStyle: CalendarStyle(
                todayDecoration: BoxDecoration(
                  color: Color(0xff29B6F6),
                  shape: BoxShape.circle,
                ),
                selectedDecoration: BoxDecoration(
                  color: Color(0xff29B6F6),
                  shape: BoxShape.circle,
                ),
                defaultTextStyle: TextStyle(
                  color: Color(0XFF000000), // Set the default text color
                  fontSize: 16,
                ),
                selectedTextStyle: TextStyle(color: Color(0XFFffffff)),
                holidayTextStyle: TextStyle(color: Colors.red),
                weekendTextStyle: TextStyle(color: Color(0xff29B6F6)),
                outsideTextStyle: TextStyle(color: Colors.white),
                outsideDaysVisible: true,
              ),
              availableGestures: AvailableGestures.all,
              selectedDayPredicate: (day) => isSameDay(day, _selectedDay),
              focusedDay: _focusedDay,
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              onDaySelected: (selectedDay, focusedDay) {
                // Handle day selection if needed
              },
            ),
          ),
          actions: <Widget>[
            SizedBox(
              width: 348.w,
              child: Custombutton(
                buttonText: "Apply",
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
