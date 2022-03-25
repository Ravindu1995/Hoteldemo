class Hotel {
  int? status;
  List<Data>? data;

  Hotel({this.status, this.data});

  Hotel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  
}

class Data {
  int? id;
  String? title;
  String? description;
  String? address;
  String? postcode;
  String? phoneNumber;
  String? latitude;
  String? longitude;
  Image? image;

  Data(
      {this.id,
      this.title,
      this.description,
      this.address,
      this.postcode,
      this.phoneNumber,
      this.latitude,
      this.longitude,
      this.image});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    address = json['address'];
    postcode = json['postcode'];
    phoneNumber = json['phoneNumber'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    image = json['image'] != null ? new Image.fromJson(json['image']) : null;
  }

  
}

class Image {
  String? small;
  String? medium;
  String? large;

  Image({this.small, this.medium, this.large});

  Image.fromJson(Map<String, dynamic> json) {
    small = json['small'];
    medium = json['medium'];
    large = json['large'];
  }

  
}
