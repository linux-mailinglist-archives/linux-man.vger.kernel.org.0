Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5CDD537968D
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 19:56:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232814AbhEJR51 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 May 2021 13:57:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54308 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232253AbhEJR50 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 10 May 2021 13:57:26 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 74621C06175F
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:56:20 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id n205so9703971wmf.1
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:56:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=QU9rVUATvKWYj/3e/cPHtEoIV7RtNq1rNXSqjJsdDKU=;
        b=bC8/rEgXLK806D+qi532GCar7YV4USzW+s5x48NvUUj5/27hbknDILfFKxEkobyJIt
         Vhfu/u66peTFMm/AVfQE02CcQc91f2AztDw3UUojRukmUDB/Hy82tQ5n/EQYpQn1SEdd
         O9OGV2JQoqy5oNYTiEcjORVoWCt2eqF7CDmZNgKgJlazw0NbQ1iXCbyh1a32J+L7G8Aw
         N5CWT7aw2pKetQtVE2dAcntkL+N/LHuG6TKTpRZ8+PbAHCrTTNdoIDKbsogkYfvVjzNK
         xxqXEDoWaonfJaDFJLorMnkRTiFEYSXnThWo3mQ8Ld6QO9kKEmLzVxRZFshmzCOFwz40
         dw7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=QU9rVUATvKWYj/3e/cPHtEoIV7RtNq1rNXSqjJsdDKU=;
        b=eXhiUhu/U0J4iZel2bgpZRh3l62YyRFhdZg386IxsuEu3RzBzelkvJh7T3l7/ZikSi
         Lx8zwzqKG9AHUsAbCNV2tolpHAeC0wKWE3z9QxAwJ9q5LFOcmVnmUrlcSAmbhn+5NOER
         Jz+wwpzC2+wPaNxtuvJhqO3R35F6Zcp7djHLB3rrKC8LTANxct5NgqMRT8ODRa4yTFZk
         QOYf3AR7fVa6r7w0hLRzfrqZ1g7ZRb7QKOpwoyGcume+EaO4HhEmmhTeai6YLZ0XZYMM
         7VtPy0J7cEhKVt0VV/kzumRX2Vt0q26+Dou3bLs6Mw8nxvyxw2zZ1fOcfBrbvTjFDlTD
         u4LA==
X-Gm-Message-State: AOAM532WVuH3mnisxPAULgWM6jwNetdNdI8cO0hKr7ocB1LqZIliMVbs
        YiCtiC/6PhXtSkkduJPYoR8=
X-Google-Smtp-Source: ABdhPJwjVs893puVPmzA2u4vMrSp6behUZFi5EDZLqcYYG6GOThyO2AikJDtcleMi+fLO6vBfnPe+w==
X-Received: by 2002:a1c:1f03:: with SMTP id f3mr337203wmf.175.1620669379222;
        Mon, 10 May 2021 10:56:19 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id m13sm24318830wrw.86.2021.05.10.10.56.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 May 2021 10:56:18 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Florian Weimer <fweimer@redhat.com>, Jakub Wilk <jwilk@jwilk.net>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 02/39] getdents.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Mon, 10 May 2021 19:55:11 +0200
Message-Id: <20210510175546.28445-3-alx.manpages@gmail.com>
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
 man2/getdents.2 | 20 +++++++++++++++-----
 1 file changed, 15 insertions(+), 5 deletions(-)

diff --git a/man2/getdents.2 b/man2/getdents.2
index ec00a73ba..df766b066 100644
--- a/man2/getdents.2
+++ b/man2/getdents.2
@@ -33,19 +33,29 @@
 getdents, getdents64 \- get directory entries
 .SH SYNOPSIS
 .nf
-.BI "long getdents(unsigned int " fd ", struct linux_dirent *" dirp ,
+.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
+.B #include <unistd.h>
+.PP
+.BI "long syscall(SYS_getdents, unsigned int " fd \
+", struct linux_dirent *" dirp ,
 .BI "             unsigned int " count );
 .PP
-.BR "#define _GNU_SOURCE" "        /* See feature_test_macros(7) */"
+.BR "#define _GNU_SOURCE" "           /* See feature_test_macros(7) */"
 .BR "#include <dirent.h>"
 .PP
 .BI "ssize_t getdents64(int " fd ", void *" dirp ", size_t " count );
 .fi
 .PP
 .IR Note :
-There is no glibc wrapper for
-.BR getdents ();
-see NOTES.
+glibc provides no wrapper for
+.BR getdents (),
+necessitating the use of
+.BR syscall (2).
+.PP
+.IR Note :
+There is no definition of
+.B struct linux_dirent
+in glibc; see NOTES.
 .SH DESCRIPTION
 These are not the interfaces you are interested in.
 Look at
-- 
2.31.1

