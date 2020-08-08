.class Lcom/car/btphone/BTPhoneService$BTServiceListener;
.super Ljava/lang/Object;
.source "BTPhoneService.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/btphone/BTPhoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BTServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/btphone/BTPhoneService;


# direct methods
.method constructor <init>(Lcom/car/btphone/BTPhoneService;)V
    .locals 0

    iput-object p1, p0, Lcom/car/btphone/BTPhoneService$BTServiceListener;->this$0:Lcom/car/btphone/BTPhoneService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 5

    const/16 v3, 0x12

    const/16 v4, 0xb

    const-string v0, "BTP.BTPhoneService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BluetoothProfile.ServiceListener connected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p2, Landroid/bluetooth/BluetoothHeadsetClient;

    sput-object p2, Lcom/car/btphone/BTPhoneService;->sBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    iget-object v0, p0, Lcom/car/btphone/BTPhoneService$BTServiceListener;->this$0:Lcom/car/btphone/BTPhoneService;

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/car/btphone/BTPhoneService$BTServiceListener;->this$0:Lcom/car/btphone/BTPhoneService;

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/car/btphone/BTPhoneService$BTServiceListener;->this$0:Lcom/car/btphone/BTPhoneService;

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/car/btphone/BTPhoneService$BTServiceListener;->this$0:Lcom/car/btphone/BTPhoneService;

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 5

    const/4 v4, 0x0

    const-string v1, "BTP.BTPhoneService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BluetoothProfile.ServiceListener disconnected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.car.bthpone.connected.notify"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "connected"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/car/btphone/BTPhoneService$BTServiceListener;->this$0:Lcom/car/btphone/BTPhoneService;

    invoke-virtual {v1, v0}, Lcom/car/btphone/BTPhoneService;->sendStickyBroadcast(Landroid/content/Intent;)V

    :cond_0
    sput-object v4, Lcom/car/btphone/BTPhoneService;->sBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    sput-object v4, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/car/btphone/BTPhoneService$BTServiceListener;->this$0:Lcom/car/btphone/BTPhoneService;

    invoke-virtual {v1}, Lcom/car/btphone/BTPhoneService;->clearCallStatus()V

    iget-object v1, p0, Lcom/car/btphone/BTPhoneService$BTServiceListener;->this$0:Lcom/car/btphone/BTPhoneService;

    invoke-static {v1}, Lcom/car/btphone/BTPhoneService;->access$1100(Lcom/car/btphone/BTPhoneService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/car/btphone/BTPhoneService$BTServiceListener;->this$0:Lcom/car/btphone/BTPhoneService;

    invoke-static {v1}, Lcom/car/btphone/BTPhoneService;->access$1100(Lcom/car/btphone/BTPhoneService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    return-void
.end method
