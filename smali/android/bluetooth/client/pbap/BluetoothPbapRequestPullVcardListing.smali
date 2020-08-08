.class final Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardListing;
.super Landroid/bluetooth/client/pbap/BluetoothPbapRequest;
.source "BluetoothPbapRequestPullVcardListing.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothPbapRequestPullVcardListing"

.field private static final TYPE:Ljava/lang/String; = "x-bt/vcard-listing"


# instance fields
.field private mNewMissedCalls:I

.field private mResponse:Landroid/bluetooth/client/pbap/BluetoothPbapVcardListing;


# direct methods
.method public constructor <init>(Ljava/lang/String;BBLjava/lang/String;II)V
    .locals 5

    const v2, 0xffff

    const/4 v4, 0x1

    invoke-direct {p0}, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardListing;->mResponse:Landroid/bluetooth/client/pbap/BluetoothPbapVcardListing;

    const/4 v1, -0x1

    iput v1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardListing;->mNewMissedCalls:I

    if-ltz p5, :cond_0

    if-le p5, v2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "maxListCount should be [0..65535]"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-ltz p6, :cond_2

    if-le p6, v2, :cond_3

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "listStartOffset should be [0..65535]"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    iget-object v1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardListing;->mHeaderSet:Ljavax/obex/HeaderSet;

    invoke-virtual {v1, v4, p1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    iget-object v1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardListing;->mHeaderSet:Ljavax/obex/HeaderSet;

    const/16 v2, 0x42

    const-string v3, "x-bt/vcard-listing"

    invoke-virtual {v1, v2, v3}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    new-instance v0, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;

    invoke-direct {v0}, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;-><init>()V

    if-ltz p2, :cond_5

    invoke-virtual {v0, v4, p2}, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->add(BB)V

    :cond_5
    if-eqz p4, :cond_6

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p3}, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->add(BB)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p4}, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->add(BLjava/lang/String;)V

    :cond_6
    if-lez p5, :cond_7

    const/4 v1, 0x4

    int-to-short v2, p5

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->add(BS)V

    :cond_7
    if-lez p6, :cond_8

    const/4 v1, 0x5

    int-to-short v2, p6

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->add(BS)V

    :cond_8
    iget-object v1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardListing;->mHeaderSet:Ljavax/obex/HeaderSet;

    invoke-virtual {v0, v1}, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->addToHeaderSet(Ljavax/obex/HeaderSet;)V

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

    iget-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardListing;->mResponse:Landroid/bluetooth/client/pbap/BluetoothPbapVcardListing;

    invoke-virtual {v0}, Landroid/bluetooth/client/pbap/BluetoothPbapVcardListing;->getList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getNewMissedCalls()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardListing;->mNewMissedCalls:I

    return v0
.end method

.method protected readResponse(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "BluetoothPbapRequestPullVcardListing"

    const-string v1, "readResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/bluetooth/client/pbap/BluetoothPbapVcardListing;

    invoke-direct {v0, p1}, Landroid/bluetooth/client/pbap/BluetoothPbapVcardListing;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardListing;->mResponse:Landroid/bluetooth/client/pbap/BluetoothPbapVcardListing;

    return-void
.end method

.method protected readResponseHeaders(Ljavax/obex/HeaderSet;)V
    .locals 4

    const/16 v3, 0x9

    const-string v1, "BluetoothPbapRequestPullVcardListing"

    const-string v2, "readResponseHeaders"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->fromHeaderSet(Ljavax/obex/HeaderSet;)Landroid/bluetooth/client/pbap/utils/ObexAppParameters;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->exists(B)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v3}, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->getByte(B)B

    move-result v1

    iput v1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardListing;->mNewMissedCalls:I

    :cond_0
    return-void
.end method
