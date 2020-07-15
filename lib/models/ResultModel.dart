class ResultModel{
  bool status;
  String message;
  String exceptionMessage;

  ResultModel({this.status, this.message, this.exceptionMessage});

   factory ResultModel.fromJson(Map<String, dynamic> json) {
    return new ResultModel(
        status: json["Status"],
        message: json["Message"],
        exceptionMessage: json["ExceptionMessage"]);
  }

  Map<String, dynamic> toJson() => {
        'Status': status,
        'Message': message,
        'ExceptionMessage': exceptionMessage,
      };
}