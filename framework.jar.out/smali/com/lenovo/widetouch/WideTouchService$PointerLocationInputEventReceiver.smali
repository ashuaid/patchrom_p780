.class final Lcom/lenovo/widetouch/WideTouchService$PointerLocationInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "WideTouchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/widetouch/WideTouchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PointerLocationInputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/widetouch/WideTouchService;


# direct methods
.method public constructor <init>(Lcom/lenovo/widetouch/WideTouchService;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "inputChannel"
    .parameter "looper"

    .prologue
    iput-object p1, p0, Lcom/lenovo/widetouch/WideTouchService$PointerLocationInputEventReceiver;->this$0:Lcom/lenovo/widetouch/WideTouchService;

    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .local v1, handled:Z
    :try_start_0
    instance-of v3, p1, Landroid/view/MotionEvent;

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v2, v0

    .local v2, motionEvent:Landroid/view/MotionEvent;
    iget-object v3, p0, Lcom/lenovo/widetouch/WideTouchService$PointerLocationInputEventReceiver;->this$0:Lcom/lenovo/widetouch/WideTouchService;

    invoke-virtual {v3, v2}, Lcom/lenovo/widetouch/WideTouchService;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    .end local v2           #motionEvent:Landroid/view/MotionEvent;
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/lenovo/widetouch/WideTouchService$PointerLocationInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    :catchall_0
    move-exception v3

    invoke-virtual {p0, p1, v1}, Lcom/lenovo/widetouch/WideTouchService$PointerLocationInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v3
.end method