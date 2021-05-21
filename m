Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6968C38D1EB
	for <lists+linux-man@lfdr.de>; Sat, 22 May 2021 01:26:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230144AbhEUX11 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 May 2021 19:27:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50276 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229989AbhEUX11 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 May 2021 19:27:27 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A5F4C0613CE
        for <linux-man@vger.kernel.org>; Fri, 21 May 2021 16:26:02 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id u4-20020a05600c00c4b02901774b80945cso8242480wmm.3
        for <linux-man@vger.kernel.org>; Fri, 21 May 2021 16:26:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=YJfQkdmZ+4g59dmxI1x4XoQtDvYKoXuBWqG/RKOiyIM=;
        b=Q/p8iZ9aktSD+HTTedFawIp4xJgLxeYIJ2nKjXCptzqXcM2cmCxwL6GEBF7B+M1uJ6
         qtvPsxpnHJoeD7JSV7AxGS9D1rwpnjF3xUtDMCLypkeyYkTezmHwfmiVCu7ihQgCeekS
         ErR1FfU/ykvl657kvydK0FygMiD6E9Pkj62d7qA3vvJE9xKWQn1Pq0km7/+urlLbGtjI
         HvgkPKVpuEzjujWPfLDP2ddP08NMJJbQrgeKB2/lej2DHq7WxPhoh2Krt9/dxPaq2BjU
         o6ANdada45G9qeSCJGCfG7YWc3xLGwkJWTew5QNY/oACdMr0fi1vOes3Fi3J+idFsuuA
         ZQwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=YJfQkdmZ+4g59dmxI1x4XoQtDvYKoXuBWqG/RKOiyIM=;
        b=rMjXgKa9nG0MfhDDNeHSDTxk0gKpMIjpGERQu5RAEcA4C75rEHZ4GjiPVstImG1osD
         Y7sg3kpbwUqX1wuBcmSLw18Fkq0kwxbHDnhOH/Gapb78rAtGO6U8WBHdDRzdQBlhXhCm
         5kdGi0dmLEniV3/gqTSB7bH8qfIYMu8vmIpxxTz23pCMmjHANh2VwD8qy5ukROd8fj/5
         K11jygBrLLTALZPFJF10BqoV5bQWsQJ6Sw0U/K8h4FeFf5hr8qqe4kEny8rsI+N8Ms2k
         gEuGZLWcLT+TOuwJZxbXMQhreD+bNMYOB9uMMdJOtykLWLg6Mnvh3hevSkgf/yN48wOU
         NNMA==
X-Gm-Message-State: AOAM531ZAT14tYe18vlyQSQ2O78ss+QhjbzkzXho3KmhOpwKbdCGuLsg
        I/IMV0uUbDhsGGFofMV4I2I=
X-Google-Smtp-Source: ABdhPJxIaVz4mq2nUEEYZBqPj7EJVbitxwaPIf/0IhpOmbBrNIu/1s8InBjvN1qeenZLx+36BkcBqw==
X-Received: by 2002:a05:600c:218c:: with SMTP id e12mr11405786wme.16.1621639561172;
        Fri, 21 May 2021 16:26:01 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id z12sm1150639wmc.5.2021.05.21.16.26.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 May 2021 16:26:00 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 05/10] set_thread_area.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Sat, 22 May 2021 01:25:48 +0200
Message-Id: <20210521232553.161080-5-alx.manpages@gmail.com>
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
 man2/set_thread_area.2 | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/man2/set_thread_area.2 b/man2/set_thread_area.2
index 284dea390..43f3009f7 100644
--- a/man2/set_thread_area.2
+++ b/man2/set_thread_area.2
@@ -11,28 +11,31 @@
 get_thread_area, set_thread_area \- manipulate thread-local storage information
 .SH SYNOPSIS
 .nf
-.B #include <linux/unistd.h>
+.BR "#include <sys/syscall.h>" "     /* Definition of " SYS_* " constants */"
+.B #include <unistd.h>
 .PP
 .B #if defined __i386__ || defined __x86_64__
-.B # include <asm/ldt.h>
+.BR "# include <asm/ldt.h>" "        /* Definition of " "struct user_desc" " */"
 .PP
-.BI "int get_thread_area(struct user_desc *" u_info );
-.BI "int set_thread_area(struct user_desc *" u_info );
+.BI "int syscall(SYS_get_thread_area, struct user_desc *" u_info );
+.BI "int syscall(SYS_set_thread_area, struct user_desc *" u_info );
 .PP
 .B #elif defined __m68k__
 .PP
-.B "int get_thread_area(void);"
-.BI "int set_thread_area(unsigned long " tp );
+.B "int syscall(SYS_get_thread_area);"
+.BI "int syscall(SYS_set_thread_area, unsigned long " tp );
 .PP
 .B #elif defined __mips__
 .PP
-.BI "int set_thread_area(unsigned long " addr );
+.BI "int syscall(SYS_set_thread_area, unsigned long " addr );
 .PP
 .B #endif
 .fi
 .PP
 .IR Note :
-There are no glibc wrappers for these system calls; see NOTES.
+glibc provides no wrappers for these system calls,
+necessitating the use of
+.BR syscall (2).
 .SH DESCRIPTION
 These calls provide architecture-specific support for a thread-local storage
 implementation.
@@ -172,10 +175,7 @@ and
 are Linux-specific and should not be used in programs that are intended
 to be portable.
 .SH NOTES
-Glibc does not provide wrappers for these system calls,
-since they are generally intended for use only by threading libraries.
-In the unlikely event that you want to call them directly, use
-.BR syscall (2).
+These system calls are generally intended for use only by threading libraries.
 .PP
 .BR arch_prctl (2)
 can interfere with
-- 
2.31.1

