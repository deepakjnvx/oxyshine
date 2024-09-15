// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:oxyshine/features/shop/screens/appointment/appointment.dart';

class DoctorModel {
  final String name;
  final String position;
  final int averageReview;
  final int totalReviews;
  final String profile;
  final String desc;
  DoctorModel({
    required this.name,
    required this.position,
    required this.averageReview,
    required this.totalReviews,
    required this.profile,
    required this.desc,
  });
}

final List<DoctorModel> nearbyDoctors = [
  DoctorModel(
    name: "Dr. D Shankar",
    position: "ENT Specialist",
    averageReview: 46,
    totalReviews: 10,
    profile: "assets/doctor/doctor_2.jpg",
    desc:
        "I am Dr. D Shankar, a dedicated ENT specialist with extensive experience in diagnosing and treating a wide range of conditions related to the ear, nose, throat, and related structures of the head and neck. My passion lies in improving the quality of life for my patients by providing comprehensive care that addresses both common and complex ENT disorders.",
  ),
  DoctorModel(
    name: "Sanjeev Sharma",
    position: "Physiotherapist",
    averageReview: 46,
    totalReviews: 10,
    profile: "assets/doctor/doctor_1.jpg",
    desc:
        "I’m Sanjeev Sharma, a committed physiotherapist with a strong focus on helping individuals recover and maintain their physical health. My expertise lies in diagnosing and treating various conditions related to movement, injury recovery, and chronic pain management.",
  ),
  DoctorModel(
    name: "Jitendra Sharma",
    position: "Optometrist",
    averageReview: 44,
    totalReviews: 10,
    profile: "assets/doctor/doctor_2.jpg",
    desc:
        "I am Jitendra Sharma, a dedicated optometrist focused on providing comprehensive eye care to help patients achieve and maintain optimal vision health. With a strong commitment to enhancing the quality of life for my patients, I specialize in the diagnosis, treatment, and management of various eye conditions, including refractive errors, ocular diseases, and visual impairments.",
  ),
  DoctorModel(
    name: "Radhe Sharma",
    position: "General Practitioner",
    averageReview: 43,
    totalReviews: 10,
    profile: "assets/doctor/doctor_2.jpg",
    desc:
        "I am Radhe Sharma, a compassionate and experienced general practitioner dedicated to providing comprehensive primary care for patients of all ages. With a broad range of expertise in preventive care, diagnosis, and treatment of acute and chronic conditions, I strive to be the first point of contact for all your healthcare needs.",
  ),
  DoctorModel(
    name: "Vandana Sharma",
    position: "Staff Nurse",
    averageReview: 44,
    totalReviews: 10,
    profile: "assets/doctor/doctor_3.jpg",
    desc:
        "I am Vandana Sharma, a dedicated and compassionate staff nurse committed to providing high-quality care to patients across various healthcare settings. With a strong foundation in clinical skills and patient management, I focus on delivering personalized care that meets the unique needs of each patient.",
  ),
  DoctorModel(
    name: "Renu Sharma",
    position: "Staff Nurse",
    averageReview: 44,
    totalReviews: 10,
    profile: "assets/doctor/doctor_3.jpg",
    desc:
        "I am Renu Sharma, a dedicated and compassionate staff nurse committed to providing high-quality care to patients across various healthcare settings. With a strong foundation in clinical skills and patient management, I focus on delivering personalized care that meets the unique needs of each patient.",
  ),
  DoctorModel(
    name: "Sachin Sharma",
    position: "Medicine Distributor",
    averageReview: 45,
    totalReviews: 10,
    profile: "assets/doctor/doctor_1.jpg",
    desc:
        "I am Sachin Sharma, a reliable and experienced medicine distributor dedicated to ensuring the safe and efficient supply of pharmaceutical products to healthcare providers, pharmacies, and other medical facilities. My focus is on delivering high-quality medicines, on time, and in compliance with all regulatory standards.",
  ),
];

List<dynamic> schedules = [
  {
    'doctor_name': "Sanjeev Sharma",
    'doctor_profile': "assets/doctor/doctor_1.jpg",
    'category': "Physiotherapist",
    'status': FilterStatus.upcoming,
    'date': "20-12-2023",
    'day': "Saturday",
    'time': "12:20 PM",
  },
  {
    'doctor_name': "Sanjeev Sharma",
    'doctor_profile': "assets/doctor/doctor_1.jpg",
    'category': "Physiotherapist",
    'status': FilterStatus.canceled,
    'date': "20-02-2024",
    'day': "Monday",
    'time': "12:20 PM",
  },
  {
    'doctor_name': "Dr. D. Shankar",
    'doctor_profile': "assets/doctor/doctor_2.jpg",
    'category': "Eye Nose Throat Specialist",
    'status': FilterStatus.canceled,
    'date': "02-02-2024",
    'day': "Monday",
    'time': "11:20 AM",
  },
  {
    'doctor_name': "Dr. D. Shankar",
    'doctor_profile': "assets/doctor/doctor_2.jpg",
    'category': "Eye Nose Throat Specialist",
    'status': FilterStatus.completed,
    'date': "20-01-2024",
    'day': "Saturday",
    'time': "12:20 PM",
  },
  {
    'doctor_name': "Sanjeev Sharma",
    'doctor_profile': "assets/doctor/doctor_1.jpg",
    'category': "Physiotherapist",
    'status': FilterStatus.upcoming,
    'date': "20-02-2024",
    'day': "Monday",
    'time': "11:00 AM",
  },
  {
    'doctor_name': "Sanjeev Sharma",
    'doctor_profile': "assets/doctor/doctor_1.jpg",
    'category': "Physiotherapist",
    'status': FilterStatus.canceled,
    'date': "10-01-2024",
    'day': "Tuesday",
    'time': "10:20 AM",
  },
  {
    'doctor_name': "Dr. D. Shankar",
    'doctor_profile': "assets/doctor/doctor_2.jpg",
    'category': "Eye Nose Throat Specialist",
    'status': FilterStatus.completed,
    'date': "20-01-2024",
    'day': "Wednesday",
    'time': "12:20 PM",
  },
  {
    'doctor_name': "Dr. D. Shankar",
    'doctor_profile': "assets/doctor/doctor_2.jpg",
    'category': "Eye Nose Throat Specialist",
    'status': FilterStatus.upcoming,
    'date': "20-02-2024",
    'day': "Monday",
    'time': "10:00 AM",
  },
];
