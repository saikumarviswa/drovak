class RegistrationDTO{

  int Id;
  String Name;
  String MobileNo;
  String Gender;
  String EmailId;
  String City;
  DateTime RegisteredOn;
  bool IsActive;
  int CreatedBy;
  DateTime CreatedOn;
  int UpdatedBy;
  DateTime UpdatedOn;

  RegistrationDTO({this.Id,
    this.Name,
    this.MobileNo,
    this.Gender,
    this.EmailId,
    this.City,
    this.RegisteredOn,
    this.IsActive,
    this.CreatedBy,
    this.CreatedOn,
    this.UpdatedBy,
    this.UpdatedOn
  });

   factory RegistrationDTO.fromJson(Map<String, dynamic> json){
    return RegistrationDTO(
      Id: json["Id"],
      Name: json["Name"],
      MobileNo: json["MobileNo"],
      Gender: json["Gender"],
      EmailId: json["EmailId"],
      City: json["City"],
      RegisteredOn: json["RegisteredOn"],
      IsActive: json["IsActive"],
      CreatedBy: json["CreatedBy"],
      CreatedOn: json["CreatedOn"],
      UpdatedBy: json["UpdatedBy"],
      UpdatedOn: json["UpdatedOn"],


    );
  }

  Map<String, dynamic> toJson() => {
    'Id' : Id,
    'Name' : Name,
    'MobileNo' : MobileNo,
    'Gender' : Gender,
    'EmailId' : EmailId,
    'City' : City,
    'RegisteredOn' : RegisteredOn,
    'IsActive' : IsActive,
    'CreatedBy' : CreatedBy,
    'CreatedOn' : CreatedOn,
    'UpdatedBy' : UpdatedBy,
    'UpdatedOn' : UpdatedOn,

  };

}