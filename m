Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CA11C326FD5
	for <lists+linux-man@lfdr.de>; Sun, 28 Feb 2021 01:52:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230213AbhB1Av1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 27 Feb 2021 19:51:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38554 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230209AbhB1AvW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 27 Feb 2021 19:51:22 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2CCA9C06121E
        for <linux-man@vger.kernel.org>; Sat, 27 Feb 2021 16:49:29 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id i9so10031135wml.0
        for <linux-man@vger.kernel.org>; Sat, 27 Feb 2021 16:49:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=rmmzZxLGW7vf7rTslg7OcZB3XnE5Jj8qb7jk19tyUJ8=;
        b=qNOQc9aXfpZc5NGz4ahQem3L1mcpvAsTSjvMy6zjO4cIf8d6T+JyAO2Q6YS1s0o+Yi
         62dCzHywvfmftWJIRMco8pKGbHlSTk0Vu3OYB//lNXud698t5kI9u2Sk13Srdi5Gj6gr
         Hjxdj/FDCP8bsP30EWG9D77s2ls04GQ9qRnFTPMWRmoTyu+CyZ738pudoZ5GDza141AK
         o+Vn9s/IAlMPFtzTDCyCcKa+a+g8LsvRQXLSNZDzzVZdIcNLQeR4DbDCscAmkQ4YqIyh
         jT450AH35RtTkDfNuXAxDSCq6K09wfExcCFFAoqIwRT501BjELCurtwo2/GuEZQ3oUZl
         at6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=rmmzZxLGW7vf7rTslg7OcZB3XnE5Jj8qb7jk19tyUJ8=;
        b=emQ/LKBLAP8CoiJrOsRv2pN7yINkJvZpCdC8QFof2RqoQfhUyAtyQ8UooXCFTsGkZB
         YOz9Sfmj2MEy++uCVG6daUCwljSzT9+N88++MJZxuK7Mqz+X482DzPXEQzRUoMa2ONID
         vnZPN1E8PVOBZJx15NhYEHuDHJ6aekw9nmf0NJhAgPnyQGwfgsIuE6K4X1Ke3Q6QWAU6
         E4Anu+FUbaXNQytj1Ab07tqhzgpko9jjjCAsNh6xRVVjG/G91Y8UqxDUsI0xCqF+K1+4
         e9b74p0xbMW0E1+E9WOLtXJofegkmoVbdnh5/hQ4H1O6PfrEJfeO9U1GX7I9yigjHev+
         78fw==
X-Gm-Message-State: AOAM530+zkzq/5/7jsxEgt6T1ny6EikCt9FkM5F1khE7R9nBGl0V64j8
        HJv5EDKvZ6drToLBlPY9e9c=
X-Google-Smtp-Source: ABdhPJy8xi03xqBSVfAJ6JWo/16cVS4/F/M3wtzObKIH17DArCTcFfz3QSLcJcAGblQ/Js/XMl9xjA==
X-Received: by 2002:a1c:1bc7:: with SMTP id b190mr9298025wmb.115.1614473368005;
        Sat, 27 Feb 2021 16:49:28 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id o14sm18212145wri.48.2021.02.27.16.49.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Feb 2021 16:49:27 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 13/14] getpwent_r.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Sun, 28 Feb 2021 01:48:17 +0100
Message-Id: <20210228004817.122463-14-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210228004817.122463-1-alx.manpages@gmail.com>
References: <20210228004817.122463-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

glibc uses 'restrict' in getpwent_r(), fgetpwent_r().
Let's use it here too.

.../glibc$ grep_glibc_prototype getpwent_r
pwd/pwd.h:139:
extern int getpwent_r (struct passwd *__restrict __resultbuf,
		       char *__restrict __buffer, size_t __buflen,
		       struct passwd **__restrict __result)
		       __nonnull ((1, 2, 4));
.../glibc$ grep_glibc_prototype fgetpwent_r
pwd/pwd.h:166:
extern int fgetpwent_r (FILE *__restrict __stream,
			struct passwd *__restrict __resultbuf,
			char *__restrict __buffer, size_t __buflen,
			struct passwd **__restrict __result)
			__nonnull ((1, 2, 3, 5));
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/getpwent_r.3 | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/man3/getpwent_r.3 b/man3/getpwent_r.3
index 3414b31a8..b2c7e420a 100644
--- a/man3/getpwent_r.3
+++ b/man3/getpwent_r.3
@@ -28,10 +28,13 @@ getpwent_r, fgetpwent_r \- get passwd file entry reentrantly
 .nf
 .B #include <pwd.h>
 .PP
-.BI "int getpwent_r(struct passwd *" pwbuf ", char *" buf ,
-.BI "               size_t " buflen ", struct passwd **" pwbufp );
-.BI "int fgetpwent_r(FILE *" stream ", struct passwd *" pwbuf ", char *" buf ,
-.BI "                size_t " buflen ", struct passwd **" pwbufp );
+.BI "int getpwent_r(struct passwd *restrict " pwbuf ,
+.BI "               char *restrict " buf ", size_t " buflen ,
+.BI "               struct passwd **restrict " pwbufp );
+.BI "int fgetpwent_r(FILE *restrict " stream \
+", struct passwd *restrict " pwbuf ,
+.BI "               char *restrict " buf ", size_t " buflen ,
+.BI "               struct passwd **restrict " pwbufp );
 .fi
 .PP
 .RS -4
-- 
2.30.1.721.g45526154a5

