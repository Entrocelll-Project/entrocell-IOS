import 'package:equatable/equatable.dart';

class PackageModel with EquatableMixin {
  final String? msisdn;
  final String? packageName;
  final String? endDate;
  final int? remainingData;
  final int? maxVolumeData;
  final int? remainingVoice;
  final int? maxVolumeVoice;
  final int? remainingSms;
  final int? maxVolumeSms;

  PackageModel({
    this.msisdn,
    this.packageName,
    this.endDate,
    this.remainingData,
    this.maxVolumeData,
    this.remainingVoice,
    this.maxVolumeVoice,
    this.remainingSms,
    this.maxVolumeSms,
  });

  @override
  List<Object?> get props => [
        msisdn,
        packageName,
        endDate,
        remainingData,
        maxVolumeData,
        remainingVoice,
        maxVolumeVoice,
        remainingSms,
        maxVolumeSms
      ];

  PackageModel copyWith({
    String? msisdn,
    String? packageName,
    String? endDate,
    int? remainingData,
    int? maxVolumeData,
    int? remainingVoice,
    int? maxVolumeVoice,
    int? remainingSms,
    int? maxVolumeSms,
  }) {
    return PackageModel(
      msisdn: msisdn ?? this.msisdn,
      packageName: packageName ?? this.packageName,
      endDate: endDate ?? this.endDate,
      remainingData: remainingData ?? this.remainingData,
      maxVolumeData: maxVolumeData ?? this.maxVolumeData,
      remainingVoice: remainingVoice ?? this.remainingVoice,
      maxVolumeVoice: maxVolumeVoice ?? this.maxVolumeVoice,
      remainingSms: remainingSms ?? this.remainingSms,
      maxVolumeSms: maxVolumeSms ?? this.maxVolumeSms,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'msisdn': msisdn,
      'packageName': packageName,
      'endDate': endDate,
      'remainingData': remainingData,
      'maxVolumeData': maxVolumeData,
      'remainingVoice': remainingVoice,
      'maxVolumeVoice': maxVolumeVoice,
      'remainingSms': remainingSms,
      'maxVolumeSms': maxVolumeSms,
    };
  }

  factory PackageModel.fromJson(Map<String, dynamic> json) {
    return PackageModel(
      msisdn: json['msisdn'] as String?,
      packageName: json['packageName'] as String?,
      endDate: json['endDate'] as String?,
      remainingData: json['remainingData'] as int?,
      maxVolumeData: json['maxVolumeData'] as int?,
      remainingVoice: json['remainingVoice'] as int?,
      maxVolumeVoice: json['maxVolumeVoice'] as int?,
      remainingSms: json['remainingSms'] as int?,
      maxVolumeSms: json['maxVolumeSms'] as int?,
    );
  }
}
