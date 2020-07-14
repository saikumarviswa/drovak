class StatusTypeDTO{
  int Id;
  String Name;
  String Description;
  bool IsActive;

  StatusTypeDTO({this.Id,
    this.Name,
    this.Description,
    this.IsActive
  });

  factory StatusTypeDTO.fromJson(Map<String, dynamic> json){
    return new StatusTypeDTO(
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