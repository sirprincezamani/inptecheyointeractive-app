import 'package:doctor_booking_app/model/speciality.dart';

List<SpecialityModel> getSpeciality(){

  List<SpecialityModel> specialities = new List<SpecialityModel>();
  SpecialityModel specialityModel = new SpecialityModel();

  //1
  specialityModel.speciality =  "";


  specialityModel.imgAssetPath = "assets/INP.jpeg";


  //specialityModel.backgroundColor = Color(0xffF69383);

  specialities.add(specialityModel);

  specialityModel = new SpecialityModel();
//
//  //2
//  specialityModel.speciality = "";
//  specialityModel.imgAssetPath = "";
//
//  //specialityModel.backgroundColor = Color(0xffF69383);
//  specialities.add(specialityModel);
//
//  specialityModel = new SpecialityModel();
////  specialityModel.textColor = Colors.black87;
//
//  //3
////  specialityModel.noOfDoctors = 27;
//  specialityModel.speciality = "";
//  specialityModel.imgAssetPath = "";
//  //specialityModel.backgroundColor = Color(0xffEACBCB);
//  specialities.add(specialityModel);
//
//  specialityModel = new SpecialityModel();

  return specialities;
}