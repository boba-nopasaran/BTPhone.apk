.class Landroid/bluetooth/client/pbap/BluetoothPbapClient$SessionHandler;
.super Landroid/os/Handler;
.source "BluetoothPbapClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/client/pbap/BluetoothPbapClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SessionHandler"
.end annotation


# instance fields
.field private final mClient:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/bluetooth/client/pbap/BluetoothPbapClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/bluetooth/client/pbap/BluetoothPbapClient;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapClient$SessionHandler;->mClient:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const-string v4, "BluetoothPbapClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage: what="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Landroid/bluetooth/client/pbap/BluetoothPbapClient$SessionHandler;->mClient:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/client/pbap/BluetoothPbapClient;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;

    instance-of v4, v2, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullPhoneBookSize;

    if-eqz v4, :cond_7

    check-cast v2, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullPhoneBookSize;

    invoke-virtual {v2}, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullPhoneBookSize;->getSize()I

    move-result v3

    const/4 v4, 0x5

    invoke-static {v0, v4, v3}, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->access$100(Landroid/bluetooth/client/pbap/BluetoothPbapClient;II)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;

    instance-of v4, v2, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullPhoneBookSize;

    if-eqz v4, :cond_2

    const/16 v4, 0x69

    invoke-static {v0, v4}, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->access$000(Landroid/bluetooth/client/pbap/BluetoothPbapClient;I)V

    goto :goto_0

    :cond_2
    instance-of v4, v2, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardListingSize;

    if-eqz v4, :cond_3

    const/16 v4, 0x6a

    invoke-static {v0, v4}, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->access$000(Landroid/bluetooth/client/pbap/BluetoothPbapClient;I)V

    goto :goto_0

    :cond_3
    instance-of v4, v2, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullPhoneBook;

    if-eqz v4, :cond_4

    const/16 v4, 0x66

    invoke-static {v0, v4}, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->access$000(Landroid/bluetooth/client/pbap/BluetoothPbapClient;I)V

    goto :goto_0

    :cond_4
    instance-of v4, v2, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardListing;

    if-eqz v4, :cond_5

    const/16 v4, 0x67

    invoke-static {v0, v4}, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->access$000(Landroid/bluetooth/client/pbap/BluetoothPbapClient;I)V

    goto :goto_0

    :cond_5
    instance-of v4, v2, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardEntry;

    if-eqz v4, :cond_6

    const/16 v4, 0x68

    invoke-static {v0, v4}, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->access$000(Landroid/bluetooth/client/pbap/BluetoothPbapClient;I)V

    goto :goto_0

    :cond_6
    instance-of v4, v2, Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath;

    if-eqz v4, :cond_0

    const/16 v4, 0x65

    invoke-static {v0, v4}, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->access$000(Landroid/bluetooth/client/pbap/BluetoothPbapClient;I)V

    goto :goto_0

    :cond_7
    instance-of v4, v2, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardListingSize;

    if-eqz v4, :cond_8

    check-cast v2, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardListingSize;

    invoke-virtual {v2}, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardListingSize;->getSize()I

    move-result v3

    const/4 v4, 0x6

    invoke-static {v0, v4, v3}, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->access$100(Landroid/bluetooth/client/pbap/BluetoothPbapClient;II)V

    goto :goto_0

    :cond_8
    instance-of v4, v2, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullPhoneBook;

    if-eqz v4, :cond_9

    move-object v1, v2

    check-cast v1, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullPhoneBook;

    const/4 v4, 0x2

    invoke-virtual {v1}, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullPhoneBook;->getNewMissedCalls()I

    move-result v5

    invoke-virtual {v1}, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullPhoneBook;->getList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {v0, v4, v5, v6}, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->access$200(Landroid/bluetooth/client/pbap/BluetoothPbapClient;IILjava/lang/Object;)V

    goto :goto_0

    :cond_9
    instance-of v4, v2, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardListing;

    if-eqz v4, :cond_a

    move-object v1, v2

    check-cast v1, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardListing;

    const/4 v4, 0x3

    invoke-virtual {v1}, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardListing;->getNewMissedCalls()I

    move-result v5

    invoke-virtual {v1}, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardListing;->getList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {v0, v4, v5, v6}, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->access$200(Landroid/bluetooth/client/pbap/BluetoothPbapClient;IILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_a
    instance-of v4, v2, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardEntry;

    if-eqz v4, :cond_b

    move-object v1, v2

    check-cast v1, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardEntry;

    const/4 v4, 0x4

    invoke-virtual {v1}, Landroid/bluetooth/client/pbap/BluetoothPbapRequestPullVcardEntry;->getVcard()Lcom/android/vcard/VCardEntry;

    move-result-object v5

    invoke-static {v0, v4, v5}, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->access$300(Landroid/bluetooth/client/pbap/BluetoothPbapClient;ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_b
    instance-of v4, v2, Landroid/bluetooth/client/pbap/BluetoothPbapRequestSetPath;

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    invoke-static {v0, v4}, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->access$000(Landroid/bluetooth/client/pbap/BluetoothPbapClient;I)V

    goto/16 :goto_0

    :pswitch_2
    const/16 v4, 0xcb

    invoke-static {v0, v4}, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->access$000(Landroid/bluetooth/client/pbap/BluetoothPbapClient;I)V

    goto/16 :goto_0

    :pswitch_3
    const/16 v4, 0xcc

    invoke-static {v0, v4}, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->access$000(Landroid/bluetooth/client/pbap/BluetoothPbapClient;I)V

    goto/16 :goto_0

    :pswitch_4
    sget-object v4, Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;->CONNECTING:Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;

    invoke-static {v0, v4}, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->access$402(Landroid/bluetooth/client/pbap/BluetoothPbapClient;Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;)Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;

    goto/16 :goto_0

    :pswitch_5
    sget-object v4, Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;->CONNECTED:Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;

    invoke-static {v0, v4}, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->access$402(Landroid/bluetooth/client/pbap/BluetoothPbapClient;Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;)Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;

    const/16 v4, 0xc9

    invoke-static {v0, v4}, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->access$000(Landroid/bluetooth/client/pbap/BluetoothPbapClient;I)V

    goto/16 :goto_0

    :pswitch_6
    sget-object v4, Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;->DISCONNECTED:Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;

    invoke-static {v0, v4}, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->access$402(Landroid/bluetooth/client/pbap/BluetoothPbapClient;Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;)Landroid/bluetooth/client/pbap/BluetoothPbapClient$ConnectionState;

    const/16 v4, 0xca

    invoke-static {v0, v4}, Landroid/bluetooth/client/pbap/BluetoothPbapClient;->access$000(Landroid/bluetooth/client/pbap/BluetoothPbapClient;I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
