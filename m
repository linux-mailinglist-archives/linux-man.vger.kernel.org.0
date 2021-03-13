Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BE42D33A05C
	for <lists+linux-man@lfdr.de>; Sat, 13 Mar 2021 20:27:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234445AbhCMT0b (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 13 Mar 2021 14:26:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36156 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234392AbhCMTZ7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 13 Mar 2021 14:25:59 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 65399C061574;
        Sat, 13 Mar 2021 11:25:59 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id r10-20020a05600c35cab029010c946c95easo17093624wmq.4;
        Sat, 13 Mar 2021 11:25:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ELdom3QA9KtDMvn7b4rnXhEozrUJ/M/stF+XSkKHLwg=;
        b=M3pl3OcTlbdM0Sid43TgYS9RizRfYdL3Gp/BR33Sof8vDsC6+ToLqo79SXu9L3GNNX
         zPhMjqAtMnYFrQUdQiwwcxnHHs6QAQGE9uc5P+bsaDDn/T/lrTTkMAtVnZITCaJ6gOyg
         QuXSM+gv5U+hzow32YXRbw3U7YOwGql0fV6+xGLiOuKS1NQziVrtsZTnrCJnIJczyxCN
         13VXOuA5Hhwk07TgYvQ75oCsv7Jc+Jf/ox71IH102eXEcDjA6koGECv9aC4FMTjKSlrt
         FcwQfV2c2WKhtlljjb8pHghRmglO+wkpcN7sZu1mhpERqL6SSTJWQM9W9NP7wfx3+zvp
         NR2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ELdom3QA9KtDMvn7b4rnXhEozrUJ/M/stF+XSkKHLwg=;
        b=pP293+sS1Uzv1hPMl4jX0A7p5IHGj+M+KmoX3l0yiFga0FkK7IQNJHUYWiTE8pgX/5
         F1SjOqLSdfUAcAjBDMpZ8swDTGxjhiTSldHnWZynKCSm8X3TbZNdt86ll9sQnG3RpP4x
         IYl/pXph7Tl15IpwyoW9IuZFqzgdFAqzwthBzZcXHJjLjCeL230yWePy38FekPHUJ+bW
         1xeDFAgu2jg9OMjEffks0Ga1cxXGmlrhPghqqunZZpld9EPjPAj7TJQIOEEM92j6F/Lb
         Wl3yBy4XiCgZ+tSDWewUwWiXPk5i9zIPa0AHpjHvITkQuCZ2npOtPK72W1Jm5vwaGmPs
         a0Zg==
X-Gm-Message-State: AOAM532b7wcXGxapQFj/qtRiS9yKJpOea6KXcUYw+e2pH0nPJ2y0MLpE
        bEf5WIWlPDFDgzKmxol+waA=
X-Google-Smtp-Source: ABdhPJwyTmDL/rq88PSF7k7CcZENxH2pPePg+uuA365qwWo7crkb4mTyxer3LC5CdTBneL6n3MF/hg==
X-Received: by 2002:a7b:cb90:: with SMTP id m16mr18819776wmi.162.1615663558205;
        Sat, 13 Mar 2021 11:25:58 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id j136sm7670964wmj.35.2021.03.13.11.25.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Mar 2021 11:25:57 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        linux-kernel@vger.kernel.org, Florian Weimer <fweimer@redhat.com>
Subject: [RFC v3 11/17] futex.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Sat, 13 Mar 2021 20:25:21 +0100
Message-Id: <20210313192526.350200-12-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210214133907.157320-1-alx.manpages@gmail.com>
References: <20210214133907.157320-1-alx.manpages@gmail.com>
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
index e698178d2..a2486628b 100644
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
2.30.2

