// To parse this JSON data, do
//
//     final productsModel = productsModelFromJson(jsonString);

import 'dart:convert';

ProductsModel productsModelFromJson(String str) =>
    ProductsModel.fromJson(json.decode(str));

String productsModelToJson(ProductsModel data) => json.encode(data.toJson());

class ProductsModel {
  ProductsModel({
    this.data,
    this.meta,
  });

  final List<Datum> data;
  final Meta meta;

  ProductsModel copyWith({
    List<Datum> data,
    Meta meta,
  }) =>
      ProductsModel(
        data: data ?? this.data,
        meta: meta ?? this.meta,
      );

  factory ProductsModel.fromJson(Map<String, dynamic> json) => ProductsModel(
        data: json["data"] == null
            ? null
            : List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        meta: json["meta"] == null ? null : Meta.fromJson(json["meta"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null
            ? null
            : List<dynamic>.from(data.map((x) => x.toJson())),
        "meta": meta == null ? null : meta.toJson(),
      };
}

class Datum {
  Datum({
    this.uid,
    this.name,
    this.tag,
    this.kitchenName,
    this.officialName,
    this.isFavourite,
    this.stockPrice,
    this.sellingPrice,
    this.code,
    this.skuCode,
    this.quantity,
    this.client,
    this.color,
    this.weight,
    this.description,
    this.type,
    this.integration,
    this.typeText,
    this.notKitchen,
    this.isVisible,
    this.tax0,
    this.tag0,
    this.unit0,
    this.image0,
    this.inventoryOnVariants,
    this.closedForDiscount,
    this.crdate,
    this.tstamp,
    this.crdateFormatted,
    this.tstampFormatted,
    this.modifierGroup,
  });

  final int uid;
  final String name;
  final int tag;
  final String kitchenName;
  final String officialName;
  final int isFavourite;
  final int stockPrice;
  final int sellingPrice;
  final String code;
  final String skuCode;
  final int quantity;
  final int client;
  final Color color;
  final int weight;
  final String description;
  final int type;
  final dynamic integration;
  final TypeText typeText;
  final int notKitchen;
  final int isVisible;
  final dynamic tax0;
  final dynamic tag0;
  final dynamic unit0;
  final Image0 image0;
  final int inventoryOnVariants;
  final int closedForDiscount;
  final int crdate;
  final int tstamp;
  final String crdateFormatted;
  final String tstampFormatted;
  final List<ModifierGroup> modifierGroup;

  Datum copyWith({
    int uid,
    String name,
    int tag,
    String kitchenName,
    String officialName,
    int isFavourite,
    int stockPrice,
    int sellingPrice,
    String code,
    String skuCode,
    int quantity,
    int client,
    Color color,
    int weight,
    String description,
    int type,
    dynamic integration,
    TypeText typeText,
    int notKitchen,
    int isVisible,
    dynamic tax0,
    dynamic tag0,
    dynamic unit0,
    Image0 image0,
    int inventoryOnVariants,
    int closedForDiscount,
    int crdate,
    int tstamp,
    String crdateFormatted,
    String tstampFormatted,
    List<ModifierGroup> modifierGroup,
  }) =>
      Datum(
        uid: uid ?? this.uid,
        name: name ?? this.name,
        tag: tag ?? this.tag,
        kitchenName: kitchenName ?? this.kitchenName,
        officialName: officialName ?? this.officialName,
        isFavourite: isFavourite ?? this.isFavourite,
        stockPrice: stockPrice ?? this.stockPrice,
        sellingPrice: sellingPrice ?? this.sellingPrice,
        code: code ?? this.code,
        skuCode: skuCode ?? this.skuCode,
        quantity: quantity ?? this.quantity,
        client: client ?? this.client,
        color: color ?? this.color,
        weight: weight ?? this.weight,
        description: description ?? this.description,
        type: type ?? this.type,
        integration: integration ?? this.integration,
        typeText: typeText ?? this.typeText,
        notKitchen: notKitchen ?? this.notKitchen,
        isVisible: isVisible ?? this.isVisible,
        tax0: tax0 ?? this.tax0,
        tag0: tag0 ?? this.tag0,
        unit0: unit0 ?? this.unit0,
        image0: image0 ?? this.image0,
        inventoryOnVariants: inventoryOnVariants ?? this.inventoryOnVariants,
        closedForDiscount: closedForDiscount ?? this.closedForDiscount,
        crdate: crdate ?? this.crdate,
        tstamp: tstamp ?? this.tstamp,
        crdateFormatted: crdateFormatted ?? this.crdateFormatted,
        tstampFormatted: tstampFormatted ?? this.tstampFormatted,
        modifierGroup: modifierGroup ?? this.modifierGroup,
      );

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        uid: json["uid"] == null ? null : json["uid"],
        name: json["name"] == null ? null : json["name"],
        tag: json["tag"] == null ? null : json["tag"],
        kitchenName: json["kitchen_name"] == null ? null : json["kitchen_name"],
        officialName:
            json["official_name"] == null ? null : json["official_name"],
        isFavourite: json["is_favourite"] == null ? null : json["is_favourite"],
        stockPrice: json["stock_price"] == null ? null : json["stock_price"],
        sellingPrice:
            json["selling_price"] == null ? null : json["selling_price"],
        code: json["code"] == null ? null : json["code"],
        skuCode: json["sku_code"] == null ? null : json["sku_code"],
        quantity: json["quantity"] == null ? null : json["quantity"],
        client: json["client"] == null ? null : json["client"],
        color: json["color"] == null ? null : colorValues.map[json["color"]],
        weight: json["weight"] == null ? null : json["weight"],
        description: json["description"] == null ? null : json["description"],
        type: json["type"] == null ? null : json["type"],
        integration: json["integration"],
        typeText: json["type_text"] == null
            ? null
            : typeTextValues.map[json["type_text"]],
        notKitchen: json["not_kitchen"] == null ? null : json["not_kitchen"],
        isVisible: json["is_visible"] == null ? null : json["is_visible"],
        tax0: json["tax0"],
        tag0: json["tag0"],
        unit0: json["unit0"],
        image0: json["image0"] == null ? null : Image0.fromJson(json["image0"]),
        inventoryOnVariants: json["inventory_on_variants"] == null
            ? null
            : json["inventory_on_variants"],
        closedForDiscount: json["closed_for_discount"] == null
            ? null
            : json["closed_for_discount"],
        crdate: json["crdate"] == null ? null : json["crdate"],
        tstamp: json["tstamp"] == null ? null : json["tstamp"],
        crdateFormatted:
            json["crdate_formatted"] == null ? null : json["crdate_formatted"],
        tstampFormatted:
            json["tstamp_formatted"] == null ? null : json["tstamp_formatted"],
        modifierGroup: json["modifier_group"] == null
            ? null
            : List<ModifierGroup>.from(
                json["modifier_group"].map((x) => ModifierGroup.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "uid": uid == null ? null : uid,
        "name": name == null ? null : name,
        "tag": tag == null ? null : tag,
        "kitchen_name": kitchenName == null ? null : kitchenName,
        "official_name": officialName == null ? null : officialName,
        "is_favourite": isFavourite == null ? null : isFavourite,
        "stock_price": stockPrice == null ? null : stockPrice,
        "selling_price": sellingPrice == null ? null : sellingPrice,
        "code": code == null ? null : code,
        "sku_code": skuCode == null ? null : skuCode,
        "quantity": quantity == null ? null : quantity,
        "client": client == null ? null : client,
        "color": color == null ? null : colorValues.reverse[color],
        "weight": weight == null ? null : weight,
        "description": description == null ? null : description,
        "type": type == null ? null : type,
        "integration": integration,
        "type_text": typeText == null ? null : typeTextValues.reverse[typeText],
        "not_kitchen": notKitchen == null ? null : notKitchen,
        "is_visible": isVisible == null ? null : isVisible,
        "tax0": tax0,
        "tag0": tag0,
        "unit0": unit0,
        "image0": image0 == null ? null : image0.toJson(),
        "inventory_on_variants":
            inventoryOnVariants == null ? null : inventoryOnVariants,
        "closed_for_discount":
            closedForDiscount == null ? null : closedForDiscount,
        "crdate": crdate == null ? null : crdate,
        "tstamp": tstamp == null ? null : tstamp,
        "crdate_formatted": crdateFormatted == null ? null : crdateFormatted,
        "tstamp_formatted": tstampFormatted == null ? null : tstampFormatted,
        "modifier_group": modifierGroup == null
            ? null
            : List<dynamic>.from(modifierGroup.map((x) => x.toJson())),
      };
}

enum Color { THE_2_EAD44, COLOR_2_EAD44 }

final colorValues =
    EnumValues({"#2ead44": Color.COLOR_2_EAD44, "2ead44": Color.THE_2_EAD44});

class Image0 {
  Image0({
    this.uid,
    this.path,
    this.imageOriginal,
    this.imageLarge,
    this.imageMedium,
    this.imageSmall,
    this.parsingData,
    this.crdate,
    this.tstamp,
    this.crdateFormatted,
    this.tstampFormatted,
  });

  final int uid;
  final String path;
  final String imageOriginal;
  final String imageLarge;
  final String imageMedium;
  final String imageSmall;
  final dynamic parsingData;
  final int crdate;
  final int tstamp;
  final String crdateFormatted;
  final String tstampFormatted;

  Image0 copyWith({
    int uid,
    String path,
    String imageOriginal,
    String imageLarge,
    String imageMedium,
    String imageSmall,
    dynamic parsingData,
    int crdate,
    int tstamp,
    String crdateFormatted,
    String tstampFormatted,
  }) =>
      Image0(
        uid: uid ?? this.uid,
        path: path ?? this.path,
        imageOriginal: imageOriginal ?? this.imageOriginal,
        imageLarge: imageLarge ?? this.imageLarge,
        imageMedium: imageMedium ?? this.imageMedium,
        imageSmall: imageSmall ?? this.imageSmall,
        parsingData: parsingData ?? this.parsingData,
        crdate: crdate ?? this.crdate,
        tstamp: tstamp ?? this.tstamp,
        crdateFormatted: crdateFormatted ?? this.crdateFormatted,
        tstampFormatted: tstampFormatted ?? this.tstampFormatted,
      );

  factory Image0.fromJson(Map<String, dynamic> json) => Image0(
        uid: json["uid"] == null ? null : json["uid"],
        path: json["path"] == null ? null : json["path"],
        imageOriginal:
            json["image_original"] == null ? null : json["image_original"],
        imageLarge: json["image_large"] == null ? null : json["image_large"],
        imageMedium: json["image_medium"] == null ? null : json["image_medium"],
        imageSmall: json["image_small"] == null ? null : json["image_small"],
        parsingData: json["parsing_data"],
        crdate: json["crdate"] == null ? null : json["crdate"],
        tstamp: json["tstamp"] == null ? null : json["tstamp"],
        crdateFormatted:
            json["crdate_formatted"] == null ? null : json["crdate_formatted"],
        tstampFormatted:
            json["tstamp_formatted"] == null ? null : json["tstamp_formatted"],
      );

  Map<String, dynamic> toJson() => {
        "uid": uid == null ? null : uid,
        "path": path == null ? null : path,
        "image_original": imageOriginal == null ? null : imageOriginal,
        "image_large": imageLarge == null ? null : imageLarge,
        "image_medium": imageMedium == null ? null : imageMedium,
        "image_small": imageSmall == null ? null : imageSmall,
        "parsing_data": parsingData,
        "crdate": crdate == null ? null : crdate,
        "tstamp": tstamp == null ? null : tstamp,
        "crdate_formatted": crdateFormatted == null ? null : crdateFormatted,
        "tstamp_formatted": tstampFormatted == null ? null : tstampFormatted,
      };
}

class ModifierGroup {
  ModifierGroup({
    this.uid,
    this.name,
    this.client,
    this.crdate,
    this.tstamp,
    this.deleted,
    this.hidden,
    this.type,
    this.limit,
    this.crdateFormatted,
    this.tstampFormatted,
    this.modifiers,
  });

  final int uid;
  final String name;
  final int client;
  final int crdate;
  final int tstamp;
  final int deleted;
  final int hidden;
  final String type;
  final String limit;
  final String crdateFormatted;
  final String tstampFormatted;
  final List<Modifier> modifiers;

  ModifierGroup copyWith({
    int uid,
    String name,
    int client,
    int crdate,
    int tstamp,
    int deleted,
    int hidden,
    String type,
    String limit,
    String crdateFormatted,
    String tstampFormatted,
    List<Modifier> modifiers,
  }) =>
      ModifierGroup(
        uid: uid ?? this.uid,
        name: name ?? this.name,
        client: client ?? this.client,
        crdate: crdate ?? this.crdate,
        tstamp: tstamp ?? this.tstamp,
        deleted: deleted ?? this.deleted,
        hidden: hidden ?? this.hidden,
        type: type ?? this.type,
        limit: limit ?? this.limit,
        crdateFormatted: crdateFormatted ?? this.crdateFormatted,
        tstampFormatted: tstampFormatted ?? this.tstampFormatted,
        modifiers: modifiers ?? this.modifiers,
      );

  factory ModifierGroup.fromJson(Map<String, dynamic> json) => ModifierGroup(
        uid: json["uid"] == null ? null : json["uid"],
        name: json["name"] == null ? null : json["name"],
        client: json["client"] == null ? null : json["client"],
        crdate: json["crdate"] == null ? null : json["crdate"],
        tstamp: json["tstamp"] == null ? null : json["tstamp"],
        deleted: json["deleted"] == null ? null : json["deleted"],
        hidden: json["hidden"] == null ? null : json["hidden"],
        type: json["type"] == null ? null : json["type"],
        limit: json["limit"] == null ? null : json["limit"],
        crdateFormatted:
            json["crdate_formatted"] == null ? null : json["crdate_formatted"],
        tstampFormatted:
            json["tstamp_formatted"] == null ? null : json["tstamp_formatted"],
        modifiers: json["modifiers"] == null
            ? null
            : List<Modifier>.from(
                json["modifiers"].map((x) => Modifier.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "uid": uid == null ? null : uid,
        "name": name == null ? null : name,
        "client": client == null ? null : client,
        "crdate": crdate == null ? null : crdate,
        "tstamp": tstamp == null ? null : tstamp,
        "deleted": deleted == null ? null : deleted,
        "hidden": hidden == null ? null : hidden,
        "type": type == null ? null : type,
        "limit": limit == null ? null : limit,
        "crdate_formatted": crdateFormatted == null ? null : crdateFormatted,
        "tstamp_formatted": tstampFormatted == null ? null : tstampFormatted,
        "modifiers": modifiers == null
            ? null
            : List<dynamic>.from(modifiers.map((x) => x.toJson())),
      };
}

class Modifier {
  Modifier({
    this.uid,
    this.name,
    this.officialName,
    this.isFavourite,
    this.stockPrice,
    this.sellingPrice,
    this.code,
    this.skuCode,
    this.quantity,
    this.clientId,
    this.color,
    this.weight,
    this.crdate,
    this.tstamp,
    this.deleted,
    this.hidden,
    this.kitchenName,
    this.tax0,
    this.tag0,
    this.unit0,
    this.modifierGroupsIds,
    this.isVisible,
    this.notKitchen,
    this.description,
    this.crdateFormatted,
    this.tstampFormatted,
    this.productBarcods,
  });

  final int uid;
  final String name;
  final String officialName;
  final int isFavourite;
  final int stockPrice;
  final int sellingPrice;
  final dynamic code;
  final dynamic skuCode;
  final int quantity;
  final int clientId;
  final Color color;
  final int weight;
  final int crdate;
  final int tstamp;
  final int deleted;
  final int hidden;
  final String kitchenName;
  final Tax0 tax0;
  final Tag0 tag0;
  final dynamic unit0;
  final List<int> modifierGroupsIds;
  final int isVisible;
  final int notKitchen;
  final dynamic description;
  final String crdateFormatted;
  final String tstampFormatted;
  final List<dynamic> productBarcods;

  Modifier copyWith({
    int uid,
    String name,
    String officialName,
    int isFavourite,
    int stockPrice,
    int sellingPrice,
    dynamic code,
    dynamic skuCode,
    int quantity,
    int clientId,
    Color color,
    int weight,
    int crdate,
    int tstamp,
    int deleted,
    int hidden,
    String kitchenName,
    Tax0 tax0,
    Tag0 tag0,
    dynamic unit0,
    List<int> modifierGroupsIds,
    int isVisible,
    int notKitchen,
    dynamic description,
    String crdateFormatted,
    String tstampFormatted,
    List<dynamic> productBarcods,
  }) =>
      Modifier(
        uid: uid ?? this.uid,
        name: name ?? this.name,
        officialName: officialName ?? this.officialName,
        isFavourite: isFavourite ?? this.isFavourite,
        stockPrice: stockPrice ?? this.stockPrice,
        sellingPrice: sellingPrice ?? this.sellingPrice,
        code: code ?? this.code,
        skuCode: skuCode ?? this.skuCode,
        quantity: quantity ?? this.quantity,
        clientId: clientId ?? this.clientId,
        color: color ?? this.color,
        weight: weight ?? this.weight,
        crdate: crdate ?? this.crdate,
        tstamp: tstamp ?? this.tstamp,
        deleted: deleted ?? this.deleted,
        hidden: hidden ?? this.hidden,
        kitchenName: kitchenName ?? this.kitchenName,
        tax0: tax0 ?? this.tax0,
        tag0: tag0 ?? this.tag0,
        unit0: unit0 ?? this.unit0,
        modifierGroupsIds: modifierGroupsIds ?? this.modifierGroupsIds,
        isVisible: isVisible ?? this.isVisible,
        notKitchen: notKitchen ?? this.notKitchen,
        description: description ?? this.description,
        crdateFormatted: crdateFormatted ?? this.crdateFormatted,
        tstampFormatted: tstampFormatted ?? this.tstampFormatted,
        productBarcods: productBarcods ?? this.productBarcods,
      );

  factory Modifier.fromJson(Map<String, dynamic> json) => Modifier(
        uid: json["uid"] == null ? null : json["uid"],
        name: json["name"] == null ? null : json["name"],
        officialName:
            json["official_name"] == null ? null : json["official_name"],
        isFavourite: json["is_favourite"] == null ? null : json["is_favourite"],
        stockPrice: json["stock_price"] == null ? null : json["stock_price"],
        sellingPrice:
            json["selling_price"] == null ? null : json["selling_price"],
        code: json["code"],
        skuCode: json["sku_code"],
        quantity: json["quantity"] == null ? null : json["quantity"],
        clientId: json["client_id"] == null ? null : json["client_id"],
        color: json["color"] == null ? null : colorValues.map[json["color"]],
        weight: json["weight"] == null ? null : json["weight"],
        crdate: json["crdate"] == null ? null : json["crdate"],
        tstamp: json["tstamp"] == null ? null : json["tstamp"],
        deleted: json["deleted"] == null ? null : json["deleted"],
        hidden: json["hidden"] == null ? null : json["hidden"],
        kitchenName: json["kitchen_name"] == null ? null : json["kitchen_name"],
        tax0: json["tax0"] == null ? null : Tax0.fromJson(json["tax0"]),
        tag0: json["tag0"] == null ? null : Tag0.fromJson(json["tag0"]),
        unit0: json["unit0"],
        modifierGroupsIds: json["modifier_groups_ids"] == null
            ? null
            : List<int>.from(json["modifier_groups_ids"].map((x) => x)),
        isVisible: json["is_visible"] == null ? null : json["is_visible"],
        notKitchen: json["not_kitchen"] == null ? null : json["not_kitchen"],
        description: json["description"],
        crdateFormatted:
            json["crdate_formatted"] == null ? null : json["crdate_formatted"],
        tstampFormatted:
            json["tstamp_formatted"] == null ? null : json["tstamp_formatted"],
        productBarcods: json["product_barcods"] == null
            ? null
            : List<dynamic>.from(json["product_barcods"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "uid": uid == null ? null : uid,
        "name": name == null ? null : name,
        "official_name": officialName == null ? null : officialName,
        "is_favourite": isFavourite == null ? null : isFavourite,
        "stock_price": stockPrice == null ? null : stockPrice,
        "selling_price": sellingPrice == null ? null : sellingPrice,
        "code": code,
        "sku_code": skuCode,
        "quantity": quantity == null ? null : quantity,
        "client_id": clientId == null ? null : clientId,
        "color": color == null ? null : colorValues.reverse[color],
        "weight": weight == null ? null : weight,
        "crdate": crdate == null ? null : crdate,
        "tstamp": tstamp == null ? null : tstamp,
        "deleted": deleted == null ? null : deleted,
        "hidden": hidden == null ? null : hidden,
        "kitchen_name": kitchenName == null ? null : kitchenName,
        "tax0": tax0 == null ? null : tax0.toJson(),
        "tag0": tag0 == null ? null : tag0.toJson(),
        "unit0": unit0,
        "modifier_groups_ids": modifierGroupsIds == null
            ? null
            : List<dynamic>.from(modifierGroupsIds.map((x) => x)),
        "is_visible": isVisible == null ? null : isVisible,
        "not_kitchen": notKitchen == null ? null : notKitchen,
        "description": description,
        "crdate_formatted": crdateFormatted == null ? null : crdateFormatted,
        "tstamp_formatted": tstampFormatted == null ? null : tstampFormatted,
        "product_barcods": productBarcods == null
            ? null
            : List<dynamic>.from(productBarcods.map((x) => x)),
      };
}

class Tag0 {
  Tag0({
    this.uid,
    this.name,
    this.client,
    this.weight,
    this.image,
    this.image0,
    this.notKitchen,
    this.color,
    this.productCount,
    this.hidden,
    this.isVisible,
    this.parent,
    this.isSystem,
    this.crdate,
    this.tstamp,
    this.crdateFormatted,
    this.tstampFormatted,
    this.integrationAccounts,
  });

  final int uid;
  final String name;
  final int client;
  final int weight;
  final int image;
  final Image0 image0;
  final int notKitchen;
  final Color color;
  final int productCount;
  final int hidden;
  final int isVisible;
  final dynamic parent;
  final dynamic isSystem;
  final int crdate;
  final int tstamp;
  final String crdateFormatted;
  final String tstampFormatted;
  final List<dynamic> integrationAccounts;

  Tag0 copyWith({
    int uid,
    String name,
    int client,
    int weight,
    int image,
    Image0 image0,
    int notKitchen,
    Color color,
    int productCount,
    int hidden,
    int isVisible,
    dynamic parent,
    dynamic isSystem,
    int crdate,
    int tstamp,
    String crdateFormatted,
    String tstampFormatted,
    List<dynamic> integrationAccounts,
  }) =>
      Tag0(
        uid: uid ?? this.uid,
        name: name ?? this.name,
        client: client ?? this.client,
        weight: weight ?? this.weight,
        image: image ?? this.image,
        image0: image0 ?? this.image0,
        notKitchen: notKitchen ?? this.notKitchen,
        color: color ?? this.color,
        productCount: productCount ?? this.productCount,
        hidden: hidden ?? this.hidden,
        isVisible: isVisible ?? this.isVisible,
        parent: parent ?? this.parent,
        isSystem: isSystem ?? this.isSystem,
        crdate: crdate ?? this.crdate,
        tstamp: tstamp ?? this.tstamp,
        crdateFormatted: crdateFormatted ?? this.crdateFormatted,
        tstampFormatted: tstampFormatted ?? this.tstampFormatted,
        integrationAccounts: integrationAccounts ?? this.integrationAccounts,
      );

  factory Tag0.fromJson(Map<String, dynamic> json) => Tag0(
        uid: json["uid"] == null ? null : json["uid"],
        name: json["name"] == null ? null : json["name"],
        client: json["client"] == null ? null : json["client"],
        weight: json["weight"] == null ? null : json["weight"],
        image: json["image"] == null ? null : json["image"],
        image0: json["image0"] == null ? null : Image0.fromJson(json["image0"]),
        notKitchen: json["not_kitchen"] == null ? null : json["not_kitchen"],
        color: json["color"] == null ? null : colorValues.map[json["color"]],
        productCount:
            json["product_count"] == null ? null : json["product_count"],
        hidden: json["hidden"] == null ? null : json["hidden"],
        isVisible: json["is_visible"] == null ? null : json["is_visible"],
        parent: json["parent"],
        isSystem: json["is_system"],
        crdate: json["crdate"] == null ? null : json["crdate"],
        tstamp: json["tstamp"] == null ? null : json["tstamp"],
        crdateFormatted:
            json["crdate_formatted"] == null ? null : json["crdate_formatted"],
        tstampFormatted:
            json["tstamp_formatted"] == null ? null : json["tstamp_formatted"],
        integrationAccounts: json["integration_accounts"] == null
            ? null
            : List<dynamic>.from(json["integration_accounts"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "uid": uid == null ? null : uid,
        "name": name == null ? null : name,
        "client": client == null ? null : client,
        "weight": weight == null ? null : weight,
        "image": image == null ? null : image,
        "image0": image0 == null ? null : image0.toJson(),
        "not_kitchen": notKitchen == null ? null : notKitchen,
        "color": color == null ? null : colorValues.reverse[color],
        "product_count": productCount == null ? null : productCount,
        "hidden": hidden == null ? null : hidden,
        "is_visible": isVisible == null ? null : isVisible,
        "parent": parent,
        "is_system": isSystem,
        "crdate": crdate == null ? null : crdate,
        "tstamp": tstamp == null ? null : tstamp,
        "crdate_formatted": crdateFormatted == null ? null : crdateFormatted,
        "tstamp_formatted": tstampFormatted == null ? null : tstampFormatted,
        "integration_accounts": integrationAccounts == null
            ? null
            : List<dynamic>.from(integrationAccounts.map((x) => x)),
      };
}

class Tax0 {
  Tax0({
    this.uid,
    this.name,
    this.enabled,
    this.percentage,
    this.client,
    this.standardTaxCodes,
    this.code,
    this.crdate,
    this.tstamp,
    this.crdateFormatted,
    this.tstampFormatted,
  });

  final int uid;
  final String name;
  final int enabled;
  final int percentage;
  final int client;
  final dynamic standardTaxCodes;
  final dynamic code;
  final int crdate;
  final int tstamp;
  final String crdateFormatted;
  final String tstampFormatted;

  Tax0 copyWith({
    int uid,
    String name,
    int enabled,
    int percentage,
    int client,
    dynamic standardTaxCodes,
    dynamic code,
    int crdate,
    int tstamp,
    String crdateFormatted,
    String tstampFormatted,
  }) =>
      Tax0(
        uid: uid ?? this.uid,
        name: name ?? this.name,
        enabled: enabled ?? this.enabled,
        percentage: percentage ?? this.percentage,
        client: client ?? this.client,
        standardTaxCodes: standardTaxCodes ?? this.standardTaxCodes,
        code: code ?? this.code,
        crdate: crdate ?? this.crdate,
        tstamp: tstamp ?? this.tstamp,
        crdateFormatted: crdateFormatted ?? this.crdateFormatted,
        tstampFormatted: tstampFormatted ?? this.tstampFormatted,
      );

  factory Tax0.fromJson(Map<String, dynamic> json) => Tax0(
        uid: json["uid"] == null ? null : json["uid"],
        name: json["name"] == null ? null : json["name"],
        enabled: json["enabled"] == null ? null : json["enabled"],
        percentage: json["percentage"] == null ? null : json["percentage"],
        client: json["client"] == null ? null : json["client"],
        standardTaxCodes: json["standard_tax_codes"],
        code: json["code"],
        crdate: json["crdate"] == null ? null : json["crdate"],
        tstamp: json["tstamp"] == null ? null : json["tstamp"],
        crdateFormatted:
            json["crdate_formatted"] == null ? null : json["crdate_formatted"],
        tstampFormatted:
            json["tstamp_formatted"] == null ? null : json["tstamp_formatted"],
      );

  Map<String, dynamic> toJson() => {
        "uid": uid == null ? null : uid,
        "name": name == null ? null : name,
        "enabled": enabled == null ? null : enabled,
        "percentage": percentage == null ? null : percentage,
        "client": client == null ? null : client,
        "standard_tax_codes": standardTaxCodes,
        "code": code,
        "crdate": crdate == null ? null : crdate,
        "tstamp": tstamp == null ? null : tstamp,
        "crdate_formatted": crdateFormatted == null ? null : crdateFormatted,
        "tstamp_formatted": tstampFormatted == null ? null : tstampFormatted,
      };
}

enum TypeText { POS }

final typeTextValues = EnumValues({"POS": TypeText.POS});

class Meta {
  Meta({
    this.pagination,
  });

  final Pagination pagination;

  Meta copyWith({
    Pagination pagination,
  }) =>
      Meta(
        pagination: pagination ?? this.pagination,
      );

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        pagination: json["pagination"] == null
            ? null
            : Pagination.fromJson(json["pagination"]),
      );

  Map<String, dynamic> toJson() => {
        "pagination": pagination == null ? null : pagination.toJson(),
      };
}

class Pagination {
  Pagination({
    this.total,
    this.perPage,
    this.currentPage,
    this.totalPages,
    this.links,
  });

  final int total;
  final int perPage;
  final int currentPage;
  final int totalPages;
  final Links links;

  Pagination copyWith({
    int total,
    int perPage,
    int currentPage,
    int totalPages,
    Links links,
  }) =>
      Pagination(
        total: total ?? this.total,
        perPage: perPage ?? this.perPage,
        currentPage: currentPage ?? this.currentPage,
        totalPages: totalPages ?? this.totalPages,
        links: links ?? this.links,
      );

  factory Pagination.fromJson(Map<String, dynamic> json) => Pagination(
        total: json["total"] == null ? null : json["total"],
        perPage: json["per_page"] == null ? null : json["per_page"],
        currentPage: json["current_page"] == null ? null : json["current_page"],
        totalPages: json["total_pages"] == null ? null : json["total_pages"],
        links: json["links"] == null ? null : Links.fromJson(json["links"]),
      );

  Map<String, dynamic> toJson() => {
        "total": total == null ? null : total,
        "per_page": perPage == null ? null : perPage,
        "current_page": currentPage == null ? null : currentPage,
        "total_pages": totalPages == null ? null : totalPages,
        "links": links == null ? null : links.toJson(),
      };
}

class Links {
  Links({
    this.self,
    this.next,
    this.last,
  });

  final String self;
  final String next;
  final String last;

  Links copyWith({
    String self,
    String next,
    String last,
  }) =>
      Links(
        self: self ?? this.self,
        next: next ?? this.next,
        last: last ?? this.last,
      );

  factory Links.fromJson(Map<String, dynamic> json) => Links(
        self: json["self"] == null ? null : json["self"],
        next: json["next"] == null ? null : json["next"],
        last: json["last"] == null ? null : json["last"],
      );

  Map<String, dynamic> toJson() => {
        "self": self == null ? null : self,
        "next": next == null ? null : next,
        "last": last == null ? null : last,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
