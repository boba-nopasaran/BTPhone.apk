.class public Lcom/car/btphone/CallRecord$DateComparator;
.super Ljava/lang/Object;
.source "CallRecord.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/btphone/CallRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DateComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/car/btphone/CallRecord;",
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
.method public compare(Lcom/car/btphone/CallRecord;Lcom/car/btphone/CallRecord;)I
    .locals 4

    iget-wide v0, p2, Lcom/car/btphone/CallRecord;->time:J

    iget-wide v2, p1, Lcom/car/btphone/CallRecord;->time:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/car/btphone/CallRecord;

    check-cast p2, Lcom/car/btphone/CallRecord;

    invoke-virtual {p0, p1, p2}, Lcom/car/btphone/CallRecord$DateComparator;->compare(Lcom/car/btphone/CallRecord;Lcom/car/btphone/CallRecord;)I

    move-result v0

    return v0
.end method
