.class Lcom/car/btphone/BTPhoneService$7$2;
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

    iput-object p1, p0, Lcom/car/btphone/BTPhoneService$7$2;->this$1:Lcom/car/btphone/BTPhoneService$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/car/btphone/BTPhoneService$7$2;->this$1:Lcom/car/btphone/BTPhoneService$7;

    iget-object v1, v1, Lcom/car/btphone/BTPhoneService$7;->this$0:Lcom/car/btphone/BTPhoneService;

    invoke-virtual {v1}, Lcom/car/btphone/BTPhoneService;->readContactsFromDatabase()Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/car/btphone/BTPhoneService;->sContactList:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/car/btphone/BTPhoneService;->sContactList:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v1, Lcom/car/btphone/BTPhoneService;->sContactList4Voice:Ljava/util/List;

    const/16 v1, 0x3ec

    sput v1, Lcom/car/btphone/BTPhoneService;->sContactSyncStatus:I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.car.bthpone.contacts.notify"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "status"

    sget v2, Lcom/car/btphone/BTPhoneService;->sContactSyncStatus:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/car/btphone/BTPhoneService$7$2;->this$1:Lcom/car/btphone/BTPhoneService$7;

    iget-object v1, v1, Lcom/car/btphone/BTPhoneService$7;->this$0:Lcom/car/btphone/BTPhoneService;

    invoke-virtual {v1, v0}, Lcom/car/btphone/BTPhoneService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
