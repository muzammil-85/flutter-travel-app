import 'package:flutter/material.dart';
import 'package:travel_app/utils/styles.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: black,
            borderRadius: BorderRadius.circular(26),
            image: DecorationImage(
              image: AssetImage('assets/images/square-3.png'),
              fit: BoxFit.cover,
            ),
          ),
          height: 400,
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.all(10.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(26),
              gradient: const LinearGradient(
                colors: [
                  Color.fromRGBO(0, 0, 0, 0.75),
                  Colors.transparent,
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: small, bottom: medium),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: accentLight,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          width: 40,
                          height: 40,
                          child: Center(
                            child: Icon(
                              Icons.arrow_back_ios_new_outlined,
                              color: white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 200,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Container(
                          alignment: Alignment.topRight,
                          decoration: BoxDecoration(
                            color: accentLight,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          width: 68,
                          height: 36,
                          child: Center(
                              child: Icon(
                            Icons.share,
                            color: white,
                          )),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('name', style: pBold),
                      Text('location', style: pLocation),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
