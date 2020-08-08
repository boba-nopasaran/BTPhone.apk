.class Lcom/car/btphone/ContactsFragment$1$1;
.super Ljava/lang/Object;
.source "ContactsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/btphone/ContactsFragment$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/car/btphone/ContactsFragment$1;


# direct methods
.method constructor <init>(Lcom/car/btphone/ContactsFragment$1;)V
    .locals 0

    iput-object p1, p0, Lcom/car/btphone/ContactsFragment$1$1;->this$1:Lcom/car/btphone/ContactsFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lcom/car/btphone/BTPhoneService;->sContactList:Ljava/util/List;

    invoke-static {v0}, Lcom/car/btphone/ContactsFragment;->access$002(Ljava/util/List;)Ljava/util/List;

    invoke-static {}, Lcom/car/btphone/ContactsFragment;->access$000()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/car/btphone/ContactsFragment;->access$100(Ljava/util/List;)V

    iget-object v0, p0, Lcom/car/btphone/ContactsFragment$1$1;->this$1:Lcom/car/btphone/ContactsFragment$1;

    iget-object v0, v0, Lcom/car/btphone/ContactsFragment$1;->this$0:Lcom/car/btphone/ContactsFragment;

    invoke-static {v0}, Lcom/car/btphone/ContactsFragment;->access$200(Lcom/car/btphone/ContactsFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
