Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EDC7838D1F4
	for <lists+linux-man@lfdr.de>; Sat, 22 May 2021 01:26:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230148AbhEUX1b (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 May 2021 19:27:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50294 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230157AbhEUX1a (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 May 2021 19:27:30 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 294EAC0613CE
        for <linux-man@vger.kernel.org>; Fri, 21 May 2021 16:26:06 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id u5-20020a7bc0450000b02901480e40338bso7517265wmc.1
        for <linux-man@vger.kernel.org>; Fri, 21 May 2021 16:26:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=jMbaKiI/1KV/Brx27wIUBZB3avCJW+j6chZMAmom+Lw=;
        b=ELu4s/6/nCJ1SNITYJBhvDx3Wh3F98hCeTnS33tr5akbJaUCodwbFf3QoWSEYwHN/A
         cnNHxjyX2B5e3i4vsHN8TOOdTIB8odgQTfoz5eCOe980c6Z3EfuoGvox9MHXpI2FJr+c
         rOq9Nt+arFYcjNmLDgypRCF8mYVFgB/a/YX1BRDErXr3tsCSx7VeCq6SCCh0R3XHq7lJ
         0Fh56lyH9+bfVfmeMvi0dIrGSRz+HR1UmBiVLRmJ747QyrdMOmtNn9upIh3D0edApH/e
         zWq0wQYiazl7LGO+qqTl9wrdhce9J/ZD2EDjk7mo8KbFYVkvvALMPaw9BZ0ExhE+vXb7
         WYSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=jMbaKiI/1KV/Brx27wIUBZB3avCJW+j6chZMAmom+Lw=;
        b=ktiYv5ijs/4CwnBzDWPsb9mt2UlNEEgHxsFizZEjAdX6Vie0lRZWnb39JYAV/UkmrM
         FDPt/LPtmAXBz0dKgETIfbrgganXmK7evhHNDXzfXcjgSD8xhsV63P0GOI0B8NmCgBx1
         hDmOjIXsStnW91knf6p7w1KZhm6lA2226Z1cOcM2UWdKX4G3QCdrE5BFwA8U/flKx1Ul
         Z67tBtMAmijFZJwd/PD+FpgteuvYApJLpWlkiF7Y/qlf1move51PW/dlDpHCCAIpbTvA
         ZtfBNGTNWzCh2AXNgWLIfAQ8SfdLcwSfQnzXZJfGRoRcB2oTWr/AJjKAKA0RVojyAENc
         /LeA==
X-Gm-Message-State: AOAM531CDNpqkIVQeAvTSGQvsq99l+jUs3O9qijqtfnY73Ut5zoBx30w
        18XUbZwdzcMKkVj0XxUhx/U=
X-Google-Smtp-Source: ABdhPJyP25l+NQmONKZfUjCLdKZqyma/xTxfDVUnvTeN+dmJvk4wMtLMDMaznCTSeF1AG7lFLh9H2g==
X-Received: by 2002:a1c:6a08:: with SMTP id f8mr10838824wmc.143.1621639564843;
        Fri, 21 May 2021 16:26:04 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id z12sm1150639wmc.5.2021.05.21.16.26.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 May 2021 16:26:04 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 10/10] socketcall.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Sat, 22 May 2021 01:25:53 +0200
Message-Id: <20210521232553.161080-10-alx.manpages@gmail.com>
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
 man2/socketcall.2 | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/man2/socketcall.2 b/man2/socketcall.2
index 8ef3d65d3..f632ba011 100644
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
+.BR socketcall (2),
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
-- 
2.31.1

