class Post {
  // final String title;
  // final String thumbnailUrl;
  DateTime date;
  Guid title;
  Content content;
  Content excerpt;
  String author;
  int featuredMedia;
  dynamic featuredMediaUrl;
  // Embedded embedded;

  // Post._({this.title, this.thumbnailUrl});
  Post._({
    this.date,
    this.title,
    this.content,
    this.excerpt,
    this.author,
    this.featuredMedia,
    this.featuredMediaUrl,
    
    // this.embedded,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return new Post._(
      // title: json['title']['rendered']
      date: json["date"] != null
        ? DateTime.parse(json["date"])
        : null,
      title: Guid.fromJson(json["title"]),
      content: Content.fromJson(json["content"]),
      excerpt: Content.fromJson(json["excerpt"]),
      author: json["_embedded"]["author"][0]["name"],
      featuredMedia: json["featured_media"],
      featuredMediaUrl: json["_embedded"]["wp:featuredmedia"] == null ? 'images/placeholder.png':json["_embedded"]["wp:featuredmedia"][0]["source_url"] ,
    //  embedded: Embedded.fromJson(json["_embedded"]),
    );
    // thumbnailUrl: json['thumbnailUrl'],
  }

   Map<String, dynamic> toJson() => {
        "date": date?.toIso8601String(),
        "title": title.toJson(),
        "content": content.toJson(),
        "excerpt": excerpt.toJson(),
        "author": author,
        "featured_media": featuredMedia,
        "featuredMediaUrl": featuredMediaUrl,
        
    };
}


class Content {
  String rendered;
  bool protected;

  Content({
    this.rendered,
    this.protected,
  });

  factory Content.fromJson(Map<String, dynamic> json) => new Content(
        rendered: json["rendered"],
        protected: json["protected"],
      );

  Map<String, dynamic> toJson() => {
        "rendered": rendered,
        "protected": protected,
      };
}

class Guid {
  String rendered;

  Guid({
    this.rendered,
  });

  factory Guid.fromJson(Map<String, dynamic> json) => new Guid(
        rendered: json["rendered"],
      );

  Map<String, dynamic> toJson() => {
        "rendered": rendered,
      };
}

// class Embedded {
//     List<Author> author;
//     List<WpFeaturedmedia> wpFeaturedmedia;

//     Embedded({
//         this.author,
//         this.wpFeaturedmedia,
//     });

//     factory Embedded.fromJson(Map<String, dynamic> json) => new Embedded(
//         author: new List<Author>.from(json["author"].map((x) => Author.fromJson(x))),
//         wpFeaturedmedia: new List<WpFeaturedmedia>.from(json["wp:featuredmedia"].map((x) => WpFeaturedmedia.fromJson(x))),
//     );

//     Map<String, dynamic> toJson() => {
//         "author": new List<dynamic>.from(author.map((x) => x.toJson())),
//         "wp:featuredmedia": new List<dynamic>.from(wpFeaturedmedia.map((x) => x.toJson())),
//     };
// }

// class Author {
//     int id;
//     String name;
//     String url;
//     String description;
//     String link;
//     String slug;
//     Map<String, String> avatarUrls;
//     Links links;

//     Author({
//         this.id,
//         this.name,
//         this.url,
//         this.description,
//         this.link,
//         this.slug,
//         this.avatarUrls,
//         this.links,
//     });
//     factory Author.fromJson(Map<String, dynamic> json) => new Author(
//         id: json["id"],
//         name: json["name"],
//         url: json["url"],
//         description: json["description"],
//         link: json["link"],
//         slug: json["slug"],
//         avatarUrls: new Map.from(json["avatar_urls"]).map((k, v) => new MapEntry<String, String>(k, v)),
//         links: Links.fromJson(json["_links"]),
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "name": name,
//         "url": url,
//         "description": description,
//         "link": link,
//         "slug": slug,
//         "avatar_urls": new Map.from(avatarUrls).map((k, v) => new MapEntry<String, dynamic>(k, v)),
//         "_links": links.toJson(),
//     };
// }

// class Links {
//     List<Collection> self;
//     List<Collection> collection;

//     Links({
//         this.self,
//         this.collection,
//     });

//     factory Links.fromJson(Map<String, dynamic> json) => new Links(
//         self: new List<Collection>.from(json["self"].map((x) => Collection.fromJson(x))),
//         collection: new List<Collection>.from(json["collection"].map((x) => Collection.fromJson(x))),
//     );

//     Map<String, dynamic> toJson() => {
//         "self": new List<dynamic>.from(self.map((x) => x.toJson())),
//         "collection": new List<dynamic>.from(collection.map((x) => x.toJson())),
//     };
// }

// class Collection {
//     String href;

//     Collection({
//         this.href,
//     });

//     factory Collection.fromJson(Map<String, dynamic> json) => new Collection(
//         href: json["href"],
//     );

//     Map<String, dynamic> toJson() => {
//         "href": href,
//     };
// }

// class WpFeaturedmedia {
//     int id;
//     DateTime date;
//     String slug;
//     String type;
//     String link;
//     Title title;
//     String sourceUrl;

//     WpFeaturedmedia({
//         this.id,
//         this.date,
//         this.slug,
//         this.type,
//         this.link,
//         this.title,
//         this.sourceUrl,
//     });

//     factory WpFeaturedmedia.fromJson(Map<String, dynamic> json) => new WpFeaturedmedia(
//         id: json["id"],
//         date: DateTime.parse(json["date"]),
//         slug: json["slug"],
//         type: json["type"],
//         link: json["link"],
//         title: Title.fromJson(json["title"]),
//         sourceUrl: json["source_url"],
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "date": date.toIso8601String(),
//         "slug": slug,
//         "type": type,
//         "link": link,
//         "title": title.toJson(),
//         "source_url": sourceUrl,
//     };
// }

// class Title {
//     String rendered;

//     Title({
//         this.rendered,
//     });

//     factory Title.fromJson(Map<String, dynamic> json) => new Title(
//         rendered: json["rendered"],
//     );

//     Map<String, dynamic> toJson() => {
//         "rendered": rendered,
//     };
// }
