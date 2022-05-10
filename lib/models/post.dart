// To parse this JSON data, do
//
//     final post = postFromJson(jsonString);

import 'dart:convert';

Post postFromJson(String str) => Post.fromJson(json.decode(str));

PostData returnFromJson(String str) => PostData.fromJson(json.decode(str));

String postToJson(Post data) => json.encode(data.toJson());

class Post {
    Post({
        required this.postReturn,
    });

    PostData postReturn;

    factory Post.fromJson(Map<String, dynamic> json) => Post(
        postReturn: PostData.fromJson(json["return"]),
    );

    Map<String, dynamic> toJson() => {
        "return": postReturn.toJson(),
    };
}

class PostData {
    PostData({
        required this.data,
        this.processStatus,
        this.status,
    });

    String data;
    int? processStatus;
    String? status;

    factory PostData.fromJson(Map<String, dynamic> json) => PostData(
        data: json["return"]["data"],
        processStatus: json["return"]["process_status"],
        status: json["return"]["status"],
    );

    Map<String, dynamic> toJson() => {
        "data": data,
        "process_status": processStatus,
        "status": status,
    };
}