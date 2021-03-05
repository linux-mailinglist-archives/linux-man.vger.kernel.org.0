Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5BC8B32F6E2
	for <lists+linux-man@lfdr.de>; Sat,  6 Mar 2021 00:52:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229837AbhCEXvj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 5 Mar 2021 18:51:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42200 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229901AbhCEXvW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 5 Mar 2021 18:51:22 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB835C06175F
        for <linux-man@vger.kernel.org>; Fri,  5 Mar 2021 15:51:21 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id e23so2665233wmh.3
        for <linux-man@vger.kernel.org>; Fri, 05 Mar 2021 15:51:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=rwMbXBcdVIzlI2PqTJEt8bjtXUamR+0zXscAcBktAA0=;
        b=Ja/3NpzsNqJ/tHnqYuB0dYC61kUhQYhXuhBVkSSSNcW9ov4dJulClr1FN6SQAdLdif
         WmMahSf8tgV8yUxSvJRRyE5IzCXUlF6qAO+836agJzOe8NULzYNTvkEJPeptiQ6AJS1T
         Fm0BGtB8or0TD8hlXKSn7Ra0SpjdsZAVmvvGctCGDfVDzTjVfO3XjNO9sFZeFLA1WMl9
         kO8B7r7mR1wk/tZSE87+p+VCa5q206/5LkrqYGEAwxazS0qmXX9rSFZYJP01+egLCOLm
         L59mXJ53vt7Nzui/S9uHrVUitHB03fs9sg5Q+hkPqN1rOxwJp8Yf0gYHJgmAnMYqXtsM
         C6+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=rwMbXBcdVIzlI2PqTJEt8bjtXUamR+0zXscAcBktAA0=;
        b=GKn7icTEjTLG/jiIDoOsjyvpgqq3b/xGzIbrQ+CjxpmHeR4lO3sy3cLg0O2qU5X7e0
         +7xZmsdnIcLLmLMJisDH1s7yaGbw5/GXKUW9zdhiv/UVoxmHtEOSdwisxs2Oad0twABn
         vIgQlhMOR+EpGONlz0GV5dRIFNpWQAHNGOEuYEwFdnQh+NDLQ/zUl46OVNVklWLxQLvZ
         8EroyQgAouNicXNfw/0tHirCeChuXGCXSZoDRAG1Z0EM0LDeSh8Mp1+HkVj4UpvTBkkx
         d8+D3HkPPUlgaWIUz0C11BXaKFsM/5tKyWfgn1ZRGXJoB/Dmy0hSFI6kzLi1k9QaPAGf
         hduA==
X-Gm-Message-State: AOAM533d/PEc/LrD/f7rZ40WCem5QqMkKxHQK/b4b798J4OI9aRuKrDb
        NbB86tWcAEH+0MjFpnMh2rU=
X-Google-Smtp-Source: ABdhPJyDKy9QfeH6FGedI+rRhpp7V6mbwZNCH5laXNiDsSxnMR/UHCoGNzNpdq5oICHMbI6OeA1xgg==
X-Received: by 2002:a7b:cf16:: with SMTP id l22mr10838884wmg.26.1614988280677;
        Fri, 05 Mar 2021 15:51:20 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id f7sm7219835wrm.36.2021.03.05.15.51.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Mar 2021 15:51:20 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Szabolcs Nagy <Szabolcs.Nagy@arm.com>,
        "Joseph S. Myers" <joseph@codesourcery.com>,
        Ulrich Drepper <drepper@redhat.com>,
        Florian Weimer <fweimer@redhat.com>
Subject: [PATCH 07/22] lio_listio.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Sat,  6 Mar 2021 00:50:51 +0100
Message-Id: <20210305235105.177359-8-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210305235105.177359-1-alx.manpages@gmail.com>
References: <20210305235105.177359-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in lio_listio().
However, POSIX is a bit more restrictive than glibc
for the second parameter.
Let's document the more restrictive POSIX variant.

$ man 3p lio_listio |sed -n '/^SYNOPSIS/,/;/p'
SYNOPSIS
       #include <aio.h>

       int lio_listio(int mode, struct aiocb *restrict const list[restrict],
           int nent, struct sigevent *restrict sig);
$

.../glibc$ grep_glibc_prototype lio_listio
rt/aio.h:148:
extern int lio_listio (int __mode,
		       struct aiocb *const __list[__restrict_arr],
		       int __nent, struct sigevent *__restrict __sig)
  __THROW __nonnull ((2));
.../glibc$

Cc: Szabolcs Nagy <Szabolcs.Nagy@arm.com>
Cc: "Joseph S. Myers" <joseph@codesourcery.com>
Cc: Ulrich Drepper <drepper@redhat.com>
Cc: Florian Weimer <fweimer@redhat.com>
Cc: glibc <libc-alpha@sourceware.org>
Bug: glibc <https://sourceware.org/bugzilla/show_bug.cgi?id=16747>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/lio_listio.3 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man3/lio_listio.3 b/man3/lio_listio.3
index d89670f7c..d40ac89fb 100644
--- a/man3/lio_listio.3
+++ b/man3/lio_listio.3
@@ -28,8 +28,8 @@ lio_listio \- initiate a list of I/O requests
 .nf
 .B "#include <aio.h>"
 .PP
-.BI "int lio_listio(int " mode ", struct aiocb *const " aiocb_list [],
-.BI "               int " nitems ", struct sigevent *" sevp );
+.BI "int lio_listio(int " mode ", struct aiocb *restrict const " aiocb_list [restrict],
+.BI "               int " nitems ", struct sigevent *restrict " sevp );
 .PP
 Link with \fI\-lrt\fP.
 .fi
-- 
2.30.1.721.g45526154a5

