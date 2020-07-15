import 'package:fluttertraffic/common/common.util.dart';

class OrganizationDTO {
  int id;
  String businessName;
  String address;
  String mobileNo;
  bool isActive;
  int createdBy;
  DateTime createdOn;
  int updatedBy;
  DateTime updatedOn;

  OrganizationDTO(
      {this.id,
      this.businessName,
      this.address,
      this.mobileNo,
      this.isActive,
      this.createdBy,
      this.createdOn,
      this.updatedBy,
      this.updatedOn});

  factory OrganizationDTO.fromJson(Map<String, dynamic> json) {
    return OrganizationDTO(
      id: json["Id"],
      businessName: json["BusinessName"],
      address: json["Address"],
      mobileNo: json["MobileNo"],
      isActive: json["IsActive"],
      createdBy: json["CreatedBy"],
      createdOn: json["CreatedOn"],
      updatedBy: json["UpdatedBy"],
      updatedOn: json["UpdatedOn"],
    );
  }

  Map<String, dynamic> toJson() => {
        'Id': id,
        'BusinessName': businessName,
        'Address': address,
        'MobileNo': mobileNo,
        'IsActive': isActive,
        'CreatedBy': createdBy,
        'CreatedOn': createdOn,
        'UpdatedBy': updatedBy,
        'UpdatedOn': updatedOn,
      };
  static List<OrganizationDTO> parseToList(List<dynamic> dynamicList) {
    if (dynamicList == null) return null;
    List<Map<String, dynamic>> jsonArray =
        CommonUtil.getListOfMaps(dynamicList);
    List<OrganizationDTO> ods = new List<OrganizationDTO>();
    for (Map<String, dynamic> odjson in jsonArray) {
      ods.add(new OrganizationDTO.fromJson(odjson));
    }
    return ods;
  }

  static List<Map<String, dynamic>> parseToMapArray(
      List<OrganizationDTO> odts) {
    List<Map<String, dynamic>> odtarry = new List<Map<String, dynamic>>();
    if (odts != null && odts.length > 0) {
      odts.forEach((odt) => {odtarry.add(odt.toJson())});
    }
    return odtarry;
  }
}
