Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BEDBC3796B4
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 19:57:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233267AbhEJR6Y (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 May 2021 13:58:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54598 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233313AbhEJR6W (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 10 May 2021 13:58:22 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1FB7EC06175F
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:57:15 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id h4so17511450wrt.12
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:57:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=A9Skuyv8icG5wWi2Xq9JnNslOzxsEpSunNTkTs0QelM=;
        b=MVgz8Lti8LziYCkVBvMV4Y9k6a7ixNM9G9Dl0Kxeca+cnTjetCb/RMTGfKawChP0yk
         Uv8WYSxm6Psn5UXJt4YqcMOrU5sIQ8d1M5AD23prf7bLhoNpDZIziUtlJuCcBf/Tu+aC
         JIfaMdxDzwi778xvtEcH8yre7DeRwg2eQYkkGTe4A9nArOoVg+eRuuuKsZU/V6nNbs6I
         Y9bnfCy3PaOvITjZEg+IzVs5ijlXXK0bIwyItvJLQOysjSnicPoiDOxkmQGfMDtayAVl
         J+JL5NDSG/Y69i1JyeqVAz6XlUzKSrSzZQ9qrbrUAq7213iRdwbDC5yRo5kzH6C7lknE
         hSNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=A9Skuyv8icG5wWi2Xq9JnNslOzxsEpSunNTkTs0QelM=;
        b=TMxoujixawHE7Nk2BEIU7ZVPTeQeNiVFzx5SsGuSFHhawNF8yyzO7WzecO0CiXZq5k
         aad5q7XVd8wVdPCKc1HXMakY3CSSRCY1ru03lu82Mwy8pmYTyHFDX/D2w8e/Lm120u6z
         4wSh5ewKBOKlrByfHqRngG+yK/W4g0ZQsVHI7gvE7/N3DJyQxEd+TGrBUVKR+jfWlfEc
         X5gI7IodfYMmLmnXWpA+xlOkHLNnAj4Yle0rIW3NrauJX6rH4oyDfBhbupx8tEJDEQJ0
         ZYc6fmsJi+mxCqeVrVApPdtEbPjh4B8Iyabxe1ALXEIAfJF39ENApCxBfIc84YeHYhun
         qNCw==
X-Gm-Message-State: AOAM531V5p2vS2kAhqvRSi3CRlQ1r+7nQy9eeu57ZURbWPatiO9H6PTN
        eSRx2UVViGNx0MumsGtw924=
X-Google-Smtp-Source: ABdhPJyO0OWEVr+mj7Oqeo4HpP3N1i/o0o+ucsraRX3i4epQJy7avRpOh1RowQTOKLuycUOI5pdevA==
X-Received: by 2002:a5d:6648:: with SMTP id f8mr32962985wrw.396.1620669433929;
        Mon, 10 May 2021 10:57:13 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id m13sm24318830wrw.86.2021.05.10.10.57.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 May 2021 10:57:13 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Florian Weimer <fweimer@redhat.com>, Jakub Wilk <jwilk@jwilk.net>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 39/39] reboot.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Mon, 10 May 2021 19:55:48 +0200
Message-Id: <20210510175546.28445-40-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210510175546.28445-1-alx.manpages@gmail.com>
References: <20210510175546.28445-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Explain also why are headers needed.
And some ffix.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/reboot.2 | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/man2/reboot.2 b/man2/reboot.2
index 8a9da5904..74e8f5caa 100644
--- a/man2/reboot.2
+++ b/man2/reboot.2
@@ -30,21 +30,23 @@
 reboot \- reboot or enable/disable Ctrl-Alt-Del
 .SH SYNOPSIS
 .nf
-/* Since kernel version 2.1.30 there are symbolic names LINUX_REBOOT_*
+.RB "/* Since kernel version 2.1.30 there are symbolic names " LINUX_REBOOT_*
    for the constants and a fourth argument to the call: */
 .PP
+.BR "#include <linux/reboot.h>  " \
+"/* Definition of " LINUX_REBOOT_* " constants */"
+.BR "#include <sys/syscall.h>   " "/* Definition of " SYS_* " constants */"
 .B #include <unistd.h>
-.B #include <linux/reboot.h>
 .PP
-.BI "int reboot(int " magic ", int " magic2 ", int " cmd ", void *" arg );
+.BI "int syscall(SYS_reboot, int " magic ", int " magic2 ", int " cmd ", void *" arg );
 .PP
 /* Under glibc and most alternative libc's (including uclibc, dietlibc,
    musl and a few others), some of the constants involved have gotten
-   symbolic names RB_*, and the library call is a 1-argument
+.RB "   symbolic names " RB_* ", and the library call is a 1-argument"
    wrapper around the system call: */
 .PP
+.BR "#include <sys/reboot.h>    " "/* Definition of " RB_* " constants */"
 .B #include <unistd.h>
-.B #include <sys/reboot.h>
 .PP
 .BI "int reboot(int " cmd );
 .fi
-- 
2.31.1

