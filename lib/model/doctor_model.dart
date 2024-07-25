class DoctorModel{
  String name;
  String specialist;
  String experience;
  int patientnumber;
  double rating;
  String abtdoc;
  String imgURL;
  int payment;
  List appointmenttime;
  List appointmentlist;

  DoctorModel({
    required this.rating,
    required this.name,
    required this.experience,
    required this.patientnumber,
    required this.abtdoc,
    required this.appointmentlist,
    required this.specialist,
    required this.imgURL,
    required this.payment,
    required this.appointmenttime,


  });

}