.class public Lcom/car/btphone/BTPhoneService;
.super Landroid/app/Service;
.source "BTPhoneService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;,
        Lcom/car/btphone/BTPhoneService$BTServiceListener;,
        Lcom/car/btphone/BTPhoneService$ContactMatchComparator;,
        Lcom/car/btphone/BTPhoneService$MyIContactMatch;,
        Lcom/car/btphone/BTPhoneService$SyncRunnable;,
        Lcom/car/btphone/BTPhoneService$ClearUserDataObserver;,
        Lcom/car/btphone/BTPhoneService$BTLetterComparator;,
        Lcom/car/btphone/BTPhoneService$BTNumberComparator;,
        Lcom/car/btphone/BTPhoneService$BackgroundSyncRunnable;,
        Lcom/car/btphone/BTPhoneService$ShortCutCall;,
        Lcom/car/btphone/BTPhoneService$CallStatus;
    }
.end annotation


# static fields
.field public static final ACTIVE_ACTION:Ljava/lang/String; = "ActiveBT"

.field public static final AUTHORITY:Ljava/lang/String; = "com.car.provider.btprovider"

.field static final AUTOCONN_TRY:I = 0xb

.field static final AUTOCONN_TRY_TIMER:I = 0x2710

.field public static final BTCALLLOG_TABLE:Ljava/lang/String; = "btcalllog"

.field public static final BTCONTACT_TABLE:Ljava/lang/String; = "btcontact"

.field public static final BTPHONE_DATE:Ljava/lang/String; = "date"

.field public static final BTPHONE_ID:Ljava/lang/String; = "id"

.field public static final BTPHONE_NAME:Ljava/lang/String; = "name"

.field public static final BTPHONE_NUMBER:Ljava/lang/String; = "number"

.field public static final BTPHONE_TYPE:Ljava/lang/String; = "type"

.field public static final BT_CALL_NUM_KEY:Ljava/lang/String; = "callnum"

.field public static final BT_CALL_OUTGOING:Ljava/lang/String; = "com.car.btphone.CALL_OUTGOING"

.field public static final BT_CALL_TERM_EXIT:Ljava/lang/String; = "callexit"

.field static final BT_DISCOVERABLE_SET:I = 0x13

.field public static final CALLLOG_URI:Landroid/net/Uri;

.field public static final CLEAR_ACTION:Ljava/lang/String; = "ClearCallLog"

.field static final CONNECTED_CHECK:I = 0x12

.field static final CONTACTS_BACKGOUND_SYNC:I = 0x14

.field public static final CONTACTS_READ_ERROR:I = 0x3ed

.field public static final CONTACTS_READ_FINISHED:I = 0x3ec

.field public static final CONTACTS_READ_START:I = 0x3eb

.field public static final CONTACTS_SYNC_FINISHED:I = 0x3ea

.field public static final CONTACTS_SYNC_ING:I = 0x3e9

.field public static final CONTACTS_SYNC_NONE:I = 0x3e7

.field public static final CONTACTS_SYNC_START:I = 0x3e8

.field public static final CONTACT_URI:Landroid/net/Uri;

.field static final CURCALL_CHECK:I = 0xc

.field static DBG:Z = false

.field public static final DEV_CALLLOG_NOFITY:Ljava/lang/String; = "com.car.bthpone.calllog.notify"

.field public static final DEV_CONNECTED_NOFITY:Ljava/lang/String; = "com.car.bthpone.connected.notify"

.field public static final DEV_CONTACTS_NOFITY:Ljava/lang/String; = "com.car.bthpone.contacts.notify"

.field static final DISCONNECT_AUDIO_IF_CALL_ACTIVE:I = 0x15

.field static final MSG_CALLLOG_READ:I = 0x11

.field static final MSG_CONTACTS_READ:I = 0x10

.field static final MSG_CONTACTS_SYNC:I = 0xe

.field static final MSG_CONTACTS_SYNC_DONE:I = 0xf

.field static final MSG_SHORTCUT_SHOW:I = 0x16

.field static final REMOVE_OTHER_PAIR:I = 0xd

.field public static final START_MAINACTIVITY:I = 0x3ee

.field public static final SYNC_ACTION:Ljava/lang/String; = "SyncContacts"

.field static final TAG:Ljava/lang/String; = "BTP.BTPhoneService"

.field public static final URI:Landroid/net/Uri;

.field private static mBTList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static mCall:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/car/btphone/BTPhoneService$CallStatus;",
            ">;"
        }
    .end annotation
.end field

.field static sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field public static sBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field public static sBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

.field static sBondedDevice:Landroid/bluetooth/BluetoothDevice;

.field static sCallRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/btphone/CallRecord;",
            ">;"
        }
    .end annotation
.end field

.field public static sContactList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/car/btphone/BTContact;",
            ">;"
        }
    .end annotation
.end field

.field public static sContactList4Voice:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/car/btphone/BTContact;",
            ">;"
        }
    .end annotation
.end field

.field public static sContactSyncStatus:I

.field static sDataCleared:Z

.field static sIgnoreOnce:Z

.field public static sIsRunning:Z

.field private static sMyReopen:Z

.field static sReconnectCounter:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static sTempList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/car/btphone/BTContact;",
            ">;"
        }
    .end annotation
.end field

.field static sTimeTrigger:J

.field public static sUserBreak:Z


# instance fields
.field mAudioManager:Landroid/media/AudioManager;

.field mBluetoothPbapClient:Landroid/bluetooth/client/pbap/BluetoothPbapClient;

.field mCarServiceImpl:Lcom/car/common/CarServiceImpl;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mDownTime:J

.field mFmEverDisabled:Z

.field mHandler:Landroid/os/Handler;

.field mHandler2:Landroid/os/Handler;

.field private mListener:Lcom/car/btphone/BTPhoneService$BTServiceListener;

.field private final mMyBind:Lcom/car/btphone/BTPhoneService$MyIContactMatch;

.field mNeedRecover:Z

.field mPBCount:I

.field mPBList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/vcard/VCardEntry;",
            ">;"
        }
    .end annotation
.end field

.field mParentView:Landroid/view/View;

.field private mRawX:F

.field private mRawY:F

.field private mReceiver:Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;

.field private mRect:Landroid/graphics/Rect;

.field mShortCutCall:Lcom/car/btphone/BTPhoneService$ShortCutCall;

.field private mStartRawX:F

.field private mStartRawY:F

.field private mStartX:F

.field private mStartY:F

.field mTryCounts:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 90
    const-string v0, "debug.btphone"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/car/btphone/BTPhoneService;->DBG:Z

    .line 129
    const-string v0, "content://com.car.provider.btprovider/btmode/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/car/btphone/BTPhoneService;->URI:Landroid/net/Uri;

    .line 130
    const-string v0, "content://com.car.provider.btprovider/btcalllog"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/car/btphone/BTPhoneService;->CALLLOG_URI:Landroid/net/Uri;

    .line 131
    const-string v0, "content://com.car.provider.btprovider/btcontact"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/car/btphone/BTPhoneService;->CONTACT_URI:Landroid/net/Uri;

    .line 140
    sput-boolean v2, Lcom/car/btphone/BTPhoneService;->sMyReopen:Z

    .line 141
    sput-boolean v2, Lcom/car/btphone/BTPhoneService;->sIsRunning:Z

    .line 142
    sput-object v1, Lcom/car/btphone/BTPhoneService;->sBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 143
    sput-object v1, Lcom/car/btphone/BTPhoneService;->sBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    .line 144
    sput-object v1, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 145
    sput-object v1, Lcom/car/btphone/BTPhoneService;->sBondedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 146
    sput-boolean v2, Lcom/car/btphone/BTPhoneService;->sUserBreak:Z

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/car/btphone/BTPhoneService;->sTempList:Ljava/util/List;

    .line 148
    sget-object v0, Lcom/car/btphone/BTPhoneService;->sTempList:Ljava/util/List;

    sput-object v0, Lcom/car/btphone/BTPhoneService;->sContactList:Ljava/util/List;

    .line 149
    sget-object v0, Lcom/car/btphone/BTPhoneService;->sTempList:Ljava/util/List;

    sput-object v0, Lcom/car/btphone/BTPhoneService;->sContactList4Voice:Ljava/util/List;

    .line 150
    const/16 v0, 0x3e7

    sput v0, Lcom/car/btphone/BTPhoneService;->sContactSyncStatus:I

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/car/btphone/BTPhoneService;->sCallRecords:Ljava/util/ArrayList;

    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/car/btphone/BTPhoneService;->sReconnectCounter:Ljava/util/HashMap;

    .line 154
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/car/btphone/BTPhoneService;->sTimeTrigger:J

    .line 155
    sput-boolean v2, Lcom/car/btphone/BTPhoneService;->sIgnoreOnce:Z

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/car/btphone/BTPhoneService;->mBTList:Ljava/util/List;

    .line 180
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/car/btphone/BTPhoneService;->mCall:Ljava/util/HashMap;

    .line 490
    sput-boolean v2, Lcom/car/btphone/BTPhoneService;->sDataCleared:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 160
    iput v0, p0, Lcom/car/btphone/BTPhoneService;->mPBCount:I

    .line 166
    iput-boolean v0, p0, Lcom/car/btphone/BTPhoneService;->mNeedRecover:Z

    .line 167
    iput-boolean v0, p0, Lcom/car/btphone/BTPhoneService;->mFmEverDisabled:Z

    .line 194
    iput v0, p0, Lcom/car/btphone/BTPhoneService;->mTryCounts:I

    .line 197
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/car/btphone/BTPhoneService;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    .line 200
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/car/btphone/BTPhoneService;->mRect:Landroid/graphics/Rect;

    .line 208
    new-instance v0, Lcom/car/btphone/BTPhoneService$ShortCutCall;

    invoke-direct {v0, p0}, Lcom/car/btphone/BTPhoneService$ShortCutCall;-><init>(Lcom/car/btphone/BTPhoneService;)V

    iput-object v0, p0, Lcom/car/btphone/BTPhoneService;->mShortCutCall:Lcom/car/btphone/BTPhoneService$ShortCutCall;

    .line 931
    new-instance v0, Lcom/car/btphone/BTPhoneService$6;

    invoke-direct {v0, p0}, Lcom/car/btphone/BTPhoneService$6;-><init>(Lcom/car/btphone/BTPhoneService;)V

    iput-object v0, p0, Lcom/car/btphone/BTPhoneService;->mHandler2:Landroid/os/Handler;

    .line 978
    new-instance v0, Lcom/car/btphone/BTPhoneService$7;

    invoke-direct {v0, p0}, Lcom/car/btphone/BTPhoneService$7;-><init>(Lcom/car/btphone/BTPhoneService;)V

    iput-object v0, p0, Lcom/car/btphone/BTPhoneService;->mHandler:Landroid/os/Handler;

    .line 1218
    new-instance v0, Lcom/car/btphone/BTPhoneService$MyIContactMatch;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/car/btphone/BTPhoneService$MyIContactMatch;-><init>(Lcom/car/btphone/BTPhoneService;Lcom/car/btphone/BTPhoneService$1;)V

    iput-object v0, p0, Lcom/car/btphone/BTPhoneService;->mMyBind:Lcom/car/btphone/BTPhoneService$MyIContactMatch;

    .line 1430
    new-instance v0, Lcom/car/btphone/BTPhoneService$8;

    invoke-direct {v0, p0}, Lcom/car/btphone/BTPhoneService$8;-><init>(Lcom/car/btphone/BTPhoneService;)V

    iput-object v0, p0, Lcom/car/btphone/BTPhoneService;->mConnection:Landroid/content/ServiceConnection;

    .line 1568
    return-void
.end method

.method public static accept()V
    .locals 3

    .prologue
    .line 1510
    sget-object v0, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/car/btphone/BTPhoneService;->sBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    if-nez v0, :cond_1

    .line 1512
    :cond_0
    :goto_0
    return-void

    .line 1511
    :cond_1
    sget-object v0, Lcom/car/btphone/BTPhoneService;->sBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    sget-object v1, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothHeadsetClient;->acceptCall(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/car/btphone/BTPhoneService;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/car/btphone/BTPhoneService;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/car/btphone/BTPhoneService;->mRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$100(Lcom/car/btphone/BTPhoneService;)F
    .locals 1
    .param p0, "x0"    # Lcom/car/btphone/BTPhoneService;

    .prologue
    .line 88
    iget v0, p0, Lcom/car/btphone/BTPhoneService;->mRawX:F

    return v0
.end method

.method static synthetic access$102(Lcom/car/btphone/BTPhoneService;F)F
    .locals 0
    .param p0, "x0"    # Lcom/car/btphone/BTPhoneService;
    .param p1, "x1"    # F

    .prologue
    .line 88
    iput p1, p0, Lcom/car/btphone/BTPhoneService;->mRawX:F

    return p1
.end method

.method static synthetic access$1100(Lcom/car/btphone/BTPhoneService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/car/btphone/BTPhoneService;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/car/btphone/BTPhoneService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1200()Z
    .locals 1

    .prologue
    .line 88
    sget-boolean v0, Lcom/car/btphone/BTPhoneService;->sMyReopen:Z

    return v0
.end method

.method static synthetic access$1202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 88
    sput-boolean p0, Lcom/car/btphone/BTPhoneService;->sMyReopen:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/car/btphone/BTPhoneService;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/car/btphone/BTPhoneService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/car/btphone/BTPhoneService;->insertCallLog(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/car/btphone/BTPhoneService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/car/btphone/BTPhoneService;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/car/btphone/BTPhoneService;->isHome()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/car/btphone/BTPhoneService;)F
    .locals 1
    .param p0, "x0"    # Lcom/car/btphone/BTPhoneService;

    .prologue
    .line 88
    iget v0, p0, Lcom/car/btphone/BTPhoneService;->mRawY:F

    return v0
.end method

.method static synthetic access$202(Lcom/car/btphone/BTPhoneService;F)F
    .locals 0
    .param p0, "x0"    # Lcom/car/btphone/BTPhoneService;
    .param p1, "x1"    # F

    .prologue
    .line 88
    iput p1, p0, Lcom/car/btphone/BTPhoneService;->mRawY:F

    return p1
.end method

.method static synthetic access$302(Lcom/car/btphone/BTPhoneService;F)F
    .locals 0
    .param p0, "x0"    # Lcom/car/btphone/BTPhoneService;
    .param p1, "x1"    # F

    .prologue
    .line 88
    iput p1, p0, Lcom/car/btphone/BTPhoneService;->mStartX:F

    return p1
.end method

.method static synthetic access$402(Lcom/car/btphone/BTPhoneService;F)F
    .locals 0
    .param p0, "x0"    # Lcom/car/btphone/BTPhoneService;
    .param p1, "x1"    # F

    .prologue
    .line 88
    iput p1, p0, Lcom/car/btphone/BTPhoneService;->mStartY:F

    return p1
.end method

.method static synthetic access$500(Lcom/car/btphone/BTPhoneService;)F
    .locals 1
    .param p0, "x0"    # Lcom/car/btphone/BTPhoneService;

    .prologue
    .line 88
    iget v0, p0, Lcom/car/btphone/BTPhoneService;->mStartRawX:F

    return v0
.end method

.method static synthetic access$502(Lcom/car/btphone/BTPhoneService;F)F
    .locals 0
    .param p0, "x0"    # Lcom/car/btphone/BTPhoneService;
    .param p1, "x1"    # F

    .prologue
    .line 88
    iput p1, p0, Lcom/car/btphone/BTPhoneService;->mStartRawX:F

    return p1
.end method

.method static synthetic access$600(Lcom/car/btphone/BTPhoneService;)F
    .locals 1
    .param p0, "x0"    # Lcom/car/btphone/BTPhoneService;

    .prologue
    .line 88
    iget v0, p0, Lcom/car/btphone/BTPhoneService;->mStartRawY:F

    return v0
.end method

.method static synthetic access$602(Lcom/car/btphone/BTPhoneService;F)F
    .locals 0
    .param p0, "x0"    # Lcom/car/btphone/BTPhoneService;
    .param p1, "x1"    # F

    .prologue
    .line 88
    iput p1, p0, Lcom/car/btphone/BTPhoneService;->mStartRawY:F

    return p1
.end method

.method static synthetic access$700(Lcom/car/btphone/BTPhoneService;)J
    .locals 2
    .param p0, "x0"    # Lcom/car/btphone/BTPhoneService;

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/car/btphone/BTPhoneService;->mDownTime:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/car/btphone/BTPhoneService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/car/btphone/BTPhoneService;
    .param p1, "x1"    # J

    .prologue
    .line 88
    iput-wide p1, p0, Lcom/car/btphone/BTPhoneService;->mDownTime:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/car/btphone/BTPhoneService;)V
    .locals 0
    .param p0, "x0"    # Lcom/car/btphone/BTPhoneService;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/car/btphone/BTPhoneService;->updateViewPosition()V

    return-void
.end method

.method static synthetic access$900()Ljava/util/List;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/car/btphone/BTPhoneService;->mBTList:Ljava/util/List;

    return-object v0
.end method

.method private batchAddContacts2BTProvider(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/vcard/VCardEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 874
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/vcard/VCardEntry;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 875
    .local v5, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/vcard/VCardEntry;

    .line 876
    .local v6, "vc":Lcom/android/vcard/VCardEntry;
    invoke-virtual {v6}, Lcom/android/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    .line 877
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/android/vcard/VCardEntry;->getPhoneList()Ljava/util/List;

    move-result-object v3

    .line 878
    .local v3, "lp":Ljava/util/List;, "Ljava/util/List<Lcom/android/vcard/VCardEntry$PhoneData;>;"
    if-eqz v3, :cond_0

    .line 879
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_1

    .line 880
    sget-object v7, Lcom/car/btphone/BTPhoneService;->CONTACT_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v8, "name"

    invoke-virtual {v7, v8, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    const-string v9, "number"

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/vcard/VCardEntry$PhoneData;

    invoke-virtual {v7}, Lcom/android/vcard/VCardEntry$PhoneData;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v9, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 879
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 887
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/16 v8, 0xc8

    if-lt v7, v8, :cond_0

    .line 888
    if-eqz v5, :cond_2

    .line 890
    :try_start_0
    invoke-virtual {p0}, Lcom/car/btphone/BTPhoneService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "com.car.provider.btprovider"

    invoke-virtual {v7, v8, v5}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 896
    :cond_2
    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 892
    :catch_0
    move-exception v0

    .line 893
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 900
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "i":I
    .end local v3    # "lp":Ljava/util/List;, "Ljava/util/List<Lcom/android/vcard/VCardEntry$PhoneData;>;"
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "vc":Lcom/android/vcard/VCardEntry;
    :cond_3
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 902
    :try_start_1
    invoke-virtual {p0}, Lcom/car/btphone/BTPhoneService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "com.car.provider.btprovider"

    invoke-virtual {v7, v8, v5}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 908
    :cond_4
    :goto_3
    return-void

    .line 904
    :catch_1
    move-exception v0

    .line 905
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public static dial(Ljava/lang/String;)V
    .locals 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 1520
    sget-object v0, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/car/btphone/BTPhoneService;->sBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    if-nez v0, :cond_1

    .line 1522
    :cond_0
    :goto_0
    return-void

    .line 1521
    :cond_1
    sget-object v0, Lcom/car/btphone/BTPhoneService;->sBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    sget-object v1, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, p0}, Landroid/bluetooth/BluetoothHeadsetClient;->dial(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public static disconnectHost()V
    .locals 6

    .prologue
    .line 1477
    sget-object v3, Lcom/car/btphone/BTPhoneService;->sBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    if-nez v3, :cond_0

    .line 1493
    .local v2, "list":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :goto_0
    return-void

    .line 1479
    .end local v2    # "list":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_0
    sget-object v3, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v3, :cond_1

    .line 1480
    sget-object v3, Lcom/car/btphone/BTPhoneService;->sBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    sget-object v4, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothHeadsetClient;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 1482
    :cond_1
    const/4 v3, 0x1

    sput-boolean v3, Lcom/car/btphone/BTPhoneService;->sUserBreak:Z

    .line 1483
    sget-object v3, Lcom/car/btphone/BTPhoneService;->sBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v2

    .line 1484
    .restart local v2    # "list":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 1485
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1486
    .local v0, "bd":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v3

    const/16 v4, 0x200

    if-ne v3, v4, :cond_2

    .line 1487
    :cond_3
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    .line 1488
    const-string v3, "BTP.BTPhoneService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", major="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "class="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1492
    .end local v0    # "bd":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-static {}, Lcom/car/btphone/BTPhoneService;->reOpenBT()V

    goto/16 :goto_0
.end method

.method private getCallLogFormBtProvider()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/btphone/CallRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 741
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 743
    .local v9, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/car/btphone/CallRecord;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/car/btphone/BTPhoneService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/car/btphone/BTPhoneService;->CALLLOG_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 745
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 747
    :cond_0
    const-string v0, "type"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 748
    .local v11, "type":I
    const-string v0, "number"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 749
    .local v10, "number":Ljava/lang/String;
    const-string v0, "date"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 750
    .local v12, "t":J
    invoke-virtual {p0, v11, v10, v12, v13}, Lcom/car/btphone/BTPhoneService;->getCallRecord(ILjava/lang/String;J)Lcom/car/btphone/CallRecord;

    move-result-object v6

    .line 751
    .local v6, "cr":Lcom/car/btphone/CallRecord;
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 752
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 753
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 758
    .end local v6    # "cr":Lcom/car/btphone/CallRecord;
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v10    # "number":Ljava/lang/String;
    .end local v11    # "type":I
    .end local v12    # "t":J
    :cond_1
    :goto_0
    return-object v9

    .line 755
    :catch_0
    move-exception v8

    .line 756
    .local v8, "e":Landroid/database/sqlite/SQLiteException;
    const-string v0, "BTP.BTPhoneService"

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static getCurActiveCall()Lcom/car/btphone/BTPhoneService$CallStatus;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 2059
    sget-object v3, Lcom/car/btphone/BTPhoneService;->mCall:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-gtz v3, :cond_0

    move-object v0, v2

    .line 2070
    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    return-object v0

    .line 2060
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    sget-object v3, Lcom/car/btphone/BTPhoneService;->mCall:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    .line 2061
    sget-object v3, Lcom/car/btphone/BTPhoneService;->mCall:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/btphone/BTPhoneService$CallStatus;

    .line 2062
    .local v0, "cs":Lcom/car/btphone/BTPhoneService$CallStatus;
    iget v3, v0, Lcom/car/btphone/BTPhoneService$CallStatus;->state:I

    if-nez v3, :cond_1

    goto :goto_0

    .line 2066
    .end local v0    # "cs":Lcom/car/btphone/BTPhoneService$CallStatus;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    sget-object v3, Lcom/car/btphone/BTPhoneService;->mCall:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/btphone/BTPhoneService$CallStatus;

    .line 2067
    .restart local v0    # "cs":Lcom/car/btphone/BTPhoneService$CallStatus;
    goto :goto_0

    .end local v0    # "cs":Lcom/car/btphone/BTPhoneService$CallStatus;
    :cond_3
    move-object v0, v2

    .line 2070
    goto :goto_0
.end method

.method private getHomes()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2046
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2047
    .local v2, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/car/btphone/BTPhoneService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 2048
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2049
    .local v1, "intent":Landroid/content/Intent;
    const-string v6, "android.intent.category.HOME"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2050
    const/high16 v6, 0x10000

    invoke-virtual {v3, v1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 2052
    .local v4, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 2053
    .local v5, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2055
    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_0
    return-object v2
.end method

.method private insertCallLog(Ljava/lang/String;I)V
    .locals 6
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 676
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 677
    .local v2, "values":Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 678
    .local v0, "time":J
    sget-boolean v3, Lcom/car/btphone/MainActivity;->isWithDialer:Z

    if-eqz v3, :cond_0

    .line 679
    const-string v3, "number"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    const-string v3, "date"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 681
    const-string v3, "type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 682
    invoke-virtual {p0}, Lcom/car/btphone/BTPhoneService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/car/btphone/BTPhoneService;->CALLLOG_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 691
    :goto_0
    sget-object v3, Lcom/car/btphone/BTPhoneService;->sCallRecords:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {p0, p2, p1, v0, v1}, Lcom/car/btphone/BTPhoneService;->getCallRecord(ILjava/lang/String;J)Lcom/car/btphone/CallRecord;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 692
    return-void

    .line 684
    :cond_0
    const-string v3, "number"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    const-string v3, "date"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 687
    const-string v3, "type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 689
    invoke-virtual {p0}, Lcom/car/btphone/BTPhoneService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method

.method static isAllDigits(Ljava/lang/String;)Z
    .locals 8
    .param p0, "num"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 1242
    const/4 v3, 0x0

    .line 1243
    .local v3, "count":I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 1244
    .local v2, "chars":[C
    move-object v0, v2

    .local v0, "arr$":[C
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-char v1, v0, v4

    .line 1245
    .local v1, "c":C
    add-int/lit8 v3, v3, 0x1

    .line 1246
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_0

    const/16 v7, 0x2a

    if-eq v1, v7, :cond_0

    const/16 v7, 0x23

    if-ne v1, v7, :cond_1

    .line 1244
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1248
    :cond_1
    if-ne v3, v6, :cond_2

    .line 1249
    const/4 v6, 0x0

    .line 1256
    .end local v1    # "c":C
    :cond_2
    return v6
.end method

.method public static isAudioConnect()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1505
    sget-object v1, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/car/btphone/BTPhoneService;->sBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    if-nez v1, :cond_1

    .line 1506
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/car/btphone/BTPhoneService;->sBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    sget-object v2, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothHeadsetClient;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static isBTEnable()Z
    .locals 1

    .prologue
    .line 1473
    sget-object v0, Lcom/car/btphone/BTPhoneService;->sBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    return v0
.end method

.method private isHome()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2036
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Lcom/car/btphone/BTPhoneService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2037
    .local v0, "mActivityManager":Landroid/app/ActivityManager;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 2038
    .local v1, "rti":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 2039
    invoke-direct {p0}, Lcom/car/btphone/BTPhoneService;->getHomes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 2041
    :cond_0
    return v2
.end method

.method static reOpenBT()V
    .locals 4

    .prologue
    .line 1391
    sget-object v1, Lcom/car/btphone/BTPhoneService;->sBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1392
    const/4 v1, 0x1

    sput-boolean v1, Lcom/car/btphone/BTPhoneService;->sMyReopen:Z

    .line 1393
    sget-object v1, Lcom/car/btphone/BTPhoneService;->sBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v0

    .line 1394
    .local v0, "ret":Z
    const-string v1, "BTP.BTPhoneService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disable BT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    :goto_0
    return-void

    .line 1396
    .end local v0    # "ret":Z
    :cond_0
    sget-object v1, Lcom/car/btphone/BTPhoneService;->sBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    .line 1397
    .restart local v0    # "ret":Z
    const-string v1, "BTP.BTPhoneService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enalbe BT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readContactsFromBTProvider()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/car/btphone/BTContact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 594
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 595
    .local v9, "temp":Ljava/util/List;, "Ljava/util/List<Lcom/car/btphone/BTContact;>;"
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "name"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "number"

    aput-object v1, v2, v0

    .line 597
    .local v2, "projection":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/car/btphone/BTPhoneService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/car/btphone/BTPhoneService;->CONTACT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 599
    .local v7, "btPhoneCursor":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 600
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 602
    :cond_0
    new-instance v6, Lcom/car/btphone/BTContact;

    invoke-direct {v6}, Lcom/car/btphone/BTContact;-><init>()V

    .line 603
    .local v6, "bc":Lcom/car/btphone/BTContact;
    const-string v0, "name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/car/btphone/BTContact;->name:Ljava/lang/String;

    .line 604
    const-string v0, "number"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/car/btphone/BTContact;->phoneNum:Ljava/lang/String;

    .line 605
    iget-object v0, v6, Lcom/car/btphone/BTContact;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/car/common/pinyin/HanziToPinyin;->hanzi2Pinyin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/car/btphone/BTContact;->sort_key:Ljava/lang/String;

    .line 606
    iget-object v0, v6, Lcom/car/btphone/BTContact;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/car/common/pinyin/PinyinFuzzy;->getPinyinFuzzy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/car/btphone/BTContact;->fuzzyPy:Ljava/lang/String;

    .line 607
    iget-object v0, v6, Lcom/car/btphone/BTContact;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/car/common/pinyin/PinyinFuzzy;->getPinyinFuzzyArray(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/car/btphone/BTContact;->pinyinArray:Ljava/util/ArrayList;

    .line 608
    sget-boolean v0, Lcom/car/btphone/BTPhoneService;->DBG:Z

    if-eqz v0, :cond_1

    .line 609
    const-string v0, "BTP.BTPhoneService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v6, Lcom/car/btphone/BTContact;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", num="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v6, Lcom/car/btphone/BTContact;->phoneNum:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "--sortTmp="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v6, Lcom/car/btphone/BTContact;->sort_key:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", fuzzyPy="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v6, Lcom/car/btphone/BTContact;->fuzzyPy:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", size="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v6, Lcom/car/btphone/BTContact;->pinyinArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :cond_1
    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 611
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 612
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    .end local v6    # "bc":Lcom/car/btphone/BTContact;
    .end local v7    # "btPhoneCursor":Landroid/database/Cursor;
    :cond_2
    :goto_0
    sget-object v0, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_3

    .line 620
    const-string v0, "BTP.BTPhoneService"

    const-string v1, "Mobile is disconnected now and no need to add contacts"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "temp":Ljava/util/List;, "Ljava/util/List<Lcom/car/btphone/BTContact;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 625
    :goto_1
    return-object v9

    .line 615
    .restart local v9    # "temp":Ljava/util/List;, "Ljava/util/List<Lcom/car/btphone/BTContact;>;"
    :catch_0
    move-exception v8

    .line 616
    .local v8, "e":Landroid/database/sqlite/SQLiteException;
    const-string v0, "BTP.BTPhoneService"

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 624
    .end local v8    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_3
    new-instance v0, Lcom/car/btphone/BTPhoneService$BTLetterComparator;

    invoke-direct {v0}, Lcom/car/btphone/BTPhoneService$BTLetterComparator;-><init>()V

    invoke-static {v9, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1
.end method

.method public static redial()V
    .locals 2

    .prologue
    .line 1515
    sget-object v0, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/car/btphone/BTPhoneService;->sBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    if-nez v0, :cond_1

    .line 1517
    :cond_0
    :goto_0
    return-void

    .line 1516
    :cond_1
    sget-object v0, Lcom/car/btphone/BTPhoneService;->sBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    sget-object v1, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadsetClient;->redial(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0
.end method

.method public static rejectingCall()V
    .locals 2

    .prologue
    .line 1539
    sget-object v0, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/car/btphone/BTPhoneService;->sBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    if-nez v0, :cond_1

    .line 1541
    :cond_0
    :goto_0
    return-void

    .line 1540
    :cond_1
    sget-object v0, Lcom/car/btphone/BTPhoneService;->sBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    sget-object v1, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadsetClient;->rejectCall(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0
.end method

.method public static sendDtmf(C)V
    .locals 3
    .param p0, "code"    # C

    .prologue
    .line 1525
    sget-object v0, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/car/btphone/BTPhoneService;->sBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    if-nez v0, :cond_1

    .line 1527
    :cond_0
    :goto_0
    return-void

    .line 1526
    :cond_1
    sget-object v0, Lcom/car/btphone/BTPhoneService;->sBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    sget-object v1, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    int-to-byte v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothHeadsetClient;->sendDTMF(Landroid/bluetooth/BluetoothDevice;B)Z

    goto :goto_0
.end method

.method public static setAudioState(Z)V
    .locals 1
    .param p0, "connect"    # Z

    .prologue
    .line 1496
    sget-object v0, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/car/btphone/BTPhoneService;->sBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    if-nez v0, :cond_1

    .line 1502
    :cond_0
    :goto_0
    return-void

    .line 1497
    :cond_1
    if-eqz p0, :cond_2

    .line 1498
    sget-object v0, Lcom/car/btphone/BTPhoneService;->sBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->connectAudio()Z

    goto :goto_0

    .line 1500
    :cond_2
    sget-object v0, Lcom/car/btphone/BTPhoneService;->sBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->disconnectAudio()Z

    goto :goto_0
.end method

.method public static terminatingCall()V
    .locals 4

    .prologue
    .line 1530
    sget-object v1, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/car/btphone/BTPhoneService;->sBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    if-nez v1, :cond_1

    .line 1537
    .local v0, "cs":Lcom/car/btphone/BTPhoneService$CallStatus;
    :cond_0
    :goto_0
    return-void

    .line 1531
    .end local v0    # "cs":Lcom/car/btphone/BTPhoneService$CallStatus;
    :cond_1
    invoke-static {}, Lcom/car/btphone/BTPhoneService;->getCurActiveCall()Lcom/car/btphone/BTPhoneService$CallStatus;

    move-result-object v0

    .line 1532
    .restart local v0    # "cs":Lcom/car/btphone/BTPhoneService$CallStatus;
    if-eqz v0, :cond_0

    .line 1535
    sget-object v1, Lcom/car/btphone/BTPhoneService;->sBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    sget-object v2, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothHeadsetClient;->terminateCall(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0
.end method

.method private updateViewPosition()V
    .locals 5

    .prologue
    .line 323
    :try_start_0
    const-string v1, "BTP.BTPhoneService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRawX="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/car/btphone/BTPhoneService;->mRawX:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mRawY="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/car/btphone/BTPhoneService;->mRawY:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mStartX="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/car/btphone/BTPhoneService;->mStartX:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mStartY="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/car/btphone/BTPhoneService;->mStartY:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v1, p0, Lcom/car/btphone/BTPhoneService;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/car/btphone/BTPhoneService;->mStartX:F

    iget v3, p0, Lcom/car/btphone/BTPhoneService;->mRawX:F

    iget v4, p0, Lcom/car/btphone/BTPhoneService;->mStartRawX:F

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 325
    iget-object v1, p0, Lcom/car/btphone/BTPhoneService;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/car/btphone/BTPhoneService;->mStartY:F

    iget v3, p0, Lcom/car/btphone/BTPhoneService;->mRawY:F

    iget v4, p0, Lcom/car/btphone/BTPhoneService;->mStartRawY:F

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 326
    const-string v1, "BTP.BTPhoneService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "x="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/car/btphone/BTPhoneService;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", y="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/car/btphone/BTPhoneService;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v1, p0, Lcom/car/btphone/BTPhoneService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/car/btphone/BTPhoneService;->mParentView:Landroid/view/View;

    iget-object v3, p0, Lcom/car/btphone/BTPhoneService;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :goto_0
    return-void

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method addContacts(Ljava/lang/String;Ljava/util/List;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$PhoneData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 911
    .local p2, "lp":Ljava/util/List;, "Ljava/util/List<Lcom/android/vcard/VCardEntry$PhoneData;>;"
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 912
    .local v4, "values":Landroid/content/ContentValues;
    invoke-virtual {p0}, Lcom/car/btphone/BTPhoneService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 913
    .local v1, "rawContactUri":Landroid/net/Uri;
    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 914
    .local v2, "rawContactId":J
    const-string v5, "raw_contact_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 915
    const-string v5, "mimetype"

    const-string v6, "vnd.android.cursor.item/name"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    const-string v5, "data2"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    invoke-virtual {p0}, Lcom/car/btphone/BTPhoneService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 919
    const-string v5, "BTP.BTPhoneService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "name="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 921
    const-string v6, "BTP.BTPhoneService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "-number="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/vcard/VCardEntry$PhoneData;

    invoke-virtual {v5}, Lcom/android/vcard/VCardEntry$PhoneData;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 923
    const-string v5, "raw_contact_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 924
    const-string v5, "mimetype"

    const-string v6, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    const-string v6, "data1"

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/vcard/VCardEntry$PhoneData;

    invoke-virtual {v5}, Lcom/android/vcard/VCardEntry$PhoneData;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    const-string v6, "data2"

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/vcard/VCardEntry$PhoneData;

    invoke-virtual {v5}, Lcom/android/vcard/VCardEntry$PhoneData;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 927
    invoke-virtual {p0}, Lcom/car/btphone/BTPhoneService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 920
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 929
    :cond_0
    return-void
.end method

.method batchAddContacts(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/vcard/VCardEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/vcard/VCardEntry;>;"
    const/4 v10, 0x1

    .line 815
    sget-boolean v7, Lcom/car/btphone/MainActivity;->isWithDialer:Z

    if-eqz v7, :cond_1

    .line 816
    invoke-direct {p0, p1}, Lcom/car/btphone/BTPhoneService;->batchAddContacts2BTProvider(Ljava/util/ArrayList;)V

    .line 871
    :cond_0
    :goto_0
    return-void

    .line 819
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 820
    .local v4, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v5, 0x0

    .line 821
    .local v5, "rawContactInsertIndex":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/vcard/VCardEntry;

    .line 822
    .local v6, "vc":Lcom/android/vcard/VCardEntry;
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 823
    sget-object v7, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v8, "account_type"

    const-string v9, "local"

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v8, "account_name"

    const-string v9, "BT"

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 827
    sget-object v7, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v8, "raw_contact_id"

    invoke-virtual {v7, v8, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v8, "mimetype"

    const-string v9, "vnd.android.cursor.item/name"

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v8, "data1"

    invoke-virtual {v6}, Lcom/android/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 835
    invoke-virtual {v6}, Lcom/android/vcard/VCardEntry;->getPhoneList()Ljava/util/List;

    move-result-object v3

    .line 836
    .local v3, "lp":Ljava/util/List;, "Ljava/util/List<Lcom/android/vcard/VCardEntry$PhoneData;>;"
    if-eqz v3, :cond_2

    .line 837
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_3

    .line 838
    sget-object v7, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v8, "raw_contact_id"

    invoke-virtual {v7, v8, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v8, "mimetype"

    const-string v9, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    const-string v9, "data1"

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/vcard/VCardEntry$PhoneData;

    invoke-virtual {v7}, Lcom/android/vcard/VCardEntry$PhoneData;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v9, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    const-string v9, "data2"

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/vcard/VCardEntry$PhoneData;

    invoke-virtual {v7}, Lcom/android/vcard/VCardEntry$PhoneData;->getType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v9, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 837
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 848
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/16 v8, 0xc8

    if-lt v7, v8, :cond_2

    .line 849
    if-eqz v4, :cond_4

    .line 851
    :try_start_0
    invoke-virtual {p0}, Lcom/car/btphone/BTPhoneService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "com.android.contacts"

    invoke-virtual {v7, v8, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 858
    :cond_4
    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_1

    .line 853
    :catch_0
    move-exception v0

    .line 855
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 862
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "i":I
    .end local v3    # "lp":Ljava/util/List;, "Ljava/util/List<Lcom/android/vcard/VCardEntry$PhoneData;>;"
    .end local v6    # "vc":Lcom/android/vcard/VCardEntry;
    :cond_5
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 864
    :try_start_1
    invoke-virtual {p0}, Lcom/car/btphone/BTPhoneService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "com.android.contacts"

    invoke-virtual {v7, v8, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 866
    :catch_1
    move-exception v0

    .line 868
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method batchDelAllContacts()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 795
    sget-boolean v2, Lcom/car/btphone/MainActivity;->isWithDialer:Z

    if-eqz v2, :cond_1

    .line 796
    invoke-virtual {p0}, Lcom/car/btphone/BTPhoneService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/car/btphone/BTPhoneService;->CONTACT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 812
    :cond_0
    :goto_0
    return-void

    .line 799
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 800
    .local v1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "account_name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "BT"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 803
    if-eqz v1, :cond_0

    .line 805
    :try_start_0
    invoke-virtual {p0}, Lcom/car/btphone/BTPhoneService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "com.android.contacts"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 807
    :catch_0
    move-exception v0

    .line 809
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method clearAllCallLog()V
    .locals 2

    .prologue
    .line 703
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/car/btphone/BTPhoneService$5;

    invoke-direct {v1, p0}, Lcom/car/btphone/BTPhoneService$5;-><init>(Lcom/car/btphone/BTPhoneService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 714
    return-void
.end method

.method clearCallStatus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 183
    sget-object v0, Lcom/car/btphone/BTPhoneService;->mCall:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 184
    iget-object v0, p0, Lcom/car/btphone/BTPhoneService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/car/btphone/BTPhoneService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 186
    iget-object v0, p0, Lcom/car/btphone/BTPhoneService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 187
    const-string v0, "BTP.BTPhoneService"

    const-string v1, "abandonAudioFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lcom/car/btphone/BTPhoneService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->abandonAudioFocusForCall()V

    .line 192
    :cond_0
    return-void
.end method

.method clearContactData()V
    .locals 5

    .prologue
    .line 476
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Lcom/car/btphone/BTPhoneService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 478
    .local v0, "am":Landroid/app/ActivityManager;
    const-string v2, "com.android.providers.contacts"

    new-instance v3, Lcom/car/btphone/BTPhoneService$ClearUserDataObserver;

    invoke-direct {v3, p0}, Lcom/car/btphone/BTPhoneService$ClearUserDataObserver;-><init>(Lcom/car/btphone/BTPhoneService;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result v1

    .line 479
    .local v1, "res":Z
    const-string v2, "BTP.BTPhoneService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Try to delete contact data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    return-void
.end method

.method connectedSuccess()V
    .locals 4

    .prologue
    const/16 v3, 0xd

    .line 1544
    sget-object v1, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v1, :cond_1

    .line 1566
    :cond_0
    :goto_0
    return-void

    .line 1545
    :cond_1
    iget-object v1, p0, Lcom/car/btphone/BTPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1546
    sget-object v1, Lcom/car/btphone/BTPhoneService;->sReconnectCounter:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1547
    iget-object v1, p0, Lcom/car/btphone/BTPhoneService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1548
    sget-object v1, Lcom/car/btphone/BTPhoneService;->sBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 1549
    sget-object v1, Lcom/car/btphone/BTPhoneService;->sBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    .line 1550
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.car.bthpone.connected.notify"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1551
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "connected"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1552
    const-string v1, "name"

    sget-object v2, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1553
    const-string v1, "mac"

    sget-object v2, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1554
    invoke-virtual {p0, v0}, Lcom/car/btphone/BTPhoneService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1555
    iget-object v1, p0, Lcom/car/btphone/BTPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1556
    sget-object v1, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/car/btphone/BTPhoneService;->contactsNeedSync(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1557
    iget-object v1, p0, Lcom/car/btphone/BTPhoneService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1558
    invoke-virtual {p0}, Lcom/car/btphone/BTPhoneService;->clearAllCallLog()V

    goto :goto_0

    .line 1561
    :cond_2
    iget-object v1, p0, Lcom/car/btphone/BTPhoneService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1562
    iget-object v1, p0, Lcom/car/btphone/BTPhoneService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1563
    iget-object v1, p0, Lcom/car/btphone/BTPhoneService;->mHandler2:Landroid/os/Handler;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method contactsFound(Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x5

    .line 1260
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1261
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_1

    .line 1309
    :cond_0
    :goto_0
    return-object v5

    .line 1262
    :cond_1
    invoke-static {p1}, Lcom/car/btphone/BTPhoneService;->isAllDigits(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1263
    invoke-virtual {p0, p1}, Lcom/car/btphone/BTPhoneService;->getDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1264
    .local v1, "dispName":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 1265
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1267
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1271
    .end local v1    # "dispName":Ljava/lang/String;
    :cond_3
    invoke-static {p1}, Lcom/car/common/pinyin/PinyinFuzzy;->getPinyinFuzzy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1272
    .local v6, "py":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1274
    .local v0, "bestfit":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    sget-object v8, Lcom/car/btphone/BTPhoneService;->sContactList4Voice:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_8

    .line 1275
    const/4 v0, 0x0

    .line 1276
    sget-object v8, Lcom/car/btphone/BTPhoneService;->sContactList4Voice:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/car/btphone/BTContact;

    iget-object v8, v8, Lcom/car/btphone/BTContact;->pinyinArray:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1277
    .local v7, "ref":Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/car/common/pinyin/LevenshteinAlgo;->distance(Ljava/lang/String;Ljava/lang/String;)F

    move-result v2

    .line 1278
    .local v2, "factor":F
    cmpl-float v8, v2, v0

    if-ltz v8, :cond_5

    .line 1279
    move v0, v2

    .line 1281
    :cond_5
    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v8, v0, v8

    if-eqz v8, :cond_4

    .line 1282
    invoke-virtual {v7, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1283
    const v0, 0x3f7d70a4    # 0.99f

    goto :goto_2

    .line 1284
    :cond_6
    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1285
    const v0, 0x3f7ae148    # 0.98f

    goto :goto_2

    .line 1288
    .end local v2    # "factor":F
    .end local v7    # "ref":Ljava/lang/String;
    :cond_7
    sget-object v8, Lcom/car/btphone/BTPhoneService;->sContactList4Voice:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/car/btphone/BTContact;

    iput v0, v8, Lcom/car/btphone/BTContact;->level:F

    .line 1274
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1291
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_8
    sget-object v8, Lcom/car/btphone/BTPhoneService;->sContactList4Voice:Ljava/util/List;

    new-instance v9, Lcom/car/btphone/BTPhoneService$ContactMatchComparator;

    invoke-direct {v9}, Lcom/car/btphone/BTPhoneService$ContactMatchComparator;-><init>()V

    invoke-static {v8, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1293
    const/4 v3, 0x0

    :goto_3
    sget-object v8, Lcom/car/btphone/BTPhoneService;->sContactList4Voice:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_9

    const/4 v8, 0x3

    if-ge v3, v8, :cond_9

    .line 1294
    const-string v9, "BTP.BTPhoneService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "toppest "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ": "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v8, Lcom/car/btphone/BTPhoneService;->sContactList4Voice:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/car/btphone/BTContact;

    iget-object v8, v8, Lcom/car/btphone/BTContact;->name:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", level="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v8, Lcom/car/btphone/BTPhoneService;->sContactList4Voice:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/car/btphone/BTContact;

    iget v8, v8, Lcom/car/btphone/BTContact;->level:F

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/car/btphone/BTPhoneService;->sContactList4Voice:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/car/btphone/BTContact;

    iget-object v8, v8, Lcom/car/btphone/BTContact;->name:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v8, Lcom/car/btphone/BTPhoneService;->sContactList4Voice:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/car/btphone/BTContact;

    iget-object v8, v8, Lcom/car/btphone/BTContact;->phoneNum:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1293
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1297
    :cond_9
    sget-object v8, Lcom/car/btphone/BTPhoneService;->sContactList4Voice:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lt v8, v12, :cond_0

    sget-object v8, Lcom/car/btphone/BTPhoneService;->sContactList4Voice:Ljava/util/List;

    const/4 v9, 0x2

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/car/btphone/BTContact;

    iget v8, v8, Lcom/car/btphone/BTContact;->level:F

    float-to-double v8, v8

    const-wide v10, 0x3fef5c28f5c28f5cL    # 0.98

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_0

    .line 1298
    const/4 v3, 0x3

    :goto_4
    sget-object v8, Lcom/car/btphone/BTPhoneService;->sContactList4Voice:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_0

    if-ge v3, v12, :cond_0

    .line 1299
    sget-object v8, Lcom/car/btphone/BTPhoneService;->sContactList4Voice:Ljava/util/List;

    add-int/lit8 v9, v3, -0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/car/btphone/BTContact;

    iget v9, v8, Lcom/car/btphone/BTContact;->level:F

    sget-object v8, Lcom/car/btphone/BTPhoneService;->sContactList4Voice:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/car/btphone/BTContact;

    iget v8, v8, Lcom/car/btphone/BTContact;->level:F

    cmpl-float v8, v9, v8

    if-nez v8, :cond_0

    .line 1300
    const-string v9, "BTP.BTPhoneService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Additional adding "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ": "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v8, Lcom/car/btphone/BTPhoneService;->sContactList4Voice:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/car/btphone/BTContact;

    iget-object v8, v8, Lcom/car/btphone/BTContact;->name:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", level="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v8, Lcom/car/btphone/BTPhoneService;->sContactList4Voice:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/car/btphone/BTContact;

    iget v8, v8, Lcom/car/btphone/BTContact;->level:F

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/car/btphone/BTPhoneService;->sContactList4Voice:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/car/btphone/BTContact;

    iget-object v8, v8, Lcom/car/btphone/BTContact;->name:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v8, Lcom/car/btphone/BTPhoneService;->sContactList4Voice:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/car/btphone/BTContact;

    iget-object v8, v8, Lcom/car/btphone/BTContact;->phoneNum:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1298
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4
.end method

.method contactsNeedSync(Ljava/lang/String;)Z
    .locals 10
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 660
    invoke-virtual {p0}, Lcom/car/btphone/BTPhoneService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/car/btphone/BTPhoneService;->URI:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "contact"

    aput-object v3, v2, v9

    const-string v3, "mac=?"

    new-array v4, v8, [Ljava/lang/String;

    aput-object p1, v4, v9

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 661
    .local v7, "ret":Landroid/database/Cursor;
    if-nez v7, :cond_0

    move v0, v8

    .line 671
    :goto_0
    return v0

    .line 662
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 663
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 664
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v8

    .line 665
    goto :goto_0

    .line 667
    :cond_1
    const-string v0, "contact"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 668
    .local v6, "need":I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 669
    if-nez v6, :cond_2

    move v0, v8

    .line 670
    goto :goto_0

    :cond_2
    move v0, v9

    .line 671
    goto :goto_0
.end method

.method createShortCutCall()V
    .locals 4

    .prologue
    .line 218
    iget-object v1, p0, Lcom/car/btphone/BTPhoneService;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 319
    :goto_0
    return-void

    .line 220
    :cond_0
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/car/btphone/BTPhoneService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 221
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f03000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/car/btphone/BTPhoneService;->mParentView:Landroid/view/View;

    .line 222
    iget-object v2, p0, Lcom/car/btphone/BTPhoneService;->mShortCutCall:Lcom/car/btphone/BTPhoneService$ShortCutCall;

    iget-object v1, p0, Lcom/car/btphone/BTPhoneService;->mParentView:Landroid/view/View;

    const v3, 0x7f08005f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/car/btphone/BTPhoneService$ShortCutCall;->mNameNum:Landroid/widget/TextView;

    .line 223
    iget-object v1, p0, Lcom/car/btphone/BTPhoneService;->mShortCutCall:Lcom/car/btphone/BTPhoneService$ShortCutCall;

    iget-object v1, v1, Lcom/car/btphone/BTPhoneService$ShortCutCall;->mNameNum:Landroid/widget/TextView;

    const v2, -0xff0100

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 224
    iget-object v2, p0, Lcom/car/btphone/BTPhoneService;->mShortCutCall:Lcom/car/btphone/BTPhoneService$ShortCutCall;

    iget-object v1, p0, Lcom/car/btphone/BTPhoneService;->mParentView:Landroid/view/View;

    const v3, 0x7f080060

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Chronometer;

    iput-object v1, v2, Lcom/car/btphone/BTPhoneService$ShortCutCall;->mChronometer:Landroid/widget/Chronometer;

    .line 225
    iget-object v2, p0, Lcom/car/btphone/BTPhoneService;->mShortCutCall:Lcom/car/btphone/BTPhoneService$ShortCutCall;

    iget-object v1, p0, Lcom/car/btphone/BTPhoneService;->mParentView:Landroid/view/View;

    const v3, 0x7f080061

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, v2, Lcom/car/btphone/BTPhoneService$ShortCutCall;->mAcceptBtn:Landroid/widget/ImageButton;

    .line 226
    iget-object v2, p0, Lcom/car/btphone/BTPhoneService;->mShortCutCall:Lcom/car/btphone/BTPhoneService$ShortCutCall;

    iget-object v1, p0, Lcom/car/btphone/BTPhoneService;->mParentView:Landroid/view/View;

    const v3, 0x7f080062

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, v2, Lcom/car/btphone/BTPhoneService$ShortCutCall;->mHangupBtn:Landroid/widget/ImageButton;

    .line 228
    iget-object v1, p0, Lcom/car/btphone/BTPhoneService;->mShortCutCall:Lcom/car/btphone/BTPhoneService$ShortCutCall;

    iget-object v1, v1, Lcom/car/btphone/BTPhoneService$ShortCutCall;->mAcceptBtn:Landroid/widget/ImageButton;

    new-instance v2, Lcom/car/btphone/BTPhoneService$1;

    invoke-direct {v2, p0}, Lcom/car/btphone/BTPhoneService$1;-><init>(Lcom/car/btphone/BTPhoneService;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    iget-object v1, p0, Lcom/car/btphone/BTPhoneService;->mShortCutCall:Lcom/car/btphone/BTPhoneService$ShortCutCall;

    iget-object v1, v1, Lcom/car/btphone/BTPhoneService$ShortCutCall;->mHangupBtn:Landroid/widget/ImageButton;

    new-instance v2, Lcom/car/btphone/BTPhoneService$2;

    invoke-direct {v2, p0}, Lcom/car/btphone/BTPhoneService$2;-><init>(Lcom/car/btphone/BTPhoneService;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    iget-object v1, p0, Lcom/car/btphone/BTPhoneService;->mParentView:Landroid/view/View;

    new-instance v2, Lcom/car/btphone/BTPhoneService$3;

    invoke-direct {v2, p0}, Lcom/car/btphone/BTPhoneService$3;-><init>(Lcom/car/btphone/BTPhoneService;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    iget-object v1, p0, Lcom/car/btphone/BTPhoneService;->mParentView:Landroid/view/View;

    new-instance v2, Lcom/car/btphone/BTPhoneService$4;

    invoke-direct {v2, p0}, Lcom/car/btphone/BTPhoneService$4;-><init>(Lcom/car/btphone/BTPhoneService;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 308
    iget-object v1, p0, Lcom/car/btphone/BTPhoneService;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x7d2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 309
    iget-object v1, p0, Lcom/car/btphone/BTPhoneService;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 311
    iget-object v1, p0, Lcom/car/btphone/BTPhoneService;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x28

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 314
    iget-object v1, p0, Lcom/car/btphone/BTPhoneService;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x31

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 315
    iget-object v1, p0, Lcom/car/btphone/BTPhoneService;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x168

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 316
    iget-object v1, p0, Lcom/car/btphone/BTPhoneService;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 317
    iget-object v1, p0, Lcom/car/btphone/BTPhoneService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/car/btphone/BTPhoneService;->mParentView:Landroid/view/View;

    iget-object v3, p0, Lcom/car/btphone/BTPhoneService;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    iget-object v1, p0, Lcom/car/btphone/BTPhoneService;->mParentView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method doStartMainActivity(ILjava/lang/String;Z)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "outgoing"    # Z

    .prologue
    .line 2106
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/car/btphone/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2107
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "callexit"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2108
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2109
    if-eqz p3, :cond_0

    .line 2110
    const-string v1, "com.car.btphone.CALL_OUTGOING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2111
    const-string v1, "callnum"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2113
    :cond_0
    invoke-virtual {p0, v0}, Lcom/car/btphone/BTPhoneService;->startActivity(Landroid/content/Intent;)V

    .line 2114
    return-void
.end method

.method getCallLog()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/btphone/CallRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 717
    sget-boolean v0, Lcom/car/btphone/MainActivity;->isWithDialer:Z

    if-eqz v0, :cond_1

    .line 718
    invoke-direct {p0}, Lcom/car/btphone/BTPhoneService;->getCallLogFormBtProvider()Ljava/util/ArrayList;

    move-result-object v9

    .line 737
    :cond_0
    :goto_0
    return-object v9

    .line 720
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 722
    .local v9, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/car/btphone/CallRecord;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/car/btphone/BTPhoneService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 724
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 726
    :cond_2
    const-string v0, "type"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 727
    .local v11, "type":I
    const-string v0, "number"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 728
    .local v10, "number":Ljava/lang/String;
    const-string v0, "date"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 729
    .local v12, "t":J
    invoke-virtual {p0, v11, v10, v12, v13}, Lcom/car/btphone/BTPhoneService;->getCallRecord(ILjava/lang/String;J)Lcom/car/btphone/CallRecord;

    move-result-object v6

    .line 730
    .local v6, "cr":Lcom/car/btphone/CallRecord;
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 731
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 732
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 734
    .end local v6    # "cr":Lcom/car/btphone/CallRecord;
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v10    # "number":Ljava/lang/String;
    .end local v11    # "type":I
    .end local v12    # "t":J
    :catch_0
    move-exception v8

    .line 735
    .local v8, "e":Landroid/database/sqlite/SQLiteException;
    const-string v0, "BTP.BTPhoneService"

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method getCallRecord(ILjava/lang/String;J)Lcom/car/btphone/CallRecord;
    .locals 9
    .param p1, "type"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "time"    # J

    .prologue
    .line 695
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v8, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 696
    .local v8, "sfd":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p3, p4}, Ljava/util/Date;-><init>(J)V

    .line 697
    .local v0, "d":Ljava/util/Date;
    invoke-virtual {v8, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 698
    .local v5, "date":Ljava/lang/String;
    invoke-virtual {p0, p2}, Lcom/car/btphone/BTPhoneService;->getDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 699
    .local v4, "name":Ljava/lang/String;
    new-instance v1, Lcom/car/btphone/CallRecord;

    move v2, p1

    move-object v3, p2

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/car/btphone/CallRecord;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v1
.end method

.method getDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 762
    const/4 v8, 0x0

    .line 764
    .local v8, "name":Ljava/lang/String;
    :try_start_0
    sget v0, Lcom/car/btphone/BTPhoneService;->sContactSyncStatus:I

    const/16 v3, 0x3ea

    if-ge v0, v3, :cond_0

    .line 765
    const-string v0, "BTP.BTPhoneService"

    const-string v3, "Database is syncing, query of contact\'s name is not supported now."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v8

    .line 791
    .end local v8    # "name":Ljava/lang/String;
    .local v9, "name":Ljava/lang/String;
    :goto_0
    return-object v9

    .line 769
    .end local v9    # "name":Ljava/lang/String;
    .restart local v8    # "name":Ljava/lang/String;
    :cond_0
    sget-boolean v0, Lcom/car/btphone/MainActivity;->isWithDialer:Z

    if-eqz v0, :cond_2

    .line 770
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "name"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "number"

    aput-object v3, v2, v0

    .line 772
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/car/btphone/BTPhoneService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/car/btphone/BTPhoneService;->CALLLOG_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "number="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 773
    .local v6, "btPhoneCursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 774
    const-string v0, "name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 775
    const-string v0, "BTP.BTPhoneService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDisplayName name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "btPhoneCursor":Landroid/database/Cursor;
    :cond_1
    :goto_1
    move-object v9, v8

    .line 791
    .end local v8    # "name":Ljava/lang/String;
    .restart local v9    # "name":Ljava/lang/String;
    goto :goto_0

    .line 779
    .end local v9    # "name":Ljava/lang/String;
    .restart local v8    # "name":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "display_name"

    aput-object v3, v2, v0

    .line 780
    .restart local v2    # "projection":[Ljava/lang/String;
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 781
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/car/btphone/BTPhoneService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 782
    .local v10, "phoneCursor":Landroid/database/Cursor;
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 783
    const-string v0, "display_name"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 784
    const-string v0, "BTP.BTPhoneService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Find name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 788
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v10    # "phoneCursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 789
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    const-string v0, "BTP.BTPhoneService"

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method initBT()V
    .locals 4

    .prologue
    .line 1374
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1375
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1383
    :goto_0
    invoke-virtual {p0}, Lcom/car/btphone/BTPhoneService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/car/btphone/BTPhoneService;->mListener:Lcom/car/btphone/BTPhoneService$BTServiceListener;

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1385
    const-string v1, "BTP.BTPhoneService"

    const-string v2, "Get HEADSET_CLIENT failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    :cond_0
    sput-object v0, Lcom/car/btphone/BTPhoneService;->sBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 1388
    return-void

    .line 1379
    :cond_1
    iget-object v1, p0, Lcom/car/btphone/BTPhoneService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1380
    const-string v1, "BTP.BTPhoneService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "My BT name is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method isShortCutCallShowing()Z
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/car/btphone/BTPhoneService;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isWifiNetworkConnected()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2074
    sget-boolean v5, Lcom/car/btphone/BTPhoneService;->sIgnoreOnce:Z

    if-nez v5, :cond_1

    .line 2075
    sput-boolean v4, Lcom/car/btphone/BTPhoneService;->sIgnoreOnce:Z

    .line 2091
    :cond_0
    :goto_0
    return v3

    .line 2078
    :cond_1
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Lcom/car/btphone/BTPhoneService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2080
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_2

    .line 2081
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 2082
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-ne v5, v4, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v5, v6, :cond_2

    move v3, v4

    .line 2083
    goto :goto_0

    .line 2087
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_2
    const-string v5, "wifi"

    invoke-virtual {p0, v5}, Lcom/car/btphone/BTPhoneService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 2088
    .local v2, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v5

    const/16 v6, 0xd

    if-ne v5, v6, :cond_0

    move v3, v4

    .line 2089
    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1315
    iget-object v0, p0, Lcom/car/btphone/BTPhoneService;->mMyBind:Lcom/car/btphone/BTPhoneService$MyIContactMatch;

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1320
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 1321
    new-instance v2, Lcom/car/common/CarServiceImpl;

    invoke-direct {v2, p0}, Lcom/car/common/CarServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/car/btphone/BTPhoneService;->mCarServiceImpl:Lcom/car/common/CarServiceImpl;

    .line 1322
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.car.btphone.BTPhoneService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.car.btphone"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/car/btphone/BTPhoneService;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v2, v3, v4}, Lcom/car/btphone/BTPhoneService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 1324
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1325
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1326
    const-string v2, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1327
    const-string v2, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1328
    const-string v2, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1329
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1330
    const-string v2, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1331
    const-string v2, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1332
    const-string v2, "android.bluetooth.headsetclient.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1333
    const-string v2, "android.bluetooth.headsetclient.profile.action.AG_CALL_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1334
    const-string v2, "com.car.btphone.CALL_OUTGOING"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1335
    const-string v2, "com.car.btphone.useraction"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1336
    const-string v2, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1337
    const-string v2, "android.bluetooth.headsetclient.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1338
    const-string v2, "shortcutcall_show"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1340
    new-instance v2, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;

    invoke-direct {v2, p0}, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;-><init>(Lcom/car/btphone/BTPhoneService;)V

    iput-object v2, p0, Lcom/car/btphone/BTPhoneService;->mReceiver:Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;

    .line 1341
    new-instance v2, Lcom/car/btphone/BTPhoneService$BTServiceListener;

    invoke-direct {v2, p0}, Lcom/car/btphone/BTPhoneService$BTServiceListener;-><init>(Lcom/car/btphone/BTPhoneService;)V

    iput-object v2, p0, Lcom/car/btphone/BTPhoneService;->mListener:Lcom/car/btphone/BTPhoneService$BTServiceListener;

    .line 1342
    iget-object v2, p0, Lcom/car/btphone/BTPhoneService;->mReceiver:Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/car/btphone/BTPhoneService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1344
    sput-boolean v4, Lcom/car/btphone/BTPhoneService;->sIsRunning:Z

    .line 1345
    invoke-virtual {p0}, Lcom/car/btphone/BTPhoneService;->initBT()V

    .line 1347
    new-instance v2, Lcom/car/common/TipPlayerHelper;

    invoke-direct {v2}, Lcom/car/common/TipPlayerHelper;-><init>()V

    invoke-virtual {v2, p0}, Lcom/car/common/TipPlayerHelper;->init(Landroid/content/Context;)V

    .line 1349
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/car/btphone/BTPhoneService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 1350
    .local v1, "powerManager":Landroid/os/PowerManager;
    const-string v2, "BTPhoneService"

    invoke-virtual {v1, v4, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/car/btphone/BTPhoneService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1351
    invoke-virtual {p0}, Lcom/car/btphone/BTPhoneService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/car/btphone/BTPhoneService;->mWindowManager:Landroid/view/WindowManager;

    .line 1353
    invoke-virtual {p0}, Lcom/car/btphone/BTPhoneService;->createShortCutCall()V

    .line 1354
    const-string v2, "sys.bt.external"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1355
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/car/btphone/BTPhoneService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/car/btphone/BTPhoneService;->mAudioManager:Landroid/media/AudioManager;

    .line 1356
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 1359
    const-string v1, "BTP.BTPhoneService"

    const-string v2, "----onDestroy()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    iget-object v1, p0, Lcom/car/btphone/BTPhoneService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1361
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/car/btphone/BTPhoneService;->stopForeground(Z)V

    .line 1362
    iget-object v1, p0, Lcom/car/btphone/BTPhoneService;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/car/btphone/BTPhoneService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1363
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/car/btphone/BTPhoneService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/car/btphone/BTPhoneService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1364
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 1365
    const/4 v1, 0x0

    sput-boolean v1, Lcom/car/btphone/BTPhoneService;->sIsRunning:Z

    .line 1366
    const/4 v1, 0x0

    sput-object v1, Lcom/car/btphone/BTPhoneService;->sBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 1367
    invoke-virtual {p0}, Lcom/car/btphone/BTPhoneService;->clearCallStatus()V

    .line 1368
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1369
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 1370
    iget-object v1, p0, Lcom/car/btphone/BTPhoneService;->mReceiver:Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/car/btphone/BTPhoneService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1371
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v4, 0x1

    .line 1403
    const-string v2, "BTP.BTPhoneService"

    const-string v3, "-------onStartCommand()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    if-eqz p1, :cond_0

    .line 1405
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1406
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1407
    const-string v2, "BTP.BTPhoneService"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    const-string v2, "SyncContacts"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1409
    iget-object v2, p0, Lcom/car/btphone/BTPhoneService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1426
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    :goto_0
    return v4

    .line 1411
    .restart local v0    # "action":Ljava/lang/String;
    :cond_1
    const-string v2, "ClearCallLog"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1412
    invoke-virtual {p0}, Lcom/car/btphone/BTPhoneService;->clearAllCallLog()V

    goto :goto_0

    .line 1414
    :cond_2
    const-string v2, "ActiveBT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1415
    const-string v2, "enable"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1416
    .local v1, "enabled":Z
    sget-object v2, Lcom/car/btphone/BTPhoneService;->sBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v2, :cond_0

    .line 1417
    if-eqz v1, :cond_3

    .line 1418
    sget-object v2, Lcom/car/btphone/BTPhoneService;->sBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    goto :goto_0

    .line 1420
    :cond_3
    sget-object v2, Lcom/car/btphone/BTPhoneService;->sBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_0
.end method

.method readContactsFromDatabase()Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/car/btphone/BTContact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 527
    sget-boolean v1, Lcom/car/btphone/MainActivity;->isWithDialer:Z

    if-eqz v1, :cond_0

    .line 528
    invoke-direct/range {p0 .. p0}, Lcom/car/btphone/BTPhoneService;->readContactsFromBTProvider()Ljava/util/List;

    move-result-object v17

    .line 590
    :goto_0
    return-object v17

    .line 530
    :cond_0
    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "display_name"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "has_phone_number"

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string v2, "_id"

    aput-object v2, v3, v1

    .line 535
    .local v3, "selectCol":[Ljava/lang/String;
    const-string v4, "((display_name NOT NULL) AND (has_phone_number=1) AND (display_name != \'\' ))"

    .line 538
    .local v4, "select":Ljava/lang/String;
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 539
    .local v17, "temp":Ljava/util/List;, "Ljava/util/List<Lcom/car/btphone/BTContact;>;"
    const/4 v1, 0x3

    new-array v7, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "display_name"

    aput-object v2, v7, v1

    const/4 v1, 0x1

    const-string v2, "data1"

    aput-object v2, v7, v1

    const/4 v1, 0x2

    const-string v2, "sort_key"

    aput-object v2, v7, v1

    .line 541
    .local v7, "projection":[Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/car/btphone/BTPhoneService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 542
    .local v13, "cursor":Landroid/database/Cursor;
    if-eqz v13, :cond_3

    .line 543
    const-string v1, "BTP.BTPhoneService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "find contacts size:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 546
    :cond_1
    sget-object v1, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v1, :cond_4

    .line 579
    :cond_2
    :goto_1
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 584
    .end local v13    # "cursor":Landroid/database/Cursor;
    :cond_3
    :goto_2
    sget-object v1, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v1, :cond_9

    .line 585
    const-string v1, "BTP.BTPhoneService"

    const-string v2, "Mobile is disconnected now and no need to add contacts"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    new-instance v17, Ljava/util/ArrayList;

    .end local v17    # "temp":Ljava/util/List;, "Ljava/util/List<Lcom/car/btphone/BTContact;>;"
    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 551
    .restart local v13    # "cursor":Landroid/database/Cursor;
    .restart local v17    # "temp":Ljava/util/List;, "Ljava/util/List<Lcom/car/btphone/BTContact;>;"
    :cond_4
    :try_start_1
    const-string v1, "_id"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 552
    .local v12, "contactId":I
    const-string v1, "has_phone_number"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_5

    .line 554
    const-string v1, "display_name"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 555
    .local v14, "displayName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/car/btphone/BTPhoneService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contact_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 560
    .local v16, "phoneCursor":Landroid/database/Cursor;
    if-nez v16, :cond_6

    .line 577
    .end local v14    # "displayName":Ljava/lang/String;
    .end local v16    # "phoneCursor":Landroid/database/Cursor;
    :cond_5
    :goto_3
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 561
    .restart local v14    # "displayName":Ljava/lang/String;
    .restart local v16    # "phoneCursor":Landroid/database/Cursor;
    :cond_6
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 563
    :cond_7
    new-instance v11, Lcom/car/btphone/BTContact;

    invoke-direct {v11}, Lcom/car/btphone/BTContact;-><init>()V

    .line 564
    .local v11, "bc":Lcom/car/btphone/BTContact;
    const-string v1, "display_name"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/car/btphone/BTContact;->name:Ljava/lang/String;

    .line 565
    const-string v1, "data1"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/car/btphone/BTContact;->phoneNum:Ljava/lang/String;

    .line 566
    const-string v1, "sort_key"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/car/common/pinyin/HanziToPinyin;->hanzi2Pinyin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/car/btphone/BTContact;->sort_key:Ljava/lang/String;

    .line 567
    iget-object v1, v11, Lcom/car/btphone/BTContact;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/car/common/pinyin/PinyinFuzzy;->getPinyinFuzzy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/car/btphone/BTContact;->fuzzyPy:Ljava/lang/String;

    .line 568
    iget-object v1, v11, Lcom/car/btphone/BTContact;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/car/common/pinyin/PinyinFuzzy;->getPinyinFuzzyArray(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v11, Lcom/car/btphone/BTContact;->pinyinArray:Ljava/util/ArrayList;

    .line 569
    sget-boolean v1, Lcom/car/btphone/BTPhoneService;->DBG:Z

    if-eqz v1, :cond_8

    .line 570
    const-string v1, "BTP.BTPhoneService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "name="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", num="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v11, Lcom/car/btphone/BTContact;->phoneNum:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", fuzzyPy="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v11, Lcom/car/btphone/BTContact;->fuzzyPy:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", size="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v11, Lcom/car/btphone/BTContact;->pinyinArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :cond_8
    move-object/from16 v0, v17

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 572
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_7

    .line 573
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 581
    .end local v11    # "bc":Lcom/car/btphone/BTContact;
    .end local v12    # "contactId":I
    .end local v13    # "cursor":Landroid/database/Cursor;
    .end local v14    # "displayName":Ljava/lang/String;
    .end local v16    # "phoneCursor":Landroid/database/Cursor;
    :catch_0
    move-exception v15

    .line 582
    .local v15, "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "BTP.BTPhoneService"

    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 589
    .end local v15    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_9
    new-instance v1, Lcom/car/btphone/BTPhoneService$BTLetterComparator;

    invoke-direct {v1}, Lcom/car/btphone/BTPhoneService$BTLetterComparator;-><init>()V

    move-object/from16 v0, v17

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto/16 :goto_0
.end method

.method resetContactsFlag()V
    .locals 10

    .prologue
    .line 630
    :try_start_0
    invoke-virtual {p0}, Lcom/car/btphone/BTPhoneService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/car/btphone/BTPhoneService;->URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "mac"

    aput-object v4, v2, v3

    const-string v3, "contact=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v9, "1"

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 631
    .local v8, "ret":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 644
    .end local v8    # "ret":Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-void

    .line 634
    .restart local v8    # "ret":Landroid/database/Cursor;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 636
    :cond_2
    const-string v0, "mac"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 637
    .local v7, "mac":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {p0, v7, v0}, Lcom/car/btphone/BTPhoneService;->setContactSyncFlag(Ljava/lang/String;Z)V

    .line 638
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 639
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 641
    .end local v7    # "mac":Ljava/lang/String;
    .end local v8    # "ret":Landroid/database/Cursor;
    :catch_0
    move-exception v6

    .line 642
    .local v6, "e":Landroid/database/sqlite/SQLiteException;
    const-string v0, "BTP.BTPhoneService"

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method setContactSyncFlag(Ljava/lang/String;Z)V
    .locals 10
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "sync"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 647
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 648
    .local v7, "values":Landroid/content/ContentValues;
    const-string v1, "contact"

    if-eqz p2, :cond_1

    move v0, v8

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 649
    invoke-virtual {p0}, Lcom/car/btphone/BTPhoneService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/car/btphone/BTPhoneService;->URI:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "contact"

    aput-object v3, v2, v9

    const-string v3, "mac=?"

    new-array v4, v8, [Ljava/lang/String;

    aput-object p1, v4, v9

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 650
    .local v6, "ret":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_2

    .line 651
    :cond_0
    const-string v0, "mac"

    invoke-virtual {v7, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    invoke-virtual {p0}, Lcom/car/btphone/BTPhoneService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/car/btphone/BTPhoneService;->URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 657
    :goto_1
    return-void

    .end local v6    # "ret":Landroid/database/Cursor;
    :cond_1
    move v0, v9

    .line 648
    goto :goto_0

    .line 654
    .restart local v6    # "ret":Landroid/database/Cursor;
    :cond_2
    invoke-virtual {p0}, Lcom/car/btphone/BTPhoneService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/car/btphone/BTPhoneService;->URI:Landroid/net/Uri;

    const-string v2, "mac=?"

    new-array v3, v8, [Ljava/lang/String;

    aput-object p1, v3, v9

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 655
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method showShortCutCall(Z)V
    .locals 6
    .param p1, "show"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x4

    .line 338
    iget-object v1, p0, Lcom/car/btphone/BTPhoneService;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 339
    invoke-static {}, Lcom/car/btphone/BTPhoneService;->getCurActiveCall()Lcom/car/btphone/BTPhoneService$CallStatus;

    move-result-object v0

    .line 340
    .local v0, "cs":Lcom/car/btphone/BTPhoneService$CallStatus;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/car/btphone/BTPhoneService$CallStatus;->noUI:Z

    if-eqz v1, :cond_2

    .line 341
    :cond_0
    iget-object v1, p0, Lcom/car/btphone/BTPhoneService;->mParentView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 342
    iget-object v1, p0, Lcom/car/btphone/BTPhoneService;->mShortCutCall:Lcom/car/btphone/BTPhoneService$ShortCutCall;

    iget-object v1, v1, Lcom/car/btphone/BTPhoneService$ShortCutCall;->mChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v1}, Landroid/widget/Chronometer;->stop()V

    .line 366
    .end local v0    # "cs":Lcom/car/btphone/BTPhoneService$CallStatus;
    :cond_1
    :goto_0
    return-void

    .line 346
    .restart local v0    # "cs":Lcom/car/btphone/BTPhoneService$CallStatus;
    :cond_2
    iget-object v4, p0, Lcom/car/btphone/BTPhoneService;->mParentView:Landroid/view/View;

    if-eqz p1, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 347
    if-eqz p1, :cond_4

    .line 348
    iget v1, v0, Lcom/car/btphone/BTPhoneService$CallStatus;->msgWhat:I

    const/16 v4, 0xa

    if-ne v1, v4, :cond_6

    .line 349
    iget-object v1, p0, Lcom/car/btphone/BTPhoneService;->mShortCutCall:Lcom/car/btphone/BTPhoneService$ShortCutCall;

    iget-object v1, v1, Lcom/car/btphone/BTPhoneService$ShortCutCall;->mChronometer:Landroid/widget/Chronometer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/widget/Chronometer;->setBase(J)V

    .line 350
    iget-object v1, p0, Lcom/car/btphone/BTPhoneService;->mShortCutCall:Lcom/car/btphone/BTPhoneService$ShortCutCall;

    iget-object v1, v1, Lcom/car/btphone/BTPhoneService$ShortCutCall;->mAcceptBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 354
    :goto_2
    iget v1, v0, Lcom/car/btphone/BTPhoneService$CallStatus;->msgWhat:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_3

    .line 355
    iget-object v1, p0, Lcom/car/btphone/BTPhoneService;->mShortCutCall:Lcom/car/btphone/BTPhoneService$ShortCutCall;

    iget-object v1, v1, Lcom/car/btphone/BTPhoneService$ShortCutCall;->mChronometer:Landroid/widget/Chronometer;

    iget-wide v4, v0, Lcom/car/btphone/BTPhoneService$CallStatus;->chronometerBase:J

    invoke-virtual {v1, v4, v5}, Landroid/widget/Chronometer;->setBase(J)V

    .line 356
    iget-object v1, p0, Lcom/car/btphone/BTPhoneService;->mShortCutCall:Lcom/car/btphone/BTPhoneService$ShortCutCall;

    iget-object v1, v1, Lcom/car/btphone/BTPhoneService$ShortCutCall;->mChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v1}, Landroid/widget/Chronometer;->start()V

    .line 358
    :cond_3
    iget-object v1, p0, Lcom/car/btphone/BTPhoneService;->mShortCutCall:Lcom/car/btphone/BTPhoneService$ShortCutCall;

    iget-object v1, v1, Lcom/car/btphone/BTPhoneService$ShortCutCall;->mNameNum:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/car/btphone/BTPhoneService$CallStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    :cond_4
    iget v1, v0, Lcom/car/btphone/BTPhoneService$CallStatus;->msgWhat:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1

    .line 362
    iget-object v1, p0, Lcom/car/btphone/BTPhoneService;->mParentView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 363
    iget-object v1, p0, Lcom/car/btphone/BTPhoneService;->mShortCutCall:Lcom/car/btphone/BTPhoneService$ShortCutCall;

    iget-object v1, v1, Lcom/car/btphone/BTPhoneService$ShortCutCall;->mChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v1}, Landroid/widget/Chronometer;->stop()V

    goto :goto_0

    :cond_5
    move v1, v3

    .line 346
    goto :goto_1

    .line 352
    :cond_6
    iget-object v1, p0, Lcom/car/btphone/BTPhoneService;->mShortCutCall:Lcom/car/btphone/BTPhoneService$ShortCutCall;

    iget-object v1, v1, Lcom/car/btphone/BTPhoneService$ShortCutCall;->mAcceptBtn:Landroid/widget/ImageButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_2
.end method

.method startMainActivity(ILjava/lang/String;Z)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "outgoing"    # Z

    .prologue
    const/16 v2, 0x3ee

    .line 2118
    iget-object v1, p0, Lcom/car/btphone/BTPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2125
    :goto_0
    return-void

    .line 2119
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2120
    .local v0, "msg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 2121
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2122
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2123
    if-eqz p3, :cond_1

    const/4 v1, 0x1

    :goto_1
    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 2124
    iget-object v1, p0, Lcom/car/btphone/BTPhoneService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 2123
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
