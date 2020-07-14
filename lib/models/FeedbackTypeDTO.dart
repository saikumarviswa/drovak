class FeedbackTypeDTO{
  int Id;
  String Name;
  String Description;
  bool IsActive;

  FeedbackTypeDTO({this.Id,
    this.Name,
    this.Description,
    this.IsActive
  });

  factory FeedbackTypeDTO.fromJson(Map<String, dynamic> json){
    return new FeedbackTypeDTO(
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