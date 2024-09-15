import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class AppointmentCard extends StatelessWidget {
  const AppointmentCard(
      {Key? key,
      required this.profile,
      required this.name,
      required this.category,
      required this.date,
      required this.day,
      required this.time})
      : super(key: key);

  final String profile;
  final String name;
  final String category;

  final String date;
  final String day;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer.withOpacity(0.4),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  profile,
                  width: 75,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 14),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      category,
                      style: Theme.of(context).textTheme.bodyLarge!,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 18),
          Container(
            // width: double.infinity,
            margin: EdgeInsets.only(
              bottom: 15,
            ),
            padding: const EdgeInsets.symmetric(
              vertical: 6,
              horizontal: 8.0,
            ),
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 20,
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 20),
                      child: Icon(
                        Ionicons.calendar_outline,
                        size: 18,
                        color: Colors.black87,
                      ),
                    ),
                    Text(
                      '$day,  $date',
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 20),
                      child: Icon(
                        Ionicons.time_outline,
                        size: 18,
                      ),
                    ),
                    Text(
                      time,
                    )
                  ],
                ),
              ],
            ),
          ),
          Row(
            children: [
              const SizedBox(width: 20),
              SizedBox(
                width: 120,
                child: OutlinedButton(
                  style: ButtonStyle(),
                  onPressed: () {},
                  child: Text("Cancel"),
                ),
              ),
              const Spacer(),
              SizedBox(
                width: 120,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Reschedule"),
                ),
              ),
              const SizedBox(width: 20),
            ],
          )
        ],
      ),
    );
  }
}
