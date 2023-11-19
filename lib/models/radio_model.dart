class RadioModel {
  List<RadioData>? radios;

  RadioModel({this.radios});

  RadioModel.fromJson(Map<String, dynamic> json) {
    if (json['radios'] != null) {
      radios = <RadioData>[];
      json['radios'].forEach((v) {
        radios!.add(new RadioData.fromJson(v));
      });
    }
  }
}

class RadioData {
  int? id;
  String? name;
  String? url;
  String? recentDate;

  RadioData({this.id, this.name, this.url, this.recentDate});

  RadioData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    url = json['url'];
    recentDate = json['recent_date'];
  }
}
