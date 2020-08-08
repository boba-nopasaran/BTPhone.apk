.class Landroid/bluetooth/client/pbap/BluetoothPbapObexAuthenticator;
.super Ljava/lang/Object;
.source "BluetoothPbapObexAuthenticator.java"

# interfaces
.implements Ljavax/obex/Authenticator;


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothPbapObexAuthenticator"


# instance fields
.field private final mCallback:Landroid/os/Handler;

.field private mReplied:Z

.field private mSessionKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexAuthenticator;->mCallback:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onAuthenticationChallenge(Ljava/lang/String;ZZ)Ljavax/obex/PasswordAuthentication;
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexAuthenticator;->mReplied:Z

    const-string v2, "BluetoothPbapObexAuthenticator"

    const-string v3, "onAuthenticationChallenge: sending request"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexAuthenticator;->mCallback:Landroid/os/Handler;

    const/16 v3, 0x69

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v2, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexAuthenticator;->mReplied:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :try_start_1
    const-string v2, "BluetoothPbapObexAuthenticator"

    const-string v3, "onAuthenticationChallenge: waiting for response"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "BluetoothPbapObexAuthenticator"

    const-string v3, "Interrupted while waiting for challenge response"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v2, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexAuthenticator;->mSessionKey:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexAuthenticator;->mSessionKey:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "BluetoothPbapObexAuthenticator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAuthenticationChallenge: mSessionKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexAuthenticator;->mSessionKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljavax/obex/PasswordAuthentication;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexAuthenticator;->mSessionKey:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljavax/obex/PasswordAuthentication;-><init>([B[B)V

    :goto_1
    return-object v1

    :cond_1
    const-string v2, "BluetoothPbapObexAuthenticator"

    const-string v3, "onAuthenticationChallenge: mSessionKey is empty, timeout/cancel occured"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onAuthenticationResponse([B)[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized setReply(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothPbapObexAuthenticator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setReply key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexAuthenticator;->mSessionKey:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexAuthenticator;->mReplied:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
