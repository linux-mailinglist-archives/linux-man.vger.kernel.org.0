Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B397938D1ED
	for <lists+linux-man@lfdr.de>; Sat, 22 May 2021 01:26:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229989AbhEUX12 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 May 2021 19:27:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50276 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230146AbhEUX12 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 May 2021 19:27:28 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F0D19C0613ED
        for <linux-man@vger.kernel.org>; Fri, 21 May 2021 16:26:03 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id v12so22496522wrq.6
        for <linux-man@vger.kernel.org>; Fri, 21 May 2021 16:26:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Ps54vMIeUZmfEsgXPmAphxNoO3rLyIfowTpP7pEhGu4=;
        b=ieDM1jagd0+AtmRTMrxvjAbSEJ8vhEdGTwAil3MM9WmFg47mgOOqFNjn/nGeg0fXE2
         0haijDbqGwmxZBNjEfq4S+nchAWA26gOaWWLpiMWzrq93KmWFlGCEHh7nxTbsiaro8n1
         eXtmi2J9Ifo+2msOkPpQdeEvT2RYbFuYHXo018BPPPxxUCopNAdEhEpR/j8gTfhGebON
         kcVdoQ0YUH3X/aQXbsOG32G8yv8cR+KdPwGp7pp1IGI9jC7xyHPPp/gnmYk0AP4Zp/pW
         GA8bt7iAdCiYg0CxPTAQIaRLFYtJz9vRuIt0aLVc4f5CgViMWzcCNC6J5LNGYGwcngzm
         elfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Ps54vMIeUZmfEsgXPmAphxNoO3rLyIfowTpP7pEhGu4=;
        b=NtBqGaoR1YSpvC0hIaK9jqss+49dvLfHbYurK7yuPZcpxCQ8kaLvTM3kEXAHeR54AA
         /Ruz65rC30EcwrQRQAfHEpJqNNVGu6ck3BUnxWYCYNaJguNsqVaDrsgwlE3iPcaN1x42
         yPwACQ52BSKv7zYNeMlKLJLvhpNdhW8VKa4zuCqF32vBzwTq3+eEsX5dm4R86ig+Z+Kx
         QQxXV2i/2asc9jTD8msoWSAcVJU1VeeK2xkQOid9GHF0ruwUdQml4ux+Q12cJQMGOq32
         072MXym2KOfxRxbfMHbec4iILGZYW56O6gMzaXAUaNEA+qMJYERUR6WCJwQpNZBDXQaD
         YVAg==
X-Gm-Message-State: AOAM530ouX7YJmweIaMNY0oOT9+RryO4Scf8Bckjmxs8QPsoHc4rmwh4
        523wpuciyPtVUg9LVwpXboA=
X-Google-Smtp-Source: ABdhPJwLoDEucgwdVM4qPdeht2xxRAZwveMj9CKoY/axITGbaL90uxVkPfrgJBkGGYkpYDFhIVEloA==
X-Received: by 2002:adf:f142:: with SMTP id y2mr11465009wro.426.1621639562662;
        Fri, 21 May 2021 16:26:02 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id z12sm1150639wmc.5.2021.05.21.16.26.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 May 2021 16:26:02 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 07/10] sgetmask.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Sat, 22 May 2021 01:25:50 +0200
Message-Id: <20210521232553.161080-7-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210521232553.161080-1-alx.manpages@gmail.com>
References: <20210521232553.161080-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/sgetmask.2 | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/man2/sgetmask.2 b/man2/sgetmask.2
index 7563b57ff..59b58ceaf 100644
--- a/man2/sgetmask.2
+++ b/man2/sgetmask.2
@@ -27,12 +27,17 @@
 sgetmask, ssetmask \- manipulation of signal mask (obsolete)
 .SH SYNOPSIS
 .nf
-.B "long sgetmask(void);"
-.BI "long ssetmask(long " newmask );
+.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
+.B #include <unistd.h>
+.PP
+.B "long syscall(SYS_sgetmask, void);"
+.BI "long syscall(SYS_ssetmask, long " newmask );
 .fi
 .PP
 .IR Note :
-There are no glibc wrappers for these system calls; see NOTES.
+glibc provides no wrappers for these functions,
+necessitating the use of
+.BR syscall (2).
 .SH DESCRIPTION
 These system calls are obsolete.
 .IR "Do not use them" ;
@@ -73,10 +78,6 @@ option.
 .SH CONFORMING TO
 These system calls are Linux-specific.
 .SH NOTES
-Glibc does not provide wrappers for these obsolete system calls;
-in the unlikely event that you want to call them, use
-.BR syscall (2).
-.PP
 These system calls are unaware of signal numbers greater than 31
 (i.e., real-time signals).
 .PP
-- 
2.31.1

