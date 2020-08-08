.class Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullPhoneBookSize;
.super Landroid/bluetooth/client/pbap/BluetoothPbapRequest;
.source "BluetoothPbapRequestPullPhoneBookSize.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothPbapRequestPullPhoneBookSize"

.field private static final TYPE:Ljava/lang/String; = "x-bt/phonebook"


# instance fields
.field private mSize:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;-><init>()V

    iget-object v1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullPhoneBookSize;->mHeaderSet:Ljavax/obex/HeaderSet;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    iget-object v1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullPhoneBookSize;->mHeaderSet:Ljavax/obex/HeaderSet;

    const/16 v2, 0x42

    const-string v3, "x-bt/phonebook"

    invoke-virtual {v1, v2, v3}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    new-instance v0, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;

    invoke-direct {v0}, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;-><init>()V

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->add(BS)V

    iget-object v1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullPhoneBookSize;->mHeaderSet:Ljavax/obex/HeaderSet;

    invoke-virtual {v0, v1}, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->addToHeaderSet(Ljavax/obex/HeaderSet;)V

    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullPhoneBookSize;->mSize:I

    return v0
.end method

.method protected readResponseHeaders(Ljavax/obex/HeaderSet;)V
    .locals 3

    const-string v1, "BluetoothPbapRequestPullPhoneBookSize"

    const-string v2, "readResponseHeaders"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->fromHeaderSet(Ljavax/obex/HeaderSet;)Landroid/bluetooth/client/pbap/utils/ObexAppParameters;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->getShort(B)S

    move-result v1

    iput v1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullPhoneBookSize;->mSize:I

    return-void
.end method
