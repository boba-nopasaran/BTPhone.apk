.class public Lcom/car/btphone/BTPhoneService$ContactMatchComparator;
.super Ljava/lang/Object;
.source "BTPhoneService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/btphone/BTPhoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactMatchComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/car/btphone/BTContact;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/car/btphone/BTContact;Lcom/car/btphone/BTContact;)I
    .locals 4

    const/4 v3, 0x0

    iget v1, p2, Lcom/car/btphone/BTContact;->level:F

    iget v2, p1, Lcom/car/btphone/BTContact;->level:F

    sub-float v0, v1, v2

    cmpl-float v1, v0, v3

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    cmpl-float v1, v0, v3

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/car/btphone/BTContact;

    check-cast p2, Lcom/car/btphone/BTContact;

    invoke-virtual {p0, p1, p2}, Lcom/car/btphone/BTPhoneService$ContactMatchComparator;->compare(Lcom/car/btphone/BTContact;Lcom/car/btphone/BTContact;)I

    move-result v0

    return v0
.end method
