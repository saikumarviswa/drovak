class LogInTypeDTO{
  int Id;
  String Name;
  String Description;
  bool IsActive;

  LogInTypeDTO({this.Id,
    this.Name,
    this.Description,
    this.IsActive
  });

  factory LogInTypeDTO.fromJson(Map<String, dynamic> json){
    return new LogInTypeDTO(
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