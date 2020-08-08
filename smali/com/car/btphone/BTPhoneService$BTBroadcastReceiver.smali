.class Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BTPhoneService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/btphone/BTPhoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BTBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/btphone/BTPhoneService;


# direct methods
.method constructor <init>(Lcom/car/btphone/BTPhoneService;)V
    .locals 0

    iput-object p1, p0, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;->this$0:Lcom/car/btphone/BTPhoneService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 39

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v34

    const-string v35, "shortcutcall_show"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_1

    const-string v34, "show"

    const/16 v35, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/car/btphone/BTPhoneService;->showShortCutCall(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v34, "android.bluetooth.headsetclient.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_4

    const-string v34, "android.bluetooth.profile.extra.STATE"

    const/16 v35, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v32

    const/16 v34, 0x2

    move/from16 v0, v32

    move/from16 v1, v34

    if-ne v0, v1, :cond_2

    const/4 v8, 0x1

    :goto_1
    const/16 v34, 0x0

    invoke-static/range {v34 .. v34}, Lcom/car/btphone/MainHandler;->getInstance(Z)Lcom/car/btphone/MainHandler;

    move-result-object v15

    if-eqz v15, :cond_0

    new-instance v23, Landroid/os/Message;

    invoke-direct/range {v23 .. v23}, Landroid/os/Message;-><init>()V

    const/16 v34, 0x5

    move/from16 v0, v34

    move-object/from16 v1, v23

    iput v0, v1, Landroid/os/Message;->what:I

    if-eqz v8, :cond_3

    const/16 v34, 0x1

    :goto_2
    move/from16 v0, v34

    move-object/from16 v1, v23

    iput v0, v1, Landroid/os/Message;->arg1:I

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    :cond_3
    const/16 v34, 0x0

    goto :goto_2

    :cond_4
    const-string v34, "com.car.btphone.useraction"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_b

    const/4 v4, 0x0

    invoke-static {}, Lcom/car/btphone/BTPhoneService;->getCurActiveCall()Lcom/car/btphone/BTPhoneService$CallStatus;

    move-result-object v10

    const-string v34, "actionmaybe"

    const/16 v35, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v22

    if-eqz v22, :cond_8

    if-eqz v10, :cond_6

    iget v0, v10, Lcom/car/btphone/BTPhoneService$CallStatus;->msgWhat:I

    move/from16 v34, v0

    const/16 v35, 0xa

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_5

    const/4 v4, 0x1

    :goto_3
    if-eqz v10, :cond_0

    if-eqz v4, :cond_9

    invoke-static {}, Lcom/car/btphone/BTPhoneService;->accept()V

    goto/16 :goto_0

    :cond_5
    const/4 v4, 0x0

    goto :goto_3

    :cond_6
    const/16 v34, 0x0

    invoke-static/range {v34 .. v34}, Lcom/car/btphone/MainHandler;->getInstance(Z)Lcom/car/btphone/MainHandler;

    move-result-object v15

    if-nez v15, :cond_7

    new-instance v16, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/car/btphone/BTPhoneService;->getApplicationContext()Landroid/content/Context;

    move-result-object v34

    const-class v35, Lcom/car/btphone/MainActivity;

    move-object/from16 v0, v16

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v34, 0x30000000

    move-object/from16 v0, v16

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/car/btphone/BTPhoneService;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    :cond_7
    const/16 v34, 0x3

    move/from16 v0, v34

    invoke-virtual {v15, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    :cond_8
    const-string v34, "accept"

    const/16 v35, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    goto :goto_3

    :cond_9
    iget v0, v10, Lcom/car/btphone/BTPhoneService$CallStatus;->msgWhat:I

    move/from16 v34, v0

    const/16 v35, 0xa

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_a

    const-string v34, "BTP.BTPhoneService"

    const-string v35, "Send call reject"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Landroid/content/Intent;

    const-string v34, "com.car.btphone.action"

    move-object/from16 v0, v34

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v34, "status"

    const/16 v35, 0x8

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v34, "numbername"

    iget-object v0, v10, Lcom/car/btphone/BTPhoneService$CallStatus;->name:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v34, v0

    sget-object v35, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v0, v7, v1}, Lcom/car/btphone/BTPhoneService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {}, Lcom/car/btphone/BTPhoneService;->rejectingCall()V

    goto/16 :goto_0

    :cond_a
    const-string v34, "BTP.BTPhoneService"

    const-string v35, "Send call hangup"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Landroid/content/Intent;

    const-string v34, "com.car.btphone.action"

    move-object/from16 v0, v34

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v34, "status"

    const/16 v35, 0x9

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v34, "numbername"

    iget-object v0, v10, Lcom/car/btphone/BTPhoneService$CallStatus;->name:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v34, v0

    sget-object v35, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v0, v7, v1}, Lcom/car/btphone/BTPhoneService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {}, Lcom/car/btphone/BTPhoneService;->terminatingCall()V

    goto/16 :goto_0

    :cond_b
    const-string v34, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_c

    const-string v34, "BTP.BTPhoneService"

    const-string v35, "discovery started"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_c
    const-string v34, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_d

    const-string v34, "BTP.BTPhoneService"

    const-string v35, "discovery finished"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_d
    const-string v34, "android.bluetooth.device.action.FOUND"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_e

    const-string v34, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/bluetooth/BluetoothDevice;

    const-string v34, "BTP.BTPhoneService"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " is nearby"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_e
    const-string v34, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_11

    const-string v34, "android.bluetooth.adapter.extra.STATE"

    const/16 v35, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    const-string v34, "BTP.BTPhoneService"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "ACTION_STATE_CHANGED, exState="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v34, 0xc

    move/from16 v0, v34

    if-ne v14, v0, :cond_f

    sget-object v34, Lcom/car/btphone/BTPhoneService;->sBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v34, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService;->mHandler:Landroid/os/Handler;

    move-object/from16 v34, v0

    const/16 v35, 0x13

    invoke-virtual/range {v34 .. v35}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_f
    const/16 v34, 0xa

    move/from16 v0, v34

    if-ne v14, v0, :cond_0

    invoke-static {}, Lcom/car/btphone/BTPhoneService;->access$1200()Z

    move-result v34

    if-eqz v34, :cond_10

    sget-object v34, Lcom/car/btphone/BTPhoneService;->sBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual/range {v34 .. v34}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v30

    const-string v34, "BTP.BTPhoneService"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "enable BT: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v34, 0x0

    invoke-static/range {v34 .. v34}, Lcom/car/btphone/BTPhoneService;->access$1202(Z)Z

    goto/16 :goto_0

    :cond_10
    const/16 v34, 0x0

    sput-boolean v34, Lcom/car/btphone/BTPhoneService;->sIgnoreOnce:Z

    goto/16 :goto_0

    :cond_11
    const-string v34, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_12

    const-string v34, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/bluetooth/BluetoothDevice;

    const-string v34, "android.bluetooth.device.extra.BOND_STATE"

    const/16 v35, 0xa

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v32

    const-string v34, "BTP.BTPhoneService"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "ACTION_BOND_STATE_CHANGED, state="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v12, :cond_0

    const/16 v34, 0xc

    move/from16 v0, v32

    move/from16 v1, v34

    if-ne v0, v1, :cond_0

    const-string v34, "BTP.BTPhoneService"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "bonded device:"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " from "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ", class="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v34, 0x400

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v35

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_0

    sget-object v34, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v34, :cond_0

    const-string v34, "BTP.BTPhoneService"

    const-string v35, "The latest audio/video bluetooth device has the priority"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v34, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual/range {v34 .. v34}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    goto/16 :goto_0

    :cond_12
    const-string v34, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_16

    const-string v34, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/bluetooth/BluetoothDevice;

    const-string v34, "BTP.BTPhoneService"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "ACTION_ACL_CONNECTED:"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v34

    if-eqz v34, :cond_13

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v34

    const/16 v35, 0x200

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_13

    const-string v34, "BTP.BTPhoneService"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Dont care it:"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_13
    sget-object v34, Lcom/car/btphone/BTPhoneService;->sBondedDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v34, :cond_0

    sget-object v34, Lcom/car/btphone/BTPhoneService;->sBondedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual/range {v34 .. v34}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v34

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_0

    const-string v34, "BTP.BTPhoneService"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " is near and try to reconnect"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v34, Lcom/car/btphone/BTPhoneService;->sReconnectCounter:Ljava/util/HashMap;

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    if-nez v9, :cond_14

    sget-object v34, Lcom/car/btphone/BTPhoneService;->sReconnectCounter:Ljava/util/HashMap;

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v35

    const/16 v36, 0x1

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    invoke-virtual/range {v34 .. v36}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v34

    sput-wide v34, Lcom/car/btphone/BTPhoneService;->sTimeTrigger:J

    goto/16 :goto_0

    :cond_14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v28

    sget-wide v34, Lcom/car/btphone/BTPhoneService;->sTimeTrigger:J

    sub-long v34, v28, v34

    const-wide/16 v36, 0x2710

    cmp-long v34, v34, v36

    if-lez v34, :cond_15

    sget-object v34, Lcom/car/btphone/BTPhoneService;->sReconnectCounter:Ljava/util/HashMap;

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v35

    const/16 v36, 0x1

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    invoke-virtual/range {v34 .. v36}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v34, "BTP.BTPhoneService"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " is a little hard to reconnect, maybe not nearby"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_15
    const-string v34, "BTP.BTPhoneService"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " is hard to reconnect"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_16
    const-string v34, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_1c

    const-string v34, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/bluetooth/BluetoothDevice;

    const-string v34, "BTP.BTPhoneService"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "ACTION_ACL_DISCONNECTED:"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v12, :cond_0

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v34

    if-eqz v34, :cond_0

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v34

    if-eqz v34, :cond_17

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v34

    if-eqz v34, :cond_17

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v34

    const/16 v35, 0x200

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_17

    const-string v34, "BTP.BTPhoneService"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Dont care it:"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_17
    sget-object v34, Lcom/car/btphone/BTPhoneService;->sReconnectCounter:Ljava/util/HashMap;

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v34

    const/16 v35, 0x3

    move/from16 v0, v34

    move/from16 v1, v35

    if-lt v0, v1, :cond_1b

    sget-object v34, Lcom/car/btphone/BTPhoneService;->sBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    if-eqz v34, :cond_18

    sget-object v34, Lcom/car/btphone/BTPhoneService;->sBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    move-object/from16 v0, v34

    invoke-virtual {v0, v12}, Landroid/bluetooth/BluetoothHeadsetClient;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    :cond_18
    invoke-virtual {v12}, Landroid/bluetooth/BluetoothDevice;->cancelBondProcess()Z

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v34

    if-eqz v34, :cond_19

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v34

    const/16 v35, 0x200

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_1a

    :cond_19
    invoke-virtual {v12}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    const-string v34, "BTP.BTPhoneService"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ", major="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "class="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    sget-object v34, Lcom/car/btphone/BTPhoneService;->sReconnectCounter:Ljava/util/HashMap;

    invoke-virtual/range {v34 .. v34}, Ljava/util/HashMap;->clear()V

    invoke-static {}, Lcom/car/btphone/BTPhoneService;->reOpenBT()V

    const-string v34, "BTP.BTPhoneService"

    const-string v35, "Connection failed and reopen bt"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1b
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v34

    add-int/lit8 v34, v34, 0x1

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget-object v34, Lcom/car/btphone/BTPhoneService;->sReconnectCounter:Ljava/util/HashMap;

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_1c
    const-string v34, "android.bluetooth.headsetclient.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_23

    const-string v34, "android.bluetooth.profile.extra.STATE"

    const/16 v35, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v32

    const-string v34, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/bluetooth/BluetoothDevice;

    if-eqz v12, :cond_0

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v34

    if-eqz v34, :cond_0

    const-string v34, "BTP.BTPhoneService"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Major="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ", state="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v34

    if-eqz v34, :cond_1d

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v34

    const/16 v35, 0x200

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_0

    :cond_1d
    const/16 v34, 0x2

    move/from16 v0, v32

    move/from16 v1, v34

    if-ne v0, v1, :cond_1e

    const-string v34, "BTP.BTPhoneService"

    const-string v35, "BluetoothProfile connected"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v34, 0x0

    sput-boolean v34, Lcom/car/btphone/BTPhoneService;->sIgnoreOnce:Z

    sput-object v12, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/car/btphone/BTPhoneService;->clearCallStatus()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/car/btphone/BTPhoneService;->connectedSuccess()V

    const/16 v34, 0x0

    sput-boolean v34, Lcom/car/btphone/BTPhoneService;->sUserBreak:Z

    goto/16 :goto_0

    :cond_1e
    if-nez v32, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService;->mHandler:Landroid/os/Handler;

    move-object/from16 v34, v0

    const/16 v35, 0x13

    invoke-virtual/range {v34 .. v35}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string v34, "BTP.BTPhoneService"

    const-string v35, "BluetoothProfile disconnected"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v34, Lcom/car/btphone/BTPhoneService;->sTempList:Ljava/util/List;

    sput-object v34, Lcom/car/btphone/BTPhoneService;->sContactList:Ljava/util/List;

    sget-object v34, Lcom/car/btphone/BTPhoneService;->sContactList4Voice:Ljava/util/List;

    invoke-interface/range {v34 .. v34}, Ljava/util/List;->clear()V

    const/16 v34, 0x3e7

    sput v34, Lcom/car/btphone/BTPhoneService;->sContactSyncStatus:I

    sget-object v34, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v34, :cond_1f

    new-instance v16, Landroid/content/Intent;

    const-string v34, "com.car.bthpone.connected.notify"

    move-object/from16 v0, v16

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v34, "connected"

    const/16 v35, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/car/btphone/BTPhoneService;->sendStickyBroadcast(Landroid/content/Intent;)V

    :cond_1f
    sget-object v34, Lcom/car/btphone/BTPhoneService;->sCallRecords:Ljava/util/ArrayList;

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->clear()V

    new-instance v16, Landroid/content/Intent;

    const-string v34, "com.car.bthpone.contacts.notify"

    move-object/from16 v0, v16

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v34, "status"

    sget v35, Lcom/car/btphone/BTPhoneService;->sContactSyncStatus:I

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v34, v0

    sget-object v35, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v34

    move-object/from16 v1, v16

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/car/btphone/BTPhoneService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/16 v34, 0x0

    sput-object v34, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/car/btphone/BTPhoneService;->clearCallStatus()V

    sget-object v34, Lcom/car/btphone/BTPhoneService;->sCallRecords:Ljava/util/ArrayList;

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->clear()V

    sget-object v34, Lcom/car/btphone/BTPhoneService;->sBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual/range {v34 .. v34}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v19

    if-eqz v19, :cond_21

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->size()I

    move-result v34

    if-lez v34, :cond_21

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_20
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_21

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5, v12}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_20

    sget-boolean v34, Lcom/car/btphone/BTPhoneService;->sUserBreak:Z

    if-nez v34, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService;->mHandler:Landroid/os/Handler;

    move-object/from16 v34, v0

    const/16 v35, 0xb

    invoke-virtual/range {v34 .. v35}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v34

    if-nez v34, :cond_21

    const-string v34, "BTP.BTPhoneService"

    const-string v35, "Bonded device disconnected and try to reconnect in 10 seconds"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService;->mHandler:Landroid/os/Handler;

    move-object/from16 v34, v0

    const/16 v35, 0xb

    const-wide/16 v36, 0x2710

    invoke-virtual/range {v34 .. v37}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/car/btphone/BTPhoneService;->access$1100(Lcom/car/btphone/BTPhoneService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v34

    if-eqz v34, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/car/btphone/BTPhoneService;->access$1100(Lcom/car/btphone/BTPhoneService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_22
    new-instance v20, Landroid/os/Message;

    invoke-direct/range {v20 .. v20}, Landroid/os/Message;-><init>()V

    const/16 v34, 0x16

    move/from16 v0, v34

    move-object/from16 v1, v20

    iput v0, v1, Landroid/os/Message;->what:I

    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, v20

    iput v0, v1, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService;->mHandler:Landroid/os/Handler;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    new-instance v7, Landroid/content/Intent;

    const-string v34, "com.car.btphone.action"

    move-object/from16 v0, v34

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v34, "status"

    const/16 v35, 0x10

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v34, v0

    sget-object v35, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v0, v7, v1}, Lcom/car/btphone/BTPhoneService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    :cond_23
    const-string v34, "android.bluetooth.headsetclient.profile.action.AG_CALL_CHANGED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_3c

    sget-object v34, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v34, :cond_0

    const-string v34, "BTP.BTPhoneService"

    const-string v35, "ACTION_CALL_CHANGED"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v34, "android.bluetooth.headsetclient.extra.CALL"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothHeadsetClientCall;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getNumber()Ljava/lang/String;

    move-result-object v18

    const-string v34, "+"

    const-string v35, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    sget-object v34, Lcom/car/btphone/BTPhoneService;->mCall:Ljava/util/HashMap;

    move-object/from16 v0, v34

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_2f

    sget-object v34, Lcom/car/btphone/BTPhoneService;->mCall:Ljava/util/HashMap;

    move-object/from16 v0, v34

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/car/btphone/BTPhoneService$CallStatus;

    iget v0, v10, Lcom/car/btphone/BTPhoneService$CallStatus;->state:I

    move/from16 v34, v0

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v35

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_0

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v34

    move/from16 v0, v34

    iput v0, v10, Lcom/car/btphone/BTPhoneService$CallStatus;->state:I

    iget v0, v10, Lcom/car/btphone/BTPhoneService$CallStatus;->state:I

    move/from16 v34, v0

    if-eqz v34, :cond_24

    iget v0, v10, Lcom/car/btphone/BTPhoneService$CallStatus;->state:I

    move/from16 v34, v0

    const/16 v35, 0x3

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_27

    :cond_24
    invoke-static {}, Lcom/car/btphone/BTPhoneService;->isAudioConnect()Z

    move-result v34

    if-nez v34, :cond_25

    sget-object v34, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual/range {v34 .. v34}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v21

    const/16 v34, 0x1

    invoke-static/range {v34 .. v34}, Lcom/car/btphone/BTPhoneService;->setAudioState(Z)V

    :cond_25
    invoke-static {}, Lcom/car/common/CarUtil;->isSp9832Platform()Z

    move-result v34

    if-eqz v34, :cond_26

    new-instance v34, Ljava/lang/Thread;

    new-instance v35, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver$1;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver$1;-><init>(Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;)V

    invoke-direct/range {v34 .. v35}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Thread;->start()V

    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService;->mCarServiceImpl:Lcom/car/common/CarServiceImpl;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    const/16 v37, 0x1

    const/16 v38, 0x0

    invoke-virtual/range {v35 .. v38}, Lcom/car/common/CarServiceImpl;->requestScreen(ZZLjava/lang/String;)Z

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, v34

    iput-boolean v0, v1, Lcom/car/btphone/BTPhoneService;->mNeedRecover:Z

    :cond_27
    :goto_5
    const-string v34, "BTP.BTPhoneService"

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothHeadsetClientCall;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v23, Landroid/os/Message;

    invoke-direct/range {v23 .. v23}, Landroid/os/Message;-><init>()V

    iget-object v0, v10, Lcom/car/btphone/BTPhoneService$CallStatus;->name:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v23

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v34, -0x1

    move/from16 v0, v34

    move-object/from16 v1, v23

    iput v0, v1, Landroid/os/Message;->what:I

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v34

    const/16 v35, 0x3

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_28

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v34

    if-nez v34, :cond_34

    :cond_28
    const/16 v25, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/media/AudioManager;->getMode()I

    move-result v11

    move/from16 v0, v25

    if-eq v11, v0, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v34, v0

    const/16 v35, 0x6

    const/16 v36, 0x2

    invoke-virtual/range {v34 .. v36}, Landroid/media/AudioManager;->requestAudioFocusForCall(II)V

    const-string v34, "BTP.BTPhoneService"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "setAudioMode Setting audio mode from "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " to "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v34, v0

    const/16 v35, 0x1

    invoke-virtual/range {v34 .. v35}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    :cond_29
    :goto_6
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v34

    packed-switch v34, :pswitch_data_0

    :cond_2a
    :goto_7
    :pswitch_0
    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v34, v0

    const/16 v35, -0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v34, v0

    const/16 v35, 0x10

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_37

    const/16 v34, 0x0

    invoke-static/range {v34 .. v34}, Lcom/car/btphone/BTPhoneService;->setAudioState(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/car/btphone/BTPhoneService;->access$1100(Lcom/car/btphone/BTPhoneService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v34

    if-eqz v34, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/car/btphone/BTPhoneService;->access$1100(Lcom/car/btphone/BTPhoneService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-boolean v0, v0, Lcom/car/btphone/BTPhoneService;->mNeedRecover:Z

    move/from16 v34, v0

    if-eqz v34, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService;->mCarServiceImpl:Lcom/car/common/CarServiceImpl;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Lcom/car/common/CarServiceImpl;->screenRecover(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, v34

    iput-boolean v0, v1, Lcom/car/btphone/BTPhoneService;->mNeedRecover:Z

    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-boolean v0, v0, Lcom/car/btphone/BTPhoneService;->mFmEverDisabled:Z

    move/from16 v34, v0

    if-eqz v34, :cond_2d

    new-instance v16, Landroid/content/Intent;

    const-string v34, "com.car.settings"

    move-object/from16 v0, v16

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v34, "key"

    const-string v35, "fm_enable"

    move-object/from16 v0, v16

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v34, "value"

    const-string v35, "1"

    move-object/from16 v0, v16

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v34, "tat"

    const/16 v35, 0x9

    move-object/from16 v0, v16

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/car/btphone/BTPhoneService;->sendBroadcast(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, v34

    iput-boolean v0, v1, Lcom/car/btphone/BTPhoneService;->mFmEverDisabled:Z

    :cond_2d
    :goto_8
    sget-object v34, Lcom/car/btphone/BTPhoneService;->mCall:Ljava/util/HashMap;

    move-object/from16 v0, v34

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_2e

    sget-object v34, Lcom/car/btphone/BTPhoneService;->mCall:Ljava/util/HashMap;

    move-object/from16 v0, v34

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/car/btphone/BTPhoneService$CallStatus;

    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v35, v0

    move/from16 v0, v35

    move-object/from16 v1, v34

    iput v0, v1, Lcom/car/btphone/BTPhoneService$CallStatus;->msgWhat:I

    :cond_2e
    const/16 v34, 0x0

    invoke-static/range {v34 .. v34}, Lcom/car/btphone/MainHandler;->getInstance(Z)Lcom/car/btphone/MainHandler;

    move-result-object v15

    if-eqz v15, :cond_39

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_9
    const-string v34, "BTP.BTPhoneService"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Send call status: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Landroid/content/Intent;

    const-string v34, "com.car.btphone.action"

    move-object/from16 v0, v34

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v34, "status"

    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v35, v0

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v35, "numbername"

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v34, v0

    sget-object v35, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v0, v7, v1}, Lcom/car/btphone/BTPhoneService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    :cond_2f
    new-instance v10, Lcom/car/btphone/BTPhoneService$CallStatus;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-direct {v10, v0}, Lcom/car/btphone/BTPhoneService$CallStatus;-><init>(Lcom/car/btphone/BTPhoneService;)V

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getId()I

    move-result v34

    move/from16 v0, v34

    iput v0, v10, Lcom/car/btphone/BTPhoneService$CallStatus;->id:I

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v34

    move/from16 v0, v34

    iput v0, v10, Lcom/car/btphone/BTPhoneService$CallStatus;->state:I

    move-object/from16 v0, v18

    iput-object v0, v10, Lcom/car/btphone/BTPhoneService$CallStatus;->number:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/car/btphone/BTPhoneService;->getDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_31

    :goto_a
    move-object/from16 v0, v24

    iput-object v0, v10, Lcom/car/btphone/BTPhoneService$CallStatus;->name:Ljava/lang/String;

    sget-object v34, Lcom/car/btphone/BTPhoneService;->mCall:Ljava/util/HashMap;

    move-object/from16 v0, v34

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, v10, Lcom/car/btphone/BTPhoneService$CallStatus;->state:I

    move/from16 v34, v0

    const/16 v35, 0x4

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_32

    invoke-static {}, Lcom/car/common/VoiceRecConst;->getVoiceEngineID()I

    move-result v34

    const/16 v35, 0x4

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_30

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v10, Lcom/car/btphone/BTPhoneService$CallStatus;->name:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "\u6765\u7535\uff0c\u8bf7\u9009\u62e9\u63a5\u542c\u6216\u8005\u62d2\u7edd"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static {}, Lcom/car/common/TipPlayerHelper;->instance()Lcom/car/common/TipPlayerHelper;

    move-result-object v34

    const/16 v35, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/car/common/TipPlayerHelper;->playSpeech(Ljava/lang/String;I)V

    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService;->mCarServiceImpl:Lcom/car/common/CarServiceImpl;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    const/16 v37, 0x1

    const/16 v38, 0x0

    invoke-virtual/range {v35 .. v38}, Lcom/car/common/CarServiceImpl;->requestScreen(ZZLjava/lang/String;)Z

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, v34

    iput-boolean v0, v1, Lcom/car/btphone/BTPhoneService;->mNeedRecover:Z

    goto/16 :goto_5

    :cond_31
    move-object/from16 v24, v18

    goto :goto_a

    :cond_32
    iget v0, v10, Lcom/car/btphone/BTPhoneService$CallStatus;->state:I

    move/from16 v34, v0

    const/16 v35, 0x3

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService;->mCarServiceImpl:Lcom/car/common/CarServiceImpl;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    const/16 v37, 0x1

    const/16 v38, 0x0

    invoke-virtual/range {v35 .. v38}, Lcom/car/common/CarServiceImpl;->requestScreen(ZZLjava/lang/String;)Z

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, v34

    iput-boolean v0, v1, Lcom/car/btphone/BTPhoneService;->mNeedRecover:Z

    goto/16 :goto_5

    :cond_33
    iget v0, v10, Lcom/car/btphone/BTPhoneService$CallStatus;->state:I

    move/from16 v34, v0

    if-nez v34, :cond_27

    const/16 v34, 0x0

    invoke-static/range {v34 .. v34}, Lcom/car/btphone/BTPhoneService;->setAudioState(Z)V

    goto/16 :goto_0

    :cond_34
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v34

    const/16 v35, 0x7

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_29

    sget-object v34, Lcom/car/btphone/BTPhoneService;->mCall:Ljava/util/HashMap;

    invoke-virtual/range {v34 .. v34}, Ljava/util/HashMap;->size()I

    move-result v34

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-gt v0, v1, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/media/AudioManager;->getMode()I

    move-result v34

    if-eqz v34, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Landroid/media/AudioManager;->setMode(I)V

    const-string v34, "BTP.BTPhoneService"

    const-string v35, "abandonAudioFocus"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/media/AudioManager;->abandonAudioFocusForCall()V

    goto/16 :goto_6

    :pswitch_1
    const/16 v34, 0xa

    move/from16 v0, v34

    move-object/from16 v1, v23

    iput v0, v1, Landroid/os/Message;->what:I

    goto/16 :goto_7

    :pswitch_2
    const/16 v34, 0xd

    move/from16 v0, v34

    move-object/from16 v1, v23

    iput v0, v1, Landroid/os/Message;->what:I

    goto/16 :goto_7

    :pswitch_3
    const/16 v34, 0xb

    move/from16 v0, v34

    move-object/from16 v1, v23

    iput v0, v1, Landroid/os/Message;->what:I

    goto/16 :goto_7

    :pswitch_4
    const/16 v34, 0xe

    move/from16 v0, v34

    move-object/from16 v1, v23

    iput v0, v1, Landroid/os/Message;->what:I

    iget-boolean v0, v10, Lcom/car/btphone/BTPhoneService$CallStatus;->log:Z

    move/from16 v34, v0

    if-nez v34, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v34, v0

    const/16 v35, 0x2

    move-object/from16 v0, v34

    move-object/from16 v1, v18

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Lcom/car/btphone/BTPhoneService;->access$1300(Lcom/car/btphone/BTPhoneService;Ljava/lang/String;I)V

    const/16 v34, 0x1

    move/from16 v0, v34

    iput-boolean v0, v10, Lcom/car/btphone/BTPhoneService$CallStatus;->log:Z

    goto/16 :goto_7

    :pswitch_5
    const/16 v34, 0xf

    move/from16 v0, v34

    move-object/from16 v1, v23

    iput v0, v1, Landroid/os/Message;->what:I

    goto/16 :goto_0

    :pswitch_6
    const/16 v34, 0xc

    move/from16 v0, v34

    move-object/from16 v1, v23

    iput v0, v1, Landroid/os/Message;->what:I

    iget-wide v0, v10, Lcom/car/btphone/BTPhoneService$CallStatus;->chronometerBase:J

    move-wide/from16 v34, v0

    const-wide/16 v36, 0x0

    cmp-long v34, v34, v36

    if-nez v34, :cond_2a

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v34

    move-wide/from16 v0, v34

    iput-wide v0, v10, Lcom/car/btphone/BTPhoneService$CallStatus;->chronometerBase:J

    iget-boolean v0, v10, Lcom/car/btphone/BTPhoneService$CallStatus;->log:Z

    move/from16 v34, v0

    if-nez v34, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v34, v0

    const/16 v35, 0x1

    move-object/from16 v0, v34

    move-object/from16 v1, v18

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Lcom/car/btphone/BTPhoneService;->access$1300(Lcom/car/btphone/BTPhoneService;Ljava/lang/String;I)V

    const/16 v34, 0x1

    move/from16 v0, v34

    iput-boolean v0, v10, Lcom/car/btphone/BTPhoneService$CallStatus;->log:Z

    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v34, v0

    const/16 v35, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v36, v0

    const/16 v37, 0x6

    invoke-virtual/range {v36 .. v37}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v36

    const/16 v37, 0x1

    invoke-virtual/range {v34 .. v37}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto/16 :goto_7

    :pswitch_7
    const/16 v34, 0x10

    move/from16 v0, v34

    move-object/from16 v1, v23

    iput v0, v1, Landroid/os/Message;->what:I

    iget v0, v10, Lcom/car/btphone/BTPhoneService$CallStatus;->msgWhat:I

    move/from16 v34, v0

    const/16 v35, 0xa

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_36

    iget-boolean v0, v10, Lcom/car/btphone/BTPhoneService$CallStatus;->log:Z

    move/from16 v34, v0

    if-nez v34, :cond_36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v34, v0

    const/16 v35, 0x3

    move-object/from16 v0, v34

    move-object/from16 v1, v18

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Lcom/car/btphone/BTPhoneService;->access$1300(Lcom/car/btphone/BTPhoneService;Ljava/lang/String;I)V

    const/16 v34, 0x1

    move/from16 v0, v34

    iput-boolean v0, v10, Lcom/car/btphone/BTPhoneService$CallStatus;->log:Z

    :cond_36
    sget-object v34, Lcom/car/btphone/BTPhoneService;->mCall:Ljava/util/HashMap;

    iget-object v0, v10, Lcom/car/btphone/BTPhoneService$CallStatus;->number:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v34, Lcom/car/btphone/BTPhoneService;->mCall:Ljava/util/HashMap;

    invoke-virtual/range {v34 .. v34}, Ljava/util/HashMap;->size()I

    move-result v34

    if-gtz v34, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/car/btphone/BTPhoneService;->clearCallStatus()V

    const/16 v34, 0x0

    invoke-static/range {v34 .. v34}, Lcom/car/btphone/BTPhoneService;->setAudioState(Z)V

    goto/16 :goto_7

    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/car/btphone/BTPhoneService;->access$1100(Lcom/car/btphone/BTPhoneService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v34

    if-nez v34, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/car/btphone/BTPhoneService;->access$1100(Lcom/car/btphone/BTPhoneService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-boolean v0, v0, Lcom/car/btphone/BTPhoneService;->mFmEverDisabled:Z

    move/from16 v34, v0

    if-nez v34, :cond_2d

    invoke-static {}, Lcom/car/common/CarUtil;->isSp9832Platform()Z

    move-result v34

    if-eqz v34, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/car/btphone/BTPhoneService;->getApplicationContext()Landroid/content/Context;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/car/common/ProviderUtils;->getFMEnable(Landroid/content/Context;)I

    move-result v34

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v34, v0

    const/16 v35, 0x1

    move/from16 v0, v35

    move-object/from16 v1, v34

    iput-boolean v0, v1, Lcom/car/btphone/BTPhoneService;->mFmEverDisabled:Z

    new-instance v16, Landroid/content/Intent;

    const-string v34, "com.car.settings"

    move-object/from16 v0, v16

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v34, "key"

    const-string v35, "fm_enable"

    move-object/from16 v0, v16

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v34, "value"

    const-string v35, "0"

    move-object/from16 v0, v16

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v34, "tat"

    const/16 v35, 0x9

    move-object/from16 v0, v16

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/car/btphone/BTPhoneService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_8

    :cond_39
    new-instance v20, Landroid/os/Message;

    invoke-direct/range {v20 .. v20}, Landroid/os/Message;-><init>()V

    const/16 v34, 0x16

    move/from16 v0, v34

    move-object/from16 v1, v20

    iput v0, v1, Landroid/os/Message;->what:I

    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v34, v0

    const/16 v35, 0x10

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_3b

    iget-boolean v0, v10, Lcom/car/btphone/BTPhoneService$CallStatus;->noUI:Z

    move/from16 v34, v0

    if-nez v34, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/car/btphone/BTPhoneService;->access$1400(Lcom/car/btphone/BTPhoneService;)Z

    move-result v34

    if-eqz v34, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/car/btphone/BTPhoneService;->isShortCutCallShowing()Z

    move-result v34

    if-nez v34, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v34, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v35, v0

    iget-object v0, v10, Lcom/car/btphone/BTPhoneService$CallStatus;->number:Ljava/lang/String;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    invoke-virtual/range {v34 .. v37}, Lcom/car/btphone/BTPhoneService;->startMainActivity(ILjava/lang/String;Z)V

    goto/16 :goto_9

    :cond_3a
    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, v20

    iput v0, v1, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService;->mHandler:Landroid/os/Handler;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_9

    :cond_3b
    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, v20

    iput v0, v1, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService;->mHandler:Landroid/os/Handler;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_9

    :cond_3c
    const-string v34, "com.car.btphone.CALL_OUTGOING"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_41

    const-string v34, "callnum"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_0

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v34

    if-lez v34, :cond_0

    sget-object v34, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v34, :cond_40

    sget-boolean v34, Lcom/car/btphone/MainActivity;->isWithDialer:Z

    if-eqz v34, :cond_3d

    invoke-static {}, Lcom/car/btphone/BTPhoneService;->access$900()Ljava/util/List;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_40

    :cond_3d
    const-string v34, "callnoui"

    const/16 v35, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v26

    if-nez v26, :cond_3f

    const/16 v34, 0x0

    invoke-static/range {v34 .. v34}, Lcom/car/btphone/MainHandler;->getInstance(Z)Lcom/car/btphone/MainHandler;

    move-result-object v15

    if-eqz v15, :cond_3e

    new-instance v23, Landroid/os/Message;

    invoke-direct/range {v23 .. v23}, Landroid/os/Message;-><init>()V

    const/16 v34, 0xf

    move/from16 v0, v34

    move-object/from16 v1, v23

    iput v0, v1, Landroid/os/Message;->what:I

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v34, v0

    const/16 v35, 0xf

    const/16 v36, 0x1

    move-object/from16 v0, v34

    move/from16 v1, v35

    move-object/from16 v2, v27

    move/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/car/btphone/BTPhoneService;->startMainActivity(ILjava/lang/String;Z)V

    goto/16 :goto_0

    :cond_3f
    new-instance v10, Lcom/car/btphone/BTPhoneService$CallStatus;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-direct {v10, v0}, Lcom/car/btphone/BTPhoneService$CallStatus;-><init>(Lcom/car/btphone/BTPhoneService;)V

    move-object/from16 v0, v27

    iput-object v0, v10, Lcom/car/btphone/BTPhoneService$CallStatus;->number:Ljava/lang/String;

    move-object/from16 v0, v27

    iput-object v0, v10, Lcom/car/btphone/BTPhoneService$CallStatus;->name:Ljava/lang/String;

    const/16 v34, 0x1

    move/from16 v0, v34

    iput-boolean v0, v10, Lcom/car/btphone/BTPhoneService$CallStatus;->noUI:Z

    sget-object v34, Lcom/car/btphone/BTPhoneService;->mCall:Ljava/util/HashMap;

    move-object/from16 v0, v34

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v27 .. v27}, Lcom/car/btphone/BTPhoneService;->dial(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_40
    :try_start_0
    new-instance v7, Landroid/content/Intent;

    const-string v34, "android.intent.action.CALL"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "tel:"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v34, 0x10000000

    move/from16 v0, v34

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Lcom/car/btphone/BTPhoneService;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v13

    const-string v34, "BTP.BTPhoneService"

    const-string v35, "ACTION_CALL Activity not find"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_41
    const-string v34, "com.car.btphone.CALL_REDIAL"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_42

    invoke-static {}, Lcom/car/btphone/BTPhoneService;->redial()V

    goto/16 :goto_0

    :cond_42
    const-string v34, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_0

    const-string v34, "connected"

    const/16 v35, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_43

    const/16 v34, 0x0

    sput-boolean v34, Lcom/car/btphone/BTPhoneService;->sIgnoreOnce:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService;->mHandler:Landroid/os/Handler;

    move-object/from16 v34, v0

    const/16 v35, 0xb

    invoke-virtual/range {v34 .. v35}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService;->mHandler:Landroid/os/Handler;

    move-object/from16 v34, v0

    const/16 v35, 0xb

    const-wide/16 v36, 0x2710

    invoke-virtual/range {v34 .. v37}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService;->mHandler:Landroid/os/Handler;

    move-object/from16 v34, v0

    const/16 v35, 0xb

    const-wide/16 v36, 0x1388

    invoke-virtual/range {v34 .. v37}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method
