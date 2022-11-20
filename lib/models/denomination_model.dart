class Denomination {
  int? id;
  String? date;
  String? time;
  String? payeename;
  String? twothousand;
  String? fivehundred;
  String? twohundred;
  String? hundred;
  String? fifty;
  String? twenty;
  String? ten;
  String? five;
  String? two;
  String? one;
  int? totamt; //holding total amount
  int? totnotes; //holding total notes
  int? totcoins; //holding total coins

  Denomination(
      {this.date,
      this.time,
      this.id,
      this.payeename,
      this.twothousand,
      this.fivehundred,
      this.twohundred,
      this.hundred,
      this.fifty,
      this.twenty,
      this.ten,
      this.five,
      this.two,
      this.one,
      this.totamt,
      this.totnotes,
      this.totcoins});

  Denomination.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    date = json["date"];
    time = json["time"];
    payeename = json["payeename"];
    twothousand = json["twothousand"];
    fivehundred = json["fivehundred"];
    twohundred = json["twohundred"];
    hundred = json["hundred"];
    fifty = json["fifty"];
    twenty = json["twenty"];
    ten = json["ten"];
    five = json["five"];
    two = json["two"];
    one = json["one"];
    totamt = json["totamt"];
    totnotes = json["totnotes"];
    totcoins = json["totcoins"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = id;
    data["date"] = date;
    data["time"] = time;
    data["payeename"] = payeename;
    data["twothousand"] = twothousand;
    data["fivehundred"] = fivehundred;
    data["twohundred"] = twohundred;
    data["hundred"] = hundred;
    data["fifty"] = fifty;
    data["twenty"] = twenty;
    data["ten"] = ten;
    data["five"] = five;
    data["two"] = two;
    data["one"] = one;
    data["totamt"] = totamt;
    data["totnotes"] = totnotes;
    data["totcoins"] = totcoins;

    return data;
  }
}
