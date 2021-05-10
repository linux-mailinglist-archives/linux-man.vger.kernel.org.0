Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D85883796A8
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 19:57:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233297AbhEJR6F (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 May 2021 13:58:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54508 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233295AbhEJR6E (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 10 May 2021 13:58:04 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C6D7C06175F
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:56:59 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id l14so17542276wrx.5
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:56:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=pPRtGR1hem9DTNvLYgsA1Kk8tWymNQKzo15ovBiFWnQ=;
        b=flw88RzzwjVhH8zh+c/GuWv2/5BeMc1m8k6OxW4UHkau514z3/yLOxGLZM+OZTBBQb
         cOZV4RIhbeXJ5jDtj9aKhj67ap0aS3oA41bz25an9wWxVqJd3rRMVh8pd+08ph3ymncy
         q8OHiaTEuGNhXsPHX+gouQx4isXBNqUs5EfAjoXKxHeLVX0zYCR2UxKMHcw17csz/2/0
         VB4q6iIdZ6OA/PmzKDCchsgQq0lnn4HRcGvtEokzx4YP86zs+2iXlQ4sk748uEseneDT
         xtmnnN2xxmr/vBSsQuZ26nB4BmPIsxtGVvc92he/JdgMaTjmzujtumfwUOdxgEec/gQk
         xedw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=pPRtGR1hem9DTNvLYgsA1Kk8tWymNQKzo15ovBiFWnQ=;
        b=IRy/IMQ2mkSx88BldnKXZDE+05gOBCD+2sTV3vMpUiULvhrvIDtqXCRJ3Tv9AAZ2di
         kX3mrf/mrJUb4iZl2vgqGtuDWK4V49pr4Lwm68nHpNOYRxz7qByZgnFDqMuagRH7SLpc
         lo491efTniz0PXSj+rjcpHRpByqZH4DL1Ah/8wcJiTN0yC+AYQ9oCCsjPaRmk3xXTtEA
         48XT7fDrNxQt+m8bmeDH72r7HShqNStQnKq1c3qeB0bOPeG1jiY+jejv2O4LoH2WzOTv
         cR3YAH5ryjp10tEmt9NJ6n2yhEW4i0OdgVpkq4MOGYQTAOuCeX0G5BnV8Zo8fV2lyiPA
         wOgw==
X-Gm-Message-State: AOAM530t8kpjT62R+rFaF/yvE2YsGd+jUuTofysfX8WEKseUu/ztt0/J
        H+whIFZge6bA6uJNHL8XfDY=
X-Google-Smtp-Source: ABdhPJwOsI+99Xtdq7PrJvJ62oqOHrBffOMw8R8sfjI1QnRbjRgQSMSnkKF95g5IZgp/tGLRPHLPsw==
X-Received: by 2002:adf:dfd1:: with SMTP id q17mr31283976wrn.177.1620669417804;
        Mon, 10 May 2021 10:56:57 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id m13sm24318830wrw.86.2021.05.10.10.56.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 May 2021 10:56:57 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Florian Weimer <fweimer@redhat.com>, Jakub Wilk <jwilk@jwilk.net>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 28/39] perf_event_open.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Mon, 10 May 2021 19:55:37 +0200
Message-Id: <20210510175546.28445-29-alx.manpages@gmail.com>
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
 man2/perf_event_open.2 | 21 +++++++++++----------
 1 file changed, 11 insertions(+), 10 deletions(-)

diff --git a/man2/perf_event_open.2 b/man2/perf_event_open.2
index 1d5d1aada..3bfc7c103 100644
--- a/man2/perf_event_open.2
+++ b/man2/perf_event_open.2
@@ -29,16 +29,21 @@
 perf_event_open \- set up performance monitoring
 .SH SYNOPSIS
 .nf
-.B #include <linux/perf_event.h>
-.B #include <linux/hw_breakpoint.h>
+.BR "#include <linux/perf_event.h>" "    /* Definition of " PERF_* " constants */"
+.BR "#include <linux/hw_breakpoint.h>" " /* Definition of " HW_* " constants */"
+.BR "#include <sys/syscall.h>" "         /* Definition of " SYS_* " constants */"
+.B #include <unistd.h>
 .PP
-.BI "int perf_event_open(struct perf_event_attr *" attr ,
-.BI "                    pid_t " pid ", int " cpu ", int " group_fd ,
-.BI "                    unsigned long " flags  );
+.BI "int syscall(SYS_perf_event_open, struct perf_event_attr *" attr ,
+.BI "            pid_t " pid ", int " cpu ", int " group_fd \
+", unsigned long " flags  );
 .fi
 .PP
 .IR Note :
-There is no glibc wrapper for this system call; see NOTES.
+glibc provides no wrapper for
+.BR perf_event_open (),
+necessitating the use of
+.BR syscall (2).
 .SH DESCRIPTION
 Given a list of parameters,
 .BR perf_event_open ()
@@ -3641,10 +3646,6 @@ This
 system call Linux-specific
 and should not be used in programs intended to be portable.
 .SH NOTES
-Glibc does not provide a wrapper for this system call; call it using
-.BR syscall (2).
-See the example below.
-.PP
 The official way of knowing if
 .BR perf_event_open ()
 support is enabled is checking
-- 
2.31.1

