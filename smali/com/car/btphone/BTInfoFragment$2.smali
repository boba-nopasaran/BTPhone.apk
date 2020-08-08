.class Lcom/car/btphone/BTInfoFragment$2;
.super Ljava/lang/Object;
.source "BTInfoFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/btphone/BTInfoFragment;->showRenameDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/btphone/BTInfoFragment;


# direct methods
.method constructor <init>(Lcom/car/btphone/BTInfoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/car/btphone/BTInfoFragment$2;->this$0:Lcom/car/btphone/BTInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/car/btphone/BTInfoFragment$2;->this$0:Lcom/car/btphone/BTInfoFragment;

    iget-object v1, p0, Lcom/car/btphone/BTInfoFragment$2;->this$0:Lcom/car/btphone/BTInfoFragment;

    iget-object v1, v1, Lcom/car/btphone/BTInfoFragment;->mDeviceNameView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/car/btphone/BTInfoFragment;->setBTName(Ljava/lang/String;)V

    return-void
.end method
