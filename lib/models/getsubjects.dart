



class Subject {
    Subject({
      
        required this.rawUrl,
        required this.method,
    });

   
    String rawUrl;
    String method;

    factory Subject.fromJson(Map<String, dynamic> json) => Subject(
        
        rawUrl: json["raw_url"],
        method: json["method"],
    );

    Map<String, dynamic> toJson() => {
        
        "raw_url": rawUrl,
        "method": method,
    };
}
