import 'dart:convert';

List<TransactionModel> transactionModelFromJson(String str) => List<TransactionModel>.from(json.decode(str).map((x) => TransactionModel.fromJson(x)));

String transactionModelToJson(List<TransactionModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TransactionModel {
    TransactionModel({
        required this.id,
        required this.userid,
        required this.plan,
        required this.duration,
        required this.price,
        required this.startfrom,
        required this.expiry,
        required this.v,
    });

    String id;
    String userid;
    String plan;
    String duration;
    int price;
    String startfrom;
    String expiry;
    int v;

    factory TransactionModel.fromJson(Map<String, dynamic> json) => TransactionModel(
        id: json["_id"],
        userid: json["userid"],
        plan: json["plan"],
        duration: json["duration"],
        price: json["price"],
        startfrom: json["startfrom"],
        expiry: json["expiry"],
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "userid": userid,
        "plan": plan,
        "duration": duration,
        "price": price,
        "startfrom": startfrom,
        "expiry": expiry,
        "__v": v,
    };
}
