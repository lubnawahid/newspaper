class News{
  int? totalResults;
  int? id;
  String? status;

  News({this.totalResults, this.id, this.status});

  News.fromJson(Map<String, dynamic> json) {
    totalResults = json['totalResults'];
    id = json['id'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['totalResults'] = this.totalResults;
    data['id'] = this.id;
    data['status'] = this.status;
    return data;
  }
}