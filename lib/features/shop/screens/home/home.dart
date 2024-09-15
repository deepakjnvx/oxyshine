import 'package:oxyshine/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:oxyshine/common/widgets/texts/section_heading.dart';
import 'package:oxyshine/features/shop/models/custom_icon.dart';
import 'package:oxyshine/features/shop/screens/home/widget/home_appbar.dart';
import 'package:oxyshine/features/shop/screens/home/widget/home_categories.dart';
import 'package:oxyshine/utils/constants/sizes.dart';
import 'package:oxyshine/features/shop/screens/home/widget/nearby_doctors.dart';
import 'package:oxyshine/features/shop/screens/home/widget/upcoming_card.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              height: 470,
              child: Column(
                children: [
                  /// -- AppBAr --
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwItems),

                  // / -- Appointment Card --
                  const UpcomingCard(),
                  SizedBox(height: TSizes.spaceBtwItems),

                  /// -- Health Needs --
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        /// -- Heading --
                        TSectionHeading(
                          title: 'Health Needs',
                          showActionButton: true,
                          onPressed: () => bottomSheet(
                              context, healthNeeds, specialisedCared),
                          textColor: Colors.white,
                        ),
                        SizedBox(height: TSizes.spaceBtwItems / 3),

                        /// -- Categories --
                        THomeCategories()
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // -- Nearby Doctors --
            const NearbyDoctors(),
          ],
        ),
      ),
    );
  }

  Future<dynamic> bottomSheet(BuildContext context,
      List<CustomIcon> healthNeeds, List<CustomIcon> specialisedCared) {
    return showModalBottomSheet(
      context: context,
      showDragHandle: true,
      builder: (context) {
        return Container(
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          height: 350,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // HEALTH NEEDS SECTION
              Text(
                "Health Needs",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  healthNeeds.length,
                  (index) {
                    return SizedBox(
                      width: 60,
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {},
                            borderRadius: BorderRadius.circular(90),
                            child: Container(
                              width: 50,
                              height: 50,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Theme.of(context)
                                    .colorScheme
                                    .primaryContainer
                                    .withOpacity(0.4),
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset(
                                healthNeeds[index].icon,
                              ),
                            ),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            healthNeeds[index].title,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 30),
              // SPECIALISED CARE SECTION

              Text(
                "Specialised Care",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  specialisedCared.length,
                  (index) {
                    return Column(
                      children: [
                        InkWell(
                          onTap: () {},
                          borderRadius: BorderRadius.circular(90),
                          child: Container(
                            width: 50,
                            height: 50,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Theme.of(context)
                                  .colorScheme
                                  .primaryContainer
                                  .withOpacity(0.4),
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              specialisedCared[index].icon,
                            ),
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(specialisedCared[index].title)
                      ],
                    );
                  },
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
