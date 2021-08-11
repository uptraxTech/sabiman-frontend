import 'package:flutter/material.dart';
import 'package:urban_home_provider/constant/constant.dart';
import 'package:urban_home_provider/widget/column_builder.dart';

class Reviews extends StatefulWidget {
  @override
  _ReviewsState createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {
  final reviewList = [
    {
      'name': 'Russeil Taylor',
      'image': 'assets/user/user_1.jpg',
      'type': 'Home Cleaning',
      'date': '15 March, 2021',
      'review': 'Excellent service.',
      'rating': 5
    },
    {
      'name': 'John Smith',
      'image': 'assets/user/user_2.jpg',
      'type': 'Carpet Cleaning',
      'date': '14 March, 2021',
      'review': 'Quick service.',
      'rating': 5
    },
    {
      'name': 'Apollonia Mars',
      'image': 'assets/user/user_3.jpg',
      'type': 'Home Cleaning',
      'date': '13 March, 2021',
      'review': 'Quick service.',
      'rating': 5
    },
    {
      'name': 'Beatriz Warner',
      'image': 'assets/user/user_4.jpg',
      'type': 'Home Cleaning',
      'date': '12 March, 2021',
      'review': 'Nice & clean service.',
      'rating': 5
    },
    {
      'name': 'Linnea Hayden',
      'image': 'assets/user/user_5.jpg',
      'type': 'Home Cleaning',
      'date': '11 March, 2021',
      'review': 'Excellent service.',
      'rating': 5
    },
    {
      'name': 'Mark Smith',
      'image': 'assets/user/user_6.jpg',
      'type': 'Home Cleaning',
      'date': '10 March, 2021',
      'review': 'Good.',
      'rating': 5
    },
    {
      'name': 'John Doe',
      'image': 'assets/user/user_7.jpg',
      'type': 'Home Cleaning',
      'date': '09 March, 2021',
      'review': 'Best service ever seen.',
      'rating': 5
    },
    {
      'name': 'Russeil Taylor',
      'image': 'assets/user/user_1.jpg',
      'type': 'Home Cleaning',
      'date': '15 March, 2021',
      'review': 'Excellent service.',
      'rating': 5
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBgColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        title: Text(
          'Reviews',
          style: black18BoldTextStyle,
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 1.0,
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          aboutProvider(),
          recentReviews(),
        ],
      ),
    );
  }

  aboutProvider() {
    return Padding(
      padding: const EdgeInsets.all(fixPadding * 2.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 120.0,
            height: 150.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4.0,
                    spreadRadius: 1.0,
                    color: blackColor.withOpacity(0.25),
                  ),
                ],
                image: DecorationImage(
                  image: AssetImage('assets/provider/provider_7.jpg'),
                  fit: BoxFit.cover,
                )),
          ),
          widthSpace,
          Container(
            height: 150.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Amara Smith',
                      style: black16BoldTextStyle,
                    ),
                    height5Space,
                    Text(
                      'Cleaner',
                      style: grey14MediumTextStyle,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 38.0,
                          height: 38.0,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: whiteColor,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4.0,
                                spreadRadius: 1.0,
                                color: blackColor.withOpacity(0.25),
                              ),
                            ],
                          ),
                          child: Icon(
                            Icons.star_rate,
                            color: orangeColor,
                            size: 24.0,
                          ),
                        ),
                        widthSpace,
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Rating',
                              style: grey14MediumTextStyle,
                            ),
                            height5Space,
                            Text(
                              '4.9 out of 5',
                              style: black14BoldTextStyle,
                            ),
                          ],
                        ),
                      ],
                    ),
                    heightSpace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 38.0,
                          height: 38.0,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: whiteColor,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4.0,
                                spreadRadius: 1.0,
                                color: blackColor.withOpacity(0.25),
                              ),
                            ],
                          ),
                          child: Icon(
                            Icons.group,
                            color: primaryColor,
                            size: 24.0,
                          ),
                        ),
                        widthSpace,
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Jobs',
                              style: grey14MediumTextStyle,
                            ),
                            height5Space,
                            Text(
                              '700+',
                              style: black14BoldTextStyle,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  recentReviews() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: fixPadding * 2.0),
          child: Text(
            'Recent reviews',
            style: black14BoldTextStyle,
          ),
        ),
        ColumnBuilder(
          itemCount: reviewList.length,
          itemBuilder: (context, index) {
            final item = reviewList[index];
            return Padding(
              padding: (index != reviewList.length - 1)
                  ? EdgeInsets.fromLTRB(
                      fixPadding * 2.0, fixPadding * 2.0, fixPadding * 2.0, 0.0)
                  : const EdgeInsets.all(fixPadding * 2.0),
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            item['image'],
                            width: 40.0,
                            height: 40.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        widthSpace,
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      item['name'],
                                      style: black16BoldTextStyle,
                                    ),
                                    height5Space,
                                    ratingBar(item['rating']),
                                  ],
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    item['type'],
                                    style: black14MediumTextStyle,
                                  ),
                                  height5Space,
                                  Text(
                                    item['date'],
                                    style: grey14RegularTextStyle,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    heightSpace,
                    Text(
                      item['review'],
                      style: black16MediumTextStyle,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  ratingBar(number) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        (number == 1 ||
                number == 2 ||
                number == 3 ||
                number == 4 ||
                number == 5)
            ? Icon(
                Icons.star_rate,
                size: 16.0,
                color: orangeColor,
              )
            : Container(),
        (number == 2 || number == 3 || number == 4 || number == 5)
            ? Icon(
                Icons.star_rate,
                size: 16.0,
                color: orangeColor,
              )
            : Container(),
        (number == 3 || number == 4 || number == 5)
            ? Icon(
                Icons.star_rate,
                size: 16.0,
                color: orangeColor,
              )
            : Container(),
        (number == 4 || number == 5)
            ? Icon(
                Icons.star_rate,
                size: 16.0,
                color: orangeColor,
              )
            : Container(),
        (number == 5)
            ? Icon(
                Icons.star_rate,
                size: 16.0,
                color: orangeColor,
              )
            : Container(),
      ],
    );
  }
}
