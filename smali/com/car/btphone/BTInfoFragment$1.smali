.class Lcom/car/btphone/BTInfoFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "BTInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/btphone/BTInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/btphone/BTInfoFragment;


# direct methods
.method constructor <init>(Lcom/car/btphone/BTInfoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/car/btphone/BTInfoFragment$1;->this$0:Lcom/car/btphone/BTInfoFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 v6, 0x0

    const/4 v8, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/car/btphone/BTInfoFragment$1;->this$0:Lcom/car/btphone/BTInfoFragment;

    invoke-virtual {v4}, Lcom/car/btphone/BTInfoFragment;->updateBTName()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "android.bluetooth.adapter.extra.STATE"

    const/high16 v5, -0x80000000

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/16 v5, 0xc

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/car/btphone/BTInfoFragment$1;->this$0:Lcom/car/btphone/BTInfoFragment;

    invoke-virtual {v4}, Lcom/car/btphone/BTInfoFragment;->updateBTName()V

    iget-object v4, p0, Lcom/car/btphone/BTInfoFragment$1;->this$0:Lcom/car/btphone/BTInfoFragment;

    iget-object v4, v4, Lcom/car/btphone/BTInfoFragment;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v4, p0, Lcom/car/btphone/BTInfoFragment$1;->this$0:Lcom/car/btphone/BTInfoFragment;

    invoke-virtual {v4}, Lcom/car/btphone/BTInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070017

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget-object v7, Lcom/car/btphone/BTPhoneService;->sBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/car/btphone/BTInfoFragment$1;->this$0:Lcom/car/btphone/BTInfoFragment;

    invoke-virtual {v4}, Lcom/car/btphone/BTInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    const-string v4, "android.bluetooth.headsetclient.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "android.bluetooth.profile.extra.STATE"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    const-string v4, "BTP.BTInfoFragment"

    const-string v5, "BluetoothProfile connected"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/car/btphone/BTInfoFragment$1;->this$0:Lcom/car/btphone/BTInfoFragment;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/car/btphone/BTInfoFragment;->updateConnectedDevInfo(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/car/btphone/BTInfoFragment$1;->this$0:Lcom/car/btphone/BTInfoFragment;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/car/btphone/BTInfoFragment;->updateAudioMode(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    if-nez v3, :cond_0

    const-string v4, "BTP.BTInfoFragment"

    const-string v5, "BluetoothProfile disconnected"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/car/btphone/BTInfoFragment$1;->this$0:Lcom/car/btphone/BTInfoFragment;

    invoke-virtual {v4, v6}, Lcom/car/btphone/BTInfoFragment;->updateConnectedDevInfo(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/car/btphone/BTInfoFragment$1;->this$0:Lcom/car/btphone/BTInfoFragment;

    invoke-virtual {v4, v6}, Lcom/car/btphone/BTInfoFragment;->updateAudioMode(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
