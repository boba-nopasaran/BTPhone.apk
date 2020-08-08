.class public Lcom/car/btphone/RecordFragment;
.super Landroid/app/Fragment;
.source "RecordFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field mAdapter:Lcom/car/btphone/CallLogAdapter;

.field mClearBtn:Landroid/widget/Button;

.field mListView:Landroid/widget/ListView;

.field mRecordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/btphone/CallRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/car/btphone/RecordFragment;->mRecordList:Ljava/util/ArrayList;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/car/btphone/RecordFragment;
    .locals 4

    const-class v3, Lcom/car/btphone/RecordFragment;

    monitor-enter v3

    :try_start_0
    new-instance v1, Lcom/car/btphone/RecordFragment;

    invoke-direct {v1}, Lcom/car/btphone/RecordFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v0}, Lcom/car/btphone/RecordFragment;->setArguments(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v1

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    sget-object v1, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/car/btphone/RecordFragment;->mClearBtn:Landroid/widget/Button;

    if-ne p1, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/car/btphone/RecordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/car/btphone/BTPhoneService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ClearCallLog"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/car/btphone/RecordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v1, 0x7f030008

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f08005a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/car/btphone/RecordFragment;->mClearBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/car/btphone/RecordFragment;->mClearBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f08005b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/car/btphone/RecordFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/car/btphone/RecordFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v1, Lcom/car/btphone/CallLogAdapter;

    invoke-virtual {p0}, Lcom/car/btphone/RecordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/car/btphone/CallLogAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/car/btphone/RecordFragment;->mAdapter:Lcom/car/btphone/CallLogAdapter;

    return-object v0
.end method

.method public onDetach()V
    .locals 4

    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    :try_start_0
    const-class v2, Landroid/app/Fragment;

    const-string v3, "mChildFragmentManager"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v4, p0, Lcom/car/btphone/RecordFragment;->mAdapter:Lcom/car/btphone/CallLogAdapter;

    invoke-virtual {v4, p3}, Lcom/car/btphone/CallLogAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/btphone/CallRecord;

    sget-boolean v4, Lcom/car/btphone/MainActivity;->isWithDialer:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/car/btphone/MainHandler;->getInstance(Z)Lcom/car/btphone/MainHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    const/16 v4, 0xf

    iput v4, v3, Landroid/os/Message;->what:I

    iget-object v4, v0, Lcom/car/btphone/CallRecord;->number:Ljava/lang/String;

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/car/btphone/RecordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p0}, Lcom/car/btphone/RecordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07000e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.car.btphone.CALL_OUTGOING"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "callnum"

    iget-object v5, v0, Lcom/car/btphone/CallRecord;->number:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/car/btphone/RecordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    invoke-virtual {p0}, Lcom/car/btphone/RecordFragment;->refreshList()V

    return-void
.end method

.method public refreshList()V
    .locals 2

    sget-object v0, Lcom/car/btphone/BTPhoneService;->sCallRecords:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/car/btphone/RecordFragment;->mRecordList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/car/btphone/RecordFragment;->mAdapter:Lcom/car/btphone/CallLogAdapter;

    iget-object v1, p0, Lcom/car/btphone/RecordFragment;->mRecordList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/car/btphone/CallLogAdapter;->setList(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/car/btphone/RecordFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/car/btphone/RecordFragment;->mAdapter:Lcom/car/btphone/CallLogAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
