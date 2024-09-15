import 'package:oxyshine/features/shop/models/doctor_model.dart';
import 'package:oxyshine/features/shop/screens/doctor_details/doctor_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'dart:math';

class NearbyDoctors extends StatelessWidget {
  const NearbyDoctors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// -- Heading --
        Text(
          "Nearby Doctors",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const Divider(
          indent: 10,
          endIndent: 10,
          height: 20,
          thickness: 2,
          color: Color.fromARGB(255, 7, 7, 7),
        ),
        const SizedBox(height: 10),

        /// -- List of Doctors --
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: List.generate(nearbyDoctors.length, (index) {
              final double star = nearbyDoctors[index].averageReview /
                  nearbyDoctors[index].totalReviews;
              return GestureDetector(
                onTap: () {
                  Get.to(() => DoctorProfileScreen(doctor: nearbyDoctors[index]));
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Row(
                    children: [
                      Hero(
                        tag: nearbyDoctors[index].name,
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage(nearbyDoctors[index].profile),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 50),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            nearbyDoctors[index].name,
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 8),
                          Text(nearbyDoctors[index].position),
                          const SizedBox(height: 16),
                          Row(
                            children: [
                              Icon(
                                Ionicons.star,
                                color: Colors.yellow[700],
                                size: 18,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 4, right: 6),
                                child: Text(
                                  '$star',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Text(
                                '    ${Random().nextInt(1000)} reviews',
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}

class $ {}
