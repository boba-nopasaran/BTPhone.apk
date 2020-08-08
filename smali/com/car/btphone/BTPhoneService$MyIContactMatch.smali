.class final Lcom/car/btphone/BTPhoneService$MyIContactMatch;
.super Lcom/car/common/IContactMatch$Stub;
.source "BTPhoneService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/btphone/BTPhoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyIContactMatch"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/btphone/BTPhoneService;


# direct methods
.method private constructor <init>(Lcom/car/btphone/BTPhoneService;)V
    .locals 0

    iput-object p1, p0, Lcom/car/btphone/BTPhoneService$MyIContactMatch;->this$0:Lcom/car/btphone/BTPhoneService;

    invoke-direct {p0}, Lcom/car/common/IContactMatch$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/car/btphone/BTPhoneService;Lcom/car/btphone/BTPhoneService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/btphone/BTPhoneService$MyIContactMatch;-><init>(Lcom/car/btphone/BTPhoneService;)V

    return-void
.end method


# virtual methods
.method public getMatchedContacts(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v1, "BTP.BTPhoneService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMatchedContacts:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/car/btphone/BTPhoneService$MyIContactMatch;->this$0:Lcom/car/btphone/BTPhoneService;

    invoke-virtual {v1, p1}, Lcom/car/btphone/BTPhoneService;->contactsFound(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
