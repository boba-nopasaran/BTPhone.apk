.class public Lcom/car/btphone/MySystemParams;
.super Ljava/lang/Object;
.source "MySystemParams.java"


# static fields
.field public static final SCREEN_ORIENTATION_HORIZONTAL:I = 0x2

.field public static final SCREEN_ORIENTATION_VERTICAL:I = 0x1

.field private static params:Lcom/car/btphone/MySystemParams;


# instance fields
.field private final TAG:Ljava/lang/String;

.field public densityDpi:I

.field public fontScale:F

.field public scale:F

.field public screenHeight:I

.field public screenOrientation:I

.field public screenWidth:I


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 4

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v2, "SystemParams"

    iput-object v2, p0, Lcom/car/btphone/MySystemParams;->TAG:Ljava/lang/String;

    iput v1, p0, Lcom/car/btphone/MySystemParams;->screenOrientation:I

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/car/btphone/MySystemParams;->screenWidth:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/car/btphone/MySystemParams;->screenHeight:I

    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v2, p0, Lcom/car/btphone/MySystemParams;->densityDpi:I

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/car/btphone/MySystemParams;->scale:F

    iget v2, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v2, p0, Lcom/car/btphone/MySystemParams;->fontScale:F

    iget v2, p0, Lcom/car/btphone/MySystemParams;->screenHeight:I

    iget v3, p0, Lcom/car/btphone/MySystemParams;->screenWidth:I

    if-le v2, v3, :cond_0

    :goto_0
    iput v1, p0, Lcom/car/btphone/MySystemParams;->screenOrientation:I

    return-void

    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public static getInstance(Landroid/app/Activity;)Lcom/car/btphone/MySystemParams;
    .locals 1

    sget-object v0, Lcom/car/btphone/MySystemParams;->params:Lcom/car/btphone/MySystemParams;

    if-nez v0, :cond_0

    new-instance v0, Lcom/car/btphone/MySystemParams;

    invoke-direct {v0, p0}, Lcom/car/btphone/MySystemParams;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/car/btphone/MySystemParams;->params:Lcom/car/btphone/MySystemParams;

    :cond_0
    sget-object v0, Lcom/car/btphone/MySystemParams;->params:Lcom/car/btphone/MySystemParams;

    return-object v0
.end method

.method public static getNewInstance(Landroid/app/Activity;)Lcom/car/btphone/MySystemParams;
    .locals 1

    sget-object v0, Lcom/car/btphone/MySystemParams;->params:Lcom/car/btphone/MySystemParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/car/btphone/MySystemParams;->params:Lcom/car/btphone/MySystemParams;

    :cond_0
    invoke-static {p0}, Lcom/car/btphone/MySystemParams;->getInstance(Landroid/app/Activity;)Lcom/car/btphone/MySystemParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCurrentScreenDpi()I
    .locals 1

    iget v0, p0, Lcom/car/btphone/MySystemParams;->densityDpi:I

    return v0
.end method

.method public getCurrentScreenHeight()I
    .locals 1

    iget v0, p0, Lcom/car/btphone/MySystemParams;->screenHeight:I

    return v0
.end method

.method public getCurrentScreenWidth()I
    .locals 1

    iget v0, p0, Lcom/car/btphone/MySystemParams;->screenWidth:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SystemParams:[screenWidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/car/btphone/MySystemParams;->screenWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " screenHeight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/car/btphone/MySystemParams;->screenHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " scale: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/car/btphone/MySystemParams;->scale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fontScale: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/car/btphone/MySystemParams;->fontScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " densityDpi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/car/btphone/MySystemParams;->densityDpi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " screenOrientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/car/btphone/MySystemParams;->screenOrientation:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const-string v0, "vertical"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "horizontal"

    goto :goto_0
.end method
