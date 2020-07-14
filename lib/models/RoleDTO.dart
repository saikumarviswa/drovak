class RoleDTO{
  int Id;
  String Name;
  String Description;
  bool IsActive;

  RoleDTO({this.Id,
    this.Name,
    this.Description,
    this.IsActive
  });

  factory RoleDTO.fromJson(Map<String, dynamic> json){
    return new RoleDTO(
        Id: json["Id"],
        Name: json["Name"],
        Description: json["Description"],
        IsActive: json["IsActive"]

    );
  }

  Map<String,dynamic> toJson() =>
      {
        'Id': Id,
        'Name': Name,
        'Description': Description,
        'IsActive': IsActive
      };
}