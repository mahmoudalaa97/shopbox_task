// To parse this JSON data, do
//
//     final clientsAccountModel = clientsAccountModelFromJson(jsonString);

import 'dart:convert';

import 'package:equatable/equatable.dart';

ClientsAccountModel clientsAccountModelFromJson(String str) =>
    ClientsAccountModel.fromJson(json.decode(str));

String clientsAccountModelToJson(ClientsAccountModel data) =>
    json.encode(data.toJson());

class ClientsAccountModel extends Equatable {
  ClientsAccountModel({
    this.clients,
  });

  final List<ClientElement> clients;

  ClientsAccountModel copyWith({
    List<ClientElement> clients,
  }) =>
      ClientsAccountModel(
        clients: clients ?? this.clients,
      );

  factory ClientsAccountModel.fromJson(Map<String, dynamic> json) =>
      ClientsAccountModel(
        clients: json["clients"] == null
            ? null
            : List<ClientElement>.from(
                json["clients"].map((x) => ClientElement.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "clients": clients == null
            ? null
            : List<dynamic>.from(clients.map((x) => x.toJson())),
      };

  @override
  // TODO: implement props
  List<Object> get props => [
        this.clients,
      ];
}

class ClientElement extends Equatable {
  ClientElement({
    this.uid,
    this.tstamp,
    this.crdate,
    this.deleted,
    this.hidden,
    this.client,
    this.account,
    this.role,
    this.preferred,
    this.token,
    this.branch,
    this.code,
    this.hideRefund,
  });

  final int uid;
  final String tstamp;
  final String crdate;
  final int deleted;
  final int hidden;
  final ClientClient client;
  final Account account;
  final int role;
  final int preferred;
  final String token;
  final dynamic branch;
  final dynamic code;
  final int hideRefund;

  ClientElement copyWith({
    int uid,
    String tstamp,
    String crdate,
    int deleted,
    int hidden,
    ClientClient client,
    Account account,
    int role,
    int preferred,
    String token,
    dynamic branch,
    dynamic code,
    int hideRefund,
  }) =>
      ClientElement(
        uid: uid ?? this.uid,
        tstamp: tstamp ?? this.tstamp,
        crdate: crdate ?? this.crdate,
        deleted: deleted ?? this.deleted,
        hidden: hidden ?? this.hidden,
        client: client ?? this.client,
        account: account ?? this.account,
        role: role ?? this.role,
        preferred: preferred ?? this.preferred,
        token: token ?? this.token,
        branch: branch ?? this.branch,
        code: code ?? this.code,
        hideRefund: hideRefund ?? this.hideRefund,
      );

  factory ClientElement.fromJson(Map<String, dynamic> json) => ClientElement(
        uid: json["uid"] == null ? null : json["uid"],
        tstamp: json["tstamp"] == null ? null : json["tstamp"],
        crdate: json["crdate"] == null ? null : json["crdate"],
        deleted: json["deleted"] == null ? null : json["deleted"],
        hidden: json["hidden"] == null ? null : json["hidden"],
        client: json["client"] == null
            ? null
            : ClientClient.fromJson(json["client"]),
        account:
            json["account"] == null ? null : Account.fromJson(json["account"]),
        role: json["role"] == null ? null : json["role"],
        preferred: json["preferred"] == null ? null : json["preferred"],
        token: json["token"],
        branch: json["branch"],
        code: json["code"],
        hideRefund: json["hide_refund"] == null ? null : json["hide_refund"],
      );

  Map<String, dynamic> toJson() => {
        "uid": uid == null ? null : uid,
        "tstamp": tstamp == null ? null : tstamp,
        "crdate": crdate == null ? null : crdate,
        "deleted": deleted == null ? null : deleted,
        "hidden": hidden == null ? null : hidden,
        "client": client == null ? null : client.toJson(),
        "account": account == null ? null : account.toJson(),
        "role": role == null ? null : role,
        "preferred": preferred == null ? null : preferred,
        "token": token,
        "branch": branch,
        "code": code,
        "hide_refund": hideRefund == null ? null : hideRefund,
      };

  @override
  // TODO: implement props
  List<Object> get props => [
        this.uid,
        this.tstamp,
        this.crdate,
        this.deleted,
        this.hidden,
        this.client,
        this.account,
        this.role,
        this.preferred,
        this.token,
        this.branch,
        this.code,
        this.hideRefund,
      ];
}

class Account extends Equatable {
  Account({
    this.uid,
    this.tstamp,
    this.username,
    this.firstName,
    this.middleName,
    this.lastName,
    this.crdate,
    this.deleted,
    this.title,
    this.verifiedTime,
    this.hiddenAccount,
    this.mobile,
    this.hidden,
    this.code,
    this.lang,
    this.zendeskId,
    this.receiveNews,
    this.role,
  });

  final int uid;
  final String tstamp;
  final String username;
  final String firstName;
  final String middleName;
  final String lastName;
  final String crdate;
  final int deleted;
  final String title;
  final int verifiedTime;
  final int hiddenAccount;
  final String mobile;
  final int hidden;
  final dynamic code;
  final dynamic lang;
  final dynamic zendeskId;
  final int receiveNews;
  final int role;

  Account copyWith({
    int uid,
    String tstamp,
    String username,
    String firstName,
    String middleName,
    String lastName,
    String crdate,
    int deleted,
    String title,
    int verifiedTime,
    int hiddenAccount,
    String mobile,
    int hidden,
    dynamic code,
    dynamic lang,
    dynamic zendeskId,
    int receiveNews,
    int role,
  }) =>
      Account(
        uid: uid ?? this.uid,
        tstamp: tstamp ?? this.tstamp,
        username: username ?? this.username,
        firstName: firstName ?? this.firstName,
        middleName: middleName ?? this.middleName,
        lastName: lastName ?? this.lastName,
        crdate: crdate ?? this.crdate,
        deleted: deleted ?? this.deleted,
        title: title ?? this.title,
        verifiedTime: verifiedTime ?? this.verifiedTime,
        hiddenAccount: hiddenAccount ?? this.hiddenAccount,
        mobile: mobile ?? this.mobile,
        hidden: hidden ?? this.hidden,
        code: code ?? this.code,
        lang: lang ?? this.lang,
        zendeskId: zendeskId ?? this.zendeskId,
        receiveNews: receiveNews ?? this.receiveNews,
        role: role ?? this.role,
      );

  factory Account.fromJson(Map<String, dynamic> json) => Account(
        uid: json["uid"] == null ? null : json["uid"],
        tstamp: json["tstamp"] == null ? null : json["tstamp"],
        username: json["username"] == null ? null : json["username"],
        firstName: json["first_name"] == null ? null : json["first_name"],
        middleName: json["middle_name"] == null ? null : json["middle_name"],
        lastName: json["last_name"] == null ? null : json["last_name"],
        crdate: json["crdate"] == null ? null : json["crdate"],
        deleted: json["deleted"] == null ? null : json["deleted"],
        title: json["title"] == null ? null : json["title"],
        verifiedTime:
            json["verified_time"] == null ? null : json["verified_time"],
        hiddenAccount:
            json["hidden_account"] == null ? null : json["hidden_account"],
        mobile: json["mobile"] == null ? null : json["mobile"],
        hidden: json["hidden"] == null ? null : json["hidden"],
        code: json["code"],
        lang: json["lang"],
        zendeskId: json["zendesk_id"],
        receiveNews: json["receive_news"] == null ? null : json["receive_news"],
        role: json["role"] == null ? null : json["role"],
      );

  Map<String, dynamic> toJson() => {
        "uid": uid == null ? null : uid,
        "tstamp": tstamp == null ? null : tstamp,
        "username": username == null ? null : username,
        "first_name": firstName == null ? null : firstName,
        "middle_name": middleName == null ? null : middleName,
        "last_name": lastName == null ? null : lastName,
        "crdate": crdate == null ? null : crdate,
        "deleted": deleted == null ? null : deleted,
        "title": title == null ? null : title,
        "verified_time": verifiedTime == null ? null : verifiedTime,
        "hidden_account": hiddenAccount == null ? null : hiddenAccount,
        "mobile": mobile == null ? null : mobile,
        "hidden": hidden == null ? null : hidden,
        "code": code,
        "lang": lang,
        "zendesk_id": zendeskId,
        "receive_news": receiveNews == null ? null : receiveNews,
        "role": role == null ? null : role,
      };

  @override
  // TODO: implement props
  List<Object> get props => [
        this.uid,
        this.tstamp,
        this.username,
        this.firstName,
        this.middleName,
        this.lastName,
        this.crdate,
        this.deleted,
        this.title,
        this.verifiedTime,
        this.hiddenAccount,
        this.mobile,
        this.hidden,
        this.code,
        this.lang,
        this.zendeskId,
        this.receiveNews,
        this.role,
      ];
}

class ClientClient extends Equatable {
  ClientClient({
    this.uid,
    this.name,
    this.email,
    this.urlName,
    this.description,
    this.logo,
    this.image,
    this.phone,
    this.website,
    this.accountNo,
    this.regNo,
    this.address,
    this.tstamp,
    this.crdate,
    this.deleted,
    this.hidden,
    this.webshop,
    this.vatNo,
    this.openingHours,
    this.tax,
    this.automaticReporting,
    this.showImage,
    this.branchCount,
    this.language,
    this.localeFormat,
    this.infrasecId,
    this.clientTypeUid,
    this.timeZone,
    this.customReceiptText,
    this.enableGift,
    this.minGiftAmount,
    this.expiredDate,
    this.bitcoinAccessToken,
    this.partnerId,
    this.deletedReason,
    this.hideRefund,
    this.enableCustomerLoyalty,
    this.multBarcodePerProd,
    this.invoicePayment,
    this.enableInventory,
    this.enableReceiptSettings,
    this.transactionsSmsCounter,
    this.billingAddress,
    this.showFinalPrice,
    this.enableQuantityPrices,
    this.industryCode,
    this.klipkortTax,
    this.klipkortAbility,
    this.klipkortDiscountReason,
    this.enableGiftTax,
    this.enableCatalogCache,
    this.webDescription,
    this.subscriptionEnabled,
    this.workingHours,
    this.zendeskId,
    this.giftSalesAccount,
    this.contPricingDiscountReason,
    this.enableMenuContinuePrices,
    this.useCheaperMenu,
    this.enablePromoCodes,
    this.pantsEnabled,
    this.inventoryBranch,
    this.locale,
    this.currency,
    this.numberOfCourses,
    this.pinRequired,
    this.taxes,
    this.hasExtendIntegration,
  });

  final int uid;
  final String name;
  final dynamic email;
  final dynamic urlName;
  final String description;
  final Logo logo;
  final dynamic image;
  final String phone;
  final String website;
  final String accountNo;
  final String regNo;
  final Address address;
  final String tstamp;
  final String crdate;
  final int deleted;
  final int hidden;
  final int webshop;
  final String vatNo;
  final String openingHours;
  final int tax;
  final int automaticReporting;
  final int showImage;
  final int branchCount;
  final String language;
  final int localeFormat;
  final dynamic infrasecId;
  final dynamic clientTypeUid;
  final int timeZone;
  final dynamic customReceiptText;
  final int enableGift;
  final int minGiftAmount;
  final int expiredDate;
  final dynamic bitcoinAccessToken;
  final dynamic partnerId;
  final dynamic deletedReason;
  final int hideRefund;
  final int enableCustomerLoyalty;
  final int multBarcodePerProd;
  final int invoicePayment;
  final int enableInventory;
  final int enableReceiptSettings;
  final int transactionsSmsCounter;
  final dynamic billingAddress;
  final int showFinalPrice;
  final int enableQuantityPrices;
  final dynamic industryCode;
  final dynamic klipkortTax;
  final int klipkortAbility;
  final dynamic klipkortDiscountReason;
  final int enableGiftTax;
  final dynamic enableCatalogCache;
  final dynamic webDescription;
  final int subscriptionEnabled;
  final Map<String, WorkingHour> workingHours;
  final dynamic zendeskId;
  final dynamic giftSalesAccount;
  final dynamic contPricingDiscountReason;
  final int enableMenuContinuePrices;
  final int useCheaperMenu;
  final int enablePromoCodes;
  final dynamic pantsEnabled;
  final dynamic inventoryBranch;
  final String locale;
  final int currency;
  final dynamic numberOfCourses;
  final String pinRequired;
  final List<Tax> taxes;
  final bool hasExtendIntegration;

  ClientClient copyWith({
    int uid,
    String name,
    dynamic email,
    dynamic urlName,
    String description,
    Logo logo,
    dynamic image,
    String phone,
    String website,
    String accountNo,
    String regNo,
    Address address,
    String tstamp,
    String crdate,
    int deleted,
    int hidden,
    int webshop,
    String vatNo,
    String openingHours,
    int tax,
    int automaticReporting,
    int showImage,
    int branchCount,
    String language,
    int localeFormat,
    dynamic infrasecId,
    dynamic clientTypeUid,
    int timeZone,
    dynamic customReceiptText,
    int enableGift,
    int minGiftAmount,
    int expiredDate,
    dynamic bitcoinAccessToken,
    dynamic partnerId,
    dynamic deletedReason,
    int hideRefund,
    int enableCustomerLoyalty,
    int multBarcodePerProd,
    int invoicePayment,
    int enableInventory,
    int enableReceiptSettings,
    int transactionsSmsCounter,
    dynamic billingAddress,
    int showFinalPrice,
    int enableQuantityPrices,
    dynamic industryCode,
    dynamic klipkortTax,
    int klipkortAbility,
    dynamic klipkortDiscountReason,
    int enableGiftTax,
    dynamic enableCatalogCache,
    dynamic webDescription,
    int subscriptionEnabled,
    Map<String, WorkingHour> workingHours,
    dynamic zendeskId,
    dynamic giftSalesAccount,
    dynamic contPricingDiscountReason,
    int enableMenuContinuePrices,
    int useCheaperMenu,
    int enablePromoCodes,
    dynamic pantsEnabled,
    dynamic inventoryBranch,
    String locale,
    int currency,
    dynamic numberOfCourses,
    String pinRequired,
    List<Tax> taxes,
    bool hasExtendIntegration,
  }) =>
      ClientClient(
        uid: uid ?? this.uid,
        name: name ?? this.name,
        email: email ?? this.email,
        urlName: urlName ?? this.urlName,
        description: description ?? this.description,
        logo: logo ?? this.logo,
        image: image ?? this.image,
        phone: phone ?? this.phone,
        website: website ?? this.website,
        accountNo: accountNo ?? this.accountNo,
        regNo: regNo ?? this.regNo,
        address: address ?? this.address,
        tstamp: tstamp ?? this.tstamp,
        crdate: crdate ?? this.crdate,
        deleted: deleted ?? this.deleted,
        hidden: hidden ?? this.hidden,
        webshop: webshop ?? this.webshop,
        vatNo: vatNo ?? this.vatNo,
        openingHours: openingHours ?? this.openingHours,
        tax: tax ?? this.tax,
        automaticReporting: automaticReporting ?? this.automaticReporting,
        showImage: showImage ?? this.showImage,
        branchCount: branchCount ?? this.branchCount,
        language: language ?? this.language,
        localeFormat: localeFormat ?? this.localeFormat,
        infrasecId: infrasecId ?? this.infrasecId,
        clientTypeUid: clientTypeUid ?? this.clientTypeUid,
        timeZone: timeZone ?? this.timeZone,
        customReceiptText: customReceiptText ?? this.customReceiptText,
        enableGift: enableGift ?? this.enableGift,
        minGiftAmount: minGiftAmount ?? this.minGiftAmount,
        expiredDate: expiredDate ?? this.expiredDate,
        bitcoinAccessToken: bitcoinAccessToken ?? this.bitcoinAccessToken,
        partnerId: partnerId ?? this.partnerId,
        deletedReason: deletedReason ?? this.deletedReason,
        hideRefund: hideRefund ?? this.hideRefund,
        enableCustomerLoyalty:
            enableCustomerLoyalty ?? this.enableCustomerLoyalty,
        multBarcodePerProd: multBarcodePerProd ?? this.multBarcodePerProd,
        invoicePayment: invoicePayment ?? this.invoicePayment,
        enableInventory: enableInventory ?? this.enableInventory,
        enableReceiptSettings:
            enableReceiptSettings ?? this.enableReceiptSettings,
        transactionsSmsCounter:
            transactionsSmsCounter ?? this.transactionsSmsCounter,
        billingAddress: billingAddress ?? this.billingAddress,
        showFinalPrice: showFinalPrice ?? this.showFinalPrice,
        enableQuantityPrices: enableQuantityPrices ?? this.enableQuantityPrices,
        industryCode: industryCode ?? this.industryCode,
        klipkortTax: klipkortTax ?? this.klipkortTax,
        klipkortAbility: klipkortAbility ?? this.klipkortAbility,
        klipkortDiscountReason:
            klipkortDiscountReason ?? this.klipkortDiscountReason,
        enableGiftTax: enableGiftTax ?? this.enableGiftTax,
        enableCatalogCache: enableCatalogCache ?? this.enableCatalogCache,
        webDescription: webDescription ?? this.webDescription,
        subscriptionEnabled: subscriptionEnabled ?? this.subscriptionEnabled,
        workingHours: workingHours ?? this.workingHours,
        zendeskId: zendeskId ?? this.zendeskId,
        giftSalesAccount: giftSalesAccount ?? this.giftSalesAccount,
        contPricingDiscountReason:
            contPricingDiscountReason ?? this.contPricingDiscountReason,
        enableMenuContinuePrices:
            enableMenuContinuePrices ?? this.enableMenuContinuePrices,
        useCheaperMenu: useCheaperMenu ?? this.useCheaperMenu,
        enablePromoCodes: enablePromoCodes ?? this.enablePromoCodes,
        pantsEnabled: pantsEnabled ?? this.pantsEnabled,
        inventoryBranch: inventoryBranch ?? this.inventoryBranch,
        locale: locale ?? this.locale,
        currency: currency ?? this.currency,
        numberOfCourses: numberOfCourses ?? this.numberOfCourses,
        pinRequired: pinRequired ?? this.pinRequired,
        taxes: taxes ?? this.taxes,
        hasExtendIntegration: hasExtendIntegration ?? this.hasExtendIntegration,
      );

  factory ClientClient.fromJson(Map<String, dynamic> json) => ClientClient(
        uid: json["uid"] == null ? null : json["uid"],
        name: json["name"] == null ? null : json["name"],
        email: json["email"],
        urlName: json["url_name"],
        description: json["description"] == null ? null : json["description"],
        logo: json["logo"] == null ? null : Logo.fromJson(json["logo"]),
        image: json["image"],
        phone: json["phone"] == null ? null : json["phone"],
        website: json["website"] == null ? null : json["website"],
        accountNo: json["account_no"] == null ? null : json["account_no"],
        regNo: json["reg_no"] == null ? null : json["reg_no"],
        address:
            json["address"] == null ? null : Address.fromJson(json["address"]),
        tstamp: json["tstamp"] == null ? null : json["tstamp"],
        crdate: json["crdate"] == null ? null : json["crdate"],
        deleted: json["deleted"] == null ? null : json["deleted"],
        hidden: json["hidden"] == null ? null : json["hidden"],
        webshop: json["webshop"] == null ? null : json["webshop"],
        vatNo: json["vat_no"] == null ? null : json["vat_no"],
        openingHours:
            json["opening_hours"] == null ? null : json["opening_hours"],
        tax: json["tax"] == null ? null : json["tax"],
        automaticReporting: json["automatic_reporting"] == null
            ? null
            : json["automatic_reporting"],
        showImage: json["show_image"] == null ? null : json["show_image"],
        branchCount: json["branch_count"] == null ? null : json["branch_count"],
        language: json["language"] == null ? null : json["language"],
        localeFormat:
            json["locale_format"] == null ? null : json["locale_format"],
        infrasecId: json["infrasec_id"],
        clientTypeUid: json["client_type_uid"],
        timeZone: json["time_zone"] == null ? null : json["time_zone"],
        customReceiptText: json["custom_receipt_text"],
        enableGift: json["enable_gift"] == null ? null : json["enable_gift"],
        minGiftAmount:
            json["min_gift_amount"] == null ? null : json["min_gift_amount"],
        expiredDate: json["expired_date"] == null ? null : json["expired_date"],
        bitcoinAccessToken: json["bitcoin_accessToken"],
        partnerId: json["partner_id"],
        deletedReason: json["deleted_reason"],
        hideRefund: json["hide_refund"] == null ? null : json["hide_refund"],
        enableCustomerLoyalty: json["enable_customer_loyalty"] == null
            ? null
            : json["enable_customer_loyalty"],
        multBarcodePerProd: json["mult_barcode_per_prod"] == null
            ? null
            : json["mult_barcode_per_prod"],
        invoicePayment:
            json["invoice_payment"] == null ? null : json["invoice_payment"],
        enableInventory:
            json["enable_inventory"] == null ? null : json["enable_inventory"],
        enableReceiptSettings: json["enable_receipt_settings"] == null
            ? null
            : json["enable_receipt_settings"],
        transactionsSmsCounter: json["transactions_sms_counter"] == null
            ? null
            : json["transactions_sms_counter"],
        billingAddress: json["billing_address"],
        showFinalPrice:
            json["show_final_price"] == null ? null : json["show_final_price"],
        enableQuantityPrices: json["enable_quantity_prices"] == null
            ? null
            : json["enable_quantity_prices"],
        industryCode: json["industry_code"],
        klipkortTax: json["klipkort_tax"],
        klipkortAbility:
            json["klipkort_ability"] == null ? null : json["klipkort_ability"],
        klipkortDiscountReason: json["klipkort_discount_reason"],
        enableGiftTax:
            json["enable_gift_tax"] == null ? null : json["enable_gift_tax"],
        enableCatalogCache: json["enable_catalog_cache"],
        webDescription: json["web_description"],
        subscriptionEnabled: json["subscription_enabled"] == null
            ? null
            : json["subscription_enabled"],
        workingHours: json["working_hours"] == null
            ? null
            : Map.from(json["working_hours"]).map((k, v) =>
                MapEntry<String, WorkingHour>(k, WorkingHour.fromJson(v))),
        zendeskId: json["zendesk_id"],
        giftSalesAccount: json["gift_sales_account"],
        contPricingDiscountReason: json["cont_pricing_discount_reason"],
        enableMenuContinuePrices: json["enable_menu_continue_prices"] == null
            ? null
            : json["enable_menu_continue_prices"],
        useCheaperMenu:
            json["use_cheaper_menu"] == null ? null : json["use_cheaper_menu"],
        enablePromoCodes: json["enable_promo_codes"] == null
            ? null
            : json["enable_promo_codes"],
        pantsEnabled: json["pants_enabled"],
        inventoryBranch: json["inventory_branch"],
        locale: json["locale"] == null ? null : json["locale"],
        currency: json["currency"] == null ? null : json["currency"],
        numberOfCourses: json["number_of_courses"],
        pinRequired: json["pin_required"] == null ? null : json["pin_required"],
        taxes: json["taxes"] == null
            ? null
            : List<Tax>.from(json["taxes"].map((x) => Tax.fromJson(x))),
        hasExtendIntegration: json["has_extend_integration"] == null
            ? null
            : json["has_extend_integration"],
      );

  Map<String, dynamic> toJson() => {
        "uid": uid == null ? null : uid,
        "name": name == null ? null : name,
        "email": email,
        "url_name": urlName,
        "description": description == null ? null : description,
        "logo": logo == null ? null : logo.toJson(),
        "image": image,
        "phone": phone == null ? null : phone,
        "website": website == null ? null : website,
        "account_no": accountNo == null ? null : accountNo,
        "reg_no": regNo == null ? null : regNo,
        "address": address == null ? null : address.toJson(),
        "tstamp": tstamp == null ? null : tstamp,
        "crdate": crdate == null ? null : crdate,
        "deleted": deleted == null ? null : deleted,
        "hidden": hidden == null ? null : hidden,
        "webshop": webshop == null ? null : webshop,
        "vat_no": vatNo == null ? null : vatNo,
        "opening_hours": openingHours == null ? null : openingHours,
        "tax": tax == null ? null : tax,
        "automatic_reporting":
            automaticReporting == null ? null : automaticReporting,
        "show_image": showImage == null ? null : showImage,
        "branch_count": branchCount == null ? null : branchCount,
        "language": language == null ? null : language,
        "locale_format": localeFormat == null ? null : localeFormat,
        "infrasec_id": infrasecId,
        "client_type_uid": clientTypeUid,
        "time_zone": timeZone == null ? null : timeZone,
        "custom_receipt_text": customReceiptText,
        "enable_gift": enableGift == null ? null : enableGift,
        "min_gift_amount": minGiftAmount == null ? null : minGiftAmount,
        "expired_date": expiredDate == null ? null : expiredDate,
        "bitcoin_accessToken": bitcoinAccessToken,
        "partner_id": partnerId,
        "deleted_reason": deletedReason,
        "hide_refund": hideRefund == null ? null : hideRefund,
        "enable_customer_loyalty":
            enableCustomerLoyalty == null ? null : enableCustomerLoyalty,
        "mult_barcode_per_prod":
            multBarcodePerProd == null ? null : multBarcodePerProd,
        "invoice_payment": invoicePayment == null ? null : invoicePayment,
        "enable_inventory": enableInventory == null ? null : enableInventory,
        "enable_receipt_settings":
            enableReceiptSettings == null ? null : enableReceiptSettings,
        "transactions_sms_counter":
            transactionsSmsCounter == null ? null : transactionsSmsCounter,
        "billing_address": billingAddress,
        "show_final_price": showFinalPrice == null ? null : showFinalPrice,
        "enable_quantity_prices":
            enableQuantityPrices == null ? null : enableQuantityPrices,
        "industry_code": industryCode,
        "klipkort_tax": klipkortTax,
        "klipkort_ability": klipkortAbility == null ? null : klipkortAbility,
        "klipkort_discount_reason": klipkortDiscountReason,
        "enable_gift_tax": enableGiftTax == null ? null : enableGiftTax,
        "enable_catalog_cache": enableCatalogCache,
        "web_description": webDescription,
        "subscription_enabled":
            subscriptionEnabled == null ? null : subscriptionEnabled,
        "working_hours": workingHours == null
            ? null
            : Map.from(workingHours)
                .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "zendesk_id": zendeskId,
        "gift_sales_account": giftSalesAccount,
        "cont_pricing_discount_reason": contPricingDiscountReason,
        "enable_menu_continue_prices":
            enableMenuContinuePrices == null ? null : enableMenuContinuePrices,
        "use_cheaper_menu": useCheaperMenu == null ? null : useCheaperMenu,
        "enable_promo_codes":
            enablePromoCodes == null ? null : enablePromoCodes,
        "pants_enabled": pantsEnabled,
        "inventory_branch": inventoryBranch,
        "locale": locale == null ? null : locale,
        "currency": currency == null ? null : currency,
        "number_of_courses": numberOfCourses,
        "pin_required": pinRequired == null ? null : pinRequired,
        "taxes": taxes == null
            ? null
            : List<dynamic>.from(taxes.map((x) => x.toJson())),
        "has_extend_integration":
            hasExtendIntegration == null ? null : hasExtendIntegration,
      };

  @override
  // TODO: implement props
  List<Object> get props => [
        this.uid,
        this.name,
        this.email,
        this.urlName,
        this.description,
        this.logo,
        this.image,
        this.phone,
        this.website,
        this.accountNo,
        this.regNo,
        this.address,
        this.tstamp,
        this.crdate,
        this.deleted,
        this.hidden,
        this.webshop,
        this.vatNo,
        this.openingHours,
        this.tax,
        this.automaticReporting,
        this.showImage,
        this.branchCount,
        this.language,
        this.localeFormat,
        this.infrasecId,
        this.clientTypeUid,
        this.timeZone,
        this.customReceiptText,
        this.enableGift,
        this.minGiftAmount,
        this.expiredDate,
        this.bitcoinAccessToken,
        this.partnerId,
        this.deletedReason,
        this.hideRefund,
        this.enableCustomerLoyalty,
        this.multBarcodePerProd,
        this.invoicePayment,
        this.enableInventory,
        this.enableReceiptSettings,
        this.transactionsSmsCounter,
        this.billingAddress,
        this.showFinalPrice,
        this.enableQuantityPrices,
        this.industryCode,
        this.klipkortTax,
        this.klipkortAbility,
        this.klipkortDiscountReason,
        this.enableGiftTax,
        this.enableCatalogCache,
        this.webDescription,
        this.subscriptionEnabled,
        this.workingHours,
        this.zendeskId,
        this.giftSalesAccount,
        this.contPricingDiscountReason,
        this.enableMenuContinuePrices,
        this.useCheaperMenu,
        this.enablePromoCodes,
        this.pantsEnabled,
        this.inventoryBranch,
        this.locale,
        this.currency,
        this.numberOfCourses,
        this.pinRequired,
        this.taxes,
        this.hasExtendIntegration,
      ];
}

class Address extends Equatable {
  Address({
    this.uid,
    this.streetName,
    this.mapLat,
    this.mapLong,
    this.country,
    this.tstamp,
    this.crdate,
    this.deleted,
    this.hidden,
    this.zipCode,
    this.note,
    this.cityName,
    this.ccName,
    this.name,
    this.batchKey,
    this.building,
    this.floor,
    this.number,
  });

  final int uid;
  final String streetName;
  final dynamic mapLat;
  final dynamic mapLong;
  final int country;
  final String tstamp;
  final String crdate;
  final int deleted;
  final int hidden;
  final String zipCode;
  final dynamic note;
  final String cityName;
  final dynamic ccName;
  final dynamic name;
  final dynamic batchKey;
  final dynamic building;
  final dynamic floor;
  final dynamic number;

  Address copyWith({
    int uid,
    String streetName,
    dynamic mapLat,
    dynamic mapLong,
    int country,
    String tstamp,
    String crdate,
    int deleted,
    int hidden,
    String zipCode,
    dynamic note,
    String cityName,
    dynamic ccName,
    dynamic name,
    dynamic batchKey,
    dynamic building,
    dynamic floor,
    dynamic number,
  }) =>
      Address(
        uid: uid ?? this.uid,
        streetName: streetName ?? this.streetName,
        mapLat: mapLat ?? this.mapLat,
        mapLong: mapLong ?? this.mapLong,
        country: country ?? this.country,
        tstamp: tstamp ?? this.tstamp,
        crdate: crdate ?? this.crdate,
        deleted: deleted ?? this.deleted,
        hidden: hidden ?? this.hidden,
        zipCode: zipCode ?? this.zipCode,
        note: note ?? this.note,
        cityName: cityName ?? this.cityName,
        ccName: ccName ?? this.ccName,
        name: name ?? this.name,
        batchKey: batchKey ?? this.batchKey,
        building: building ?? this.building,
        floor: floor ?? this.floor,
        number: number ?? this.number,
      );

  factory Address.fromJson(Map<String, dynamic> json) => Address(
        uid: json["uid"] == null ? null : json["uid"],
        streetName: json["street_name"] == null ? null : json["street_name"],
        mapLat: json["map_lat"],
        mapLong: json["map_long"],
        country: json["country"] == null ? null : json["country"],
        tstamp: json["tstamp"] == null ? null : json["tstamp"],
        crdate: json["crdate"] == null ? null : json["crdate"],
        deleted: json["deleted"] == null ? null : json["deleted"],
        hidden: json["hidden"] == null ? null : json["hidden"],
        zipCode: json["zip_code"] == null ? null : json["zip_code"],
        note: json["note"],
        cityName: json["city_name"] == null ? null : json["city_name"],
        ccName: json["cc_name"],
        name: json["name"],
        batchKey: json["batch_key"],
        building: json["building"],
        floor: json["floor"],
        number: json["number"],
      );

  Map<String, dynamic> toJson() => {
        "uid": uid == null ? null : uid,
        "street_name": streetName == null ? null : streetName,
        "map_lat": mapLat,
        "map_long": mapLong,
        "country": country == null ? null : country,
        "tstamp": tstamp == null ? null : tstamp,
        "crdate": crdate == null ? null : crdate,
        "deleted": deleted == null ? null : deleted,
        "hidden": hidden == null ? null : hidden,
        "zip_code": zipCode == null ? null : zipCode,
        "note": note,
        "city_name": cityName == null ? null : cityName,
        "cc_name": ccName,
        "name": name,
        "batch_key": batchKey,
        "building": building,
        "floor": floor,
        "number": number,
      };

  @override
  // TODO: implement props
  List<Object> get props => [
        this.uid,
        this.streetName,
        this.mapLat,
        this.mapLong,
        this.country,
        this.tstamp,
        this.crdate,
        this.deleted,
        this.hidden,
        this.zipCode,
        this.note,
        this.cityName,
        this.ccName,
        this.name,
        this.batchKey,
        this.building,
        this.floor,
        this.number,
      ];
}

class Logo extends Equatable {
  Logo({
    this.uid,
    this.path,
    this.crdate,
    this.tstamp,
    this.deleted,
    this.hidden,
    this.imageOriginal,
    this.imageLarge,
    this.imageMedium,
    this.imageSmall,
  });

  final int uid;
  final String path;
  final String crdate;
  final String tstamp;
  final int deleted;
  final int hidden;
  final String imageOriginal;
  final String imageLarge;
  final String imageMedium;
  final String imageSmall;

  Logo copyWith({
    int uid,
    String path,
    String crdate,
    String tstamp,
    int deleted,
    int hidden,
    String imageOriginal,
    String imageLarge,
    String imageMedium,
    String imageSmall,
  }) =>
      Logo(
        uid: uid ?? this.uid,
        path: path ?? this.path,
        crdate: crdate ?? this.crdate,
        tstamp: tstamp ?? this.tstamp,
        deleted: deleted ?? this.deleted,
        hidden: hidden ?? this.hidden,
        imageOriginal: imageOriginal ?? this.imageOriginal,
        imageLarge: imageLarge ?? this.imageLarge,
        imageMedium: imageMedium ?? this.imageMedium,
        imageSmall: imageSmall ?? this.imageSmall,
      );

  factory Logo.fromJson(Map<String, dynamic> json) => Logo(
        uid: json["uid"] == null ? null : json["uid"],
        path: json["path"] == null ? null : json["path"],
        crdate: json["crdate"] == null ? null : json["crdate"],
        tstamp: json["tstamp"] == null ? null : json["tstamp"],
        deleted: json["deleted"] == null ? null : json["deleted"],
        hidden: json["hidden"] == null ? null : json["hidden"],
        imageOriginal:
            json["image_original"] == null ? null : json["image_original"],
        imageLarge: json["image_large"] == null ? null : json["image_large"],
        imageMedium: json["image_medium"] == null ? null : json["image_medium"],
        imageSmall: json["image_small"] == null ? null : json["image_small"],
      );

  Map<String, dynamic> toJson() => {
        "uid": uid == null ? null : uid,
        "path": path == null ? null : path,
        "crdate": crdate == null ? null : crdate,
        "tstamp": tstamp == null ? null : tstamp,
        "deleted": deleted == null ? null : deleted,
        "hidden": hidden == null ? null : hidden,
        "image_original": imageOriginal == null ? null : imageOriginal,
        "image_large": imageLarge == null ? null : imageLarge,
        "image_medium": imageMedium == null ? null : imageMedium,
        "image_small": imageSmall == null ? null : imageSmall,
      };

  @override
  // TODO: implement props
  List<Object> get props => [
        this.uid,
        this.path,
        this.crdate,
        this.tstamp,
        this.deleted,
        this.hidden,
        this.imageOriginal,
        this.imageLarge,
        this.imageMedium,
        this.imageSmall,
      ];
}

class Tax extends Equatable {
  Tax({
    this.uid,
    this.crdate,
    this.tstamp,
    this.deleted,
    this.hidden,
    this.name,
    this.percentage,
    this.enabled,
    this.client,
    this.standardTaxCode,
    this.code,
    this.accountName,
  });

  final int uid;
  final String crdate;
  final String tstamp;
  final int deleted;
  final int hidden;
  final String name;
  final int percentage;
  final int enabled;
  final int client;
  final dynamic standardTaxCode;
  final dynamic code;
  final dynamic accountName;

  Tax copyWith({
    int uid,
    String crdate,
    String tstamp,
    int deleted,
    int hidden,
    String name,
    int percentage,
    int enabled,
    int client,
    dynamic standardTaxCode,
    dynamic code,
    dynamic accountName,
  }) =>
      Tax(
        uid: uid ?? this.uid,
        crdate: crdate ?? this.crdate,
        tstamp: tstamp ?? this.tstamp,
        deleted: deleted ?? this.deleted,
        hidden: hidden ?? this.hidden,
        name: name ?? this.name,
        percentage: percentage ?? this.percentage,
        enabled: enabled ?? this.enabled,
        client: client ?? this.client,
        standardTaxCode: standardTaxCode ?? this.standardTaxCode,
        code: code ?? this.code,
        accountName: accountName ?? this.accountName,
      );

  factory Tax.fromJson(Map<String, dynamic> json) => Tax(
        uid: json["uid"] == null ? null : json["uid"],
        crdate: json["crdate"] == null ? null : json["crdate"],
        tstamp: json["tstamp"] == null ? null : json["tstamp"],
        deleted: json["deleted"] == null ? null : json["deleted"],
        hidden: json["hidden"] == null ? null : json["hidden"],
        name: json["name"] == null ? null : json["name"],
        percentage: json["percentage"] == null ? null : json["percentage"],
        enabled: json["enabled"] == null ? null : json["enabled"],
        client: json["client"] == null ? null : json["client"],
        standardTaxCode: json["standard_tax_code"],
        code: json["code"],
        accountName: json["account_name"],
      );

  Map<String, dynamic> toJson() => {
        "uid": uid == null ? null : uid,
        "crdate": crdate == null ? null : crdate,
        "tstamp": tstamp == null ? null : tstamp,
        "deleted": deleted == null ? null : deleted,
        "hidden": hidden == null ? null : hidden,
        "name": name == null ? null : name,
        "percentage": percentage == null ? null : percentage,
        "enabled": enabled == null ? null : enabled,
        "client": client == null ? null : client,
        "standard_tax_code": standardTaxCode,
        "code": code,
        "account_name": accountName,
      };

  @override
  // TODO: implement props
  List<Object> get props => [
        this.uid,
        this.crdate,
        this.tstamp,
        this.deleted,
        this.hidden,
        this.name,
        this.percentage,
        this.enabled,
        this.client,
        this.standardTaxCode,
        this.code,
        this.accountName,
      ];
}

class WorkingHour extends Equatable {
  WorkingHour({
    this.to,
    this.from,
  });

  final int to;
  final int from;

  WorkingHour copyWith({
    int to,
    int from,
  }) =>
      WorkingHour(
        to: to ?? this.to,
        from: from ?? this.from,
      );

  factory WorkingHour.fromJson(Map<String, dynamic> json) => WorkingHour(
        to: json["to"] == null ? null : json["to"],
        from: json["from"] == null ? null : json["from"],
      );

  Map<String, dynamic> toJson() => {
        "to": to == null ? null : to,
        "from": from == null ? null : from,
      };

  @override
  // TODO: implement props
  List<Object> get props => [
        this.to,
        this.from,
      ];
}
