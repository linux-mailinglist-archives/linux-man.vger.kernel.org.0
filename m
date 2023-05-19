Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B7BD3709809
	for <lists+linux-man@lfdr.de>; Fri, 19 May 2023 15:16:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230210AbjESNQr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 May 2023 09:16:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44832 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229524AbjESNQq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 19 May 2023 09:16:46 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 60DF79D
        for <linux-man@vger.kernel.org>; Fri, 19 May 2023 06:16:44 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-510dabb39aeso4093494a12.2
        for <linux-man@vger.kernel.org>; Fri, 19 May 2023 06:16:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684502203; x=1687094203;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=NeVKyJhkll2zWDVeQbz4NghDxTRX2yS+RLRbm6nMQH4=;
        b=EPSbqrKxxUX3V9JqayE71OYW7wB4yHs1ydSSzHxSPTxBt7OWf6Qkf6FaJZt9OXzOTy
         LKrp/7QEHAal9wkyFCewRKq71c2yILd/gxBE9ERE5084Zx1psQ6xP30KmXgJqS4SPiUp
         orJfPMjbIkibe1SvI5Bi2UimJdXUg1V5UObZrErQKV2Ejncde11Sj1Hk7/OsNNdcb4aS
         NsuTVW1vThL4MSlrhXrpZmrJeBuy52WJxE2FWdQFawX1ugvfeY0d1t7j/R5hkScL8GpP
         lvTMcJ0VpmWS233B4ajHqqLUIXSJQ4TUULi7fTollQ4sQi9KzzCCylBmusMV+TXtDppB
         vBRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684502203; x=1687094203;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NeVKyJhkll2zWDVeQbz4NghDxTRX2yS+RLRbm6nMQH4=;
        b=bkwPMgPvE8FqGzILr1LfHFlJLsx9XfyZE9BV5cmsgmCBm1fRj+NUys7n8C4Di6I+i/
         zMSgX3X5UtwgfFauWSZZionhBZ4Vj9jMj2lgiP0UawfKX8WI4iQgCrZ8cK6G/KNItfUc
         XSGyoppGzFAH1HYRQ1pDoalpiCNDuGgPu5KuRSTnFQG1/srwK3OCbM0s3FmNIymra86N
         sUQSaoI6KrX/Gio1sbmxVo3mB4D5PtSv2tvPjn2ujVL8gFVWzSu1yxd0ZvlnG5Ewbzsj
         DgO3/UOTf63kVJwgZ/lr2dMzDeynjsBGe4dY+RpbFuwCk1oc7rmqSYJgY/Vi7QLs/3jp
         cJiA==
X-Gm-Message-State: AC+VfDyYuEweQwTjf/xqhkoATsAlF8oeeReMXjWfYzeoRNVzHLFjCxqI
        Q6NsVFyQuRcU+Qwf3HrKJjDmZbD1fco=
X-Google-Smtp-Source: ACHHUZ5gp72ryg4Th4uIEXXd1RjU2TsyE0CrJFaknyrfBJlUCOyq4scZDSK8BOlDlTcop71zDhQVCQ==
X-Received: by 2002:a17:907:a01:b0:94f:395b:df1b with SMTP id bb1-20020a1709070a0100b0094f395bdf1bmr1494880ejc.21.1684502202447;
        Fri, 19 May 2023 06:16:42 -0700 (PDT)
Received: from dell7760.alejandro-colomar.es ([46.222.34.83])
        by smtp.googlemail.com with ESMTPSA id w28-20020a170907271c00b0096f8509f06dsm11031ejk.158.2023.05.19.06.16.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 May 2023 06:16:42 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>,
        Florian Weimer <fweimer@redhat.com>
Subject: [PATCH] open.2, prctl.2: SYNOPSIS: Document these as variadic functions
Date:   Fri, 19 May 2023 15:15:47 +0200
Message-Id: <20230519131546.25232-1-alx@kernel.org>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

I remember I discussed this with Michael Kerrisk a long ago and we
agreed to apply this fix, as I felt that using overload syntax was
confusing (especially since C doesn't allow overloads), but then I
didn't feel urged to write a patch.  Florian confirmed recently that
this is confusing to more programmers, so let's do it.

Reported-by: Florian Weimer <fweimer@redhat.com>
Link: <https://bugzilla.kernel.org/show_bug.cgi?id=216876#c1>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man2/open.2  | 11 +++++------
 man2/prctl.2 |  5 +++--
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/man2/open.2 b/man2/open.2
index f79330a17..70b2519d8 100644
--- a/man2/open.2
+++ b/man2/open.2
@@ -38,18 +38,17 @@ Standard C library
 .nf
 .B #include <fcntl.h>
 .PP
-.BI "int open(const char *" pathname ", int " flags );
-.BI "int open(const char *" pathname ", int " flags ", mode_t " mode );
+.BI "int open(const char *" pathname ", int " flags ", ..."
+.BI "           \fR/*\fP mode_t " mode " \fR*/\fP );"
 .PP
 .BI "int creat(const char *" pathname ", mode_t " mode );
 .PP
-.BI "int openat(int " dirfd ", const char *" pathname ", int " flags );
-.BI "int openat(int " dirfd ", const char *" pathname ", int " flags \
-", mode_t " mode );
+.BI "int openat(int " dirfd ", const char *" pathname ", int " flags ", ..."
+.BI "           \fR/*\fP mode_t " mode " \fR*/\fP );"
 .PP
 /* Documented separately, in \fBopenat2\fP(2): */
 .BI "int openat2(int " dirfd ", const char *" pathname ,
-.BI "            const struct open_how *" how ", size_t " size ");"
+.BI "           const struct open_how *" how ", size_t " size ");"
 .fi
 .PP
 .RS -4
diff --git a/man2/prctl.2 b/man2/prctl.2
index 88d94b7e8..09e9072fa 100644
--- a/man2/prctl.2
+++ b/man2/prctl.2
@@ -46,8 +46,9 @@ Standard C library
 .nf
 .B #include <sys/prctl.h>
 .PP
-.BI "int prctl(int " option ", unsigned long " arg2 ", unsigned long " arg3 ,
-.BI "          unsigned long " arg4 ", unsigned long " arg5 );
+.BI "int prctl(int " option ", ..."
+.BI "          \fR/*\fP unsigned long " arg2 ", unsigned long " arg3 ,
+.BI "          unsigned long " arg4 ", unsigned long " arg5 " \fR*/\fP );"
 .fi
 .SH DESCRIPTION
 .BR prctl ()
-- 
2.40.1

