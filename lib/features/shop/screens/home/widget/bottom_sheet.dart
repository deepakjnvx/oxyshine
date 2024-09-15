import 'package:oxyshine/features/shop/models/custom_icon.dart';
import 'package:flutter/material.dart';

class BottomSheet extends StatelessWidget {
  const BottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
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
