Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DCA7A3537F3
	for <lists+linux-man@lfdr.de>; Sun,  4 Apr 2021 13:59:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230444AbhDDL7x (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Apr 2021 07:59:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230410AbhDDL7x (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Apr 2021 07:59:53 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 74303C061756
        for <linux-man@vger.kernel.org>; Sun,  4 Apr 2021 04:59:47 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id x7so8588821wrw.10
        for <linux-man@vger.kernel.org>; Sun, 04 Apr 2021 04:59:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=V5uiLR+ON/9jELwFRyhOf85vS9zd2T+icii+8Xp6azA=;
        b=OE7c+WvmeQbYooaG5hbEWh0xF6wZ2WstdMgv2bMeVdzVQ3HDrLUIbhfSyqK4WJ9Knu
         A9DUiDfv3CWxfnL/H077FuGbnk/OI8DiwC32wyQuxWfqtRmtaDIjMSiEfLzq6AvIchpK
         vdxi6yF/D6qKKPNHqvL1Y5dxfGRKucJCUcbbLtz9+aS6AaFq4gMOqWDZ86nirhZF/b9Y
         HQzCJW2InUBEIbQmpEec4e5PP0/KXS62INTXRUHV44MXPbPAaJUCOgEUf5qMDpcpsXpA
         l2u9iRSKLBSOESuP000hkLhPwJCy6X0IoQfwiEaeGCpQ3fuT2zWykuQNvu/rxpwP8jP2
         fmfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=V5uiLR+ON/9jELwFRyhOf85vS9zd2T+icii+8Xp6azA=;
        b=qiom7/iyN5HcD+uwlZItHbd7PLUArJNRsLzDb7Icq2zAs7f6viXzdtQESDwU6LazL9
         3f2FX57/kljhGq7tpe/Or0I8oQLSPO2PGOT0eliK1C/kBruv6haipF+qu7Th3gdXtW+p
         W4YMf3CodB436R80mijr/ldX5nTW49/rIPh5+xu/BHKXpZGIOBqwuElpRRnJFtwdB1sV
         djhlG9P7h21XixLlRKrEGTu51EON1BcyzbLWn5OtrgHc6RXLj2FCwuEO4Dejk7eN19PY
         C/LCwoL8CeAUzFji6zN6IxhAbPW6IqJXBZYyl/kXRAxFK+XZi1s927rgQ3g0Nx2X/nxt
         6HLQ==
X-Gm-Message-State: AOAM530aCP308tsEz53NlsYBmQV5y/GUggkep92j3k9rCR6gyOBDZ1nP
        HUmf27kFO2VfEbQtuEoRJZ0=
X-Google-Smtp-Source: ABdhPJzpfASbk5Hxn5VCqFI8LgBMV6FWfOF01rtYyhUvqsThAhR8SN4RNs1L++LirA+vv8DMRRHupA==
X-Received: by 2002:a5d:5586:: with SMTP id i6mr2564455wrv.372.1617537586284;
        Sun, 04 Apr 2021 04:59:46 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id u2sm23786967wrp.12.2021.04.04.04.59.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Apr 2021 04:59:46 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v5 19/35] futex.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Sun,  4 Apr 2021 13:58:32 +0200
Message-Id: <20210404115847.78166-20-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210403194026.102818-1-alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

At the same time, document only headers that are required
for calling the function, or those that are specific to the
function:

<unistd.h> is required for the syscall() prototype.
<sys/syscall.h> is required for the syscall name SYS_xxx.
<linux/futex.h> is specific to this syscall.

However, uint32_t is generic enough that it shouldn't be
documented here.  The system_data_types(7) page already documents
it, and is more precise about it.  The same goes for timespec.

As a general rule a man[23] page should document the header that
includes the prototype, and all of the headers that define macros
that should be used with the call.  However, the information about
types should be restricted to system_data_types(7) (and that page
should probably be improved by adding types), except for types
that are very specific to the call.  Otherwise, we're duplicating
info and it's then harder to maintain, and probably outdated in
the future.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/futex.2 | 19 +++++++------------
 1 file changed, 7 insertions(+), 12 deletions(-)

diff --git a/man2/futex.2 b/man2/futex.2
index 389c25224..7a19e50d2 100644
--- a/man2/futex.2
+++ b/man2/futex.2
@@ -25,18 +25,16 @@ futex \- fast user-space locking
 .SH SYNOPSIS
 .nf
 .PP
-.B #include <linux/futex.h>
-.B #include <stdint.h>
-.B #include <sys/time.h>
+.BR "#include <linux/futex.h>" "      /* Definition of " FUTEX_* " constants */"
+.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
+.B #include <unistd.h>
 .PP
-.BI "long futex(uint32_t *" uaddr ", int " futex_op ", uint32_t " val ,
-.BI "          const struct timespec *" timeout , \
+.BI "long syscall(SYS_futex, uint32_t *" uaddr ", int " futex_op \
+", uint32_t " val ,
+.BI "             const struct timespec *" timeout , \
 " \fR  /* or: \fBuint32_t \fIval2\fP */"
-.BI "          uint32_t *" uaddr2 ", uint32_t " val3 );
+.BI "             uint32_t *" uaddr2 ", uint32_t " val3 );
 .fi
-.PP
-.IR Note :
-There is no glibc wrapper for this system call; see NOTES.
 .SH DESCRIPTION
 The
 .BR futex ()
@@ -1695,9 +1693,6 @@ and a sixth argument was added in Linux 2.6.7.
 .SH CONFORMING TO
 This system call is Linux-specific.
 .SH NOTES
-Glibc does not provide a wrapper for this system call; call it using
-.BR syscall (2).
-.PP
 Several higher-level programming abstractions are implemented via futexes,
 including POSIX semaphores and
 various POSIX threads synchronization mechanisms
-- 
2.31.0

