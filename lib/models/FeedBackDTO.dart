import 'package:flutter/foundation.dart';

import 'FeedbackTypeDTO.dart';
import 'LogInTypeDTO.dart';
import 'StatusTypeDTO.dart';
import 'VehicleDTO.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class FeedBackDTO{

  int Id;
  int FeedBackTypeId;
  int RegId;
  int VehicleId;
  int LoginTypeId;
  DateTime DateOfTransaction;
  String Comments;
  bool IsPositive;
  String RegNumber;
  String Lon;
  String Lat;
  String Location;
  int Status;
  bool IsActive;
  int CreatedBy;
  DateTime CreatedOn;
  int UpdatedBy;
  DateTime UpdatedOn;
  FeedbackTypeDTO FeedbackType;
  LogInTypeDTO LogInType;
  StatusTypeDTO StatusType;
  VehicleDTO Vehicle;

  FeedBackDTO({this.Id,
    this.FeedBackTypeId,
    this.RegId,
    this.VehicleId,
    this.LoginTypeId,
    this.DateOfTransaction,
    this.Comments,
    this.IsPositive,
    this.RegNumber,
    this.Lon,
    this.Lat,
    this.Location,
    this.Status,
    this.IsActive,
    this.CreatedBy,
    this.CreatedOn,
    this.UpdatedBy,
    this.UpdatedOn,
    this.FeedbackType,
    this.LogInType,
    this.StatusType,
    this.Vehicle
  });

  factory FeedBackDTO.fromJson(Map<String, dynamic> json){

    return new FeedBackDTO(
      Id: json['Id'],
      FeedBackTypeId:json['FeedBackTypeId'],
      RegId:json['RegId'],
      VehicleId:json['VehicleId'],
      LoginTypeId:json['LoginTypeId'],
      DateOfTransaction:json['DateOfTransaction'],
      Comments:json['Comments'],
      IsPositive:json['IsPositive'],
      RegNumber:json['RegNumber'],
      Lon:json['Lon'],
      Lat:json['Lat'],
      Location:json['Location'],
      Status:json['Status'],
      IsActive:json['IsActive'],
      CreatedBy:json['CreatedBy'],
      CreatedOn:json['CreatedOn'],
      UpdatedBy:json['UpdatedBy'],
      UpdatedOn:json['UpdatedOn'],
      FeedbackType:json['FeedbackType'],
      LogInType:json['LogInType'],
      StatusType:json['StatusType'],
      Vehicle:json['Vehicle'],


    );
  }

  Map<String,dynamic> toJson() => {
    'Id' : Id,
    'FeedBackTypeId' : FeedBackTypeId,
    'RegId' : RegId,
    'VehicleId' : VehicleId,
    'LoginTypeId' : LoginTypeId,
    'DateOfTransaction' : DateOfTransaction,
    'Comments' : Comments,
    'IsPositive' : IsPositive,
    'RegNumber' : RegNumber,
    'Lon' : Lon,
    'Lat' : Lat,
    'Location' : Location,
    'Status' : Status,
    'IsActive' : IsActive,
    'CreatedBy' : CreatedBy,
    'CreatedOn' : CreatedOn,
    'UpdatedBy' : UpdatedBy,
    'UpdatedOn' : UpdatedOn,
    'FeedbackType' : FeedbackType,
    'LogInType' : LogInType,
    'StatusType' : StatusType,
    'Vehicle' : Vehicle,


  };


}