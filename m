Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 778143A4D95
	for <lists+linux-man@lfdr.de>; Sat, 12 Jun 2021 10:31:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230400AbhFLIdt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Jun 2021 04:33:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35984 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229584AbhFLIdt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Jun 2021 04:33:49 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EDA36C061574
        for <linux-man@vger.kernel.org>; Sat, 12 Jun 2021 01:31:49 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id n7so2341411wri.3
        for <linux-man@vger.kernel.org>; Sat, 12 Jun 2021 01:31:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=HAobOVRCPZhcGIVtjuNYshaPN8hQXyMwSc4qHSmYeEM=;
        b=RQEKfNL7Uz1rkvOrdRCrYb2GAfRrfF3qF7pi4e0FzGkIBK2M1Z529SFWu+N9XtZvkK
         FwSq+qh0g1YZWxIQ3fgh3Sx0Fl6dq0uWZe1Xso3J5Z4ChjzOY5Xe9ukRnIcN4xPQgMMy
         hoZcebTP8tTTiexQypwFm9urlifj6BPUeLLb3SNK0xkf3jUONqgnwRSWQ38avA9DJP8f
         7sz/NG4v2ODMnQD1emXQ5Yyx9ULUHll3+jtGt6yDqVkzZFpz3BAf9msLaVw3jKu3JElT
         ldDT0fBpaCWeTfPZAKq0rpmT2ONqv5e2cLg7e0mUY7AcQ170BCeMP7NRnFwM2iC1F8Qg
         PzrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=HAobOVRCPZhcGIVtjuNYshaPN8hQXyMwSc4qHSmYeEM=;
        b=Zld+KGVZeJ2ANp1go4k2hEPAYzGpHExYeUMWvAZ8x7CzhgKhYJLNWkF+sZREv3Crhw
         35RbY9NZ+6N4aURuN0VvIA1HsSpCEXEASaPsS5so7j+UGf8xi1dg3SnM1lYRbvVi4PgJ
         AEPdeg8k3Q3wNslJS3/iUYbzjEmMGgrJlGi91fnpkr32pdrWz2pmIbVuoy3PEOJHfuMb
         IKPKGGAoVpQ7KpHm7ZDSiQZW65QwxhfzTwY7uKUx9/3LkbmRTDWqNxDr5S/y4dunQgR+
         60g1KuRcsp+TBfrHggcI4AC0+VUF5z2dF08+00hG0it0/wRRdpqiL9AHdgqCuSusVcME
         qcgw==
X-Gm-Message-State: AOAM533jp8dvoQX9Lic72URiKIwenAbN3JJRr7+ruj4LfGjsnbjOvUJ1
        W/iV1zKCtLVvEiZCUEvpYGU=
X-Google-Smtp-Source: ABdhPJxv+oYhL/ACbeuCS0Nfo+TJB6eJqF2ZN27ttlnHDdPEZxwog+HR45qgo6ib1Zh+ddutfpmqFA==
X-Received: by 2002:adf:fe86:: with SMTP id l6mr8374505wrr.106.1623486708618;
        Sat, 12 Jun 2021 01:31:48 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id c12sm11165110wrr.90.2021.06.12.01.31.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Jun 2021 01:31:48 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, Kees Cook <keescook@chromium.org>,
        Tyler Hicks <tyhicks@canonical.com>,
        Will Drewry <wad@chromium.org>
Subject: [PATCH 01/28] seccomp.2: Document why each header is needed
Date:   Sat, 12 Jun 2021 10:31:18 +0200
Message-Id: <20210612083145.12485-2-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210612083145.12485-1-alx.manpages@gmail.com>
References: <20210612083145.12485-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
Cc: Kees Cook <keescook@chromium.org>
Cc: Tyler Hicks <tyhicks@canonical.com>
Cc: Will Drewry <wad@chromium.org>
Cc: Michael Kerrisk <mtk.manpages@gmail.com>
---
 man2/seccomp.2 | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/man2/seccomp.2 b/man2/seccomp.2
index 35eb1dd1f..53f473a78 100644
--- a/man2/seccomp.2
+++ b/man2/seccomp.2
@@ -31,11 +31,11 @@
 seccomp \- operate on Secure Computing state of the process
 .SH SYNOPSIS
 .nf
-.B #include <linux/seccomp.h>
-.B #include <linux/filter.h>
-.B #include <linux/audit.h>
-.B #include <linux/signal.h>
-.B #include <sys/ptrace.h>
+.BR "#include <linux/seccomp.h>" "  /* Definition of " SECCOMP_* " constants */"
+.BR "#include <linux/filter.h>" "   /* Definition of " "struct sock_fprog" " */"
+.BR "#include <linux/audit.h>" "    /* Definition of " AUDIT_* " constants */"
+.BR "#include <linux/signal.h>" "   /* Definition of " SIG* " constants */"
+.BR "#include <sys/ptrace.h>" "     /* Definition of " PTRACE_* " constants */"
 .\" Kees Cook noted: Anything that uses SECCOMP_RET_TRACE returns will
 .\"                  need <sys/ptrace.h>
 .PP
-- 
2.32.0

