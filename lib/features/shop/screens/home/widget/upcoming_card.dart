import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class UpcomingCard extends StatelessWidget {
  const UpcomingCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: const Color.fromARGB(0, 0, 0, 0),
      child: Container(
        width: double.maxFinite,
        height: 150,
        padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 20),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor.withOpacity(0.8),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/doctor/doctor_2.jpg',
                width: 100,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Dr. D Shankar",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  "Eye Nose Throat Specialist",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Colors.white70,
                      ),
                ),
                const SizedBox(height: 18),
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 6,
                    horizontal: 8.0,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white10,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Row(
                    children: [
                      Icon(
                        Ionicons.calendar_outline,
                        size: 18,
                        color: Colors.white,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 6, right: 14),
                        child: Text(
                          "Today",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 8),
                        child: Icon(
                          Ionicons.time_outline,
                          size: 18,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "09:30AM",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
