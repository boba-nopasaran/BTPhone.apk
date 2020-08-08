.class public Lcom/car/btphone/MainHandler;
.super Landroid/os/Handler;
.source "MainHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/btphone/MainHandler$PhoneCallBack;
    }
.end annotation


# static fields
.field static mCallBack:Lcom/car/btphone/MainHandler$PhoneCallBack;

.field static sIntance:Lcom/car/btphone/MainHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/car/btphone/MainHandler;->sIntance:Lcom/car/btphone/MainHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static getInstance(Z)Lcom/car/btphone/MainHandler;
    .locals 1

    sget-object v0, Lcom/car/btphone/MainHandler;->sIntance:Lcom/car/btphone/MainHandler;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    new-instance v0, Lcom/car/btphone/MainHandler;

    invoke-direct {v0}, Lcom/car/btphone/MainHandler;-><init>()V

    sput-object v0, Lcom/car/btphone/MainHandler;->sIntance:Lcom/car/btphone/MainHandler;

    :cond_0
    sget-object v0, Lcom/car/btphone/MainHandler;->sIntance:Lcom/car/btphone/MainHandler;

    return-object v0
.end method

.method static reset()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/car/btphone/MainHandler;->sIntance:Lcom/car/btphone/MainHandler;

    sput-object v0, Lcom/car/btphone/MainHandler;->mCallBack:Lcom/car/btphone/MainHandler$PhoneCallBack;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    sget-object v0, Lcom/car/btphone/MainHandler;->mCallBack:Lcom/car/btphone/MainHandler$PhoneCallBack;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/car/btphone/MainHandler;->mCallBack:Lcom/car/btphone/MainHandler$PhoneCallBack;

    invoke-interface {v0, p1}, Lcom/car/btphone/MainHandler$PhoneCallBack;->onCallMsg(Landroid/os/Message;)V

    goto :goto_0
.end method

.method setCallback(Lcom/car/btphone/MainHandler$PhoneCallBack;)V
    .locals 0

    sput-object p1, Lcom/car/btphone/MainHandler;->mCallBack:Lcom/car/btphone/MainHandler$PhoneCallBack;

    return-void
.end method
