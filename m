Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 52A43443562
	for <lists+linux-man@lfdr.de>; Tue,  2 Nov 2021 19:15:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235019AbhKBSSV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 2 Nov 2021 14:18:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37556 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235055AbhKBSSR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 2 Nov 2021 14:18:17 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F99EC061203
        for <linux-man@vger.kernel.org>; Tue,  2 Nov 2021 11:15:42 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id d3so34627921wrh.8
        for <linux-man@vger.kernel.org>; Tue, 02 Nov 2021 11:15:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Rt7KdNR9g1Z7SzPkvmbkeIEOn+i1a2p1zelH1yrMgA8=;
        b=fIR2GyNzjhqxDi4SNDxrPPz/6mJr8TWZl8/qya+y0db3dq+807uFkb76fBjdy3UQqV
         o8gZMKmhsQqo9o9oa6sQN/XH3DRP6X9tVMVA6tfGzlBdOd1R5bgnna8TnRGg/Dkd98b/
         1h3CSmFwLXnOOCe8oINOgbuCGJAWQEkj/Ps8ZVQxrebEQiNxU6OCuNaq+FWDheEmq3aZ
         32WemtU/8qepIL0jQ6HKMZ5GOO3i1xzX8BLztFQCwDZfCumGnyuxkiava1V7UF1vQo6g
         Yix5HIJXg9eBsNkEjTGGf7E/H6EO55k9yvSTL6JP3zLDQ3W8KwD2+em8J21qR9EGX4Y2
         UJmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Rt7KdNR9g1Z7SzPkvmbkeIEOn+i1a2p1zelH1yrMgA8=;
        b=gIsJ5IEuQNnlAfVcwnIItQDS+2Cq1cu0toETqDja271zteYRFr3ZmNAkb7pENPNSA+
         DEjFkKcJRrWB7C8onhkPL3foJ7lkL1inFXfEwWxt2IjvU6PnCelDOZQxLK931nkhC1L9
         tv7tGO7YB6zJLr/usCXpPHRFEHCyuSPQ2MJWTbpAMOlxPgNOLzJuP4Rwa8oWS0sF2NM2
         pOGHQVK5ikhbo3cCIZz7wBdZiGNmjjWaFAfEoRLbCkwb+a6NYrc+QDKxb69KHzCwxWsY
         SqaZHLG2GJetvsQuh4YlXT/QsL5Juc4xVmEcaZL1NjubW3pAHen4UuD6f6lHOx2EC/gg
         xBKA==
X-Gm-Message-State: AOAM533ufWFoQZCC9GrAubjt6xiSJ5BvHJlJh0FYUSzG8G6nI6iyM+9Y
        513IqP5ZPoe6zTWcqsR5BXTyL6MDdkU=
X-Google-Smtp-Source: ABdhPJwJcPt6NzWalPr69Vdqysm4IsQDRoYu53Kk0ch7C66buYFPWhwuG1xKk60L3dnD6ew9VIrU/g==
X-Received: by 2002:adf:ecca:: with SMTP id s10mr35461068wro.405.1635876941110;
        Tue, 02 Nov 2021 11:15:41 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id f18sm18467445wrg.3.2021.11.02.11.15.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Nov 2021 11:15:40 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [RFC 36/37] div_t.3, lldiv_t.3, system_data_types.7: Move lldiv_t to div_t.3
Date:   Tue,  2 Nov 2021 19:14:53 +0100
Message-Id: <20211102181454.280919-37-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211102181454.280919-1-alx.manpages@gmail.com>
References: <20211102181454.280919-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/div_t.3             | 14 ++++++++++----
 man3/lldiv_t.3           |  2 +-
 man7/system_data_types.7 | 23 -----------------------
 3 files changed, 11 insertions(+), 28 deletions(-)

diff --git a/man3/div_t.3 b/man3/div_t.3
index 3d2697cac..34513ca91 100644
--- a/man3/div_t.3
+++ b/man3/div_t.3
@@ -1,6 +1,6 @@
 .TH DIV_T 3 2021-11-02 Linux "Linux Programmer's Manual"
 .SH NAME
-div_t, ldiv_t, imaxdiv_t \- quotient and remainder of an integer division
+div_t, ldiv_t, lldiv_t, imaxdiv_t \- quotient and remainder of an integer division
 .SH SYNOPSIS
 .nf
 .B #include <stdlib.h>
@@ -15,6 +15,11 @@ div_t, ldiv_t, imaxdiv_t \- quotient and remainder of an integer division
 .BR "    long rem;" "  /* Remainder */"
 .B } ldiv_t;
 .PP
+.B typedef struct {
+.BR "    long long quot;" " /* Quotient */"
+.BR "    long long rem;" "  /* Remainder */"
+.B } lldiv_t;
+.PP
 .B #include <inttypes.h>
 .PP
 .B typedef struct {
@@ -23,9 +28,9 @@ div_t, ldiv_t, imaxdiv_t \- quotient and remainder of an integer division
 .B } imaxdiv_t;
 .fi
 .SH DESCRIPTION
-.RI [ l ] div_t
+.RI [[ l ] l ] div_t
 is the type of the value returned by the
-.RB [ l ] div (3)
+.RB [[ l ] l ] div (3)
 function.
 .PP
 .I imaxdiv_t
@@ -37,4 +42,5 @@ C99 and later; POSIX.1-2001 and later.
 .SH SEE ALSO
 .BR div (3),
 .BR imaxdiv (3),
-.BR ldiv (3)
+.BR ldiv (3),
+.BR lldiv (3)
diff --git a/man3/lldiv_t.3 b/man3/lldiv_t.3
index db50c0f09..e29b9e797 100644
--- a/man3/lldiv_t.3
+++ b/man3/lldiv_t.3
@@ -1 +1 @@
-.so man7/system_data_types.7
+.so man3/div_t.3
diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 4acce2e41..a39f7f269 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -137,29 +137,6 @@ types in this page.
 .\"------------------------------------- lconv ------------------------/
 .\"------------------------------------- ldiv_t -----------------------/
 .\"------------------------------------- lldiv_t ----------------------/
-.TP
-.I lldiv_t
-.RS
-.IR Include :
-.IR <stdlib.h> .
-.PP
-.EX
-typedef struct {
-    long long   quot; /* Quotient */
-    long long   rem;  /* Remainder */
-} lldiv_t;
-.EE
-.PP
-It is the type of the value returned by the
-.BR lldiv (3)
-function.
-.PP
-.IR "Conforming to" :
-C99 and later; POSIX.1-2001 and later.
-.PP
-.IR "See also" :
-.BR lldiv (3)
-.RE
 .\"------------------------------------- mode_t -----------------------/
 .TP
 .I mode_t
-- 
2.33.1

