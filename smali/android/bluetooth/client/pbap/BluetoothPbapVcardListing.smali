.class Landroid/bluetooth/client/pbap/BluetoothPbapVcardListing;
.super Ljava/lang/Object;
.source "BluetoothPbapVcardListing.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothPbapVcardListing"


# instance fields
.field mCards:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/bluetooth/client/pbap/BluetoothPbapCard;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapVcardListing;->mCards:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Landroid/bluetooth/client/pbap/BluetoothPbapVcardListing;->parse(Ljava/io/InputStream;)V

    return-void
.end method

.method private parse(Ljava/io/InputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    :try_start_0
    const-string v4, "UTF-8"

    invoke-interface {v3, p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    :goto_0
    const/4 v4, 0x1

    if-eq v2, v4, :cond_1

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "card"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v0, Landroid/bluetooth/client/pbap/BluetoothPbapCard;

    const/4 v4, 0x0

    const-string v5, "handle"

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "name"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/bluetooth/client/pbap/BluetoothPbapCard;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Landroid/bluetooth/client/pbap/BluetoothPbapVcardListing;->mCards:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "BluetoothPbapVcardListing"

    const-string v5, "XML parser error when parsing XML"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method


# virtual methods
.method public getList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/bluetooth/client/pbap/BluetoothPbapCard;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapVcardListing;->mCards:Ljava/util/ArrayList;

    return-object v0
.end method
