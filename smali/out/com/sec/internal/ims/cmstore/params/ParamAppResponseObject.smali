.class public Lcom/sec/internal/ims/cmstore/params/ParamAppResponseObject;
.super Ljava/lang/Object;
.source "ParamAppResponseObject.java"


# instance fields
.field public errorCode:I

.field public jsonResult:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/sec/internal/ims/cmstore/params/ParamAppResponseObject;->errorCode:I

    .line 10
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamAppResponseObject;->jsonResult:Ljava/lang/String;

    return-void
.end method
