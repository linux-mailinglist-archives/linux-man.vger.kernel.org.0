Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E771E381A75
	for <lists+linux-man@lfdr.de>; Sat, 15 May 2021 20:20:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234377AbhEOSV6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 15 May 2021 14:21:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52278 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234390AbhEOSV5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 15 May 2021 14:21:57 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66535C061573
        for <linux-man@vger.kernel.org>; Sat, 15 May 2021 11:20:43 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id v12so2257459wrq.6
        for <linux-man@vger.kernel.org>; Sat, 15 May 2021 11:20:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=9EUC89ZdBbeE26Hmtl/q2E8a+FonG4MH2DOCKU+cYBo=;
        b=QpCKY5JG57h+eB5fc5lvU+UW6LEp9xQedJehhoIeeAR+uG3wXrdT1Uck3x52xGrIhw
         PYW81vEwrnYteRI/yoZxFz4umdUyaaE0IfZvR5NuR6S86qjsE5CLsQ8VwsrdY8y+98/x
         eKNgtTmLvR2r6aq9u/FMTui+sWn0DPsg2RhP1Q6+Kk8izeefr79mtA1hQIzdO46jo9rC
         JxuhtX5kY8KfjQR7UzVN299XCJptYjVklH240e2rFBj8g7zjs7QlHGCkr1AoCqIJZEA1
         YZXZCTwMol8XISXfAM6lvI4pqsloZVEyCxctBsZRn9pisBxGHsnjMlHLzcqzQBjVrNse
         R6oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=9EUC89ZdBbeE26Hmtl/q2E8a+FonG4MH2DOCKU+cYBo=;
        b=qDvSc0BZyo0lHGg33g8/tgX+w0juWeR3u3s2ZhblngoMfHyJ6zufRxC0pQUo4a5dyz
         epCzVg8r1Aaw6vhxtVfv859NXN2sE9WsnrBzviCr6d6aP+UrysJL/+sLtRxtL2byOglG
         pfNfGzEa+On+RwvgWuRwLTcywq5x5VLFP0T3pfOMjNVjQgsPeDI2aEolP2iVzDV3XprG
         k+suFawoRzGisHv989jqPdFCTnJek5eT5Vc8LP5yF640t0Lp46wr30yL1/0cDn5thW5g
         uJISpNBT4IaYEoh74DeI9Pt7Jw3ZPxxo4+b3ZbJaBb3ZGrt4YzRveaKF/F3cj1O/5irq
         3xWQ==
X-Gm-Message-State: AOAM532T452YA4AZY3vzvRXM7FPkbgqAzokd/GMrciaV003Ogph2NedW
        Z/1uNGIQc6jGoCpuEGhyiJk=
X-Google-Smtp-Source: ABdhPJyRc0jDefAymRc+gnEd0+QDsVUE1hbNpayClhxbrsZbWF3YQkVSygnkTdgg+uoBWEzp4RWK0A==
X-Received: by 2002:a5d:4408:: with SMTP id z8mr3078140wrq.2.1621102842253;
        Sat, 15 May 2021 11:20:42 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id v10sm12007254wrq.0.2021.05.15.11.20.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 May 2021 11:20:42 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 8/8] sched_setattr.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Sat, 15 May 2021 20:20:28 +0200
Message-Id: <20210515182027.186403-8-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210515182027.186403-1-alx.manpages@gmail.com>
References: <20210515182027.186403-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Document also why each header is required

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/sched_setattr.2 | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/man2/sched_setattr.2 b/man2/sched_setattr.2
index 545558a4e..1c24c65d3 100644
--- a/man2/sched_setattr.2
+++ b/man2/sched_setattr.2
@@ -29,17 +29,21 @@ sched_setattr, sched_getattr \-
 set and get scheduling policy and attributes
 .SH SYNOPSIS
 .nf
-.B #include <sched.h>
+.BR "#include <sched.h>" "            /* Definition of " SCHED_* " constants */"
+.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
+.B #include <unistd.h>
 .PP
-.BI "int sched_setattr(pid_t " pid ", struct sched_attr *" attr ,
-.BI "                  unsigned int " flags );
-.BI "int sched_getattr(pid_t " pid ", struct sched_attr *" attr ,
-.BI "                  unsigned int " size ", unsigned int " flags );
+.BI "int syscall(SYS_sched_setattr, pid_t " pid ", struct sched_attr *" attr ,
+.BI "            unsigned int " flags );
+.BI "int syscall(SYS_sched_getattr, pid_t " pid ", struct sched_attr *" attr ,
+.BI "            unsigned int " size ", unsigned int " flags );
 .fi
 .\" FIXME . Add feature test macro requirements
 .PP
 .IR Note :
-There are no glibc wrappers for these system calls; see NOTES.
+glibc provides no wrappers for these system calls,
+necessitating the use of
+.BR syscall (2).
 .SH DESCRIPTION
 .SS sched_setattr()
 The
-- 
2.31.1

