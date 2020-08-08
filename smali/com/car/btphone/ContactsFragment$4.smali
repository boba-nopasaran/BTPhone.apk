.class Lcom/car/btphone/ContactsFragment$4;
.super Ljava/lang/Object;
.source "ContactsFragment.java"

# interfaces
.implements Lcom/car/btphone/BladeView$OnMyItemClickListener;


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

    iput-object p1, p0, Lcom/car/btphone/ContactsFragment$4;->this$0:Lcom/car/btphone/ContactsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/car/btphone/ContactsFragment$4;->this$0:Lcom/car/btphone/ContactsFragment;

    invoke-static {v2}, Lcom/car/btphone/ContactsFragment;->access$300(Lcom/car/btphone/ContactsFragment;)Lcom/car/btphone/ListSectionIndexer;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/car/btphone/ContactsFragment;->access$1000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/car/btphone/ContactsFragment$4;->this$0:Lcom/car/btphone/ContactsFragment;

    invoke-static {v2}, Lcom/car/btphone/ContactsFragment;->access$300(Lcom/car/btphone/ContactsFragment;)Lcom/car/btphone/ListSectionIndexer;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/car/btphone/ListSectionIndexer;->getPositionForSection(I)I

    move-result v0

    const-string v2, "BTP.ContactsFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "s:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",section:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",position:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/car/btphone/ContactsFragment$4;->this$0:Lcom/car/btphone/ContactsFragment;

    invoke-static {v2}, Lcom/car/btphone/ContactsFragment;->access$700(Lcom/car/btphone/ContactsFragment;)Lcom/car/btphone/PinnedHeaderListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/car/btphone/PinnedHeaderListView;->setSelection(I)V

    :cond_0
    return-void
.end method
