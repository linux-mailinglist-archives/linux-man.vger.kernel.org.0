Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C705D35356C
	for <lists+linux-man@lfdr.de>; Sat,  3 Apr 2021 21:42:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236839AbhDCTmK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Apr 2021 15:42:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54998 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236821AbhDCTmK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Apr 2021 15:42:10 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CD322C0613E6
        for <linux-man@vger.kernel.org>; Sat,  3 Apr 2021 12:42:06 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id a6so1471414wrw.8
        for <linux-man@vger.kernel.org>; Sat, 03 Apr 2021 12:42:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=p0f8BoiZYLQmhvKOCDhjF7wsghptfqlQ/SkPDxqZjMU=;
        b=l89XRhpan7g6zyLZkIwwuYTgnDE4jIe3AOAXwF1F7GrsAdL1KF3EqSTBQUxTc1JM90
         bzBk3IERezxTVn57EoMyCYudcA9KtAiD5gxe+Dmw936Xi0tFgyvZ+6pXv0JNRFQdnv57
         Bfqh+7H5u2+nekgQ1R8Lb7X8rSaFGMnSmDqrI3ITNjAOlvXEDLdmYvv4CYQHUm8j7DLj
         lyZ+6bo6XwJ53D9QiB9jdYhzTxuaKrKDrHSg/i1ZEIfG29w8RF1JfoWaZUlYGwsrMX7z
         8U8r8yMJwWxTDk+gxayme2sB79i0IFGrD1GiDqkWm6/zbCBOncXobUu6Mi9K1VswcYh6
         60hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=p0f8BoiZYLQmhvKOCDhjF7wsghptfqlQ/SkPDxqZjMU=;
        b=Z/y621HVCod4evxTF53XxSoZEqXHcUcxYFwpP/QhbgnagrCqG4B+jdpmuaFjB+ODAt
         WGLJQVhJOcDgb5hach9EUuARZVeoxHa0mcwsMg/2zuYK5QoG9nvAhtYzoiAwcgtfbwRh
         8rBazW1Qf44nFgDqddbJm5gEHBtL2ThXMcIkwAubdWuTborNP8CHHByO+yJIub4rNRvw
         YBvNAA18gzCxsw+4TOzMdKZKnZyG7Nwvw/9+gpsr/Ktz2wTfCQOdpTtmzmTIP8vAJxyv
         B0VeRNfRUbbcffcoyGmVAn+xylP1wBei1DazVC8ERyoVMPzEP43N2OZx/tNcwHXdVT9/
         qjEA==
X-Gm-Message-State: AOAM533zz0rrCe9x0+FOwzxHjOo0dZyl02EIOcN+I+qQtOUQPOvIwwlp
        BYMGtOrQ1E2BZpQuuXFCJInzvJ/YIo0=
X-Google-Smtp-Source: ABdhPJz5tjDn4XnhJUjyCkIL5Jug5x/re9Kk+aOEbdtTv6sJdw31TG5fpztrr0VQ/tSFRbPEK/FcEA==
X-Received: by 2002:adf:f241:: with SMTP id b1mr2335431wrp.45.1617478925399;
        Sat, 03 Apr 2021 12:42:05 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id n1sm25211056wro.36.2021.04.03.12.42.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Apr 2021 12:42:05 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v4 26/35] delete_module.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Sat,  3 Apr 2021 21:40:18 +0200
Message-Id: <20210403194026.102818-27-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210403194026.102818-1-alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/delete_module.2 | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/man2/delete_module.2 b/man2/delete_module.2
index 174ef04d2..21c9e9d8d 100644
--- a/man2/delete_module.2
+++ b/man2/delete_module.2
@@ -28,12 +28,11 @@ delete_module \- unload a kernel module
 .SH SYNOPSIS
 .nf
 .BR "#include <fcntl.h>" "            /* Definition of " O_* " constants */"
+.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
+.BR "#include <unistd.h>
 .PP
-.BI "int delete_module(const char *" name ", unsigned int " flags );
+.BI "int syscall(SYS_delete_module, const char *" name ", unsigned int " flags );
 .fi
-.PP
-.IR Note :
-There is no glibc wrapper for this system call; see NOTES.
 .SH DESCRIPTION
 The
 .BR delete_module ()
-- 
2.31.0

