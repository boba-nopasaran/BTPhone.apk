.class public Landroid/bluetooth/client/pbap/BluetoothPbapCard;
.super Ljava/lang/Object;
.source "BluetoothPbapCard.java"


# instance fields
.field public final N:Ljava/lang/String;

.field public final firstName:Ljava/lang/String;

.field public final handle:Ljava/lang/String;

.field public final lastName:Ljava/lang/String;

.field public final middleName:Ljava/lang/String;

.field public final prefix:Ljava/lang/String;

.field public final suffix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapCard;->handle:Ljava/lang/String;

    iput-object p2, p0, Landroid/bluetooth/client/pbap/BluetoothPbapCard;->N:Ljava/lang/String;

    const-string v1, ";"

    const/4 v3, 0x5

    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-ge v1, v4, :cond_0

    move-object v1, v2

    :goto_0
    iput-object v1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapCard;->lastName:Ljava/lang/String;

    array-length v1, v0

    if-ge v1, v5, :cond_1

    move-object v1, v2

    :goto_1
    iput-object v1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapCard;->firstName:Ljava/lang/String;

    array-length v1, v0

    if-ge v1, v6, :cond_2

    move-object v1, v2

    :goto_2
    iput-object v1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapCard;->middleName:Ljava/lang/String;

    array-length v1, v0

    if-ge v1, v7, :cond_3

    move-object v1, v2

    :goto_3
    iput-object v1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapCard;->prefix:Ljava/lang/String;

    array-length v1, v0

    const/4 v3, 0x5

    if-ge v1, v3, :cond_4

    :goto_4
    iput-object v2, p0, Landroid/bluetooth/client/pbap/BluetoothPbapCard;->suffix:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_0

    :cond_1
    aget-object v1, v0, v4

    goto :goto_1

    :cond_2
    aget-object v1, v0, v5

    goto :goto_2

    :cond_3
    aget-object v1, v0, v6

    goto :goto_3

    :cond_4
    aget-object v2, v0, v7

    goto :goto_4
.end method

.method public static jsonifyVcardEntry(Lcom/android/vcard/VCardEntry;)Ljava/lang/String;
    .locals 13

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/vcard/VCardEntry;->getNameData()Lcom/android/vcard/VCardEntry$NameData;

    move-result-object v8

    const-string v11, "formatted"

    invoke-virtual {v8}, Lcom/android/vcard/VCardEntry$NameData;->getFormatted()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v11, "family"

    invoke-virtual {v8}, Lcom/android/vcard/VCardEntry$NameData;->getFamily()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v11, "given"

    invoke-virtual {v8}, Lcom/android/vcard/VCardEntry$NameData;->getGiven()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v11, "middle"

    invoke-virtual {v8}, Lcom/android/vcard/VCardEntry$NameData;->getMiddle()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v11, "prefix"

    invoke-virtual {v8}, Lcom/android/vcard/VCardEntry$NameData;->getPrefix()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v11, "suffix"

    invoke-virtual {v8}, Lcom/android/vcard/VCardEntry$NameData;->getSuffix()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p0}, Lcom/android/vcard/VCardEntry;->getPhoneList()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/vcard/VCardEntry$PhoneData;

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v11, "type"

    invoke-virtual {v9}, Lcom/android/vcard/VCardEntry$PhoneData;->getType()I

    move-result v12

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v11, "number"

    invoke-virtual {v9}, Lcom/android/vcard/VCardEntry$PhoneData;->getNumber()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v11, "label"

    invoke-virtual {v9}, Lcom/android/vcard/VCardEntry$PhoneData;->getLabel()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v11, "is_primary"

    invoke-virtual {v9}, Lcom/android/vcard/VCardEntry$PhoneData;->isPrimary()Z

    move-result v12

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v11

    :cond_0
    :goto_2
    :try_start_2
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p0}, Lcom/android/vcard/VCardEntry;->getEmailList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardEntry$EmailData;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v11, "type"

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$EmailData;->getType()I

    move-result v12

    invoke-virtual {v4, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v11, "address"

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$EmailData;->getAddress()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v11, "label"

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$EmailData;->getLabel()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v11, "is_primary"

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$EmailData;->isPrimary()Z

    move-result v12

    invoke-virtual {v4, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v11

    :cond_1
    :goto_4
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    return-object v11

    :cond_2
    :try_start_3
    const-string v11, "phones"

    invoke-virtual {v3, v11, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :cond_3
    :try_start_4
    const-string v11, "emails"

    invoke-virtual {v3, v11, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :catch_2
    move-exception v11

    goto/16 :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "handle"

    iget-object v2, p0, Landroid/bluetooth/client/pbap/BluetoothPbapCard;->handle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "N"

    iget-object v2, p0, Landroid/bluetooth/client/pbap/BluetoothPbapCard;->N:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "lastName"

    iget-object v2, p0, Landroid/bluetooth/client/pbap/BluetoothPbapCard;->lastName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "firstName"

    iget-object v2, p0, Landroid/bluetooth/client/pbap/BluetoothPbapCard;->firstName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "middleName"

    iget-object v2, p0, Landroid/bluetooth/client/pbap/BluetoothPbapCard;->middleName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "prefix"

    iget-object v2, p0, Landroid/bluetooth/client/pbap/BluetoothPbapCard;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "suffix"

    iget-object v2, p0, Landroid/bluetooth/client/pbap/BluetoothPbapCard;->suffix:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v1

    goto :goto_0
.end method
