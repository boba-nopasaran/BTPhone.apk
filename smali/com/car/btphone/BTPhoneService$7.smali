.class Lcom/car/btphone/BTPhoneService$7;
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

    iput-object p1, p0, Lcom/car/btphone/BTPhoneService$7;->this$0:Lcom/car/btphone/BTPhoneService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    sparse-switch v17, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$7;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    const/16 v17, 0x1

    :goto_1
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/car/btphone/BTPhoneService;->showShortCutCall(Z)V

    goto :goto_0

    :cond_1
    const/16 v17, 0x0

    goto :goto_1

    :sswitch_1
    const/16 v17, 0x3ee

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/car/btphone/BTPhoneService$7;->removeMessages(I)V

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    const/4 v13, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$7;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1, v12, v13}, Lcom/car/btphone/BTPhoneService;->doStartMainActivity(ILjava/lang/String;Z)V

    goto :goto_0

    :cond_2
    const/4 v13, 0x0

    goto :goto_2

    :sswitch_2
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Lcom/car/btphone/BTPhoneService;->setAudioState(Z)V

    goto :goto_0

    :sswitch_3
    new-instance v17, Ljava/lang/Thread;

    new-instance v18, Lcom/car/btphone/BTPhoneService$7$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/car/btphone/BTPhoneService$7$1;-><init>(Lcom/car/btphone/BTPhoneService$7;)V

    invoke-direct/range {v17 .. v18}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :sswitch_4
    sget-object v17, Lcom/car/btphone/BTPhoneService;->sTempList:Ljava/util/List;

    sput-object v17, Lcom/car/btphone/BTPhoneService;->sContactList:Ljava/util/List;

    sget-object v17, Lcom/car/btphone/BTPhoneService;->sContactList4Voice:Ljava/util/List;

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->clear()V

    const/16 v17, 0x3eb

    sput v17, Lcom/car/btphone/BTPhoneService;->sContactSyncStatus:I

    new-instance v17, Ljava/lang/Thread;

    new-instance v18, Lcom/car/btphone/BTPhoneService$7$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/car/btphone/BTPhoneService$7$2;-><init>(Lcom/car/btphone/BTPhoneService$7;)V

    invoke-direct/range {v17 .. v18}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    :sswitch_5
    const-string v17, "BTP.BTPhoneService"

    const-string v18, "CONTACTS_SYNC_DONE"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x3ea

    sput v17, Lcom/car/btphone/BTPhoneService;->sContactSyncStatus:I

    const/16 v17, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/car/btphone/BTPhoneService$7;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :sswitch_6
    sget-object v17, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v17, :cond_0

    sget-object v17, Lcom/car/btphone/BTPhoneService;->sTempList:Ljava/util/List;

    sput-object v17, Lcom/car/btphone/BTPhoneService;->sContactList:Ljava/util/List;

    sget-object v17, Lcom/car/btphone/BTPhoneService;->sContactList4Voice:Ljava/util/List;

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->clear()V

    const/16 v17, 0x3e8

    sput v17, Lcom/car/btphone/BTPhoneService;->sContactSyncStatus:I

    new-instance v8, Landroid/content/Intent;

    const-string v17, "com.car.bthpone.contacts.notify"

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v17, "status"

    sget v18, Lcom/car/btphone/BTPhoneService;->sContactSyncStatus:I

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$7;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/car/btphone/BTPhoneService;->sendBroadcast(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$7;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/car/btphone/BTPhoneService;->mPBCount:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$7;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v17, v0

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/car/btphone/BTPhoneService;->mPBList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$7;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v17, v0

    new-instance v18, Landroid/bluetooth/client/pbap/BluetoothPbapClient;

    sget-object v19, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$7;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    invoke-direct/range {v18 .. v20}, Landroid/bluetooth/client/pbap/BluetoothPbapClient;-><init>(Landroid/bluetooth/BluetoothDevice;Landroid/os/Handler;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/car/btphone/BTPhoneService;->mBluetoothPbapClient:Landroid/bluetooth/client/pbap/BluetoothPbapClient;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$7;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService;->mBluetoothPbapClient:Landroid/bluetooth/client/pbap/BluetoothPbapClient;

    move-object/from16 v17, v0

    const-string v18, "telecom/pb.vcf"

    invoke-virtual/range {v17 .. v18}, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->pullPhoneBook(Ljava/lang/String;)Z

    move-result v14

    const-string v17, "BTP.BTPhoneService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "CONTACTS_SYNC: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_7
    sget-object v17, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$7;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/car/btphone/BTPhoneService;->mPBCount:I

    move/from16 v17, v0

    if-nez v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$7;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/car/btphone/BTPhoneService;->mPBCount:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$7;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService;->mBluetoothPbapClient:Landroid/bluetooth/client/pbap/BluetoothPbapClient;

    move-object/from16 v17, v0

    const-string v18, "SIM1/telecom/pb.vcf"

    invoke-virtual/range {v17 .. v18}, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->pullPhoneBook(Ljava/lang/String;)Z

    move-result v14

    const-string v17, "BTP.BTPhoneService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "CONTACTS_SYNC again: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v14, :cond_0

    const/16 v17, 0x3ea

    sput v17, Lcom/car/btphone/BTPhoneService;->sContactSyncStatus:I

    sget-object v17, Lcom/car/btphone/BTPhoneService;->sTempList:Ljava/util/List;

    sput-object v17, Lcom/car/btphone/BTPhoneService;->sContactList:Ljava/util/List;

    sget-object v17, Lcom/car/btphone/BTPhoneService;->sContactList4Voice:Ljava/util/List;

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->clear()V

    const/16 v17, 0x3ed

    sput v17, Lcom/car/btphone/BTPhoneService;->sContactSyncStatus:I

    new-instance v8, Landroid/content/Intent;

    const-string v17, "com.car.bthpone.contacts.notify"

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v17, "status"

    sget v18, Lcom/car/btphone/BTPhoneService;->sContactSyncStatus:I

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v17, "syncerr"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$7;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/car/btphone/BTPhoneService;->sendBroadcast(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$7;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v17, v0

    sget-object v18, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual/range {v18 .. v18}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/car/btphone/BTPhoneService;->contactsNeedSync(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$7;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x10

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$7;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/car/btphone/BTPhoneService;->mPBCount:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$7;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService;->mPBList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$7;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/car/btphone/BTPhoneService;->resetContactsFlag()V

    sget-object v17, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v17, :cond_4

    const/16 v17, 0x3e9

    sput v17, Lcom/car/btphone/BTPhoneService;->sContactSyncStatus:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$7;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v17, v0

    sget-object v18, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual/range {v18 .. v18}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/car/btphone/BTPhoneService;->setContactSyncFlag(Ljava/lang/String;Z)V

    new-instance v15, Lcom/car/btphone/BTPhoneService$SyncRunnable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$7;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$7;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService;->mPBList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v15, v0, v1}, Lcom/car/btphone/BTPhoneService$SyncRunnable;-><init>(Lcom/car/btphone/BTPhoneService;Ljava/util/ArrayList;)V

    new-instance v17, Ljava/lang/Thread;

    move-object/from16 v0, v17

    invoke-direct {v0, v15}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    :cond_4
    const/16 v17, 0x3ed

    sput v17, Lcom/car/btphone/BTPhoneService;->sContactSyncStatus:I

    goto/16 :goto_0

    :cond_5
    const-string v17, "BTP.BTPhoneService"

    const-string v18, "EVENT_PULL_PHONE_BOOK_ERROR"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x3ea

    sput v17, Lcom/car/btphone/BTPhoneService;->sContactSyncStatus:I

    sget-object v17, Lcom/car/btphone/BTPhoneService;->sTempList:Ljava/util/List;

    sput-object v17, Lcom/car/btphone/BTPhoneService;->sContactList:Ljava/util/List;

    sget-object v17, Lcom/car/btphone/BTPhoneService;->sContactList4Voice:Ljava/util/List;

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->clear()V

    const/16 v17, 0x3ed

    sput v17, Lcom/car/btphone/BTPhoneService;->sContactSyncStatus:I

    new-instance v8, Landroid/content/Intent;

    const-string v17, "com.car.bthpone.contacts.notify"

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v17, "status"

    sget v18, Lcom/car/btphone/BTPhoneService;->sContactSyncStatus:I

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v17, "syncerr"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$7;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/car/btphone/BTPhoneService;->sendBroadcast(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$7;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v17, v0

    sget-object v18, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual/range {v18 .. v18}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/car/btphone/BTPhoneService;->contactsNeedSync(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$7;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x10

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :sswitch_8
    sget-object v17, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v17, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/util/ArrayList;

    move-object/from16 v10, v17

    check-cast v10, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$7;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService;->mPBList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string v17, "BTP.BTPhoneService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "EVENT_PULL_PHONE_BOOK_DONE: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$7;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService;->mPBList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$7;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/car/btphone/BTPhoneService;->mPBCount:I

    move/from16 v17, v0

    if-nez v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$7;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/car/btphone/BTPhoneService;->mPBCount:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$7;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService;->mBluetoothPbapClient:Landroid/bluetooth/client/pbap/BluetoothPbapClient;

    move-object/from16 v17, v0

    const-string v18, "SIM1/telecom/pb.vcf"

    invoke-virtual/range {v17 .. v18}, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->pullPhoneBook(Ljava/lang/String;)Z

    move-result v14

    const-string v17, "BTP.BTPhoneService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "CONTACTS_SYNC again: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v14, :cond_0

    const/16 v17, 0x3ea

    sput v17, Lcom/car/btphone/BTPhoneService;->sContactSyncStatus:I

    sget-object v17, Lcom/car/btphone/BTPhoneService;->sTempList:Ljava/util/List;

    sput-object v17, Lcom/car/btphone/BTPhoneService;->sContactList:Ljava/util/List;

    sget-object v17, Lcom/car/btphone/BTPhoneService;->sContactList4Voice:Ljava/util/List;

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->clear()V

    const/16 v17, 0x3ed

    sput v17, Lcom/car/btphone/BTPhoneService;->sContactSyncStatus:I

    new-instance v8, Landroid/content/Intent;

    const-string v17, "com.car.bthpone.contacts.notify"

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v17, "status"

    sget v18, Lcom/car/btphone/BTPhoneService;->sContactSyncStatus:I

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v17, "syncerr"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$7;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/car/btphone/BTPhoneService;->sendBroadcast(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$7;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v17, v0

    sget-object v18, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual/range {v18 .. v18}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/car/btphone/BTPhoneService;->contactsNeedSync(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$7;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x10

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$7;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/car/btphone/BTPhoneService;->resetContactsFlag()V

    sget-object v17, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v17, :cond_7

    const/16 v17, 0x3e9

    sput v17, Lcom/car/btphone/BTPhoneService;->sContactSyncStatus:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$7;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v17, v0

    sget-object v18, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual/range {v18 .. v18}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/car/btphone/BTPhoneService;->setContactSyncFlag(Ljava/lang/String;Z)V

    new-instance v15, Lcom/car/btphone/BTPhoneService$SyncRunnable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$7;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$7;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService;->mPBList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v15, v0, v1}, Lcom/car/btphone/BTPhoneService$SyncRunnable;-><init>(Lcom/car/btphone/BTPhoneService;Ljava/util/ArrayList;)V

    new-instance v17, Ljava/lang/Thread;

    move-object/from16 v0, v17

    invoke-direct {v0, v15}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    :cond_7
    const/16 v17, 0x3ed

    sput v17, Lcom/car/btphone/BTPhoneService;->sContactSyncStatus:I

    goto/16 :goto_0

    :sswitch_9
    const-string v17, "BTP.BTPhoneService"

    const-string v18, "Unique checks"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v17, Lcom/car/btphone/BTPhoneService;->sBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    if-eqz v17, :cond_0

    sget-object v17, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v17, :cond_0

    sget-object v17, Lcom/car/btphone/BTPhoneService;->sBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual/range {v17 .. v17}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->size()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_8
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v17

    sget-object v18, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual/range {v18 .. v18}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_8

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v17

    if-eqz v17, :cond_8

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v17

    if-eqz v17, :cond_9

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v17

    const/16 v18, 0x200

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_9

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v17

    const/16 v18, 0x400

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    :cond_9
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    const-string v17, "BTP.BTPhoneService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Remove "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", major="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "class="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :sswitch_a
    const/16 v17, 0x12

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/car/btphone/BTPhoneService$7;->removeMessages(I)V

    sget-object v17, Lcom/car/btphone/BTPhoneService;->sBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual/range {v17 .. v17}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v17

    if-lez v17, :cond_0

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    sget-object v17, Lcom/car/btphone/BTPhoneService;->sBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/bluetooth/BluetoothHeadsetClient;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v17

    if-eqz v17, :cond_b

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v17

    const/16 v18, 0x200

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    :cond_b
    const-string v17, "BTP.BTPhoneService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[CONNECTED_CHECK] Connected device:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v17, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v17, :cond_a

    sput-object v6, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    const-string v17, "BTP.BTPhoneService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Connected "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", major="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "class="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$7;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/car/btphone/BTPhoneService;->connectedSuccess()V

    goto/16 :goto_0

    :sswitch_b
    const/16 v17, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/car/btphone/BTPhoneService$7;->removeMessages(I)V

    sget-object v17, Lcom/car/btphone/BTPhoneService;->sBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual/range {v17 .. v17}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v17

    if-lez v17, :cond_0

    sget-object v17, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v17, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$7;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/car/btphone/BTPhoneService;->isWifiNetworkConnected()Z

    move-result v17

    if-eqz v17, :cond_d

    sget-object v17, Lcom/car/btphone/BTPhoneService;->sBondedDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v17, :cond_c

    invoke-static {}, Lcom/car/btphone/BTPhoneService;->reOpenBT()V

    const/16 v17, 0x0

    sput-object v17, Lcom/car/btphone/BTPhoneService;->sBondedDevice:Landroid/bluetooth/BluetoothDevice;

    :cond_c
    const-string v17, "BTP.BTPhoneService"

    const-string v18, "Since BT would affect the wifi performance, no auto reconnection now"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_d
    sget-object v17, Lcom/car/btphone/BTPhoneService;->sBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    if-eqz v17, :cond_0

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_e
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_12

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v17

    if-eqz v17, :cond_f

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v17

    if-eqz v17, :cond_f

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v17

    const/16 v18, 0x200

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    :cond_f
    move-object v6, v4

    sput-object v6, Lcom/car/btphone/BTPhoneService;->sBondedDevice:Landroid/bluetooth/BluetoothDevice;

    sget-object v17, Lcom/car/btphone/BTPhoneService;->sBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/bluetooth/BluetoothHeadsetClient;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v17

    if-nez v17, :cond_10

    sget-object v17, Lcom/car/btphone/BTPhoneService;->sBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/bluetooth/BluetoothHeadsetClient;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v14

    const-string v17, "BTP.BTPhoneService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Try to connect to device:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", ret="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_10
    sget-object v17, Lcom/car/btphone/BTPhoneService;->sBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/bluetooth/BluetoothHeadsetClient;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_11

    const-string v17, "BTP.BTPhoneService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[AUTOCONN_TRY] Connected device:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v17, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v17, :cond_0

    sput-object v6, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$7;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/car/btphone/BTPhoneService;->connectedSuccess()V

    goto/16 :goto_0

    :cond_11
    const-string v17, "BTP.BTPhoneService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "State = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Lcom/car/btphone/BTPhoneService;->sBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/bluetooth/BluetoothHeadsetClient;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$7;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0xb

    const-wide/16 v20, 0x2710

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$7;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x13

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v17, Lcom/car/btphone/BTPhoneService;->sBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v18, 0x78

    invoke-virtual/range {v17 .. v18}, Landroid/bluetooth/BluetoothAdapter;->setDiscoverableTimeout(I)V

    sget-object v17, Lcom/car/btphone/BTPhoneService;->sBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v18, 0x17

    invoke-virtual/range {v17 .. v18}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    move-result v9

    const-string v17, "BTP.BTPhoneService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "setScanMode return: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$7;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x13

    const-wide/32 v20, 0x1c138

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_8
        0xb -> :sswitch_b
        0xd -> :sswitch_9
        0xe -> :sswitch_6
        0xf -> :sswitch_5
        0x10 -> :sswitch_4
        0x11 -> :sswitch_3
        0x12 -> :sswitch_a
        0x13 -> :sswitch_c
        0x15 -> :sswitch_2
        0x16 -> :sswitch_0
        0x66 -> :sswitch_7
        0x3ee -> :sswitch_1
    .end sparse-switch
.end method
