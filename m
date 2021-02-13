Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7348C31AE75
	for <lists+linux-man@lfdr.de>; Sun, 14 Feb 2021 00:12:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229710AbhBMXL4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 13 Feb 2021 18:11:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60762 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229716AbhBMXLx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 13 Feb 2021 18:11:53 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EBE52C06178B
        for <linux-man@vger.kernel.org>; Sat, 13 Feb 2021 15:10:43 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id b3so4261211wrj.5
        for <linux-man@vger.kernel.org>; Sat, 13 Feb 2021 15:10:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=IWYx3j3WtLaNnWbTOoI7n58QOwvCVHp5IFghN7+GVV8=;
        b=AAfgwHtrMc5cOs8Mg7MPKwOQpZ5Pc38ehdKFxhxGP1tPThD1f5hoeTr56etpCDGkNc
         p0SjlMn8oQ03TKL40qq9Nn7ZfwiaEzoC+exKqzearLI9N7f2/GT/qK5LcyTQlOImiqvB
         Dwlns0FUPtJKQempYPrwav+z5nNhNwZd640pKrrxeIEBLac3/ru5ccJ0nxt7dkLFCBmt
         j9osRDvwf6zkMCKFkKL5eUN8Bt6+/pNGmdS4IWVDbdgG+0ZqZOsQIjOsxIIXWQsoXFmY
         cR7OFAoNDdXShaXHgptu9yd9Dctd90un+wxy5VjxKxw5yURLpbTeYXDiUj7kIIyGTobo
         7RLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=IWYx3j3WtLaNnWbTOoI7n58QOwvCVHp5IFghN7+GVV8=;
        b=TXBUOjtlCm7uV8RangrR7YFWNm9EdRLqHzVEpIrFlaGCVU5d6ttaimo3VT9qZUuhtQ
         XpMUlM06utNiKwwxeeFMvD2rsYU0/KYwCrBpAxD74Hvh60JhHkUUtDxhLVH2ECwXKHqR
         NZifn17wvi8Q565iw+X8NXATl0TxAlHF5fu+VE6qk6RrVI/s4kzAPohoie47wI2rKPTX
         HF6TXSSq+AGgL4UhyLiqEoJKKZo4OT8Jxq0J2GJODeCU64esauMEkbDFBzzKB2QiJNQj
         KHDNJFFb/2j0ipO7sEMydYvO/8VUsmSMYv21SYlc2UWol2eoMJguNWT4dpYLliEP5m80
         gVsA==
X-Gm-Message-State: AOAM533lesPxU8NEj/vXX5HNdybvShFC0Yzjn8HA15d5pRiCAJ4GhgtN
        KLoMgOEXQS595HR06xX5zfc=
X-Google-Smtp-Source: ABdhPJxoIAvU7a1st1+PFgxLdCo83KraMKIP77WDj1sliKmop7GDzUEt+sYusyI5/OMmItN1ySedqg==
X-Received: by 2002:a5d:4bce:: with SMTP id l14mr10850496wrt.256.1613257842777;
        Sat, 13 Feb 2021 15:10:42 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id 64sm21011878wrc.50.2021.02.13.15.10.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Feb 2021 15:10:42 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 06/14] select.2: SYNOPSIS: Use 'restrict' in prototypes
Date:   Sun, 14 Feb 2021 00:10:16 +0100
Message-Id: <20210213231024.440020-7-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210213231024.440020-1-alx.manpages@gmail.com>
References: <20210213231024.440020-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

POSIX specifies that the parameters of [p]select()
shall be 'restrict'.  Glibc uses 'restrict' too.
Let's use it here too.

......

.../glibc$ grep_glibc_prototype select
misc/sys/select.h:101:
extern int select (int __nfds, fd_set *__restrict __readfds,
		   fd_set *__restrict __writefds,
		   fd_set *__restrict __exceptfds,
		   struct timeval *__restrict __timeout);
.../glibc$ grep_glibc_prototype pselect
misc/sys/select.h:113:
extern int pselect (int __nfds, fd_set *__restrict __readfds,
		    fd_set *__restrict __writefds,
		    fd_set *__restrict __exceptfds,
		    const struct timespec *__restrict __timeout,
		    const __sigset_t *__restrict __sigmask);
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/select.2 | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/man2/select.2 b/man2/select.2
index 02596b2d0..0f6fea51c 100644
--- a/man2/select.2
+++ b/man2/select.2
@@ -45,17 +45,19 @@ synchronous I/O multiplexing
 .nf
 .B #include <sys/select.h>
 .PP
-.BI "int select(int " nfds ", fd_set *" readfds ", fd_set *" writefds ,
-.BI "           fd_set *" exceptfds ", struct timeval *" timeout );
+.BI "int select(int " nfds ", fd_set *restrict " readfds ,
+.BI "           fd_set *restrict " writefds ", fd_set *restrict " exceptfds ,
+.BI "           struct timeval *restrict " timeout );
 .PP
 .BI "void FD_CLR(int " fd ", fd_set *" set );
 .BI "int  FD_ISSET(int " fd ", fd_set *" set );
 .BI "void FD_SET(int " fd ", fd_set *" set );
 .BI "void FD_ZERO(fd_set *" set );
 .PP
-.BI "int pselect(int " nfds ", fd_set *" readfds ", fd_set *" writefds ,
-.BI "           fd_set *" exceptfds ", const struct timespec *" timeout ,
-.BI "           const sigset_t *" sigmask );
+.BI "int pselect(int " nfds ", fd_set *restrict " readfds ,
+.BI "           fd_set *restrict " writefds ", fd_set *restrict " exceptfds ,
+.BI "           const struct timespec *restrict " timeout ,
+.BI "           const sigset_t *restrict " sigmask );
 .fi
 .PP
 .RS -4
-- 
2.30.0

