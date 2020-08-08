.class final Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardEntry;
.super Landroid/bluetooth/client/pbap/BluetoothPbapRequest;
.source "BluetoothPbapRequestPullVcardEntry.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothPbapRequestPullVcardEntry"

.field private static final TYPE:Ljava/lang/String; = "x-bt/vcard"


# instance fields
.field private final mFormat:B

.field private mResponse:Landroid/bluetooth/client/pbap/BluetoothPbapVcardList;


# direct methods
.method public constructor <init>(Ljava/lang/String;JB)V
    .locals 6

    const/4 v4, 0x1

    invoke-direct {p0}, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;-><init>()V

    iget-object v1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardEntry;->mHeaderSet:Ljavax/obex/HeaderSet;

    invoke-virtual {v1, v4, p1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    iget-object v1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardEntry;->mHeaderSet:Ljavax/obex/HeaderSet;

    const/16 v2, 0x42

    const-string v3, "x-bt/vcard"

    invoke-virtual {v1, v2, v3}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    if-eqz p4, :cond_0

    if-eq p4, v4, :cond_0

    const/4 p4, 0x0

    :cond_0
    new-instance v0, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;

    invoke-direct {v0}, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;-><init>()V

    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-eqz v1, :cond_1

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p2, p3}, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->add(BJ)V

    :cond_1
    const/4 v1, 0x7

    invoke-virtual {v0, v1, p4}, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->add(BB)V

    iget-object v1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardEntry;->mHeaderSet:Ljavax/obex/HeaderSet;

    invoke-virtual {v0, v1}, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->addToHeaderSet(Ljavax/obex/HeaderSet;)V

    iput-byte p4, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardEntry;->mFormat:B

    return-void
.end method


# virtual methods
.method protected checkResponseCode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "BluetoothPbapRequestPullVcardEntry"

    const-string v1, "checkResponseCode"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardEntry;->mResponse:Landroid/bluetooth/client/pbap/BluetoothPbapVcardList;

    invoke-virtual {v0}, Landroid/bluetooth/client/pbap/BluetoothPbapVcardList;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0xc4

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid response received"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "BluetoothPbapRequestPullVcardEntry"

    const-string v1, "Vcard Entry not found"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public getVcard()Lcom/android/vcard/VCardEntry;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardEntry;->mResponse:Landroid/bluetooth/client/pbap/BluetoothPbapVcardList;

    invoke-virtual {v0}, Landroid/bluetooth/client/pbap/BluetoothPbapVcardList;->getFirst()Lcom/android/vcard/VCardEntry;

    move-result-object v0

    return-object v0
.end method

.method protected readResponse(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "BluetoothPbapRequestPullVcardEntry"

    const-string v1, "readResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/bluetooth/client/pbap/BluetoothPbapVcardList;

    iget-byte v1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardEntry;->mFormat:B

    invoke-direct {v0, p1, v1}, Landroid/bluetooth/client/pbap/BluetoothPbapVcardList;-><init>(Ljava/io/InputStream;B)V

    iput-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardEntry;->mResponse:Landroid/bluetooth/client/pbap/BluetoothPbapVcardList;

    return-void
.end method
