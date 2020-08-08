.class Lcom/car/btphone/BTPhoneService$BackgroundSyncRunnable;
.super Ljava/lang/Object;
.source "BTPhoneService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/btphone/BTPhoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BackgroundSyncRunnable"
.end annotation


# instance fields
.field mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/vcard/VCardEntry;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/car/btphone/BTPhoneService;


# direct methods
.method constructor <init>(Lcom/car/btphone/BTPhoneService;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/vcard/VCardEntry;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/car/btphone/BTPhoneService$BackgroundSyncRunnable;->this$0:Lcom/car/btphone/BTPhoneService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/car/btphone/BTPhoneService$BackgroundSyncRunnable;->mList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/car/btphone/BTPhoneService;->access$900()Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BackgroundSyncRunnable;->mList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/vcard/VCardEntry;

    invoke-virtual/range {v19 .. v19}, Lcom/android/vcard/VCardEntry;->getPhoneList()Ljava/util/List;

    move-result-object v14

    if-eqz v14, :cond_0

    const/4 v8, 0x0

    :goto_0
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v8, v0, :cond_0

    new-instance v4, Lcom/car/btphone/BTContact;

    invoke-direct {v4}, Lcom/car/btphone/BTContact;-><init>()V

    invoke-virtual/range {v19 .. v19}, Lcom/android/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v4, Lcom/car/btphone/BTContact;->name:Ljava/lang/String;

    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/vcard/VCardEntry$PhoneData;

    invoke-virtual/range {v20 .. v20}, Lcom/android/vcard/VCardEntry$PhoneData;->getNumber()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v4, Lcom/car/btphone/BTContact;->phoneNum:Ljava/lang/String;

    iget-object v0, v4, Lcom/car/btphone/BTContact;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4

    iget-object v0, v4, Lcom/car/btphone/BTContact;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_4

    iget-object v0, v4, Lcom/car/btphone/BTContact;->phoneNum:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4

    iget-object v0, v4, Lcom/car/btphone/BTContact;->phoneNum:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_4

    const/4 v7, 0x0

    move v11, v8

    :goto_1
    const/16 v20, 0x1

    move/from16 v0, v20

    if-lt v11, v0, :cond_2

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v20

    sub-int v20, v20, v11

    if-ltz v20, :cond_1

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v20

    sub-int v20, v20, v11

    move/from16 v0, v20

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/car/btphone/BTContact;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/car/btphone/BTContact;->phoneNum:Ljava/lang/String;

    move-object/from16 v20, v0

    iget-object v0, v4, Lcom/car/btphone/BTContact;->phoneNum:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    const/4 v7, 0x1

    :cond_1
    add-int/lit8 v11, v11, -0x1

    goto :goto_1

    :cond_2
    if-nez v7, :cond_4

    const/4 v5, 0x0

    const/4 v12, 0x0

    :goto_2
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v12, v0, :cond_3

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/car/btphone/BTContact;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/car/btphone/BTContact;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    iget-object v0, v4, Lcom/car/btphone/BTContact;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/car/btphone/BTContact;->phoneNum:Ljava/lang/String;

    move-object/from16 v20, v0

    iget-object v0, v4, Lcom/car/btphone/BTContact;->phoneNum:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    const/4 v5, 0x1

    :cond_3
    if-nez v5, :cond_4

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/car/btphone/BTPhoneService;->access$900()Ljava/util/List;

    move-result-object v20

    iget-object v0, v4, Lcom/car/btphone/BTContact;->phoneNum:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    sget v20, Lcom/car/btphone/BTPhoneService;->sContactSyncStatus:I

    const/16 v21, 0x3ec

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_7

    sget v20, Lcom/car/btphone/BTPhoneService;->sContactSyncStatus:I

    const/16 v21, 0x3ed

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_7

    const-wide/16 v20, 0x1f4

    :try_start_0
    invoke-static/range {v20 .. v21}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    :cond_7
    const-string v20, "BTP.BTPhoneService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Background list is "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", and current size is "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/car/btphone/BTPhoneService;->sContactList:Ljava/util/List;

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x0

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v20

    sget-object v21, Lcom/car/btphone/BTPhoneService;->sContactList:Ljava/util/List;

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_9

    const/4 v15, 0x1

    :cond_8
    :goto_4
    if-eqz v15, :cond_c

    const-string v20, "BTP.BTPhoneService"

    const-string v21, "Found change contact, update all now"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v20, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v20, :cond_b

    const/16 v20, 0x3e9

    sput v20, Lcom/car/btphone/BTPhoneService;->sContactSyncStatus:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BackgroundSyncRunnable;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v20, v0

    sget-object v21, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual/range {v21 .. v21}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    invoke-virtual/range {v20 .. v22}, Lcom/car/btphone/BTPhoneService;->setContactSyncFlag(Ljava/lang/String;Z)V

    new-instance v16, Lcom/car/btphone/BTPhoneService$SyncRunnable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BackgroundSyncRunnable;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BackgroundSyncRunnable;->mList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/car/btphone/BTPhoneService$SyncRunnable;-><init>(Lcom/car/btphone/BTPhoneService;Ljava/util/ArrayList;)V

    new-instance v20, Ljava/lang/Thread;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Thread;->start()V

    :goto_5
    new-instance v10, Landroid/content/Intent;

    const-string v20, "com.car.bthpone.contacts.notify"

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v20, "status"

    sget v21, Lcom/car/btphone/BTPhoneService;->sContactSyncStatus:I

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService$BackgroundSyncRunnable;->this$0:Lcom/car/btphone/BTPhoneService;

    move-object/from16 v20, v0

    sget-object v21, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v10, v1}, Lcom/car/btphone/BTPhoneService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :goto_6
    return-void

    :cond_9
    new-instance v18, Ljava/util/ArrayList;

    sget-object v20, Lcom/car/btphone/BTPhoneService;->sContactList:Ljava/util/List;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v20, Lcom/car/btphone/BTPhoneService$BTNumberComparator;

    invoke-direct/range {v20 .. v20}, Lcom/car/btphone/BTPhoneService$BTNumberComparator;-><init>()V

    move-object/from16 v0, v20

    invoke-static {v13, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v20, Lcom/car/btphone/BTPhoneService$BTNumberComparator;

    invoke-direct/range {v20 .. v20}, Lcom/car/btphone/BTPhoneService$BTNumberComparator;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v8, 0x0

    :goto_7
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v8, v0, :cond_8

    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/car/btphone/BTContact;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/car/btphone/BTContact;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, " "

    const-string v22, ""

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "\\."

    const-string v22, ""

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/car/btphone/BTContact;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/car/btphone/BTContact;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v22, " "

    const-string v23, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v22, "\\."

    const-string v23, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/car/btphone/BTContact;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/car/btphone/BTContact;->phoneNum:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/car/btphone/BTContact;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/car/btphone/BTContact;->phoneNum:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_a
    const-string v21, "BTP.BTPhoneService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Different one is "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/car/btphone/BTContact;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/car/btphone/BTContact;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v22, ":"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/car/btphone/BTContact;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/car/btphone/BTContact;->phoneNum:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v22, "<->"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/car/btphone/BTContact;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/car/btphone/BTContact;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v22, ":"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/car/btphone/BTContact;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/car/btphone/BTContact;->phoneNum:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x1

    goto/16 :goto_4

    :cond_b
    const/16 v20, 0x3ed

    sput v20, Lcom/car/btphone/BTPhoneService;->sContactSyncStatus:I

    goto/16 :goto_5

    :cond_c
    const-string v20, "BTP.BTPhoneService"

    const-string v21, "Needn\'t update contacts now"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6
.end method
