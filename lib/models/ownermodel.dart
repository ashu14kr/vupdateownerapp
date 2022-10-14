import 'dart:convert';

List<TermsModel> termsModelFromJson(String str) => List<TermsModel>.from(json.decode(str).map((x) => TermsModel.fromJson(x)));

String termsModelToJson(List<TermsModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TermsModel {
    TermsModel({
        required this.fullname,
        required this.companyname,
        required this.designation,
        required this.address,
        required this.state,
        required this.country,
        required this.mobileno,
        required this.email,
        required this.noofemployees,
        required this.username,
        required this.password,
        required this.profileimg,
        required this.gstcertification,
        required this.pancard,
        required this.aadhaarcard,
        required this.status,
        required this.expirydate,
        required this.id,
        required this.v,
    });

    String fullname;
    String companyname;
    String designation;
    String address;
    String state;
    String country;
    String mobileno;
    String email;
    String noofemployees;
    String username;
    String password;
    String profileimg;
    String gstcertification;
    String pancard;
    String aadhaarcard;
    String status;
    String expirydate;
    String id;
    int v;

    factory TermsModel.fromJson(Map<String, dynamic> json) => TermsModel(
        fullname: json["fullname"],
        companyname: json["companyname"],
        designation: json["designation"],
        address: json["address"],
        state: json["state"],
        country: json["country"],
        mobileno: json["mobileno"],
        email: json["email"],
        noofemployees: json["noofemployees"],
        username: json["username"],
        password: json["password"],
        profileimg: json["profileimg"],
        gstcertification: json["gstcertification"],
        pancard: json["pancard"],
        aadhaarcard: json["aadhaarcard"],
        status: json["status"],
        expirydate: json["expirydate"],
        id: json["_id"],
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
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
        "profileimg": profileimg,
        "gstcertification": gstcertification,
        "pancard": pancard,
        "aadhaarcard": aadhaarcard,
        "status": status,
        "expirydate": expirydate,
        "_id": id,
        "__v": v,
    };
}
