.class final Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath;
.super Landroid/bluetooth/client/pbap/BluetoothPbapRequest;
.source "BluetoothPbapRequestSetPath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath$1;,
        Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath$SetPathDir;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothPbapRequestSetPath"


# instance fields
.field private mDir:Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath$SetPathDir;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;-><init>()V

    sget-object v0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath$SetPathDir;->DOWN:Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath$SetPathDir;

    iput-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath;->mDir:Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath$SetPathDir;

    iget-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath;->mHeaderSet:Ljavax/obex/HeaderSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;-><init>()V

    iget-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath;->mHeaderSet:Ljavax/obex/HeaderSet;

    invoke-virtual {v0}, Ljavax/obex/HeaderSet;->setEmptyNameHeader()V

    if-eqz p1, :cond_0

    sget-object v0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath$SetPathDir;->UP:Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath$SetPathDir;

    iput-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath;->mDir:Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath$SetPathDir;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath$SetPathDir;->ROOT:Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath$SetPathDir;

    iput-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath;->mDir:Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath$SetPathDir;

    goto :goto_0
.end method


# virtual methods
.method public execute(Ljavax/obex/ClientSession;)V
    .locals 5

    const-string v2, "BluetoothPbapRequestSetPath"

    const-string v3, "execute"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath$1;->$SwitchMap$android$bluetooth$client$pbap$BluetoothPbapRequestSetPath$SetPathDir:[I

    iget-object v3, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath;->mDir:Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath$SetPathDir;

    invoke-virtual {v3}, Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath$SetPathDir;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    invoke-virtual {v1}, Ljavax/obex/HeaderSet;->getResponseCode()I

    move-result v2

    iput v2, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath;->mResponseCode:I

    :goto_1
    return-void

    :pswitch_0
    iget-object v2, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath;->mHeaderSet:Ljavax/obex/HeaderSet;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v3, v4}, Ljavax/obex/ClientSession;->setPath(Ljavax/obex/HeaderSet;ZZ)Ljavax/obex/HeaderSet;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath;->mHeaderSet:Ljavax/obex/HeaderSet;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v3, v4}, Ljavax/obex/ClientSession;->setPath(Ljavax/obex/HeaderSet;ZZ)Ljavax/obex/HeaderSet;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v2, 0xd0

    iput v2, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath;->mResponseCode:I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
