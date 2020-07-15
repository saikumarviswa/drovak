import 'package:fluttertraffic/common/common.util.dart';

import '../VehiclesData/Vehicle.dart';
import 'OrganizationDTO.dart';
import 'OrganizationDTO.dart';
import 'RegistrationDTO.dart';
import 'RegistrationDTO.dart';
import 'VehicleDTO.dart';
import 'VehicleDTO.dart';

class OrgVehicleDTO{

  int id;
  int superId;
  int regId;
  int vehicleId;
  bool isActive;
  int createdBy;
  DateTime createdOn;
  int updatedBy;
  DateTime updatedOn;

  OrganizationDTO organization;
  RegistrationDTO registration;
  VehicleDTO vehicle;

  OrgVehicleDTO({this.id,
    this.superId,
    this.regId,
    this.vehicleId,
    this.isActive,
    this.createdBy,
    this.createdOn,
    this.updatedBy,
    this.updatedOn,
    this.organization,
    this.registration,
    this.vehicle
  });

  factory OrgVehicleDTO.fromJson(Map<String, dynamic> json){

    return OrgVehicleDTO(
      id: json["Id"],
      superId: json["SuperId"],
      regId: json["RegId"],
      vehicleId: json["VehicleId"],
      isActive: json["IsActive"],
      createdBy: json["CreatedBy"],
      createdOn: json["CreatedOn"],
      updatedBy: json["UpdatedBy"],
      updatedOn: json["UpdatedOn"],

      organization: json["Organization"] != null ? OrganizationDTO.fromJson(json["Organization"]):null,
      registration: json["Registration"] != null ? RegistrationDTO.fromJson(json["Registration"]):null,
      vehicle: json["Vehicle"] != null ? VehicleDTO.fromJson(json["Registration"]):null,
    );
  }

  Map<String, dynamic> toJSon() =>{
    'Id' : id,
    'SuperId' : superId,
    'RegId' : regId,
    'VehicleId' : vehicleId,
    'IsActive' : isActive,
    'CreatedBy' : createdBy,
    'CreatedOn' : createdOn,
    'UpdatedBy' : updatedBy,
    'UpdatedOn' : updatedOn,
    'Organization' : organization!=null?organization.toJson():null,
    'Registration' : registration!=null?registration.toJson():null,
    'Vehicle' : vehicle!=null?vehicle.toJson():null
  };

  static List<OrgVehicleDTO> parseToList(List<dynamic> dynamicList) {
    if (dynamicList == null) return null;
    List<Map<String, dynamic>> jsonArray =
        CommonUtil.getListOfMaps(dynamicList);
    List<OrgVehicleDTO> ods = new List<OrgVehicleDTO>();
    for (Map<String, dynamic> odjson in jsonArray) {
      ods.add(new OrgVehicleDTO.fromJson(odjson));
    }
    return ods;
  }

  static List<Map<String, dynamic>> parseToMapArray(
      List<OrgVehicleDTO> odts) {
    List<Map<String, dynamic>> odtarry = new List<Map<String, dynamic>>();
    if (odts != null && odts.length > 0) {
      odts.forEach((odt) => {odtarry.add(odt.toJSon())});
    }
    return odtarry;
  }

}