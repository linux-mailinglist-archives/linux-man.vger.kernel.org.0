Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8CE7837968C
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 19:56:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231301AbhEJR50 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 May 2021 13:57:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54298 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231827AbhEJR5Y (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 10 May 2021 13:57:24 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DAF85C061574
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:56:18 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id y124-20020a1c32820000b029010c93864955so11656988wmy.5
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:56:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=PyVoAYNT9D6Z7Sj/FgFphnsjcqRuTK3M36+LOKWAPbc=;
        b=KOI+v+8TJoBe/oSByD6C4y46Rp785ZFqQxKNZ2wdxDwhWTy4zshdkVXMC2WcMcvkj5
         c0xK+JlTGmLOwvyoZVGdvsfzinNqvZivZlPTsWUsHWYH18ZRXmfHS4QnU7Y7b9eThxdp
         ooAYT9R6ZdjOsLlLI2ZXA9MIIBoFQ98gJnc3eBHFi7XWE+KuiWTaXn98YpHjsdceA5xa
         SdTgvcsmD0iwjuAv1CsBQiry2hbb8hKPxozDJ5YoECgIheh+qO7++4eec3xkcnfb7sQG
         fqR73+kLp86kC7DvJ/v2DPMBTJ/NQW32dMcfq4ZhbReG+ox5dCUzfUNfDU1pv/hyBQGP
         AT6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=PyVoAYNT9D6Z7Sj/FgFphnsjcqRuTK3M36+LOKWAPbc=;
        b=maax5p7Zw1wNlymheuZCHcGTKRAwxmo76uSqP4sJd8BZ46lEt6EBBMs9Imq/vSiAen
         sqTIgMsHlJgEsedHQpsUL5LO2GH00IqjGd0byNZwKEbG3juOcbTmyV+vOgwt6XIjp5d9
         PJpdAvV6rTsLRKpeUAQGyQCUVBqS4ZBH5XI8JBLtLdAaaK+Sgp9Z1YNb3xB8iiBCNanI
         qXjJal/UDXv9nB14l0oDOFeHGxyrWULOmsZ2b+QFzd57hiW7ypcbLKJLF/7ymT9ukRg+
         Fr/SJD7Rv/tHvuXCLp2VE9gyteb8hFxxDylTFDOfyXQ3b2zSpnhsJShGy+dH23P2fmlp
         Bdrg==
X-Gm-Message-State: AOAM531pU6fHaS/PEiEc1WUw5YJWRl9Lss5eRjpBfwcxOYJfch2W5pGq
        0zJL0y+U/UWf7OAPFIemELM=
X-Google-Smtp-Source: ABdhPJyi3XnFvyZbL65mzsCyIu7SLEyCdz9QCGXgBm6kBOYoica4tGpMMlQNyI3rB0PbmuuDCeekNg==
X-Received: by 2002:a1c:4382:: with SMTP id q124mr27331306wma.63.1620669377667;
        Mon, 10 May 2021 10:56:17 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id m13sm24318830wrw.86.2021.05.10.10.56.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 May 2021 10:56:17 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Florian Weimer <fweimer@redhat.com>, Jakub Wilk <jwilk@jwilk.net>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 01/39] futex.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Mon, 10 May 2021 19:55:10 +0200
Message-Id: <20210510175546.28445-2-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210510175546.28445-1-alx.manpages@gmail.com>
References: <20210510175546.28445-1-alx.manpages@gmail.com>
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
 man2/futex.2 | 21 +++++++++++----------
 1 file changed, 11 insertions(+), 10 deletions(-)

diff --git a/man2/futex.2 b/man2/futex.2
index 389c25224..ada96c517 100644
--- a/man2/futex.2
+++ b/man2/futex.2
@@ -25,18 +25,22 @@ futex \- fast user-space locking
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
 .PP
 .IR Note :
-There is no glibc wrapper for this system call; see NOTES.
+glibc provides no wrapper for
+.BR futex (),
+necessitating the use of
+.BR syscall (2).
 .SH DESCRIPTION
 The
 .BR futex ()
@@ -1695,9 +1699,6 @@ and a sixth argument was added in Linux 2.6.7.
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
2.31.1

