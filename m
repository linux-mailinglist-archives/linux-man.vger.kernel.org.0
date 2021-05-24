Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DBB2638F2E1
	for <lists+linux-man@lfdr.de>; Mon, 24 May 2021 20:20:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233637AbhEXSVc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 24 May 2021 14:21:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56868 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233729AbhEXSVc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 24 May 2021 14:21:32 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD536C061756
        for <linux-man@vger.kernel.org>; Mon, 24 May 2021 11:20:03 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id y14so27408637wrm.13
        for <linux-man@vger.kernel.org>; Mon, 24 May 2021 11:20:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=bbag5TiTRreoMleUEqblQv561cKsd06tpIDWjJxFxbk=;
        b=F1JOFvro/j4yHvsg/VKKyknTE1aoO+lhT0l31+c54kxqrVfNgYNcb1pmsj6eltBUFQ
         8JZteG9xfGzv7aFa+oty9zZo33DbP6+AWqKv2C2IjEMldLOEp4YE4P31AzR+TwQeOJM9
         OVPcnbAH1tl3wWl5n3CvTZUckm3eR9tLxHFvERi2yIoqH2MQNkWgykPkL4+IagF+JFqQ
         5G8lcYc2TzQA6a7MjhTqDP20dCcbIb42G93fkP+6Fr71e35z1URQnEh9TAnYtUZDjQyM
         xRz4NqvLfvR2xVySYgy9Ypz+BrMcIE95VgiCCgLIn/P7P8RxAybpANHhL9w1UVlKfPZY
         2XSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=bbag5TiTRreoMleUEqblQv561cKsd06tpIDWjJxFxbk=;
        b=NLHaCHKoSHKPhuAfSi34uqcJYGbZtfkP/1Ed/fo20HhDIjc2/aaS/O94sd8FsRM+Mb
         rQuvh1WidvuzcTWa0//WjvkVLURbFsyEPCXWjaDOS6fIftdTVkIj586++HCRjKqOweTs
         YLoiyHSq+C7o0F/pDdZ1/JLJc3TZTbUTW8itEvH9a4P42FRKHY9NLwVIV6HFJWVUF7oh
         8eO0A55776ja3p8j6PY566/4O6wrOVQNRgkakf7D5/PXIDj5TmGMyak4ryzcdATuPU9s
         9lQgD0CAwLg40IgA7E6XRo0bIj7JdoyvS5fzg48YE7S37a5YRsZiDFB7vhGbXX5O3G8V
         mArA==
X-Gm-Message-State: AOAM5306ZfNHUl12IbwDw1jdcgGtm7/PyoNHZzI93WkpWCYBubZ7JdOG
        LUTPnZs+/VH5ctceQ8t8CQI=
X-Google-Smtp-Source: ABdhPJySfHfwieQBr7tXyIxgi4uXhNUwzZQI114AoIHI12QHOSuXPCUExyuwXJ/0CCsg3g+Pv+iwdQ==
X-Received: by 2002:adf:db42:: with SMTP id f2mr23423683wrj.5.1621880402347;
        Mon, 24 May 2021 11:20:02 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id z18sm13522038wro.33.2021.05.24.11.20.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 May 2021 11:20:02 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH v2 10/10] socketcall.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Mon, 24 May 2021 20:19:47 +0200
Message-Id: <20210524181947.459437-10-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210521232553.161080-10-alx.manpages@gmail.com>
References: <20210521232553.161080-10-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/socketcall.2 | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/man2/socketcall.2 b/man2/socketcall.2
index 8ef3d65d3..883c2aafe 100644
--- a/man2/socketcall.2
+++ b/man2/socketcall.2
@@ -27,13 +27,18 @@
 socketcall \- socket system calls
 .SH SYNOPSIS
 .nf
-.B #include <linux/net.h>
+.BR "#include <linux/net.h>" "        /* Definition of " SYS_* " constants */"
+.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_socketcall " */"
+.B #include <unistd.h>
 .PP
-.BI "int socketcall(int " call ", unsigned long *" args );
+.BI "int syscall(SYS_socketcall, int " call ", unsigned long *" args );
 .fi
 .PP
 .IR Note :
-There is no glibc wrapper for this system call; see NOTES.
+glibc provides no wrapper for
+.BR socketcall (),
+necessitating the use of
+.BR syscall (2).
 .SH DESCRIPTION
 .BR socketcall ()
 is a common kernel entry point for the socket system calls.
@@ -156,10 +161,6 @@ T}
 This call is specific to Linux, and should not be used in programs
 intended to be portable.
 .SH NOTES
-Glibc does not provide a wrapper for this system call;
-in the unlikely event that you want to call it directly, do so using
-.BR syscall (2).
-.PP
 On some architectures\(emfor example, x86-64 and ARM\(emthere is no
 .BR socketcall ()
 system call; instead
@@ -198,3 +199,4 @@ and also provides a (very) small performance improvement.
 .BR shutdown (2),
 .BR socket (2),
 .BR socketpair (2)
+
-- 
2.31.1

