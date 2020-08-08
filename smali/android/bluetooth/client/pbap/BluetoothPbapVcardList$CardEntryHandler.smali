.class Landroid/bluetooth/client/pbap/BluetoothPbapVcardList$CardEntryHandler;
.super Ljava/lang/Object;
.source "BluetoothPbapVcardList.java"

# interfaces
.implements Lcom/android/vcard/VCardEntryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/client/pbap/BluetoothPbapVcardList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CardEntryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/client/pbap/BluetoothPbapVcardList;


# direct methods
.method constructor <init>(Landroid/bluetooth/client/pbap/BluetoothPbapVcardList;)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapVcardList$CardEntryHandler;->this$0:Landroid/bluetooth/client/pbap/BluetoothPbapVcardList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd()V
    .locals 0

    return-void
.end method

.method public onEntryCreated(Lcom/android/vcard/VCardEntry;)V
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapVcardList$CardEntryHandler;->this$0:Landroid/bluetooth/client/pbap/BluetoothPbapVcardList;

    invoke-static {v0}, Landroid/bluetooth/client/pbap/BluetoothPbapVcardList;->access$000(Landroid/bluetooth/client/pbap/BluetoothPbapVcardList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method
