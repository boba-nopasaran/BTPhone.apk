.class public final Landroid/bluetooth/client/pbap/utils/ObexAppParameters;
.super Ljava/lang/Object;
.source "ObexAppParameters.java"


# instance fields
.field private final mParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Byte;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->mParams:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->mParams:Ljava/util/HashMap;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    array-length v5, p1

    if-ge v0, v5, :cond_0

    array-length v5, p1

    sub-int/2addr v5, v0

    const/4 v6, 0x2

    if-ge v5, v6, :cond_1

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v1, v0, 0x1

    aget-byte v3, p1, v0

    add-int/lit8 v0, v1, 0x1

    aget-byte v2, p1, v1

    array-length v5, p1

    sub-int/2addr v5, v0

    sub-int/2addr v5, v2

    if-ltz v5, :cond_0

    new-array v4, v2, [B

    const/4 v5, 0x0

    invoke-static {p1, v0, v4, v5, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-virtual {p0, v3, v4}, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->add(B[B)V

    add-int/2addr v0, v2

    goto :goto_0
.end method

.method public static fromHeaderSet(Ljavax/obex/HeaderSet;)Landroid/bluetooth/client/pbap/utils/ObexAppParameters;
    .locals 3

    const/16 v2, 0x4c

    :try_start_0
    invoke-virtual {p0, v2}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v1, v0

    new-instance v2, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;

    invoke-direct {v2, v1}, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v2

    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public add(BB)V
    .locals 3

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->mParams:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public add(BI)V
    .locals 3

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->mParams:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public add(BJ)V
    .locals 4

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->mParams:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public add(BLjava/lang/String;)V
    .locals 3

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->mParams:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public add(BS)V
    .locals 3

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->mParams:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public add(B[B)V
    .locals 2

    iget-object v0, p0, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->mParams:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addToHeaderSet(Ljavax/obex/HeaderSet;)V
    .locals 2

    iget-object v0, p0, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->mParams:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x4c

    invoke-virtual {p0}, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->getHeader()[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public exists(B)Z
    .locals 2

    iget-object v0, p0, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->mParams:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getByte(B)B
    .locals 3

    iget-object v1, p0, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->mParams:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    goto :goto_0
.end method

.method public getByteArray(B)[B
    .locals 3

    iget-object v1, p0, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->mParams:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getHeader()[B
    .locals 8

    const/4 v4, 0x0

    iget-object v6, p0, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->mParams:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    array-length v6, v6

    add-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    goto :goto_0

    :cond_0
    new-array v5, v4, [B

    const/4 v2, 0x0

    iget-object v6, p0, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->mParams:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    array-length v4, v6

    add-int/lit8 v3, v2, 0x1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    aput-byte v6, v5, v2

    add-int/lit8 v2, v3, 0x1

    int-to-byte v6, v4

    aput-byte v6, v5, v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    const/4 v7, 0x0

    invoke-static {v6, v7, v5, v2, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    add-int/2addr v2, v4

    goto :goto_1

    :cond_1
    return-object v5
.end method

.method public getInt(B)I
    .locals 3

    iget-object v1, p0, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->mParams:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    goto :goto_0
.end method

.method public getShort(B)S
    .locals 3

    iget-object v1, p0, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->mParams:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    goto :goto_0
.end method

.method public getString(B)Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->mParams:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/client/pbap/utils/ObexAppParameters;->mParams:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
