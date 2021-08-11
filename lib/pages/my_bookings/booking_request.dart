import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:urban_home_provider/constant/constant.dart';
import 'package:urban_home_provider/pages/screens.dart';

class BookingRequest extends StatefulWidget {
  @override
  _BookingRequestState createState() => _BookingRequestState();
}

class _BookingRequestState extends State<BookingRequest> {
  final requestList = [
    {
      'name': 'Russel Taylor',
      'image': 'assets/user/user_1.jpg',
      'type': 'Home Cleaning',
      'time': '17 March | 01:00 PM'
    },
    {
      'name': 'Ellison Perry',
      'image': 'assets/user/user_3.jpg',
      'type': 'Home Cleaning',
      'time': '18 March | 09:00 AM'
    },
    {
      'name': 'Stella French',
      'image': 'assets/user/user_5.jpg',
      'type': 'Home Cleaning',
      'time': '18 March | 12:00 PM'
    }
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: scaffoldBgColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 1.0,
        title: Text(
          'Booking Requests',
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
      body: ListView.builder(
        itemCount: requestList.length,
        itemBuilder: (context, index) {
          final item = requestList[index];
          return Padding(
            padding: (index != requestList.length - 1)
                ? const EdgeInsets.fromLTRB(
                    fixPadding * 2.0, fixPadding * 2.0, fixPadding * 2.0, 0.0)
                : EdgeInsets.all(fixPadding * 2.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.rightToLeft,
                    child: NewBookingRequestDetail(),
                  ),
                );
              },
              borderRadius: BorderRadius.circular(10.0),
              child: Container(
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
                        item['image'],
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      item['name'],
                                      style: black16BoldTextStyle,
                                    ),
                                    Text(
                                      item['type'],
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
                                  item['time'],
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
                                            type:
                                                PageTransitionType.rightToLeft,
                                            child: ChatScreen(
                                              name: item['name'],
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
              ),
            ),
          );
        },
      ),
    );
  }
}
