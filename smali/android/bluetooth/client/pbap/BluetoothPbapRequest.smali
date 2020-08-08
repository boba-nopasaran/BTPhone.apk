.class abstract Landroid/bluetooth/client/pbap/BluetoothPbapRequest;
.super Ljava/lang/Object;
.source "BluetoothPbapRequest.java"


# static fields
.field protected static final OAP_TAGID_FILTER:B = 0x6t

.field protected static final OAP_TAGID_FORMAT:B = 0x7t

.field protected static final OAP_TAGID_LIST_START_OFFSET:B = 0x5t

.field protected static final OAP_TAGID_MAX_LIST_COUNT:B = 0x4t

.field protected static final OAP_TAGID_NEW_MISSED_CALLS:B = 0x9t

.field protected static final OAP_TAGID_ORDER:B = 0x1t

.field protected static final OAP_TAGID_PHONEBOOK_SIZE:B = 0x8t

.field protected static final OAP_TAGID_SEARCH_ATTRIBUTE:B = 0x3t

.field protected static final OAP_TAGID_SEARCH_VALUE:B = 0x2t

.field private static final TAG:Ljava/lang/String; = "BluetoothPbapRequest"


# instance fields
.field private mAborted:Z

.field protected mHeaderSet:Ljavax/obex/HeaderSet;

.field private mOp:Ljavax/obex/ClientOperation;

.field protected mResponseCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;->mAborted:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;->mOp:Ljavax/obex/ClientOperation;

    new-instance v0, Ljavax/obex/HeaderSet;

    invoke-direct {v0}, Ljavax/obex/HeaderSet;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;->mHeaderSet:Ljavax/obex/HeaderSet;

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 3

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;->mAborted:Z

    iget-object v1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;->mOp:Ljavax/obex/ClientOperation;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;->mOp:Ljavax/obex/ClientOperation;

    invoke-virtual {v1}, Ljavax/obex/ClientOperation;->abort()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "BluetoothPbapRequest"

    const-string v2, "Exception occured when trying to abort"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected checkResponseCode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "BluetoothPbapRequest"

    const-string v1, "checkResponseCode"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public execute(Ljavax/obex/ClientSession;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v5, 0xd0

    const-string v2, "BluetoothPbapRequest"

    const-string v3, "execute"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;->mAborted:Z

    if-eqz v2, :cond_0

    iput v5, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;->mResponseCode:I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;->mHeaderSet:Ljavax/obex/HeaderSet;

    invoke-virtual {p1, v2}, Ljavax/obex/ClientSession;->get(Ljavax/obex/HeaderSet;)Ljavax/obex/Operation;

    move-result-object v2

    check-cast v2, Ljavax/obex/ClientOperation;

    iput-object v2, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;->mOp:Ljavax/obex/ClientOperation;

    iget-object v2, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;->mOp:Ljavax/obex/ClientOperation;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljavax/obex/ClientOperation;->setGetFinalFlag(Z)V

    iget-object v2, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;->mOp:Ljavax/obex/ClientOperation;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljavax/obex/ClientOperation;->continueOperation(ZZ)Z

    iget-object v2, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;->mOp:Ljavax/obex/ClientOperation;

    invoke-virtual {v2}, Ljavax/obex/ClientOperation;->getReceivedHeader()Ljavax/obex/HeaderSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;->readResponseHeaders(Ljavax/obex/HeaderSet;)V

    iget-object v2, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;->mOp:Ljavax/obex/ClientOperation;

    invoke-virtual {v2}, Ljavax/obex/ClientOperation;->openInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;->readResponse(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    iget-object v2, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;->mOp:Ljavax/obex/ClientOperation;

    invoke-virtual {v2}, Ljavax/obex/ClientOperation;->close()V

    iget-object v2, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;->mOp:Ljavax/obex/ClientOperation;

    invoke-virtual {v2}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v2

    iput v2, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;->mResponseCode:I

    const-string v2, "BluetoothPbapRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mResponseCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;->mResponseCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;->mResponseCode:I

    invoke-virtual {p0, v2}, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;->checkResponseCode(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "BluetoothPbapRequest"

    const-string v3, "IOException occured when processing request"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput v5, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;->mResponseCode:I

    throw v0
.end method

.method public final isSuccess()Z
    .locals 2

    iget v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;->mResponseCode:I

    const/16 v1, 0xa0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected readResponse(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "BluetoothPbapRequest"

    const-string v1, "readResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected readResponseHeaders(Ljavax/obex/HeaderSet;)V
    .locals 2

    const-string v0, "BluetoothPbapRequest"

    const-string v1, "readResponseHeaders"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
