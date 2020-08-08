.class Lcom/car/btphone/BTPhoneService$7$1;
.super Ljava/lang/Object;
.source "BTPhoneService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/btphone/BTPhoneService$7;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/car/btphone/BTPhoneService$7;


# direct methods
.method constructor <init>(Lcom/car/btphone/BTPhoneService$7;)V
    .locals 0

    iput-object p1, p0, Lcom/car/btphone/BTPhoneService$7$1;->this$1:Lcom/car/btphone/BTPhoneService$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/car/btphone/BTPhoneService$7$1;->this$1:Lcom/car/btphone/BTPhoneService$7;

    iget-object v1, v1, Lcom/car/btphone/BTPhoneService$7;->this$0:Lcom/car/btphone/BTPhoneService;

    invoke-virtual {v1}, Lcom/car/btphone/BTPhoneService;->getCallLog()Ljava/util/ArrayList;

    move-result-object v1

    sput-object v1, Lcom/car/btphone/BTPhoneService;->sCallRecords:Ljava/util/ArrayList;

    sget-object v1, Lcom/car/btphone/BTPhoneService;->sCallRecords:Ljava/util/ArrayList;

    new-instance v2, Lcom/car/btphone/CallRecord$DateComparator;

    invoke-direct {v2}, Lcom/car/btphone/CallRecord$DateComparator;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.car.bthpone.calllog.notify"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/car/btphone/BTPhoneService$7$1;->this$1:Lcom/car/btphone/BTPhoneService$7;

    iget-object v1, v1, Lcom/car/btphone/BTPhoneService$7;->this$0:Lcom/car/btphone/BTPhoneService;

    invoke-virtual {v1, v0}, Lcom/car/btphone/BTPhoneService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
