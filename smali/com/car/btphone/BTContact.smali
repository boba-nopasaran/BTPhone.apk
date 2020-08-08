.class public Lcom/car/btphone/BTContact;
.super Ljava/lang/Object;
.source "BTContact.java"


# instance fields
.field public fuzzyPy:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public level:F

.field public name:Ljava/lang/String;

.field public phoneNum:Ljava/lang/String;

.field public pinyinArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public sort_key:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/car/btphone/BTContact;->pinyinArray:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/car/btphone/BTContact;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/car/btphone/BTContact;->phoneNum:Ljava/lang/String;

    iput-object p3, p0, Lcom/car/btphone/BTContact;->name:Ljava/lang/String;

    iput-object p4, p0, Lcom/car/btphone/BTContact;->sort_key:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/car/btphone/BTContact;->pinyinArray:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/car/btphone/BTContact;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/car/btphone/BTContact;->phoneNum:Ljava/lang/String;

    return-object v0
.end method

.method public getSortKey()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/car/btphone/BTContact;->sort_key:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/btphone/BTContact;->sort_key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/car/btphone/BTContact;->sort_key:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSortKeyString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/car/btphone/BTContact;->sort_key:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/car/btphone/BTContact;->name:Ljava/lang/String;

    return-void
.end method

.method public setPhoneNum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/car/btphone/BTContact;->phoneNum:Ljava/lang/String;

    return-void
.end method

.method public setSortKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/car/btphone/BTContact;->sort_key:Ljava/lang/String;

    return-void
.end method
