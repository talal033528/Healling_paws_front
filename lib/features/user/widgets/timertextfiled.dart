import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TimerTextField extends StatefulWidget {
  final Text labeltext;

  // Correct the constructor signature
  TimerTextField({required this.labeltext});

  @override
  _TimerTextFieldState createState() => _TimerTextFieldState();
}

class _TimerTextFieldState extends State<TimerTextField> {
  TextEditingController _controller = TextEditingController();
  TimeOfDay? _selectedTime; // Store the selected time

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: Color(0xFf9BA8BB), fontSize: 14),
      controller: _controller,
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
        fillColor: Colors.white,
        labelText:
            widget.labeltext.data as String, // Correct way to access text
        labelStyle: TextStyle(color: Color(0xff000000), fontSize: 14.sp),
        hintStyle: const TextStyle(fontSize: 14, color: Color(0xFf9BA8BB)),
        filled: true,
        contentPadding: EdgeInsets.all(10),
        hintText: '02:57',
        suffixIcon: GestureDetector(
          onTap: () {
            _showTimePicker(context);
          },
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Image.asset(
              "assets/images/clock.png",
              width: 11.w,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }

  void _showTimePicker(BuildContext context) async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      initialEntryMode: TimePickerEntryMode.dial,
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData(
            primarySwatch: Colors.blue, // Change the primary color
            hintColor: Colors.white, // Change the accent color (hint color)
            textTheme: TextTheme(
              bodyText2: TextStyle(
                color: Colors.white, // Change the text color
              ),
            ),
          ),
          child: child!,
        );
      },
    );

    if (pickedTime != null && pickedTime != _selectedTime) {
      // Update the selected time
      setState(() {
        _selectedTime = pickedTime;
        _controller.text = _formatTime(_selectedTime!);
      });
    }
  }

  String _formatTime(TimeOfDay time) {
    final hour = time.hour.toString().padLeft(2, '0');
    final minute = time.minute.toString().padLeft(2, '0');
    return '$hour:$minute';
  }
}
