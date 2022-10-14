import 'dart:io';

import 'package:dio/dio.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:vupdate/constantlinks.dart';

class OwnerAuthController extends GetxController {
  Future authenticateOwner(
      {required String fullname,
      required String companyname,
      required String designation,
      required String address,
      required String state,
      required String country,
      required String mobileno,
      required String email,
      required String noofemployees,
      required String username,
      required String password,
      required String status,
      required String expirydate,
      required File img,
      required File gst,
      required File pan,
      required File adhr}) async {
    var dio = Dio();
    try {
      Response response = await dio.post(testlink + "userdata/postUserDetails/",
          data: FormData.fromMap({
            "fullname": fullname,
            "companyname": companyname,
            "designation": designation,
            "address": address,
            "state": state,
            "country": country,
            "mobileno": mobileno,
            "email": email,
            "noofemployees": noofemployees,
            "username": username,
            "password": password,
            "profileimg": await MultipartFile.fromFile(img.path),
            "gstcertification": await MultipartFile.fromFile(gst.path),
            "pancard": await MultipartFile.fromFile(pan.path),
            "aadhaarcard": await MultipartFile.fromFile(adhr.path),
            "status": status,
            "expirydate": expirydate
          }));
          return response;
    } catch (e) {
      print(e);
    }
  }
}
