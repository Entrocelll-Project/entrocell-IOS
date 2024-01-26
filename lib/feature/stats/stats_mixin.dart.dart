mixin StatsMixin {
  var urlFetch = Uri.http('34.125.2.150:8080', '/balance', {'msisdn': '5339635384'});
  int? maxVolumeSms;
  int? remainingSms;
  double? smsPercent;
  double? maxVolumeVoice;
  double? remainingVoice;
  double? voicePercent;
  double? maxVolumeData;
  double? remainingData;
  double? dataPercent;
}
