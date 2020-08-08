.class final Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;
.super Ljava/lang/Object;
.source "BluetoothPbapObexSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;
    }
.end annotation


# static fields
.field static final OBEX_SESSION_AUTHENTICATION_REQUEST:I = 0x69

.field static final OBEX_SESSION_AUTHENTICATION_TIMEOUT:I = 0x6a

.field static final OBEX_SESSION_CONNECTED:I = 0x64

.field static final OBEX_SESSION_DISCONNECTED:I = 0x66

.field static final OBEX_SESSION_FAILED:I = 0x65

.field static final OBEX_SESSION_REQUEST_COMPLETED:I = 0x67

.field static final OBEX_SESSION_REQUEST_FAILED:I = 0x68

.field private static final PBAP_TARGET:[B

.field private static final TAG:Ljava/lang/String; = "BluetoothPbapObexSession"


# instance fields
.field private mAuth:Landroid/bluetooth/client/pbap/BluetoothPbapObexAuthenticator;

.field private mObexClientThread:Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;

.field private mSessionHandler:Landroid/os/Handler;

.field private final mTransport:Ljavax/obex/ObexTransport;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->PBAP_TARGET:[B

    return-void

    :array_0
    .array-data 1
        0x79t
        0x61t
        0x35t
        -0x10t
        -0x10t
        -0x3bt
        0x11t
        -0x28t
        0x9t
        0x66t
        0x8t
        0x0t
        0x20t
        0xct
        -0x66t
        0x66t
    .end array-data
.end method

.method public constructor <init>(Ljavax/obex/ObexTransport;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->mAuth:Landroid/bluetooth/client/pbap/BluetoothPbapObexAuthenticator;

    iput-object p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->mTransport:Ljavax/obex/ObexTransport;

    return-void
.end method

.method static synthetic access$100(Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;)Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->mObexClientThread:Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;

    return-object v0
.end method

.method static synthetic access$200(Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->mSessionHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;)Ljavax/obex/ObexTransport;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->mTransport:Ljavax/obex/ObexTransport;

    return-object v0
.end method

.method static synthetic access$400(Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;)Landroid/bluetooth/client/pbap/BluetoothPbapObexAuthenticator;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->mAuth:Landroid/bluetooth/client/pbap/BluetoothPbapObexAuthenticator;

    return-object v0
.end method

.method static synthetic access$500()[B
    .locals 1

    sget-object v0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->PBAP_TARGET:[B

    return-object v0
.end method


# virtual methods
.method public abort()V
    .locals 2

    const-string v0, "BluetoothPbapObexSession"

    const-string v1, "abort"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->mObexClientThread:Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->mObexClientThread:Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;

    invoke-static {v0}, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->access$000(Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;)Landroid/bluetooth/client/pbap/BluetoothPbapRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$1;

    invoke-direct {v0, p0}, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$1;-><init>(Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;)V

    invoke-virtual {v0}, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$1;->run()V

    :cond_0
    return-void
.end method

.method public schedule(Landroid/bluetooth/client/pbap/BluetoothPbapRequest;)Z
    .locals 3

    const-string v0, "BluetoothPbapObexSession"

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

    iget-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->mObexClientThread:Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;

    if-nez v0, :cond_0

    const-string v0, "BluetoothPbapObexSession"

    const-string v1, "OBEX session not started"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->mObexClientThread:Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;

    invoke-virtual {v0, p1}, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->schedule(Landroid/bluetooth/client/pbap/BluetoothPbapRequest;)Z

    move-result v0

    goto :goto_0
.end method

.method public setAuthReply(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "BluetoothPbapObexSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAuthReply key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->mAuth:Landroid/bluetooth/client/pbap/BluetoothPbapObexAuthenticator;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->mAuth:Landroid/bluetooth/client/pbap/BluetoothPbapObexAuthenticator;

    invoke-virtual {v0, p1}, Landroid/bluetooth/client/pbap/BluetoothPbapObexAuthenticator;->setReply(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public start(Landroid/os/Handler;)V
    .locals 2

    const-string v0, "BluetoothPbapObexSession"

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->mSessionHandler:Landroid/os/Handler;

    new-instance v0, Landroid/bluetooth/client/pbap/BluetoothPbapObexAuthenticator;

    iget-object v1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->mSessionHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/bluetooth/client/pbap/BluetoothPbapObexAuthenticator;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->mAuth:Landroid/bluetooth/client/pbap/BluetoothPbapObexAuthenticator;

    new-instance v0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;

    invoke-direct {v0, p0}, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;-><init>(Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;)V

    iput-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->mObexClientThread:Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;

    iget-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->mObexClientThread:Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;

    invoke-virtual {v0}, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->start()V

    return-void
.end method

.method public stop()V
    .locals 2

    const-string v0, "BluetoothPbapObexSession"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->mObexClientThread:Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->mObexClientThread:Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;

    invoke-virtual {v0}, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->interrupt()V

    iget-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->mObexClientThread:Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;

    invoke-virtual {v0}, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->join()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->mObexClientThread:Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
