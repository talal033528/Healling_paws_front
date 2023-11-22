import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class userrefundpolicy extends StatelessWidget {
  const userrefundpolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: true,
        leading: Container(
            margin: EdgeInsets.only(left: 20),
            width: 45.w,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: Center(
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            )),
        title: Text(
          "Refund Policy",
          style: TextStyle(
              color: Color(0xff223850),
              fontSize: 18.sp,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              25.verticalSpace,
              SizedBox(
                width: 382.w,
                child: Column(
                  children: [
                    Text(
                        "Lorem ipsum dolor sit amet consectetur adipiscing elit odio, mattis quam tortor taciti aenean luctus nullam enim, dui praesent ad dapibus tempus natoque a. Rhoncus praesent massa torquent malesuada maecenas arcu curae, porta pulvinar potenti at mus sem, vel purus proin eleifend nisi dictum. Egestas tortor blandit vestibulum tempus dignissim cras placerat, ligula ridiculus sollicitudin interdum quisque facilisis, suscipit tempor justo tristique et mattis",
                        style: TextStyle(
                          color: Color(0xFF9C9C9C),
                          fontSize: 16,
                          fontFamily: 'Typold',
                          fontWeight: FontWeight.w400,
                        )),
                    25.verticalSpace,
                    Text(
                        "Nisl imperdiet donec nascetur feugiat massa vehicula elementum nullam purus morbi, sagittis et penatibus taciti vitae lobortis facilisis maecenas gravida, venenatis sed pellentesque suspendisse sociis magna class nibh volutpat. Sodales leo arcu ornare eget torquent dictumst, id morbi fringilla ultricies suscipit, nulla sapien a aliquet tempor. Tristique non eros a felis quam convallis nascetur montes auctor hendrerit, mollis metus sodales ligula magnis condimentum et arcu nam.",
                        style: TextStyle(
                          color: Color(0xFF9C9C9C),
                          fontSize: 16,
                          fontFamily: 'Typold',
                          fontWeight: FontWeight.w400,
                        )),
                    25.verticalSpace,
                    Text(
                        "Lorem ipsum dolor sit amet consectetur adipiscing elit odio, mattis quam tortor taciti aenean luctus nullam enim, dui praesent ad dapibus tempus natoque a. Rhoncus praesent massa torquent malesuada maecenas arcu curae, porta pulvinar potenti at mus sem, vel purus proin eleifend nisi dictum. Egestas tortor blandit vestibulum tempus dignissim cras placerat, ligula ridiculus sollicitudin interdum quisque facilisis, suscipit tempor justo tristique et mattis",
                        style: TextStyle(
                          color: Color(0xFF9C9C9C),
                          fontSize: 16,
                          fontFamily: 'Typold',
                          fontWeight: FontWeight.w400,
                        )),
                    25.verticalSpace,
                    Text(
                        "torquent malesuada maecenas arcu curae, porta pulvinar potenti at mus sem, vel purus proin eleifend nisi dictum. Tristique non eros a felis quam convallis nascetur montes auctor hendrerit, mollis metus sodales ligula magnis condimentum et arcu nam.",
                        style: TextStyle(
                          color: Color(0xFF9C9C9C),
                          fontSize: 16,
                          fontFamily: 'Typold',
                          fontWeight: FontWeight.w400,
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
