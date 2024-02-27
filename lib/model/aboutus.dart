import 'package:ver_mat/model/aboutus.dart';

class About {
  String details;
  String address;
  String number;

  About({
    required this.details,
    required this.address,
    required this.number,
  });
}

List<About> about = [
  About(
      details:
          "vijayawada multispeciality hospital ( a unit of durgabhavani hospitals pvt. ltd)",
      address:
          "29-8-3 chilukudurgaiah street, Nakkala Rd, Suryaraopeta, Vijayawada, Andhra Pradesh",
      number: "0866 666 0133"),
  About(
      details: "Vidal Health Insurance TPA",
      address:
          "No. 50-94-19/1 N.R. Bhavan, Ground Floor Shantipuram , Vishakapatnam Andhra pradesh",
      number: "0891-2723959/2754316"),
];
