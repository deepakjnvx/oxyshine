class CustomIcon {
  final String title;
  final String icon;

  CustomIcon({
    required this.title,
    required this.icon,
  });
}

List<CustomIcon> customIcons = [
  CustomIcon(title: "Appointment", icon: 'assets/doctor/appointment.png'),
  CustomIcon(title: "Physio", icon: 'assets/doctor/phy.png'),
  CustomIcon(title: "ENT", icon: 'assets/doctor/ent.png'),
  CustomIcon(title: "Optometry", icon: 'assets/doctor/opto.png'),
  CustomIcon(title: "Medicines", icon: 'assets/doctor/drug.png'),
  CustomIcon(title: "Covid", icon: 'assets/doctor/virus.png'),
  CustomIcon(title: "More", icon: 'assets/doctor/more.png'),
];

List<CustomIcon> healthNeeds = [
  CustomIcon(title: "Appointment", icon: 'assets/doctor/appointment.png'),
  CustomIcon(title: "Physio", icon: 'assets/doctor/phy.png'),
  CustomIcon(title: "ENT", icon: 'assets/doctor/ent.png'),
  CustomIcon(title: "Optometry", icon: 'assets/doctor/opto.png'),
  // CustomIcon(title: "Pharmacy", icon: 'assets/drug.png'),
];

List<CustomIcon> specialisedCared = [
  CustomIcon(title: "Covid", icon: 'assets/doctor/virus.png'),
  CustomIcon(title: "Diabetes", icon: 'assets/doctor/blood.png'),
  // CustomIcon(title: "Health Care", icon: 'assets/health_care.png'),
  CustomIcon(title: "Hospital", icon: 'assets/doctor/hospital.png'),
  CustomIcon(title: "Insurance", icon: 'assets/doctor/insurance.png'),
];
