Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E9CDE35356A
	for <lists+linux-man@lfdr.de>; Sat,  3 Apr 2021 21:42:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236816AbhDCTmI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Apr 2021 15:42:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54998 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236794AbhDCTmI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Apr 2021 15:42:08 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A0C18C061793
        for <linux-man@vger.kernel.org>; Sat,  3 Apr 2021 12:42:04 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id t5-20020a1c77050000b029010e62cea9deso3810745wmi.0
        for <linux-man@vger.kernel.org>; Sat, 03 Apr 2021 12:42:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=HAiRQP2GtgEF1v9z/PyEJIuscLwk5tIDe0zM0JUVKt0=;
        b=VBiutKLED/0g9PXCBb7ff2jONGjtJeDYmlnukbZ8MK2hfDm4oo/nCfVSVFEdOtLZb0
         P90ESO14O6uj2z1/5p+s85aMW1O5G6zG9gMnlcmmOX4NQMuSiZC1VpCacnxn6R4TEowj
         UGPdJo0h4VUoJYJXO6+dfMDSrKu8qwEfVKTcAlf1ppTDH5m+6wAB8X9RWI/ee3Ejyzo7
         LcpSWsmXFe/GmlzffrJYOh6ZGYj+AyjFZH73RzAI0h+ZFTetIOfl0sjljO8ydNTn9PK1
         siLM0GxrGEtsFFKlHJFrHQuSoDS0zsZ6w+GNJ+R7eYX65iP+SGdfLVJwsiWAhBZ/IZOR
         Ul0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=HAiRQP2GtgEF1v9z/PyEJIuscLwk5tIDe0zM0JUVKt0=;
        b=cu+1IA8+mLdRJcqV+CWRiaH/fhC7N4wPa42vI0Gix40r08uqaKnfN+T6usAJ5+KEPP
         wZLxJzdeJfkWP8irJ/EWROtrr5ZIUvmFgyvYS+0S8skOzmQeFfwp8NuIpr5G7wZu383Q
         A27ml8jcc3rLU8c5fJ00GS2NZWEWoQMGiiTaYnyi4CCrfaC8frz/p6iqe3scFwcgEZQ6
         WDy7ya44/yhQcvT/56OhN9yOs5vf5rDcIWySvSVT+pu1MBiDXcwRUliR+fP31V8sgKDi
         XdGuFXTSjd+TnJL6h2f16tq1u2rg3rOp9EqQBVYYEdd+fzjV0INk1CLH1rQqWxPls302
         spVg==
X-Gm-Message-State: AOAM531afU/NNUJ3oQ36hrN7JSswlWbv3l7CdL5DqHvrNZ2SBIQP0W9x
        njBQlex3TF+v2aAHM0vNCjiuiXy+ynE=
X-Google-Smtp-Source: ABdhPJx5ORf2crCpmJirnInwwesom7wVCyN/Xan181TvuDwlZ4L22gmvOKf6WaPLqd/o9dScdgCzbQ==
X-Received: by 2002:a7b:cdf7:: with SMTP id p23mr18253778wmj.26.1617478923480;
        Sat, 03 Apr 2021 12:42:03 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id n1sm25211056wro.36.2021.04.03.12.42.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Apr 2021 12:42:03 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v4 23/35] getrlimit.2, getrusage.2: Remove unused include
Date:   Sat,  3 Apr 2021 21:40:15 +0200
Message-Id: <20210403194026.102818-24-alx.manpages@gmail.com>
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

