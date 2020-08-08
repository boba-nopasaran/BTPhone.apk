.class Lcom/car/btphone/BladeView$1;
.super Ljava/lang/Object;
.source "BladeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/btphone/BladeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/btphone/BladeView;


# direct methods
.method constructor <init>(Lcom/car/btphone/BladeView;)V
    .locals 0

    iput-object p1, p0, Lcom/car/btphone/BladeView$1;->this$0:Lcom/car/btphone/BladeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/car/btphone/BladeView$1;->this$0:Lcom/car/btphone/BladeView;

    invoke-static {v0}, Lcom/car/btphone/BladeView;->access$000(Lcom/car/btphone/BladeView;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/btphone/BladeView$1;->this$0:Lcom/car/btphone/BladeView;

    invoke-static {v0}, Lcom/car/btphone/BladeView;->access$000(Lcom/car/btphone/BladeView;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method
