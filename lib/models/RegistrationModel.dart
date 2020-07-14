

class RegistrationModel{

  String Name;
  String MobileNo;
  String Gender;
  String EmailId;
  String City;
  bool IsActive;
  String Password;
  int RoleId;
  int CreatedBy;

  RegistrationModel({this.Name,
    this.MobileNo,
    this.Gender,
    this.EmailId,
    this.City,
    this.IsActive,
    this.Password,
    this.RoleId,
    this.CreatedBy
  });

  factory RegistrationModel.fromJson(Map<String , dynamic> json){
    return RegistrationModel(
      Name: json["Name"],
      MobileNo: json["MobileNo"],
      Gender: json["Gender"],
      EmailId: json["EmailId"],
      City: json["City"],
      IsActive: json["IsActive"],
      Password: json["Password"],
      RoleId: json["RoleId"],
      CreatedBy: json["CreatedBy"],

    );
  }

  Map<String, dynamic> toJson() =>{

    'Name' : Name,
    'MobileNo' : MobileNo,
    'Gender' : Gender,
    'EmailId' : EmailId,
    'City' : City,
    'IsActive' : IsActive,
    'Password' : Password,
    'RoleId' : RoleId,
    'CreatedBy' : CreatedBy,


  };

}