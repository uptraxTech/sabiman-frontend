import 'package:flutter/material.dart';
import 'package:urban_home_provider/constant/constant.dart';

class UpcomingBookingDetail extends StatefulWidget {
  @override
  _UpcomingBookingDetailState createState() => _UpcomingBookingDetailState();
}

class _UpcomingBookingDetailState extends State<UpcomingBookingDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBgColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 1.0,
        title: Text(
          'Booking ID 2095',
          style: black18BoldTextStyle,
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: blackColor,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      bottomNavigationBar: Material(
        elevation: 1.0,
        child: InkWell(
          onTap: () => Navigator.pop(context),
          child: Container(
            height: 50.0,
            width: double.infinity,
            color: primaryColor,
            alignment: Alignment.center,
            child: Text(
              'Mark as complete',
              style: white16MediumTextStyle,
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(fixPadding * 2.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50.0),
                  child: Image.asset(
                    'assets/user/user_3.jpg',
                    width: 100.0,
                    height: 100.0,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(
                fixPadding * 2.0, 0.0, fixPadding * 2.0, fixPadding * 2.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                detailTile('Customer Name', 'Ellison Perry'),
                detailTile('Address', '102, Yogi Villa, New York.'),
                detailTile('Booking For', 'Home Cleaning'),
                detailTile('Date & Time', 'Today, 03:00 PM'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  detailTile(title, value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: fixPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: black16BoldTextStyle),
          heightSpace,
          Text(
            value,
            style: grey14MediumTextStyle,
          ),
          heightSpace,
          Container(
            height: 1.0,
            width: double.infinity,
            color: blackColor,
          ),
        ],
      ),
    );
  }
}
