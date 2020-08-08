.class Lcom/car/btphone/ContactsFragment$1;
.super Landroid/os/Handler;
.source "ContactsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/btphone/ContactsFragment;
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

    iput-object p1, p0, Lcom/car/btphone/ContactsFragment$1;->this$0:Lcom/car/btphone/ContactsFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/16 v3, 0x3ed

    const/4 v2, 0x4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/car/btphone/ContactsFragment$1$1;

    invoke-direct {v1, p0}, Lcom/car/btphone/ContactsFragment$1$1;-><init>(Lcom/car/btphone/ContactsFragment$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/car/btphone/BTPhoneService;->sContactList:Ljava/util/List;

    invoke-static {v0}, Lcom/car/btphone/ContactsFragment;->access$002(Ljava/util/List;)Ljava/util/List;

    sget v0, Lcom/car/btphone/BTPhoneService;->sContactSyncStatus:I

    const/16 v1, 0x3ec

    if-eq v0, v1, :cond_0

    sget v0, Lcom/car/btphone/BTPhoneService;->sContactSyncStatus:I

    if-ne v0, v3, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/car/btphone/ContactsFragment$1;->this$0:Lcom/car/btphone/ContactsFragment;

    iget-object v0, v0, Lcom/car/btphone/ContactsFragment;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    invoke-static {}, Lcom/car/btphone/ContactsFragment;->access$000()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/car/btphone/ContactsFragment$1;->this$0:Lcom/car/btphone/ContactsFragment;

    iget-object v0, v0, Lcom/car/btphone/ContactsFragment;->mSyncErr:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/car/btphone/ContactsFragment$1;->this$0:Lcom/car/btphone/ContactsFragment;

    new-instance v1, Lcom/car/btphone/ListSectionIndexer;

    invoke-static {}, Lcom/car/btphone/ContactsFragment;->access$400()[Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/car/btphone/ContactsFragment;->access$500()[I

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/car/btphone/ListSectionIndexer;-><init>([Ljava/lang/String;[I)V

    invoke-static {v0, v1}, Lcom/car/btphone/ContactsFragment;->access$302(Lcom/car/btphone/ContactsFragment;Lcom/car/btphone/ListSectionIndexer;)Lcom/car/btphone/ListSectionIndexer;

    iget-object v0, p0, Lcom/car/btphone/ContactsFragment$1;->this$0:Lcom/car/btphone/ContactsFragment;

    new-instance v1, Lcom/car/btphone/ContactsListAdapter;

    invoke-static {}, Lcom/car/btphone/ContactsFragment;->access$000()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/car/btphone/ContactsFragment$1;->this$0:Lcom/car/btphone/ContactsFragment;

    invoke-static {v3}, Lcom/car/btphone/ContactsFragment;->access$300(Lcom/car/btphone/ContactsFragment;)Lcom/car/btphone/ListSectionIndexer;

    move-result-object v3

    sget-object v4, Lcom/car/btphone/ContactsFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3, v4}, Lcom/car/btphone/ContactsListAdapter;-><init>(Ljava/util/List;Lcom/car/btphone/ListSectionIndexer;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/car/btphone/ContactsFragment;->access$602(Lcom/car/btphone/ContactsFragment;Lcom/car/btphone/ContactsListAdapter;)Lcom/car/btphone/ContactsListAdapter;

    iget-object v0, p0, Lcom/car/btphone/ContactsFragment$1;->this$0:Lcom/car/btphone/ContactsFragment;

    invoke-static {v0}, Lcom/car/btphone/ContactsFragment;->access$700(Lcom/car/btphone/ContactsFragment;)Lcom/car/btphone/PinnedHeaderListView;

    move-result-object v0

    iget-object v1, p0, Lcom/car/btphone/ContactsFragment$1;->this$0:Lcom/car/btphone/ContactsFragment;

    invoke-static {v1}, Lcom/car/btphone/ContactsFragment;->access$600(Lcom/car/btphone/ContactsFragment;)Lcom/car/btphone/ContactsListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/car/btphone/PinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/car/btphone/ContactsFragment$1;->this$0:Lcom/car/btphone/ContactsFragment;

    invoke-static {v0}, Lcom/car/btphone/ContactsFragment;->access$700(Lcom/car/btphone/ContactsFragment;)Lcom/car/btphone/PinnedHeaderListView;

    move-result-object v0

    iget-object v1, p0, Lcom/car/btphone/ContactsFragment$1;->this$0:Lcom/car/btphone/ContactsFragment;

    invoke-static {v1}, Lcom/car/btphone/ContactsFragment;->access$600(Lcom/car/btphone/ContactsFragment;)Lcom/car/btphone/ContactsListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/car/btphone/PinnedHeaderListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lcom/car/btphone/ContactsFragment$1;->this$0:Lcom/car/btphone/ContactsFragment;

    iget-object v0, v0, Lcom/car/btphone/ContactsFragment;->mSearchEditText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    sget v0, Lcom/car/btphone/BTPhoneService;->sContactSyncStatus:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/car/btphone/ContactsFragment$1;->this$0:Lcom/car/btphone/ContactsFragment;

    iget-object v0, v0, Lcom/car/btphone/ContactsFragment;->mSyncErr:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
