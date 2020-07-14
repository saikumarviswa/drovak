class VehicleMakeTypeDTO{
  int Id;
  String Name;
  int NoOfWheels;
  String Description;
  bool IsActive;

  VehicleMakeTypeDTO({this.Id,
    this.Name,
    this.NoOfWheels,
    this.Description,
    this.IsActive
  });

  factory VehicleMakeTypeDTO.fromJson(Map<String , dynamic> json){
    return VehicleMakeTypeDTO(
        Id: json["Id"],
        Name: json["Name"],
        NoOfWheels: json["NoOfWheels"],
        Description: json["Description"],
        IsActive: json["IsActive"]

    );
  }

  Map<String,dynamic> toJson() => {
    'Id' : Id,
    'Name' : Name,
    'NoOfWheels' : NoOfWheels,
    'Description' : Description,
    'IsActive' : IsActive,

  };
}