.class Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$1;
.super Ljava/lang/Thread;
.source "BluetoothPbapObexSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->abort()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;


# direct methods
.method constructor <init>(Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$1;->this$0:Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$1;->this$0:Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;

    invoke-static {v0}, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;->access$100(Landroid/bluetooth/client/pbap/BluetoothPbapObexSession;)Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;->access$000(Landroid/bluetooth/client/pbap/BluetoothPbapObexSession$ObexClientThread;)Landroid/bluetooth/client/pbap/BluetoothPbapRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/client/pbap/BluetoothPbapRequest;->abort()V

    return-void
.end method
