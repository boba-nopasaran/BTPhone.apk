.class public final Ljavax/obex/ServerSession;
.super Ljavax/obex/ObexSession;
.source "ServerSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "Obex ServerSession"


# instance fields
.field private mClosed:Z

.field private mInput:Ljava/io/InputStream;

.field private mListener:Ljavax/obex/ServerRequestHandler;

.field private mMaxPacketLength:I

.field private mOutput:Ljava/io/OutputStream;

.field private mProcessThread:Ljava/lang/Thread;

.field private mTransport:Ljavax/obex/ObexTransport;


# direct methods
.method public constructor <init>(Ljavax/obex/ObexTransport;Ljavax/obex/ServerRequestHandler;Ljavax/obex/Authenticator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljavax/obex/ObexSession;-><init>()V

    iput-object p3, p0, Ljavax/obex/ServerSession;->mAuthenticator:Ljavax/obex/Authenticator;

    iput-object p1, p0, Ljavax/obex/ServerSession;->mTransport:Ljavax/obex/ObexTransport;

    iget-object v0, p0, Ljavax/obex/ServerSession;->mTransport:Ljavax/obex/ObexTransport;

    invoke-interface {v0}, Ljavax/obex/ObexTransport;->openInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    iget-object v0, p0, Ljavax/obex/ServerSession;->mTransport:Ljavax/obex/ObexTransport;

    invoke-interface {v0}, Ljavax/obex/ObexTransport;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Ljavax/obex/ServerSession;->mOutput:Ljava/io/OutputStream;

    iput-object p2, p0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    const/16 v0, 0x100

    iput v0, p0, Ljavax/obex/ServerSession;->mMaxPacketLength:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/obex/ServerSession;->mClosed:Z

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Ljavax/obex/ServerSession;->mProcessThread:Ljava/lang/Thread;

    iget-object v0, p0, Ljavax/obex/ServerSession;->mProcessThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private handleAbortRequest()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa0

    new-instance v4, Ljavax/obex/HeaderSet;

    invoke-direct {v4}, Ljavax/obex/HeaderSet;-><init>()V

    new-instance v3, Ljavax/obex/HeaderSet;

    invoke-direct {v3}, Ljavax/obex/HeaderSet;-><init>()V

    iget-object v5, p0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v2

    shl-int/lit8 v5, v2, 0x8

    iget-object v6, p0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v6

    add-int v2, v5, v6

    const v5, 0xfffe

    if-le v2, v5, :cond_0

    const/16 v0, 0xce

    :goto_0
    const/4 v5, 0x0

    invoke-virtual {p0, v0, v5}, Ljavax/obex/ServerSession;->sendResponse(I[B)V

    return-void

    :cond_0
    const/4 v1, 0x3

    :goto_1
    if-ge v1, v2, :cond_1

    iget-object v5, p0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v5, p0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    invoke-virtual {v5, v4, v3}, Ljavax/obex/ServerRequestHandler;->onAbort(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I

    move-result v0

    const-string v5, "Obex ServerSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onAbort request handler return value- "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Ljavax/obex/ServerSession;->validateResponseCode(I)I

    move-result v0

    goto :goto_0
.end method

.method private handleConnectRequest()V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v17, 0x7

    const/4 v8, 0x0

    const/4 v5, -0x1

    new-instance v15, Ljavax/obex/HeaderSet;

    invoke-direct {v15}, Ljavax/obex/HeaderSet;-><init>()V

    new-instance v14, Ljavax/obex/HeaderSet;

    invoke-direct {v14}, Ljavax/obex/HeaderSet;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->read()I

    move-result v13

    shl-int/lit8 v19, v13, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->read()I

    move-result v20

    add-int v13, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->read()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->read()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->read()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Ljavax/obex/ServerSession;->mMaxPacketLength:I

    move-object/from16 v0, p0

    iget v0, v0, Ljavax/obex/ServerSession;->mMaxPacketLength:I

    move/from16 v19, v0

    shl-int/lit8 v19, v19, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->read()I

    move-result v20

    add-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Ljavax/obex/ServerSession;->mMaxPacketLength:I

    move-object/from16 v0, p0

    iget v0, v0, Ljavax/obex/ServerSession;->mMaxPacketLength:I

    move/from16 v19, v0

    const v20, 0xfffe

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_0

    const v19, 0xfffe

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Ljavax/obex/ServerSession;->mMaxPacketLength:I

    :cond_0
    const v19, 0xfffe

    move/from16 v0, v19

    if-le v13, v0, :cond_3

    const/16 v5, 0xce

    const/16 v17, 0x7

    :cond_1
    :goto_0
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljavax/obex/ObexHelper;->convertToByteArray(J)[B

    move-result-object v12

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v16, v0

    const/16 v19, 0x0

    int-to-byte v0, v5

    move/from16 v20, v0

    aput-byte v20, v16, v19

    const/16 v19, 0x1

    const/16 v20, 0x2

    aget-byte v20, v12, v20

    aput-byte v20, v16, v19

    const/16 v19, 0x2

    const/16 v20, 0x3

    aget-byte v20, v12, v20

    aput-byte v20, v16, v19

    const/16 v19, 0x3

    const/16 v20, 0x10

    aput-byte v20, v16, v19

    const/16 v19, 0x4

    const/16 v20, 0x0

    aput-byte v20, v16, v19

    const/16 v19, 0x5

    const/16 v20, -0x1

    aput-byte v20, v16, v19

    const/16 v19, 0x6

    const/16 v20, -0x2

    aput-byte v20, v16, v19

    if-eqz v8, :cond_2

    const/16 v19, 0x0

    const/16 v20, 0x7

    array-length v0, v8

    move/from16 v21, v0

    move/from16 v0, v19

    move-object/from16 v1, v16

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v8, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mOutput:Ljava/io/OutputStream;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mOutput:Ljava/io/OutputStream;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->flush()V

    return-void

    :cond_3
    const/16 v19, 0x7

    move/from16 v0, v19

    if-le v13, v0, :cond_5

    add-int/lit8 v19, v13, -0x7

    move/from16 v0, v19

    new-array v9, v0, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/io/InputStream;->read([B)I

    move-result v4

    :goto_1
    array-length v0, v9

    move/from16 v19, v0

    move/from16 v0, v19

    if-eq v4, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    move-object/from16 v19, v0

    array-length v0, v9

    move/from16 v20, v0

    sub-int v20, v20, v4

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v9, v4, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v19

    add-int v4, v4, v19

    goto :goto_1

    :cond_4
    invoke-static {v15, v9}, Ljavax/obex/ObexHelper;->updateHeaderSet(Ljavax/obex/HeaderSet;[B)[B

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljavax/obex/ServerRequestHandler;->getConnectionId()J

    move-result-wide v20

    const-wide/16 v22, -0x1

    cmp-long v19, v20, v22

    if-eqz v19, :cond_9

    iget-object v0, v15, Ljavax/obex/HeaderSet;->mConnectionID:[B

    move-object/from16 v19, v0

    if-eqz v19, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    move-object/from16 v19, v0

    iget-object v0, v15, Ljavax/obex/HeaderSet;->mConnectionID:[B

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljavax/obex/ObexHelper;->convertToLong([B)J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljavax/obex/ServerRequestHandler;->setConnectionId(J)V

    :goto_2
    iget-object v0, v15, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v19, v0

    if-eqz v19, :cond_7

    iget-object v0, v15, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljavax/obex/ServerSession;->handleAuthResp([B)Z

    move-result v19

    if-nez v19, :cond_6

    const/16 v5, 0xc1

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    iget-object v0, v15, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Ljavax/obex/ObexHelper;->getTagValue(B[B)[B

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljavax/obex/ServerRequestHandler;->onAuthenticationFailure([B)V

    :cond_6
    const/16 v19, 0x0

    move-object/from16 v0, v19

    iput-object v0, v15, Ljavax/obex/HeaderSet;->mAuthResp:[B

    :cond_7
    const/16 v19, 0xc1

    move/from16 v0, v19

    if-eq v5, v0, :cond_1

    iget-object v0, v15, Ljavax/obex/HeaderSet;->mAuthChall:[B

    move-object/from16 v19, v0

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljavax/obex/ServerSession;->handleAuthChall(Ljavax/obex/HeaderSet;)Z

    iget-object v0, v15, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v14, Ljavax/obex/HeaderSet;->mAuthResp:[B

    iget-object v0, v15, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v19, v0

    const/16 v20, 0x0

    iget-object v0, v14, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v21, v0

    const/16 v22, 0x0

    iget-object v0, v14, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    invoke-static/range {v19 .. v23}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/16 v19, 0x0

    move-object/from16 v0, v19

    iput-object v0, v15, Ljavax/obex/HeaderSet;->mAuthChall:[B

    const/16 v19, 0x0

    move-object/from16 v0, v19

    iput-object v0, v15, Ljavax/obex/HeaderSet;->mAuthResp:[B

    :cond_8
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15, v14}, Ljavax/obex/ServerRequestHandler;->onConnect(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Ljavax/obex/ServerSession;->validateResponseCode(I)I

    move-result v5

    iget-object v0, v14, Ljavax/obex/HeaderSet;->nonce:[B

    move-object/from16 v19, v0

    if-eqz v19, :cond_a

    const/16 v19, 0x10

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Ljavax/obex/ServerSession;->mChallengeDigest:[B

    iget-object v0, v14, Ljavax/obex/HeaderSet;->nonce:[B

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mChallengeDigest:[B

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x10

    invoke-static/range {v19 .. v23}, Ljava/lang/System;->arraycopy([BI[BII)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljavax/obex/ServerRequestHandler;->getConnectionId()J

    move-result-wide v10

    const-wide/16 v20, -0x1

    cmp-long v19, v10, v20

    if-nez v19, :cond_b

    const/16 v19, 0x0

    move-object/from16 v0, v19

    iput-object v0, v14, Ljavax/obex/HeaderSet;->mConnectionID:[B

    :goto_4
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-static {v14, v0}, Ljavax/obex/ObexHelper;->createHeader(Ljavax/obex/HeaderSet;Z)[B

    move-result-object v8

    array-length v0, v8

    move/from16 v19, v0

    add-int v17, v17, v19

    move-object/from16 v0, p0

    iget v0, v0, Ljavax/obex/ServerSession;->mMaxPacketLength:I

    move/from16 v19, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v0, v17

    move/from16 v1, v19

    if-le v0, v1, :cond_1

    const/16 v17, 0x7

    const/4 v8, 0x0

    const/16 v5, 0xd0

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x1

    invoke-virtual/range {v19 .. v21}, Ljavax/obex/ServerRequestHandler;->setConnectionId(J)V

    goto/16 :goto_2

    :cond_a
    const/16 v19, 0x0

    :try_start_1
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Ljavax/obex/ServerSession;->mChallengeDigest:[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v17, 0x7

    const/4 v8, 0x0

    const/16 v5, 0xd0

    goto/16 :goto_0

    :cond_b
    :try_start_2
    invoke-static {v10, v11}, Ljavax/obex/ObexHelper;->convertToByteArray(J)[B

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v14, Ljavax/obex/HeaderSet;->mConnectionID:[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4
.end method

.method private handleDisconnectRequest()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0xa0

    const/4 v13, 0x3

    const/4 v5, 0x0

    new-instance v12, Ljavax/obex/HeaderSet;

    invoke-direct {v12}, Ljavax/obex/HeaderSet;-><init>()V

    new-instance v10, Ljavax/obex/HeaderSet;

    invoke-direct {v10}, Ljavax/obex/HeaderSet;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v14}, Ljava/io/InputStream;->read()I

    move-result v7

    shl-int/lit8 v14, v7, 0x8

    move-object/from16 v0, p0

    iget-object v15, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v15}, Ljava/io/InputStream;->read()I

    move-result v15

    add-int v7, v14, v15

    const v14, 0xfffe

    if-le v7, v14, :cond_2

    const/16 v3, 0xce

    const/4 v13, 0x3

    :cond_0
    :goto_0
    if-eqz v5, :cond_a

    array-length v14, v5

    add-int/lit8 v14, v14, 0x3

    new-array v11, v14, [B

    :goto_1
    const/4 v14, 0x0

    int-to-byte v15, v3

    aput-byte v15, v11, v14

    const/4 v14, 0x1

    shr-int/lit8 v15, v13, 0x8

    int-to-byte v15, v15

    aput-byte v15, v11, v14

    const/4 v14, 0x2

    int-to-byte v15, v13

    aput-byte v15, v11, v14

    if-eqz v5, :cond_1

    const/4 v14, 0x0

    const/4 v15, 0x3

    array-length v0, v5

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v5, v14, v11, v15, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Ljavax/obex/ServerSession;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v14, v11}, Ljava/io/OutputStream;->write([B)V

    move-object/from16 v0, p0

    iget-object v14, v0, Ljavax/obex/ServerSession;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v14}, Ljava/io/OutputStream;->flush()V

    :goto_2
    return-void

    :cond_2
    const/4 v14, 0x3

    if-le v7, v14, :cond_4

    add-int/lit8 v14, v7, -0x3

    new-array v6, v14, [B

    move-object/from16 v0, p0

    iget-object v14, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v14, v6}, Ljava/io/InputStream;->read([B)I

    move-result v2

    :goto_3
    array-length v14, v6

    if-eq v2, v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    array-length v15, v6

    sub-int/2addr v15, v2

    invoke-virtual {v14, v6, v2, v15}, Ljava/io/InputStream;->read([BII)I

    move-result v14

    add-int/2addr v2, v14

    goto :goto_3

    :cond_3
    invoke-static {v12, v6}, Ljavax/obex/ObexHelper;->updateHeaderSet(Ljavax/obex/HeaderSet;[B)[B

    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    invoke-virtual {v14}, Ljavax/obex/ServerRequestHandler;->getConnectionId()J

    move-result-wide v14

    const-wide/16 v16, -0x1

    cmp-long v14, v14, v16

    if-eqz v14, :cond_8

    iget-object v14, v12, Ljavax/obex/HeaderSet;->mConnectionID:[B

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    iget-object v15, v12, Ljavax/obex/HeaderSet;->mConnectionID:[B

    invoke-static {v15}, Ljavax/obex/ObexHelper;->convertToLong([B)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljavax/obex/ServerRequestHandler;->setConnectionId(J)V

    :goto_4
    iget-object v14, v12, Ljavax/obex/HeaderSet;->mAuthResp:[B

    if-eqz v14, :cond_6

    iget-object v14, v12, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljavax/obex/ServerSession;->handleAuthResp([B)Z

    move-result v14

    if-nez v14, :cond_5

    const/16 v3, 0xc1

    move-object/from16 v0, p0

    iget-object v14, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    const/4 v15, 0x1

    iget-object v0, v12, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Ljavax/obex/ObexHelper;->getTagValue(B[B)[B

    move-result-object v15

    invoke-virtual {v14, v15}, Ljavax/obex/ServerRequestHandler;->onAuthenticationFailure([B)V

    :cond_5
    const/4 v14, 0x0

    iput-object v14, v12, Ljavax/obex/HeaderSet;->mAuthResp:[B

    :cond_6
    const/16 v14, 0xc1

    if-eq v3, v14, :cond_0

    iget-object v14, v12, Ljavax/obex/HeaderSet;->mAuthChall:[B

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljavax/obex/ServerSession;->handleAuthChall(Ljavax/obex/HeaderSet;)Z

    const/4 v14, 0x0

    iput-object v14, v12, Ljavax/obex/HeaderSet;->mAuthChall:[B

    :cond_7
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    invoke-virtual {v14, v12, v10}, Ljavax/obex/ServerRequestHandler;->onDisconnect(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p0

    iget-object v14, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    invoke-virtual {v14}, Ljavax/obex/ServerRequestHandler;->getConnectionId()J

    move-result-wide v8

    const-wide/16 v14, -0x1

    cmp-long v14, v8, v14

    if-nez v14, :cond_9

    const/4 v14, 0x0

    iput-object v14, v10, Ljavax/obex/HeaderSet;->mConnectionID:[B

    :goto_5
    const/4 v14, 0x0

    invoke-static {v10, v14}, Ljavax/obex/ObexHelper;->createHeader(Ljavax/obex/HeaderSet;Z)[B

    move-result-object v5

    array-length v14, v5

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Ljavax/obex/ServerSession;->mMaxPacketLength:I

    if-le v13, v14, :cond_0

    const/4 v13, 0x3

    const/4 v5, 0x0

    const/16 v3, 0xd0

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    const-wide/16 v16, 0x1

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljavax/obex/ServerRequestHandler;->setConnectionId(J)V

    goto :goto_4

    :catch_0
    move-exception v4

    const/16 v14, 0xd0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Ljavax/obex/ServerSession;->sendResponse(I[B)V

    goto/16 :goto_2

    :cond_9
    invoke-static {v8, v9}, Ljavax/obex/ObexHelper;->convertToByteArray(J)[B

    move-result-object v14

    iput-object v14, v10, Ljavax/obex/HeaderSet;->mConnectionID:[B

    goto :goto_5

    :cond_a
    const/4 v14, 0x3

    new-array v11, v14, [B

    goto/16 :goto_1
.end method

.method private handleGetRequest(I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljavax/obex/ServerOperation;

    iget-object v2, p0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    iget v4, p0, Ljavax/obex/ServerSession;->mMaxPacketLength:I

    iget-object v5, p0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Ljavax/obex/ServerOperation;-><init>(Ljavax/obex/ServerSession;Ljava/io/InputStream;IILjavax/obex/ServerRequestHandler;)V

    :try_start_0
    iget-object v1, p0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    invoke-virtual {v1, v0}, Ljavax/obex/ServerRequestHandler;->onGet(Ljavax/obex/Operation;)I

    move-result v1

    invoke-direct {p0, v1}, Ljavax/obex/ServerSession;->validateResponseCode(I)I

    move-result v7

    iget-boolean v1, v0, Ljavax/obex/ServerOperation;->isAborted:Z

    if-nez v1, :cond_0

    invoke-virtual {v0, v7}, Ljavax/obex/ServerOperation;->sendReply(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v6

    const/16 v1, 0xd0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljavax/obex/ServerSession;->sendResponse(I[B)V

    goto :goto_0
.end method

.method private handlePutRequest(I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljavax/obex/ServerOperation;

    iget-object v2, p0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    iget v4, p0, Ljavax/obex/ServerSession;->mMaxPacketLength:I

    iget-object v5, p0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Ljavax/obex/ServerOperation;-><init>(Ljavax/obex/ServerSession;Ljava/io/InputStream;IILjavax/obex/ServerRequestHandler;)V

    const/4 v7, -0x1

    :try_start_0
    iget-boolean v1, v0, Ljavax/obex/ServerOperation;->finalBitSet:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljavax/obex/ServerOperation;->isValidBody()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    iget-object v2, v0, Ljavax/obex/ServerOperation;->requestHeader:Ljavax/obex/HeaderSet;

    iget-object v3, v0, Ljavax/obex/ServerOperation;->replyHeader:Ljavax/obex/HeaderSet;

    invoke-virtual {v1, v2, v3}, Ljavax/obex/ServerRequestHandler;->onDelete(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I

    move-result v1

    invoke-direct {p0, v1}, Ljavax/obex/ServerSession;->validateResponseCode(I)I

    move-result v7

    :goto_0
    const/16 v1, 0xa0

    if-eq v7, v1, :cond_2

    iget-boolean v1, v0, Ljavax/obex/ServerOperation;->isAborted:Z

    if-nez v1, :cond_2

    invoke-virtual {v0, v7}, Ljavax/obex/ServerOperation;->sendReply(I)Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    invoke-virtual {v1, v0}, Ljavax/obex/ServerRequestHandler;->onPut(Ljavax/obex/Operation;)I

    move-result v1

    invoke-direct {p0, v1}, Ljavax/obex/ServerSession;->validateResponseCode(I)I

    move-result v7

    goto :goto_0

    :cond_2
    iget-boolean v1, v0, Ljavax/obex/ServerOperation;->isAborted:Z

    if-nez v1, :cond_0

    :goto_2
    iget-boolean v1, v0, Ljavax/obex/ServerOperation;->finalBitSet:Z

    if-nez v1, :cond_3

    const/16 v1, 0x90

    invoke-virtual {v0, v1}, Ljavax/obex/ServerOperation;->sendReply(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v6

    iget-boolean v1, v0, Ljavax/obex/ServerOperation;->isAborted:Z

    if-nez v1, :cond_0

    const/16 v1, 0xd0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljavax/obex/ServerSession;->sendResponse(I[B)V

    goto :goto_1

    :cond_3
    :try_start_1
    invoke-virtual {v0, v7}, Ljavax/obex/ServerOperation;->sendReply(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private handleSetPathRequest()V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v19, 0x3

    const/4 v11, 0x0

    const/4 v6, -0x1

    new-instance v18, Ljavax/obex/HeaderSet;

    invoke-direct/range {v18 .. v18}, Ljavax/obex/HeaderSet;-><init>()V

    new-instance v16, Ljavax/obex/HeaderSet;

    invoke-direct/range {v16 .. v16}, Ljavax/obex/HeaderSet;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->read()I

    move-result v13

    shl-int/lit8 v20, v13, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->read()I

    move-result v21

    add-int v13, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->read()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->read()I

    move-result v7

    const v20, 0xfffe

    move/from16 v0, v20

    if-le v13, v0, :cond_2

    const/16 v6, 0xce

    const/16 v19, 0x3

    :cond_0
    :goto_0
    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v17, v0

    const/16 v20, 0x0

    int-to-byte v0, v6

    move/from16 v21, v0

    aput-byte v21, v17, v20

    const/16 v20, 0x1

    shr-int/lit8 v21, v19, 0x8

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    aput-byte v21, v17, v20

    const/16 v20, 0x2

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v21, v0

    aput-byte v21, v17, v20

    if-eqz v11, :cond_1

    const/16 v20, 0x0

    const/16 v21, 0x3

    array-length v0, v11

    move/from16 v22, v0

    move/from16 v0, v20

    move-object/from16 v1, v17

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v11, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mOutput:Ljava/io/OutputStream;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mOutput:Ljava/io/OutputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->flush()V

    :goto_1
    return-void

    :cond_2
    const/16 v20, 0x5

    move/from16 v0, v20

    if-le v13, v0, :cond_5

    add-int/lit8 v20, v13, -0x5

    move/from16 v0, v20

    new-array v12, v0, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/io/InputStream;->read([B)I

    move-result v5

    :goto_2
    array-length v0, v12

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v5, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    move-object/from16 v20, v0

    array-length v0, v12

    move/from16 v21, v0

    sub-int v21, v21, v5

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v12, v5, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v20

    add-int v5, v5, v20

    goto :goto_2

    :cond_3
    move-object/from16 v0, v18

    invoke-static {v0, v12}, Ljavax/obex/ObexHelper;->updateHeaderSet(Ljavax/obex/HeaderSet;[B)[B

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljavax/obex/ServerRequestHandler;->getConnectionId()J

    move-result-wide v20

    const-wide/16 v22, -0x1

    cmp-long v20, v20, v22

    if-eqz v20, :cond_9

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mConnectionID:[B

    move-object/from16 v20, v0

    if-eqz v20, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mConnectionID:[B

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljavax/obex/ObexHelper;->convertToLong([B)J

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljavax/obex/ServerRequestHandler;->setConnectionId(J)V

    :goto_3
    move-object/from16 v0, v18

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljavax/obex/ServerSession;->handleAuthResp([B)Z

    move-result v20

    if-nez v20, :cond_4

    const/16 v6, 0xc1

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Ljavax/obex/ObexHelper;->getTagValue(B[B)[B

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljavax/obex/ServerRequestHandler;->onAuthenticationFailure([B)V

    :cond_4
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    iput-object v0, v1, Ljavax/obex/HeaderSet;->mAuthResp:[B

    :cond_5
    const/16 v20, 0xc1

    move/from16 v0, v20

    if-eq v6, v0, :cond_0

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthChall:[B

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljavax/obex/ServerSession;->handleAuthChall(Ljavax/obex/HeaderSet;)Z

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    iput-object v0, v1, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    invoke-static/range {v20 .. v24}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    iput-object v0, v1, Ljavax/obex/HeaderSet;->mAuthChall:[B

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    iput-object v0, v1, Ljavax/obex/HeaderSet;->mAuthResp:[B

    :cond_6
    const/4 v4, 0x0

    const/4 v8, 0x1

    and-int/lit8 v20, v10, 0x1

    if-eqz v20, :cond_7

    const/4 v4, 0x1

    :cond_7
    and-int/lit8 v20, v10, 0x2

    if-eqz v20, :cond_8

    const/4 v8, 0x0

    :cond_8
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2, v4, v8}, Ljavax/obex/ServerRequestHandler;->onSetPath(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;ZZ)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Ljavax/obex/ServerSession;->validateResponseCode(I)I

    move-result v6

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavax/obex/HeaderSet;->nonce:[B

    move-object/from16 v20, v0

    if-eqz v20, :cond_a

    const/16 v20, 0x10

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Ljavax/obex/ServerSession;->mChallengeDigest:[B

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavax/obex/HeaderSet;->nonce:[B

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mChallengeDigest:[B

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x10

    invoke-static/range {v20 .. v24}, Ljava/lang/System;->arraycopy([BI[BII)V

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljavax/obex/ServerRequestHandler;->getConnectionId()J

    move-result-wide v14

    const-wide/16 v20, -0x1

    cmp-long v20, v14, v20

    if-nez v20, :cond_b

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    iput-object v0, v1, Ljavax/obex/HeaderSet;->mConnectionID:[B

    :goto_5
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljavax/obex/ObexHelper;->createHeader(Ljavax/obex/HeaderSet;Z)[B

    move-result-object v11

    array-length v0, v11

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Ljavax/obex/ServerSession;->mMaxPacketLength:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_0

    const/16 v19, 0x3

    const/4 v11, 0x0

    const/16 v6, 0xd0

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    move-object/from16 v20, v0

    const-wide/16 v22, 0x1

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljavax/obex/ServerRequestHandler;->setConnectionId(J)V

    goto/16 :goto_3

    :catch_0
    move-exception v9

    const/16 v20, 0xd0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljavax/obex/ServerSession;->sendResponse(I[B)V

    goto/16 :goto_1

    :cond_a
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Ljavax/obex/ServerSession;->mChallengeDigest:[B

    goto :goto_4

    :cond_b
    invoke-static {v14, v15}, Ljavax/obex/ObexHelper;->convertToByteArray(J)[B

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    iput-object v0, v1, Ljavax/obex/HeaderSet;->mConnectionID:[B

    goto :goto_5
.end method

.method private validateResponseCode(I)I
    .locals 2

    const/16 v0, 0xd0

    const/16 v1, 0xa0

    if-lt p1, v1, :cond_1

    const/16 v1, 0xa6

    if-gt p1, v1, :cond_1

    :cond_0
    :goto_0
    return p1

    :cond_1
    const/16 v1, 0xb0

    if-lt p1, v1, :cond_2

    const/16 v1, 0xb5

    if-le p1, v1, :cond_0

    :cond_2
    const/16 v1, 0xc0

    if-lt p1, v1, :cond_3

    const/16 v1, 0xcf

    if-le p1, v1, :cond_0

    :cond_3
    if-lt p1, v0, :cond_4

    const/16 v1, 0xd5

    if-le p1, v1, :cond_0

    :cond_4
    const/16 v1, 0xe0

    if-lt p1, v1, :cond_5

    const/16 v1, 0xe1

    if-le p1, v1, :cond_0

    :cond_5
    move p1, v0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;

    invoke-virtual {v0}, Ljavax/obex/ServerRequestHandler;->onClose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Ljavax/obex/ServerSession;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    iget-object v0, p0, Ljavax/obex/ServerSession;->mTransport:Ljavax/obex/ObexTransport;

    invoke-interface {v0}, Ljavax/obex/ObexTransport;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/obex/ServerSession;->mClosed:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljavax/obex/ServerSession;->mTransport:Ljavax/obex/ObexTransport;

    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/obex/ServerSession;->mOutput:Ljava/io/OutputStream;

    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/obex/ServerSession;->mListener:Ljavax/obex/ServerRequestHandler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    :try_start_0
    iget-boolean v5, p0, Ljavax/obex/ServerSession;->mClosed:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    iget-object v5, p0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v3

    shl-int/lit8 v5, v3, 0x8

    iget-object v6, p0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v6

    add-int v3, v5, v6

    const/4 v2, 0x3

    :goto_1
    if-ge v2, v3, :cond_1

    iget-object v5, p0, Ljavax/obex/ServerSession;->mInput:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :sswitch_0
    invoke-direct {p0}, Ljavax/obex/ServerSession;->handleConnectRequest()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v5, "Obex ServerSession"

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_2
    invoke-virtual {p0}, Ljavax/obex/ServerSession;->close()V

    return-void

    :sswitch_1
    :try_start_1
    invoke-direct {p0}, Ljavax/obex/ServerSession;->handleDisconnectRequest()V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    invoke-direct {p0, v4}, Ljavax/obex/ServerSession;->handleGetRequest(I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v5, "Obex ServerSession"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :sswitch_3
    :try_start_2
    invoke-direct {p0, v4}, Ljavax/obex/ServerSession;->handlePutRequest(I)V

    goto :goto_0

    :sswitch_4
    invoke-direct {p0}, Ljavax/obex/ServerSession;->handleSetPathRequest()V

    goto :goto_0

    :sswitch_5
    invoke-direct {p0}, Ljavax/obex/ServerSession;->handleAbortRequest()V

    goto :goto_0

    :sswitch_6
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v5, 0xd1

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Ljavax/obex/ServerSession;->sendResponse(I[B)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_6
        0x2 -> :sswitch_3
        0x3 -> :sswitch_2
        0x80 -> :sswitch_0
        0x81 -> :sswitch_1
        0x82 -> :sswitch_3
        0x83 -> :sswitch_2
        0x85 -> :sswitch_4
        0xff -> :sswitch_5
    .end sparse-switch
.end method

.method public sendResponse(I[B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x3

    const/4 v0, 0x0

    iget-object v1, p0, Ljavax/obex/ServerSession;->mOutput:Ljava/io/OutputStream;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    array-length v3, p2

    add-int/2addr v2, v3

    new-array v0, v2, [B

    int-to-byte v3, p1

    aput-byte v3, v0, v5

    shr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v4

    int-to-byte v3, v2

    aput-byte v3, v0, v6

    const/4 v3, 0x3

    array-length v4, p2

    invoke-static {p2, v5, v0, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    :goto_1
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    goto :goto_0

    :cond_1
    new-array v0, v2, [B

    int-to-byte v3, p1

    aput-byte v3, v0, v5

    aput-byte v5, v0, v4

    int-to-byte v3, v2

    aput-byte v3, v0, v6

    goto :goto_1
.end method
