.class Lcom/car/btphone/BTPhoneService$SyncRunnable;
.super Ljava/lang/Object;
.source "BTPhoneService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/btphone/BTPhoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SyncRunnable"
.end annotation


# instance fields
.field mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/vcard/VCardEntry;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/car/btphone/BTPhoneService;


# direct methods
.method constructor <init>(Lcom/car/btphone/BTPhoneService;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/vcard/VCardEntry;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/car/btphone/BTPhoneService$SyncRunnable;->this$0:Lcom/car/btphone/BTPhoneService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/car/btphone/BTPhoneService$SyncRunnable;->mList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v2, "BTP.BTPhoneService"

    const-string v3, "start MSG_CONTACTS_SYNC"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0xf

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/car/btphone/BTPhoneService$SyncRunnable;->this$0:Lcom/car/btphone/BTPhoneService;

    invoke-virtual {v2}, Lcom/car/btphone/BTPhoneService;->batchDelAllContacts()V

    iget-object v2, p0, Lcom/car/btphone/BTPhoneService$SyncRunnable;->mList:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/car/btphone/BTPhoneService$SyncRunnable;->this$0:Lcom/car/btphone/BTPhoneService;

    invoke-virtual {v2}, Lcom/car/btphone/BTPhoneService;->clearAllCallLog()V

    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->arg1:I

    :goto_0
    sget-object v2, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/car/btphone/BTPhoneService$SyncRunnable;->this$0:Lcom/car/btphone/BTPhoneService;

    iget-object v2, v2, Lcom/car/btphone/BTPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    return-void

    :cond_0
    iget-object v2, p0, Lcom/car/btphone/BTPhoneService$SyncRunnable;->this$0:Lcom/car/btphone/BTPhoneService;

    iget-object v3, p0, Lcom/car/btphone/BTPhoneService$SyncRunnable;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/car/btphone/BTPhoneService;->batchAddContacts(Ljava/util/ArrayList;)V

    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->arg1:I

    goto :goto_0

    :cond_1
    const/16 v2, 0x3ec

    sput v2, Lcom/car/btphone/BTPhoneService;->sContactSyncStatus:I

    iget-object v2, p0, Lcom/car/btphone/BTPhoneService$SyncRunnable;->this$0:Lcom/car/btphone/BTPhoneService;

    iget-object v2, v2, Lcom/car/btphone/BTPhoneService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.car.bthpone.contacts.notify"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "status"

    sget v3, Lcom/car/btphone/BTPhoneService;->sContactSyncStatus:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/car/btphone/BTPhoneService$SyncRunnable;->this$0:Lcom/car/btphone/BTPhoneService;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Lcom/car/btphone/BTPhoneService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1
.end method
