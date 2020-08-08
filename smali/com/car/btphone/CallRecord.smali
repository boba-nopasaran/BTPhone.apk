.class public Lcom/car/btphone/CallRecord;
.super Ljava/lang/Object;
.source "CallRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/btphone/CallRecord$DateComparator;
    }
.end annotation


# instance fields
.field public date:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public number:Ljava/lang/String;

.field public time:J

.field public type:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/car/btphone/CallRecord;->type:I

    iput-object p2, p0, Lcom/car/btphone/CallRecord;->number:Ljava/lang/String;

    iput-object p3, p0, Lcom/car/btphone/CallRecord;->name:Ljava/lang/String;

    iput-object p4, p0, Lcom/car/btphone/CallRecord;->date:Ljava/lang/String;

    iput-wide p5, p0, Lcom/car/btphone/CallRecord;->time:J

    return-void
.end method
