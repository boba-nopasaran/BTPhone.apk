.class public Landroid/bluetooth/client/pbap/utils/BmsgTokenizer$Property;
.super Ljava/lang/Object;
.source "BmsgTokenizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/client/pbap/utils/BmsgTokenizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Property"
.end annotation


# instance fields
.field public final name:Ljava/lang/String;

.field public final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iput-object p1, p0, Landroid/bluetooth/client/pbap/utils/BmsgTokenizer$Property;->name:Ljava/lang/String;

    iput-object p2, p0, Landroid/bluetooth/client/pbap/utils/BmsgTokenizer$Property;->value:Ljava/lang/String;

    const-string v0, "BMSG >> "

    invoke-virtual {p0}, Landroid/bluetooth/client/pbap/utils/BmsgTokenizer$Property;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroid/bluetooth/client/pbap/utils/BmsgTokenizer$Property;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/bluetooth/client/pbap/utils/BmsgTokenizer$Property;

    iget-object v0, v0, Landroid/bluetooth/client/pbap/utils/BmsgTokenizer$Property;->name:Ljava/lang/String;

    iget-object v1, p0, Landroid/bluetooth/client/pbap/utils/BmsgTokenizer$Property;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Landroid/bluetooth/client/pbap/utils/BmsgTokenizer$Property;

    iget-object v0, p1, Landroid/bluetooth/client/pbap/utils/BmsgTokenizer$Property;->value:Ljava/lang/String;

    iget-object v1, p0, Landroid/bluetooth/client/pbap/utils/BmsgTokenizer$Property;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/bluetooth/client/pbap/utils/BmsgTokenizer$Property;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/client/pbap/utils/BmsgTokenizer$Property;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
