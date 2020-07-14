import 'RegistrationDTO.dart';
import 'VehicleMakeTypeDTO.dart';
import 'VehicleTypeDTO.dart';

class VehicleDTO{

  int Id;
  int VehicleTypeId;
  int RegId;
  String RegNumber;
  String Model;
  int VehicleMakeId;
  String RCNumber;
  String ODOMeter;
  String State;
  String Year;
  bool IsActive;
  int CreatedBy;
  DateTime CreatedOn;
  int UpdatedBy;
  DateTime UpdatedOn;
  RegistrationDTO Registration;
  VehicleMakeTypeDTO VehicleMakeType;
  VehicleTypeDTO VehicleType;

  VehicleDTO({this.Id,
    this.VehicleMakeId,
    this.RegId,
    this.RegNumber,
    this.Model,
    this.VehicleTypeId,
    this.RCNumber,
    this.ODOMeter,
    this.State,
    this.Year,
    this.IsActive,
    this.CreatedBy,
    this.CreatedOn,
    this.UpdatedBy,
    this.UpdatedOn,
    this.Registration,
    this.VehicleMakeType,
    this.VehicleType

  });

  factory VehicleDTO.fromJson(Map<String, dynamic> json){
    return VehicleDTO(
      Id: json["Id"],
      VehicleMakeId: json["VehicleMakeId"],
      RegId: json["RegId"],
      RegNumber: json["RegNumber"],
      Model: json["Model"],
      VehicleTypeId: json["VehicleTypeId"],
      RCNumber: json["RCNumber"],
      ODOMeter: json["ODOMeter"],
      State: json["State"],
      Year: json["Year"],
      IsActive: json["IsActive"],
      CreatedBy: json["CreatedBy"],
      CreatedOn: json["CreatedOn"],
      UpdatedBy: json["UpdatedBy"],
      UpdatedOn: json["UpdatedOn"],
      Registration: json["RegistrationDTO"],
      VehicleMakeType: json["VehicleMakeType"],
      VehicleType: json["VehicleType"],
    );
  }

  Map<String,dynamic> toJson() => {
    'Id' : Id,
    'VehicleMakeId' : VehicleMakeId,
    'RegId' : RegId,
    'RegNumber' : RegNumber,
    'Model' : Model,
    'VehicleTypeId' : VehicleTypeId,
    'RCNumber' : RCNumber,
    'ODOMeter' : ODOMeter,
    'State' : State,
    'Year' : Year,
    'IsActive' : IsActive,
    'CreatedBy' : CreatedBy,
    'CreatedOn' : CreatedOn,
    'UpdatedBy' : UpdatedBy,
    'UpdatedOn' : UpdatedOn,
    'RegistrationDTO' : RegistrationDTO,
    'VehicleMakeType' : VehicleMakeType,
    'VehicleType' : VehicleType,
  };
}