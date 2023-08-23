import 'dart:convert';

import 'package:dart_packages_main/class/person.dart';

RequestResponse requestResponseFromJson(String str) => RequestResponse.fromJson(json.decode(str));

String requestResponseToJson(RequestResponse data) => json.encode(data.toJson());

class RequestResponse {
    int page;
    int perPage;
    int total;
    int totalPages;
    List<Person> data;
    Support support;

    RequestResponse({
        required this.page,
        required this.perPage,
        required this.total,
        required this.totalPages,
        required this.data,
        required this.support,
    });

    factory RequestResponse.fromJson(Map<String, dynamic> json) => RequestResponse(
        page       : json['page'],
        perPage    : json['per_page'],
        total      : json['total'],
        totalPages : json['total_pages'],
        data       : List<Person>.from(json['data'].map((x) => Person.fromJson(x))),
        support    : Support.fromJson(json['support']),
    );

    Map<String, dynamic> toJson() => {
        'page': page,
        'per_page'    : perPage,
        'total'       : total,
        'total_pages' : totalPages,
        'data'        : List<dynamic>.from(data.map((x) => x.toJson())),
        'support'     : support.toJson(),
    };
}



class Support {
    String url;
    String text;

    Support({
        required this.url,
        required this.text,
    });

    factory Support.fromJson(Map<String, dynamic> json) => Support(
        url: json['url'],
        text: json['text'],
    );

    Map<String, dynamic> toJson() => {
        'url': url,
        'text': text,
    };
}