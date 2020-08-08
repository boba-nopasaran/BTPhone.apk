.class Lcom/car/btphone/ContactsFragment$3;
.super Ljava/lang/Object;
.source "ContactsFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/btphone/ContactsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/btphone/ContactsFragment;


# direct methods
.method constructor <init>(Lcom/car/btphone/ContactsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/car/btphone/ContactsFragment$3;->this$0:Lcom/car/btphone/ContactsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/car/btphone/ContactsFragment$3;->this$0:Lcom/car/btphone/ContactsFragment;

    invoke-static {v0}, Lcom/car/btphone/ContactsFragment;->access$900(Lcom/car/btphone/ContactsFragment;)V

    :cond_0
    return-void
.end method
