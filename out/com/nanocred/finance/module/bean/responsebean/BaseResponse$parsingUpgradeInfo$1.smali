.class public final Lcom/nanocred/finance/module/bean/responsebean/BaseResponse$parsingUpgradeInfo$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "Paramount"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nanocred/finance/module/bean/responsebean/BaseResponse;->parsingUpgradeInfo()Lcom/nanocred/finance/module/bean/responsebean/AppUpgradeBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Lcom/nanocred/finance/module/bean/responsebean/AppUpgradeBean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    invoke-static {}, Lcom/SEC/SEC/Helper;->stub()V

    return-void
.end method
