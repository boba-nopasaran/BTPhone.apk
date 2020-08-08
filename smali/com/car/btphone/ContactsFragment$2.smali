.class Lcom/car/btphone/ContactsFragment$2;
.super Ljava/lang/Object;
.source "ContactsFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

    iput-object p1, p0, Lcom/car/btphone/ContactsFragment$2;->this$0:Lcom/car/btphone/ContactsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/car/btphone/ContactsFragment$2;->this$0:Lcom/car/btphone/ContactsFragment;

    invoke-static {}, Lcom/car/btphone/ContactsFragment;->access$000()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/car/btphone/ContactsFragment;->access$800(Lcom/car/btphone/ContactsFragment;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
