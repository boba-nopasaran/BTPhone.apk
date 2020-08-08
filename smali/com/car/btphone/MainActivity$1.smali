.class Lcom/car/btphone/MainActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/btphone/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/btphone/MainActivity;


# direct methods
.method constructor <init>(Lcom/car/btphone/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/car/btphone/MainActivity$1;->this$0:Lcom/car/btphone/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/car/btphone/MainActivity$1;->this$0:Lcom/car/btphone/MainActivity;

    iget v5, v5, Lcom/car/btphone/MainActivity;->mCurFrag:I

    if-ne v5, v7, :cond_0

    const-string v5, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/16 v5, 0xc

    if-ne v3, v5, :cond_1

    iget-object v5, p0, Lcom/car/btphone/MainActivity$1;->this$0:Lcom/car/btphone/MainActivity;

    iget-object v5, v5, Lcom/car/btphone/MainActivity;->mBtInfoFragment:Lcom/car/btphone/BTInfoFragment;

    invoke-virtual {v5, v8}, Lcom/car/btphone/BTInfoFragment;->showBTSwitch(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v5, 0xa

    if-ne v3, v5, :cond_0

    iget-object v5, p0, Lcom/car/btphone/MainActivity$1;->this$0:Lcom/car/btphone/MainActivity;

    iget-object v5, v5, Lcom/car/btphone/MainActivity;->mBtInfoFragment:Lcom/car/btphone/BTInfoFragment;

    invoke-virtual {v5, v7}, Lcom/car/btphone/BTInfoFragment;->showBTSwitch(Z)V

    goto :goto_0

    :cond_2
    const-string v5, "com.car.bthpone.connected.notify"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "connected"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iget-object v5, p0, Lcom/car/btphone/MainActivity$1;->this$0:Lcom/car/btphone/MainActivity;

    iget v5, v5, Lcom/car/btphone/MainActivity;->mCurFrag:I

    if-ne v5, v7, :cond_4

    sget-object v2, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v5, p0, Lcom/car/btphone/MainActivity$1;->this$0:Lcom/car/btphone/MainActivity;

    iget-object v7, v5, Lcom/car/btphone/MainActivity;->mBtInfoFragment:Lcom/car/btphone/BTInfoFragment;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v7, v5}, Lcom/car/btphone/BTInfoFragment;->updateConnectedDevInfo(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/car/btphone/MainActivity$1;->this$0:Lcom/car/btphone/MainActivity;

    iget-object v5, v5, Lcom/car/btphone/MainActivity;->mBtInfoFragment:Lcom/car/btphone/BTInfoFragment;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    :cond_3
    invoke-virtual {v5, v6}, Lcom/car/btphone/BTInfoFragment;->updateAudioMode(Ljava/lang/String;)V

    :cond_4
    iget-object v5, p0, Lcom/car/btphone/MainActivity$1;->this$0:Lcom/car/btphone/MainActivity;

    iget v5, v5, Lcom/car/btphone/MainActivity;->mCurFrag:I

    sget v6, Lcom/car/btphone/MainActivity;->CALLING_ID:I

    if-ne v5, v6, :cond_5

    if-nez v1, :cond_0

    :cond_5
    iget-object v5, p0, Lcom/car/btphone/MainActivity$1;->this$0:Lcom/car/btphone/MainActivity;

    invoke-virtual {v5}, Lcom/car/btphone/MainActivity;->restoreCurFragment()V

    iget-object v5, p0, Lcom/car/btphone/MainActivity$1;->this$0:Lcom/car/btphone/MainActivity;

    invoke-static {v5}, Lcom/car/btphone/MainActivity;->access$000(Lcom/car/btphone/MainActivity;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/car/btphone/MainActivity$1;->this$0:Lcom/car/btphone/MainActivity;

    iget-object v5, v5, Lcom/car/btphone/MainActivity;->mContactsFragment:Lcom/car/btphone/ContactsFragment;

    invoke-virtual {v5, v8}, Lcom/car/btphone/ContactsFragment;->refreshList(Z)V

    goto :goto_0

    :cond_6
    move-object v5, v6

    goto :goto_1

    :cond_7
    const-string v5, "com.car.bthpone.contacts.notify"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/car/btphone/MainActivity$1;->this$0:Lcom/car/btphone/MainActivity;

    iget v5, v5, Lcom/car/btphone/MainActivity;->mCurFrag:I

    sget v6, Lcom/car/btphone/MainActivity;->CONTACTS_ID:I

    if-eq v5, v6, :cond_8

    iget-object v5, p0, Lcom/car/btphone/MainActivity$1;->this$0:Lcom/car/btphone/MainActivity;

    invoke-static {v5}, Lcom/car/btphone/MainActivity;->access$000(Lcom/car/btphone/MainActivity;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_8
    const-string v5, "syncerr"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iget-object v5, p0, Lcom/car/btphone/MainActivity$1;->this$0:Lcom/car/btphone/MainActivity;

    iget-object v5, v5, Lcom/car/btphone/MainActivity;->mContactsFragment:Lcom/car/btphone/ContactsFragment;

    invoke-virtual {v5, v4}, Lcom/car/btphone/ContactsFragment;->refreshList(Z)V

    goto/16 :goto_0

    :cond_9
    const-string v5, "com.car.bthpone.calllog.notify"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/car/btphone/MainActivity$1;->this$0:Lcom/car/btphone/MainActivity;

    iget v5, v5, Lcom/car/btphone/MainActivity;->mCurFrag:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Lcom/car/btphone/MainActivity$1;->this$0:Lcom/car/btphone/MainActivity;

    iget-object v5, v5, Lcom/car/btphone/MainActivity;->mRecordFragment:Lcom/car/btphone/RecordFragment;

    invoke-virtual {v5}, Lcom/car/btphone/RecordFragment;->refreshList()V

    goto/16 :goto_0
.end method
