.class Lcom/car/btphone/BTPhoneService$CallStatus;
.super Ljava/lang/Object;
.source "BTPhoneService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/btphone/BTPhoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CallStatus"
.end annotation


# instance fields
.field chronometerBase:J

.field id:I

.field log:Z

.field msgWhat:I

.field name:Ljava/lang/String;

.field noUI:Z

.field number:Ljava/lang/String;

.field state:I

.field final synthetic this$0:Lcom/car/btphone/BTPhoneService;


# direct methods
.method constructor <init>(Lcom/car/btphone/BTPhoneService;)V
    .locals 2

    iput-object p1, p0, Lcom/car/btphone/BTPhoneService$CallStatus;->this$0:Lcom/car/btphone/BTPhoneService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/car/btphone/BTPhoneService$CallStatus;->chronometerBase:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/car/btphone/BTPhoneService$CallStatus;->log:Z

    return-void
.end method
