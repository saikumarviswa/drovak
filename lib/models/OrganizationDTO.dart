class OrganizationDTO{
  int Id;
  String BusinessName;
  String Address;
  String MobileNo;
  bool IsActive;
  int CreatedBy;
  DateTime CreatedOn;
  int UpdatedBy;
  DateTime UpdatedOn;

  OrganizationDTO({this.Id,
    this.BusinessName,
    this.Address,
    this.MobileNo,
    this.IsActive,
    this.CreatedBy,
    this.CreatedOn,
    this.UpdatedBy,
    this.UpdatedOn
  });

  factory OrganizationDTO.fromJson(Map<String ,dynamic> json){
    return OrganizationDTO(
      Id: json["Id"],
      BusinessName: json["BusinessName"],
      Address: json["Address"],
      MobileNo: json["MobileNo"],
      IsActive: json["IsActive"],
      CreatedBy: json["CreatedBy"],
      CreatedOn: json["CreatedOn"],
      UpdatedBy: json["UpdatedBy"],
      UpdatedOn: json["UpdatedOn"],
    );
  }

  Map<String,dynamic> toJson()=>{
    'Id' : Id,
    'BusinessName' : BusinessName,
    'Address' : Address,
    'MobileNo' : MobileNo,
    'IsActive' : IsActive,
    'CreatedBy' : CreatedBy,
    'CreatedOn' : CreatedOn,
    'UpdatedBy' : UpdatedBy,
    'UpdatedOn' : UpdatedOn,

  };
}