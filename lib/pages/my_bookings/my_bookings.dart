import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:urban_home_provider/constant/constant.dart';
import 'package:urban_home_provider/pages/screens.dart';
import 'package:urban_home_provider/widget/column_builder.dart';

class MyBookings extends StatefulWidget {
  @override
  _MyBookingsState createState() => _MyBookingsState();
}

class _MyBookingsState extends State<MyBookings> {
  final todayBookingList = [
    {
      'name': 'Russel Taylor',
      'image': 'assets/user/user_1.jpg',
      'type': 'Home Cleaning',
      'time': 'Today | 01:00 PM'
    },
    {
      'name': 'Stella French',
      'image': 'assets/user/user_5.jpg',
      'type': 'Home Cleaning',
      'time': 'Today | 03:30 PM'
    }
  ];

  final tomorrowBookingList = [
    {
      'name': 'Russel Taylor',
      'image': 'assets/user/user_7.jpg',
      'type': 'Home Cleaning',
      'time': 'Tomorrow | 09:00 AM'
    },
    {
      'name': 'Amara Johnson',
      'image': 'assets/user/user_3.jpg',
      'type': 'Home Cleaning',
      'time': 'Tomorrow | 11:00 AM'
    },
    {
      'name': 'Criss Lynn',
      'image': 'assets/user/user_6.jpg',
      'type': 'Home Cleaning',
      'time': 'Tomorrow | 02:30 PM'
    }
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: scaffoldBgColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        title: Text(
          'My Bookings',
          style: black18BoldTextStyle,
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 1.0,
      ),
      body: SafeArea(
        child: Container(
          height: height,
          width: width,
          child: Stack(
            children: [
              ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  nextBooking(),
                  upcomingBookings(),
                  SizedBox(height: 70.0),
                ],
              ),
              Positioned(
                bottom: 0.0,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(
                      fixPadding * 2.0, 0.0, fixPadding * 2.0, fixPadding),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.bottomToTop,
                          child: BookingRequest(),
                        ),
                      );
                    },
                    borderRadius: BorderRadius.circular(10.0),
                    child: Container(
                      width: width - fixPadding * 4.0,
                      height: 40.0,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: primaryColor,
                      ),
                      child: Text(
                        'Booking Request (4)',
                        style: white16MediumTextStyle,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  nextBooking() {
    return Padding(
      padding: EdgeInsets.all(fixPadding * 2.0),
      child: Container(
        padding: EdgeInsets.all(fixPadding * 2.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: const Color(0xFF141B47),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    'assets/user/user_4.jpg',
                    width: 60.0,
                    height: 60.0,
                    fit: BoxFit.cover,
                  ),
                ),
                widthSpace,
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Elisson Perry',
                            style: white16BoldTextStyle,
                          ),
                          heightSpace,
                          Text(
                            'Home Cleaning',
                            style: grey14MediumTextStyle,
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.call,
                            size: 24.0,
                            color: whiteColor,
                          ),
                          heightSpace,
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.rightToLeft,
                                  child: ChatScreen(
                                    name: 'Elisson Perry',
                                  ),
                                ),
                              );
                            },
                            child: Icon(
                              Icons.chat,
                              size: 24.0,
                              color: whiteColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            height20Space,
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: 36.0,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: whiteColor.withOpacity(0.35),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.access_time,
                          size: 20.0,
                          color: whiteColor,
                        ),
                        widthSpace,
                        Text(
                          'Today, 10:30 AM',
                          style: white14MediumTextStyle,
                        ),
                      ],
                    ),
                  ),
                ),
                width20Space,
                Container(
                  width: 36.0,
                  height: 36.0,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18.0),
                    color: whiteColor.withOpacity(0.35),
                  ),
                  child: Icon(
                    Icons.check,
                    color: whiteColor,
                    size: 24.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  upcomingBookings() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: fixPadding * 2.0),
          child: Text(
            'Upcoming Bookings',
            style: black16BoldTextStyle,
          ),
        ),
        heightSpace,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: fixPadding * 2.0),
          child: Text(
            'Today',
            style: grey14MediumTextStyle,
          ),
        ),
        ColumnBuilder(
          itemCount: todayBookingList.length,
          itemBuilder: (context, index) {
            final item = todayBookingList[index];
            return Padding(
              padding: const EdgeInsets.fromLTRB(
                  fixPadding * 2.0, fixPadding * 1.5, fixPadding * 2.0, 0.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.rightToLeft,
                      child: UpcomingBookingDetail(),
                    ),
                  );
                },
                borderRadius: BorderRadius.circular(10.0),
                child: upcomingBookingCard(
                    item['image'], item['name'], item['type'], item['time']),
              ),
            );
          },
        ),
        height20Space,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: fixPadding * 2.0),
          child: Text(
            'Tomorrow',
            style: grey14MediumTextStyle,
          ),
        ),
        ColumnBuilder(
          itemCount: tomorrowBookingList.length,
          itemBuilder: (context, index) {
            final item = tomorrowBookingList[index];
            return Padding(
              padding: const EdgeInsets.fromLTRB(
                  fixPadding * 2.0, fixPadding * 1.5, fixPadding * 2.0, 0.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.rightToLeft,
                      child: UpcomingBookingDetail(),
                    ),
                  );
                },
                borderRadius: BorderRadius.circular(10.0),
                child: upcomingBookingCard(
                    item['image'], item['name'], item['type'], item['time']),
              ),
            );
          },
        ),
      ],
    );
  }

  upcomingBookingCard(image, name, type, time) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.all(fixPadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: whiteColor,
        boxShadow: [
          BoxShadow(
            blurRadius: 4.0,
            spreadRadius: 1.0,
            color: blackColor.withOpacity(0.25),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.asset(
              image,
              width: 60.0,
              height: 60.0,
              fit: BoxFit.cover,
            ),
          ),
          widthSpace,
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 60.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: black16BoldTextStyle,
                          ),
                          Text(
                            type,
                            style: grey14MediumTextStyle,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 40.0,
                      height: 40.0,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        border: Border.all(
                          width: 1.0,
                          color: primaryColor,
                        ),
                        color: whiteColor,
                      ),
                      child: Icon(
                        Icons.check,
                        size: 24.0,
                        color: primaryColor,
                      ),
                    ),
                  ],
                ),
                height20Space,
                Container(
                  width: width - fixPadding * 13.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        time,
                        style: black16MediumTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.rightToLeft,
                                  child: ChatScreen(
                                    name: name,
                                  ),
                                ),
                              );
                            },
                            child: Icon(
                              Icons.chat,
                              size: 20.0,
                              color: primaryColor,
                            ),
                          ),
                          widthSpace,
                          Icon(
                            Icons.call,
                            size: 20.0,
                            color: primaryColor,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
