.class Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;
.super Ljava/lang/Thread;
.source "BluetoothPbapObexSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObexClientThread"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ObexClientThread"


# instance fields
.field private mClientSession:Ljavax/obex/ClientSession;

.field private mRequest:Landroid/bluetooth/client/pbap/BluetoothPbapRequest;

.field private volatile mRunning:Z

.field final synthetic this$0:Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;


# direct methods
.method public constructor <init>(Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->this$0:Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->mRunning:Z

    iput-object v1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->mClientSession:Ljavax/obex/ClientSession;

    iput-object v1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->mRequest:Landroid/bluetooth/client/pbap/BluetoothPbapRequest;

    return-void
.end method

.method static synthetic access$000(Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;)Landroid/bluetooth/client/pbap/BluetoothPbapRequest;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->mRequest:Landroid/bluetooth/client/pbap/BluetoothPbapRequest;

    return-object v0
.end method

.method private connect()Z
    .locals 5

    const/4 v2, 0x0

    const-string v3, "ObexClientThread"

    const-string v4, "connect"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v3, Ljavax/obex/ClientSession;

    iget-object v4, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->this$0:Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;

    invoke-static {v4}, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->access$300(Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;)Ljavax/obex/ObexTransport;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/obex/ClientSession;-><init>(Ljavax/obex/ObexTransport;)V

    iput-object v3, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->mClientSession:Ljavax/obex/ClientSession;

    iget-object v3, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->mClientSession:Ljavax/obex/ClientSession;

    iget-object v4, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->this$0:Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;

    invoke-static {v4}, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->access$400(Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;)Landroid/bluetooth/client/pbap/BluetoothPbapObexAuthenticator;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavax/obex/ClientSession;->setAuthenticator(Ljavax/obex/Authenticator;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Ljavax/obex/HeaderSet;

    invoke-direct {v1}, Ljavax/obex/HeaderSet;-><init>()V

    const/16 v3, 0x46

    invoke-static {}, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->access$500()[B

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    :try_start_1
    iget-object v3, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->mClientSession:Ljavax/obex/ClientSession;

    invoke-virtual {v3, v1}, Ljavax/obex/ClientSession;->connect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/obex/HeaderSet;->getResponseCode()I

    move-result v3

    const/16 v4, 0xa0

    if-eq v3, v4, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->disconnect()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return v2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private disconnect()V
    .locals 2

    const-string v0, "ObexClientThread"

    const-string v1, "disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->mClientSession:Ljavax/obex/ClientSession;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->mClientSession:Ljavax/obex/ClientSession;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/obex/ClientSession;->disconnect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    iget-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->mClientSession:Ljavax/obex/ClientSession;

    invoke-virtual {v0}, Ljavax/obex/ClientSession;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    invoke-direct {p0}, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->connect()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->this$0:Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;

    invoke-static {v1}, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->access$200(Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->this$0:Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;

    invoke-static {v1}, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->access$200(Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :goto_1
    iget-boolean v1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->mRunning:Z

    if-eqz v1, :cond_3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->mRequest:Landroid/bluetooth/client/pbap/BluetoothPbapRequest;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-boolean v1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->mRunning:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->mRequest:Landroid/bluetooth/client/pbap/BluetoothPbapRequest;

    if-eqz v1, :cond_2

    :try_start_2
    iget-object v1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->mRequest:Landroid/bluetooth/client/pbap/BluetoothPbapRequest;

    iget-object v2, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->mClientSession:Ljavax/obex/ClientSession;

    invoke-virtual {v1, v2}, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;->execute(Ljavax/obex/ClientSession;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    iget-object v1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->mRequest:Landroid/bluetooth/client/pbap/BluetoothPbapRequest;

    invoke-virtual {v1}, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->this$0:Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;

    invoke-static {v1}, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->access$200(Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x67

    iget-object v3, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->mRequest:Landroid/bluetooth/client/pbap/BluetoothPbapRequest;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    :goto_3
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->mRequest:Landroid/bluetooth/client/pbap/BluetoothPbapRequest;

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_3
    iput-boolean v1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->mRunning:Z

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    invoke-direct {p0}, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->disconnect()V

    iget-object v1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->this$0:Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;

    invoke-static {v1}, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->access$200(Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    :catch_1
    move-exception v0

    iput-boolean v4, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->mRunning:Z

    goto :goto_2

    :cond_4
    iget-object v1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->this$0:Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;

    invoke-static {v1}, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->access$200(Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x68

    iget-object v3, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->mRequest:Landroid/bluetooth/client/pbap/BluetoothPbapRequest;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3
.end method

.method public declared-synchronized schedule(Landroid/bluetooth/client/pbap/BluetoothPbapRequest;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "ObexClientThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "schedule: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->mRequest:Landroid/bluetooth/client/pbap/BluetoothPbapRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iput-object p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->mRequest:Landroid/bluetooth/client/pbap/BluetoothPbapRequest;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
