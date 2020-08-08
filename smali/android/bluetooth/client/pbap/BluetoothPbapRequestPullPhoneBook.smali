.class final Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullPhoneBook;
.super Landroid/bluetooth/client/pbap/BluetoothPbapRequest;
.source "BluetoothPbapRequestPullPhoneBook.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothPbapRequestPullPhoneBook"

.field private static final TYPE:Ljava/lang/String; = "x-bt/phonebook"


# instance fields
.field private final mFormat:B

.field private mNewMissedCalls:I

.field private mResponse:Landroid/bluetooth/client/pbap/BluetoothPbapVcardList;


# direct methods
.method public constructor <init>(Ljava/lang/String;JBII)V
    .locals 8

    const v1, 0xffff

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, -0x1

    invoke-direct {p0}, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;-><init>()V

    iput v4, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullPhoneBook;->mNewMissedCalls:I

    if-ltz p5, :cond_0

    if-le p5, v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "maxListCount should be [0..65535]"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-ltz p6, :cond_2

    if-le p6, v1, :cond_3

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "listStartOffset should be [0..65535]"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    iget-object v1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullPhoneBook;->mHeaderSet:Ljavax/obex/HeaderSet;

    invoke-virtual {v1, v5, p1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    iget-object v1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullPhoneBook;->mHeaderSet:Ljavax/obex/HeaderSet;

    const/16 v2, 0x42

    const-string v3, "x-bt/phonebook"

    invoke-virtual {v1, v2, v3}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    new-instance v0, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;

    invoke-direct {v0}, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;-><init>()V

    if-eqz p4, :cond_4

    if-eq p4, v5, :cond_4

    const/4 p4, 0x0

    :cond_4
    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-eqz v1, :cond_5

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p2, p3}, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->add(BJ)V

    :cond_5
    const/4 v1, 0x7

    invoke-virtual {v0, v1, p4}, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->add(BB)V

    if-lez p5, :cond_7

    int-to-short v1, p5

    invoke-virtual {v0, v6, v1}, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->add(BS)V

    :goto_0
    if-lez p6, :cond_6

    const/4 v1, 0x5

    int-to-short v2, p6

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->add(BS)V

    :cond_6
    iget-object v1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullPhoneBook;->mHeaderSet:Ljavax/obex/HeaderSet;

    invoke-virtual {v0, v1}, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->addToHeaderSet(Ljavax/obex/HeaderSet;)V

    iput-byte p4, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullPhoneBook;->mFormat:B

    return-void

    :cond_7
    invoke-virtual {v0, v6, v4}, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->add(BS)V

    goto :goto_0
.end method


# virtual methods
.method public getList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/vcard/VCardEntry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullPhoneBook;->mResponse:Landroid/bluetooth/client/pbap/BluetoothPbapVcardList;

    invoke-virtual {v0}, Landroid/bluetooth/client/pbap/BluetoothPbapVcardList;->getList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getNewMissedCalls()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullPhoneBook;->mNewMissedCalls:I

    return v0
.end method

.method protected readResponse(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "BluetoothPbapRequestPullPhoneBook"

    const-string v1, "readResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/bluetooth/client/pbap/BluetoothPbapVcardList;

    iget-byte v1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullPhoneBook;->mFormat:B

    invoke-direct {v0, p1, v1}, Landroid/bluetooth/client/pbap/BluetoothPbapVcardList;-><init>(Ljava/io/InputStream;B)V

    iput-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullPhoneBook;->mResponse:Landroid/bluetooth/client/pbap/BluetoothPbapVcardList;

    return-void
.end method

.method protected readResponseHeaders(Ljavax/obex/HeaderSet;)V
    .locals 4

    const/16 v3, 0x9

    const-string v1, "BluetoothPbapRequestPullPhoneBook"

    const-string v2, "readResponse"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->fromHeaderSet(Ljavax/obex/HeaderSet;)Landroid/bluetooth/client/pbap/utils/ObexAppParameters;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->exists(B)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v3}, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->getByte(B)B

    move-result v1

    iput v1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullPhoneBook;->mNewMissedCalls:I

    :cond_0
    return-void
.end method
