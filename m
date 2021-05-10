Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 27F3A37969F
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 19:56:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233191AbhEJR5v (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 May 2021 13:57:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54432 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233109AbhEJR5v (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 10 May 2021 13:57:51 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 075A9C061574
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:56:46 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id o127so9679268wmo.4
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:56:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=QiQINs023DdxjUSHXw+cs3BjUww1InRNvyWHLtP6ZuI=;
        b=q0gtpvC+F4i/K2yLnaIivt/aLhQ2ub/Em+y2s69ywVJFVB2DZita45rYpLOIc3PdC3
         0Ah5AssplyEgljgJI7SSsrXC8MgHAsEKwGNm2yqjcYNHfx2+ZoadY3FM9Yi514azwJdv
         4R+Erwkr/r7jLknupogAniwJPtCJW203z4BJjABcBG+KN9mtQXyjcenUUSed0Yyz8Qm9
         OuyUNyvIZ5fe9uryCDNYHy6qKWH5+g4pfyVIVAgBoh5GlYiJgj160QSDTjzq0Sz5VL04
         bZFvVsdOtox/j96wKrHua+/YDRflLEKtXlu1+SNenhKxQGhaCvd58Px2wrdARu/u6YoC
         eAeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=QiQINs023DdxjUSHXw+cs3BjUww1InRNvyWHLtP6ZuI=;
        b=cAOyLXDcEDcS+9EfkK85Lhaa8YhhEiq2wXXxPoKnjIjSN3AgGOFna6irZglo5QN5yF
         4FFtESHinkEvlNOnjCNSm7XI3UbtOISfdA4BOpdBG7h+S2ti7TZkOcNgxCjZ6b3OZMto
         bPkx+jT8A/Sx6NgzyaxP7/64+pLxTIxS4uiG6RAsDpicE2zfknlMUP6YScWd0fhHqwNZ
         DYNAn5cskykwt8RGBNBOI932I9eYe2/woCmOODfGiu/zOVJLLBq+ucdkhy26GQ84WMLl
         fj71T2U5gf91a2+e2+UyPOrQBBiQSQj0jS7zKXrDa+NCqcjlWYlSgG9N3JAs1UbyVzL0
         yt1Q==
X-Gm-Message-State: AOAM530Rf0A2342o16oPSmpDCF5kh/D3zlFxsTCn9xdxlgPzmD5A97o2
        V+SnouDfhAoH2GqPvkqCvYvF4PU4NvA=
X-Google-Smtp-Source: ABdhPJyPJ7hQIGHIWCwWx/MI5WHSbhtfdHgrn5mPMrCuuXO+QOq3mA9Mqt2WM8TfVhSTTHZk7qTQ3A==
X-Received: by 2002:a05:600c:41d4:: with SMTP id t20mr412878wmh.46.1620669404722;
        Mon, 10 May 2021 10:56:44 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id m13sm24318830wrw.86.2021.05.10.10.56.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 May 2021 10:56:44 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Florian Weimer <fweimer@redhat.com>, Jakub Wilk <jwilk@jwilk.net>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 19/39] membarrier.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Mon, 10 May 2021 19:55:28 +0200
Message-Id: <20210510175546.28445-20-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210510175546.28445-1-alx.manpages@gmail.com>
References: <20210510175546.28445-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/membarrier.2 | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/man2/membarrier.2 b/man2/membarrier.2
index 851f5d59f..fec82f228 100644
--- a/man2/membarrier.2
+++ b/man2/membarrier.2
@@ -28,13 +28,20 @@ membarrier \- issue memory barriers on a set of threads
 .SH SYNOPSIS
 .nf
 .PP
-.B #include <linux/membarrier.h>
+.BR "#include <linux/membarrier.h>" \
+" /* Definition of " MEMBARRIER_* " constants */"
+.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
+.B #include <unistd.h>
 .PP
-.BI "int membarrier(int " cmd ", unsigned int " flags ", int " cpu_id );
+.BI "int syscall(SYS_membarrier, int " cmd ", unsigned int " flags \
+", int " cpu_id );
 .fi
 .PP
 .IR Note :
-There is no glibc wrapper for this system call; see NOTES.
+glibc provides no wrapper for
+.BR membarrier (),
+necessitating the use of
+.BR syscall (2).
 .SH DESCRIPTION
 The
 .BR membarrier ()
@@ -322,9 +329,6 @@ Examples where
 .BR membarrier ()
 can be useful include implementations
 of Read-Copy-Update libraries and garbage collectors.
-.PP
-Glibc does not provide a wrapper for this system call; call it using
-.BR syscall (2).
 .SH EXAMPLES
 Assuming a multithreaded application where "fast_path()" is executed
 very frequently, and where "slow_path()" is executed infrequently, the
-- 
2.31.1

