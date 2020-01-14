/// A calendar on the user's device
class Calendar {
  /// The unique identifier for this calendar
  String id;

  /// The name of this calendar
  String name;

  /// If the calendar is read-only
  bool isReadOnly;

  Calendar({this.id, this.name, this.isReadOnly});

  Calendar.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    isReadOnly = json['isReadOnly'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['isReadOnly'] = this.isReadOnly;
    return data;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Calendar &&
              runtimeType == other.runtimeType &&
              id == other.id;

  @override
  int get hashCode => id.hashCode;
}
