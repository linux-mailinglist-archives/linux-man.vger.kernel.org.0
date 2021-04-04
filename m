Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C0FC93537F7
	for <lists+linux-man@lfdr.de>; Sun,  4 Apr 2021 13:59:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230447AbhDDL7y (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Apr 2021 07:59:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37862 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230446AbhDDL7y (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Apr 2021 07:59:54 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2403AC061756
        for <linux-man@vger.kernel.org>; Sun,  4 Apr 2021 04:59:50 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id a6so2590694wrw.8
        for <linux-man@vger.kernel.org>; Sun, 04 Apr 2021 04:59:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=HAiRQP2GtgEF1v9z/PyEJIuscLwk5tIDe0zM0JUVKt0=;
        b=DsSGCAiwZKz9uojyEF6+t3OX18e33R5fplXcs79ozugQujpYF4zeC1kS5YUVvfYQ/H
         wD2rsJw7V1+18ETsqFRK1phmJfnfT+VTVMOmclVA7FUxT/imv6ncQH9Cc4Qjgg/DLD4v
         tMfNmzHcL0LkZ2tRo+qHYY9RkbT9DJum6JlWc9bESJui4bEiT+uk44xfabzOQiSfq723
         nXQQ5t97gAB+jn4gy1xjfIIWY6RmOHiA5WviD03fikcx7DMK0pZl7WTLqBQp6sfhdunA
         4KKloYyJGcwVa+3LY3eesPhSvrAFO15dGTskm36giTvZsyMMDVmk+fX9MZQpphN4pL+y
         Ssxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=HAiRQP2GtgEF1v9z/PyEJIuscLwk5tIDe0zM0JUVKt0=;
        b=cbgAEcBLB0oVWukQgXDQwm90MeM0koKyddv8xPOke5MpS0ip7iMLVklmkVOoTDwG0H
         51ufoItSjRg53sRzKBvuKHYaDdoAy3IMY8mq1m6dk0AP5Ml7fIBiAlT9rW0O0qeImllY
         opeWDxf/5Gt2mKiBRXmPd5lDdNbFuQ0cSFR8pnaFq/UvcYe0ognZAP7/kbSSGAfROp/U
         Ums40QDBJbKAp3usbMqPzCFTv7hm5d16HNgxl3Ef/J67J4KuaP2z2hsSnE06kghKj5v6
         CGWQo1UORQgO0MopvAUZyyHAmpnO41U1AJBhNoXweITRz9dXv/HpOcVeMhSCat+pIMW3
         Ixgg==
X-Gm-Message-State: AOAM530tBPRwxxZ3iVRf82J1Adxlm9GeOKPu0WNjNiok2g4/60ErJnOY
        UdSx9X/TZJ4Uqe+bJ/c7kr+d/ilMGe0=
X-Google-Smtp-Source: ABdhPJyMquK+RLLxQbfXxuA3LT0+KGE0NrKZiv5FBnR7eVui5xlweeoMIE6y0ullccxRDiFmnvDFHA==
X-Received: by 2002:adf:e5c8:: with SMTP id a8mr24832771wrn.352.1617537588987;
        Sun, 04 Apr 2021 04:59:48 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id u2sm23786967wrp.12.2021.04.04.04.59.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Apr 2021 04:59:48 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v5 23/35] getrlimit.2, getrusage.2: Remove unused include
Date:   Sun,  4 Apr 2021 13:58:36 +0200
Message-Id: <20210404115847.78166-24-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210403194026.102818-1-alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

<sys/time.h> is not required by any of these function declaration
or macro definition used by these functions.  It's maybe (or maybe
not) needed by some tipe inside the rlimit structure, but that
info belongs to system_data_types(7), not here.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/getrlimit.2 | 1 -
 man2/getrusage.2 | 9 ---------
 2 files changed, 10 deletions(-)

diff --git a/man2/getrlimit.2 b/man2/getrlimit.2
index 444c50525..648fd3c85 100644
--- a/man2/getrlimit.2
+++ b/man2/getrlimit.2
@@ -66,7 +66,6 @@
 getrlimit, setrlimit, prlimit \- get/set resource limits
 .SH SYNOPSIS
 .nf
-.B #include <sys/time.h>
 .B #include <sys/resource.h>
 .PP
 .BI "int getrlimit(int " resource ", struct rlimit *" rlim );
diff --git a/man2/getrusage.2 b/man2/getrusage.2
index d3c0de8a0..85c4ffed1 100644
--- a/man2/getrusage.2
+++ b/man2/getrusage.2
@@ -41,7 +41,6 @@
 getrusage \- get resource usage
 .SH SYNOPSIS
 .nf
-.B #include <sys/time.h>
 .B #include <sys/resource.h>
 .PP
 .BI "int getrusage(int " who ", struct rusage *" usage );
@@ -230,14 +229,6 @@ is Linux-specific.
 Resource usage metrics are preserved across an
 .BR execve (2).
 .PP
-Including
-.I <sys/time.h>
-is not required these days, but increases portability.
-(Indeed,
-.I struct timeval
-is defined in
-.IR <sys/time.h> .)
-.PP
 In Linux kernel versions before 2.6.9, if the disposition of
 .B SIGCHLD
 is set to
-- 
2.31.0

