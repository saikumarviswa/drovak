import 'OrganizationDTO.dart';
import 'RegistrationDTO.dart';
import 'VehicleDTO.dart';

class OrgVehicleDTO{

  int Id;
  int SuperId;
  int RegId;
  int VehicleId;
  bool IsActive;
  int CreatedBy;
  DateTime CreatedOn;
  int UpdatedBy;
  DateTime UpdatedOn;
  OrganizationDTO Organization;
  RegistrationDTO Registration;
  VehicleDTO Vehicle;

  OrgVehicleDTO({this.Id,
    this.SuperId,
    this.RegId,
    this.VehicleId,
    this.IsActive,
    this.CreatedBy,
    this.CreatedOn,
    this.UpdatedBy,
    this.UpdatedOn,
    this.Organization,
    this.Registration,
    this.Vehicle
  });

  factory OrgVehicleDTO.fromJson(Map<String, dynamic> json){

    return OrgVehicleDTO(
      Id: json["Id"],
      SuperId: json["SuperId"],
      RegId: json["RegId"],
      VehicleId: json["VehicleId"],
      IsActive: json["IsActive"],
      CreatedBy: json["CreatedBy"],
      CreatedOn: json["CreatedOn"],
      UpdatedBy: json["UpdatedBy"],
      UpdatedOn: json["UpdatedOn"],
      Organization: json["Organization"],
      Registration: json["Registration"],
      Vehicle: json["Vehicle"],
    );
  }

  Map<String, dynamic> toJSon() =>{
    'Id' : Id,
    'SuperId' : SuperId,
    'RegId' : RegId,
    'VehicleId' : VehicleId,
    'IsActive' : IsActive,
    'CreatedBy' : CreatedBy,
    'CreatedOn' : CreatedOn,
    'UpdatedBy' : UpdatedBy,
    'UpdatedOn' : UpdatedOn,
    'Organization' : Organization,
    'Registration' : Registration,
    'Vehicle' : Vehicle,

  };

}