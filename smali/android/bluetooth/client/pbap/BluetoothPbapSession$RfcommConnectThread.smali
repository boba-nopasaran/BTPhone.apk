.class Landroid/bluetooth/client/pbap/BluetoothPbapSession$RfcommConnectThread;
.super Ljava/lang/Thread;
.source "BluetoothPbapSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/client/pbap/BluetoothPbapSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RfcommConnectThread"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RfcommConnectThread"


# instance fields
.field private mSocket:Landroid/bluetooth/BluetoothSocket;

.field final synthetic this$0:Landroid/bluetooth/client/pbap/BluetoothPbapSession;


# direct methods
.method public constructor <init>(Landroid/bluetooth/client/pbap/BluetoothPbapSession;)V
    .locals 1

    iput-object p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession$RfcommConnectThread;->this$0:Landroid/bluetooth/client/pbap/BluetoothPbapSession;

    const-string v0, "RfcommConnectThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private closeSocket()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession$RfcommConnectThread;->mSocket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession$RfcommConnectThread;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "RfcommConnectThread"

    const-string v2, "Error when closing socket"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v2, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession$RfcommConnectThread;->this$0:Landroid/bluetooth/client/pbap/BluetoothPbapSession;

    invoke-static {v2}, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->access$000(Landroid/bluetooth/client/pbap/BluetoothPbapSession;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession$RfcommConnectThread;->this$0:Landroid/bluetooth/client/pbap/BluetoothPbapSession;

    invoke-static {v2}, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->access$000(Landroid/bluetooth/client/pbap/BluetoothPbapSession;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession$RfcommConnectThread;->this$0:Landroid/bluetooth/client/pbap/BluetoothPbapSession;

    invoke-static {v2}, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->access$100(Landroid/bluetooth/client/pbap/BluetoothPbapSession;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    const-string v3, "0000112f-0000-1000-8000-00805f9b34fb"

    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v2

    iput-object v2, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession$RfcommConnectThread;->mSocket:Landroid/bluetooth/BluetoothSocket;

    iget-object v2, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession$RfcommConnectThread;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->connect()V

    new-instance v1, Landroid/bluetooth/client/pbap/BluetoothPbapObexTransport;

    iget-object v2, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession$RfcommConnectThread;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-direct {v1, v2}, Landroid/bluetooth/client/pbap/BluetoothPbapObexTransport;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    iget-object v2, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession$RfcommConnectThread;->this$0:Landroid/bluetooth/client/pbap/BluetoothPbapSession;

    invoke-static {v2}, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->access$200(Landroid/bluetooth/client/pbap/BluetoothPbapSession;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0}, Landroid/bluetooth/client/pbap/BluetoothPbapSession$RfcommConnectThread;->closeSocket()V

    iget-object v2, p0, Landroid/bluetooth/client/pbap/BluetoothPbapSession$RfcommConnectThread;->this$0:Landroid/bluetooth/client/pbap/BluetoothPbapSession;

    invoke-static {v2}, Landroid/bluetooth/client/pbap/BluetoothPbapSession;->access$200(Landroid/bluetooth/client/pbap/BluetoothPbapSession;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
