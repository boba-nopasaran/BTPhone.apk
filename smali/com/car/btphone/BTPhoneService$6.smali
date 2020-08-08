.class Lcom/car/btphone/BTPhoneService$6;
.super Landroid/os/Handler;
.source "BTPhoneService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/btphone/BTPhoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/btphone/BTPhoneService;


# direct methods
.method constructor <init>(Lcom/car/btphone/BTPhoneService;)V
    .locals 0

    iput-object p1, p0, Lcom/car/btphone/BTPhoneService$6;->this$0:Lcom/car/btphone/BTPhoneService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const/16 v6, 0x14

    const/4 v5, 0x1

    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v3, p0, Lcom/car/btphone/BTPhoneService$6;->this$0:Lcom/car/btphone/BTPhoneService;

    iget-object v3, v3, Lcom/car/btphone/BTPhoneService;->mHandler2:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v3, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/car/btphone/BTPhoneService$6;->this$0:Lcom/car/btphone/BTPhoneService;

    const/4 v4, 0x0

    iput v4, v3, Lcom/car/btphone/BTPhoneService;->mPBCount:I

    iget-object v3, p0, Lcom/car/btphone/BTPhoneService$6;->this$0:Lcom/car/btphone/BTPhoneService;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/car/btphone/BTPhoneService;->mPBList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/car/btphone/BTPhoneService$6;->this$0:Lcom/car/btphone/BTPhoneService;

    new-instance v4, Landroid/bluetooth/client/pbap/BluetoothPbapClient;

    sget-object v5, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v6, p0, Lcom/car/btphone/BTPhoneService$6;->this$0:Lcom/car/btphone/BTPhoneService;

    iget-object v6, v6, Lcom/car/btphone/BTPhoneService;->mHandler2:Landroid/os/Handler;

    invoke-direct {v4, v5, v6}, Landroid/bluetooth/client/pbap/BluetoothPbapClient;-><init>(Landroid/bluetooth/BluetoothDevice;Landroid/os/Handler;)V

    iput-object v4, v3, Lcom/car/btphone/BTPhoneService;->mBluetoothPbapClient:Landroid/bluetooth/client/pbap/BluetoothPbapClient;

    iget-object v3, p0, Lcom/car/btphone/BTPhoneService$6;->this$0:Lcom/car/btphone/BTPhoneService;

    iget-object v3, v3, Lcom/car/btphone/BTPhoneService;->mBluetoothPbapClient:Landroid/bluetooth/client/pbap/BluetoothPbapClient;

    const-string v4, "telecom/pb.vcf"

    invoke-virtual {v3, v4}, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->pullPhoneBook(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "BTP.BTPhoneService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CONTACTS_BACKGOUND_SYNC: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_1
    const-string v3, "BTP.BTPhoneService"

    const-string v4, "CONTACTS_BACKGOUND_SYNC EVENT_PULL_PHONE_BOOK_ERROR"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/car/btphone/BTPhoneService$6;->this$0:Lcom/car/btphone/BTPhoneService;

    iget v3, v3, Lcom/car/btphone/BTPhoneService;->mPBCount:I

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/car/btphone/BTPhoneService$6;->this$0:Lcom/car/btphone/BTPhoneService;

    iput v5, v3, Lcom/car/btphone/BTPhoneService;->mPBCount:I

    iget-object v3, p0, Lcom/car/btphone/BTPhoneService$6;->this$0:Lcom/car/btphone/BTPhoneService;

    iget-object v3, v3, Lcom/car/btphone/BTPhoneService;->mBluetoothPbapClient:Landroid/bluetooth/client/pbap/BluetoothPbapClient;

    const-string v4, "SIM1/telecom/pb.vcf"

    invoke-virtual {v3, v4}, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->pullPhoneBook(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "BTP.BTPhoneService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CONTACTS_BACKGOUND_SYNC again: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/car/btphone/BTPhoneService$6;->this$0:Lcom/car/btphone/BTPhoneService;

    iget v3, v3, Lcom/car/btphone/BTPhoneService;->mPBCount:I

    if-ne v3, v5, :cond_0

    iget-object v3, p0, Lcom/car/btphone/BTPhoneService$6;->this$0:Lcom/car/btphone/BTPhoneService;

    iget-object v3, v3, Lcom/car/btphone/BTPhoneService;->mPBList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    new-instance v2, Lcom/car/btphone/BTPhoneService$BackgroundSyncRunnable;

    iget-object v3, p0, Lcom/car/btphone/BTPhoneService$6;->this$0:Lcom/car/btphone/BTPhoneService;

    iget-object v4, p0, Lcom/car/btphone/BTPhoneService$6;->this$0:Lcom/car/btphone/BTPhoneService;

    iget-object v4, v4, Lcom/car/btphone/BTPhoneService;->mPBList:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v4}, Lcom/car/btphone/BTPhoneService$BackgroundSyncRunnable;-><init>(Lcom/car/btphone/BTPhoneService;Ljava/util/ArrayList;)V

    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    :cond_2
    iget-object v3, p0, Lcom/car/btphone/BTPhoneService$6;->this$0:Lcom/car/btphone/BTPhoneService;

    iget-object v3, v3, Lcom/car/btphone/BTPhoneService;->mHandler2:Landroid/os/Handler;

    const-wide/16 v4, 0x2710

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :sswitch_2
    const-string v3, "BTP.BTPhoneService"

    const-string v4, "CONTACTS_BACKGOUND_SYNC EVENT_PULL_PHONE_BOOK_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    move-object v0, v3

    check-cast v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/car/btphone/BTPhoneService$6;->this$0:Lcom/car/btphone/BTPhoneService;

    iget-object v3, v3, Lcom/car/btphone/BTPhoneService;->mPBList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v3, p0, Lcom/car/btphone/BTPhoneService$6;->this$0:Lcom/car/btphone/BTPhoneService;

    iget v3, v3, Lcom/car/btphone/BTPhoneService;->mPBCount:I

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/car/btphone/BTPhoneService$6;->this$0:Lcom/car/btphone/BTPhoneService;

    iput v5, v3, Lcom/car/btphone/BTPhoneService;->mPBCount:I

    iget-object v3, p0, Lcom/car/btphone/BTPhoneService$6;->this$0:Lcom/car/btphone/BTPhoneService;

    iget-object v3, v3, Lcom/car/btphone/BTPhoneService;->mBluetoothPbapClient:Landroid/bluetooth/client/pbap/BluetoothPbapClient;

    const-string v4, "SIM1/telecom/pb.vcf"

    invoke-virtual {v3, v4}, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->pullPhoneBook(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "BTP.BTPhoneService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CONTACTS_BACKGOUND_SYNC again: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    new-instance v2, Lcom/car/btphone/BTPhoneService$BackgroundSyncRunnable;

    iget-object v3, p0, Lcom/car/btphone/BTPhoneService$6;->this$0:Lcom/car/btphone/BTPhoneService;

    iget-object v4, p0, Lcom/car/btphone/BTPhoneService$6;->this$0:Lcom/car/btphone/BTPhoneService;

    iget-object v4, v4, Lcom/car/btphone/BTPhoneService;->mPBList:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v4}, Lcom/car/btphone/BTPhoneService$BackgroundSyncRunnable;-><init>(Lcom/car/btphone/BTPhoneService;Ljava/util/ArrayList;)V

    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x14 -> :sswitch_0
        0x66 -> :sswitch_1
    .end sparse-switch
.end method
