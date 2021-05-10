Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B63DC3796A9
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 19:57:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232654AbhEJR6G (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 May 2021 13:58:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54512 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233295AbhEJR6F (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 10 May 2021 13:58:05 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 57808C061574
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:57:00 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id n2so17589271wrm.0
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:57:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Pii6/qQgkvbHNo1ydpOp5ILPG6p8/mxZOmh0VJJh7ik=;
        b=kXDut6OjMNQwC2MWWIO84LI0YEtYon/Vsrfw7t/X/Fw8v7kaALGeHMov7lVQflwOlN
         mkDUKzYiNGZtmyrrTgAFlEbBb/azvPA4QG5uBg2+sPjrdGWNnsLajeSi2OSohedcvQoR
         T9igeglo5NgzELW5jFunsT0fnQOXI9zv6EzwAbI/fb30IpyzImfoQK61Yli2GMHkHo4V
         nnZtjA+4xiHCFX89hLmMEoWCKjilr0799GP1aDAtjXNw3zD0oHNo/rPvihZ6jYdSYJ+1
         kZY1wQKy+7kxKOrB9WKQthM2fbpgW92yGU52atY4/4nex6By0aAXq2iCQuYg9Ont7zgw
         Zltg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Pii6/qQgkvbHNo1ydpOp5ILPG6p8/mxZOmh0VJJh7ik=;
        b=XCk/zot0d8ArFnFRi4K7RgcnEUkT3fQUvncDtS54zUI9p/faiYoAPRiCtSxjWjpzHb
         X8qh+CvDwf9H1sXMTaO4iBKKEPyxBXw9JP7lvFli/0yUaeLrhOdMl5mmfSZWBxJoHI3L
         +QO52mYSIZB708iyjuYrzVslNcVQkCmkdNQ1DQ4SVsjlGyybfsjjkujoc2Xc8ponjxLs
         QbkzS89mVY1p2xEA4M/NYNCriTHmATFUV0tEiz91i64iL6J/huV6MuruP2Fhqb38HYpn
         lerHQi/Ev2W4idedvwXhqtAqrOoUaDkQGiNb3FDNB1pfQKM6l8k3WwVoKeahCcmYs8j0
         ao9w==
X-Gm-Message-State: AOAM532WEocRJ5iC108hAW7Jcw+0eT5BbhBNYzkoLsRBQuJPR283cbcf
        uxpuKG5M2PNisxxP8Uveq1Q=
X-Google-Smtp-Source: ABdhPJwATkPssAaYhSq/shtUGd8OjVlgaraz5iYMZhDlqNqU8Qi+0D6UhEy77tAlWZfmqXNjhGny2A==
X-Received: by 2002:adf:e412:: with SMTP id g18mr32469741wrm.205.1620669419160;
        Mon, 10 May 2021 10:56:59 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id m13sm24318830wrw.86.2021.05.10.10.56.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 May 2021 10:56:58 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Florian Weimer <fweimer@redhat.com>, Jakub Wilk <jwilk@jwilk.net>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 29/39] pidfd_getfd.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Mon, 10 May 2021 19:55:38 +0200
Message-Id: <20210510175546.28445-30-alx.manpages@gmail.com>
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
 man2/pidfd_getfd.2 | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/man2/pidfd_getfd.2 b/man2/pidfd_getfd.2
index a4bf5bfa1..71d7ae4db 100644
--- a/man2/pidfd_getfd.2
+++ b/man2/pidfd_getfd.2
@@ -27,11 +27,18 @@
 pidfd_getfd \- obtain a duplicate of another process's file descriptor
 .SH SYNOPSIS
 .nf
-.BI "int pidfd_getfd(int " pidfd ", int " targetfd ", unsigned int " flags );
+.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
+.B #include <unistd.h>
+.PP
+.BI "int syscall(SYS_pidfd_getfd, int " pidfd ", int " targetfd ,
+.BI "            unsigned int " flags );
 .fi
 .PP
 .IR Note :
-There is no glibc wrapper for this system call; see NOTES.
+glibc provides no wrapper for
+.BR pidfd_getfd (),
+necessitating the use of
+.BR syscall (2).
 .SH DESCRIPTION
 The
 .BR pidfd_getfd ()
@@ -121,9 +128,6 @@ first appeared in Linux 5.6.
 .BR pidfd_getfd ()
 is Linux specific.
 .SH NOTES
-Glibc does not provide a wrapper for this system call; call it using
-.BR syscall (2).
-.PP
 For a description of PID file descriptors, see
 .BR pidfd_open (2).
 .PP
-- 
2.31.1

