import 'RoleDTO.dart';

class UserDTO{
  int Id;
  int RoleId;
  String Name;
  String Password;
  String MobileNo;
  String EmailId;
  bool IsActive;
  int CreatedBy;
  DateTime CreatedOn;
  int UpdatedBy;
  DateTime UpdatedOn;
  RoleDTO Role;

  UserDTO({this.Id,
    this.RoleId,
    this.Name,
    this.Password,
    this.MobileNo,
    this.EmailId,
    this.IsActive,
    this.CreatedBy,
    this.CreatedOn,
    this.UpdatedBy,
    this.UpdatedOn,
    this.Role
  });

  factory UserDTO.fromJson(Map<String ,dynamic> json){

    return UserDTO(
      Id: json["Id"],
      RoleId: json["RoleId"],
      Name: json["Name"],
      Password: json["Password"],
      MobileNo: json["MobileNo"],
      EmailId: json["EmailId"],
      IsActive: json["IsActive"],
      CreatedBy: json["CreatedBy"],
      CreatedOn: json["CreatedOn"],
      UpdatedBy: json["UpdatedBy"],
      UpdatedOn: json["UpdatedOn"],
      Role: json["Role"],
    );
  }

  Map<String, dynamic> toJson() =>{
    'Id' : Id,
    'RoleId' : RoleId,
    'Name' : Name,
    'Password' : Password,
    'MobileNo' : MobileNo,
    'EmailId' : EmailId,
    'IsActive' : IsActive,
    'CreatedBy' : CreatedBy,
    'CreatedOn' : CreatedOn,
    'UpdatedBy' : UpdatedBy,
    'UpdatedOn' : UpdatedOn,
    'Role' : Role,
  };
}