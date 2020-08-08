.class Lcom/car/btphone/BTPhoneService$8;
.super Ljava/lang/Object;
.source "BTPhoneService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    iput-object p1, p0, Lcom/car/btphone/BTPhoneService$8;->this$0:Lcom/car/btphone/BTPhoneService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    sget-boolean v0, Lcom/car/btphone/BTPhoneService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "BTP.BTPhoneService"

    const-string v1, "onServiceConnected ! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    sget-boolean v0, Lcom/car/btphone/BTPhoneService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "BTP.BTPhoneService"

    const-string v1, "onServiceDisconnected ! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
