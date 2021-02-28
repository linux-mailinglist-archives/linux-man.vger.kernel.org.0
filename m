Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 76FDC326FD2
	for <lists+linux-man@lfdr.de>; Sun, 28 Feb 2021 01:51:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230203AbhB1Aun (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 27 Feb 2021 19:50:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38396 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230167AbhB1Aum (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 27 Feb 2021 19:50:42 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5D5DDC061794
        for <linux-man@vger.kernel.org>; Sat, 27 Feb 2021 16:49:23 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id k66so11028624wmf.1
        for <linux-man@vger.kernel.org>; Sat, 27 Feb 2021 16:49:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=tRzlPy2PPTLESgxjvB3EDqAIHaGLuT8gloIx083+Jh8=;
        b=JTFLTO+hqtRYSHr5omDamYoPorS9CPWzpFBt3ks3FVa/oFydDeQCZHDCOCy/Ii5s58
         X+zGgHk40HYG5FSYyP/3vuqs9/sasBquxhBteOKXiNPErc8tKp3ELMV0IvRbXWgscxJJ
         Xv++9IOvMau+H0KkwKP0sSgP/yU/2pVFulzSh10qJG1g3V5j7Nk4evCYc6YxiT0Q41WO
         UFjPBB7uqZbeaDTzuXNfWi8OTgmFvLXydic07H0Y5JRfaVGVy5teGPTiRRa1Ndxx8ooC
         OVVglRVh2WtC273gUcKNztryaBY4M66DNtlc+FxueWknQSO79dW10gMlIsWPbYrAzUdq
         TBvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=tRzlPy2PPTLESgxjvB3EDqAIHaGLuT8gloIx083+Jh8=;
        b=bXkr93h5w65sfUaUMIGjFH6AHbLrjS67yTJZMUZyC0Otfw5ez8GQI0SzikiCvnOLjp
         amzRsY15Icc+4TnWdzmS9lkjZyTILE3Y2z+iq2KKFpBPkl0wgoz6bp639E2kuDPKFYR8
         6qH/ifouQ7Tkeak/3cEReSS/tQXUEV0oZJywLwFWPiOlhUiK2CuGBmJ3Mer3m4hsjY7x
         5PNL9y65SdTPBXOpptHUUaZJNP+2+w/lUZC2HY4Nhf0NJR9qG/Q65Ojhr9JK1n9pHEnQ
         MeMQf9SqYF/3O1VVHXEYZaX5jNOWEn8cVZNjWOPdoegsGgqEdUR85LoFpNNTUAaZEQcp
         CjGw==
X-Gm-Message-State: AOAM531zPLamEYosafwZ67XmTmv3IZk6OkdJHN7q4y0H6PVmrI5fQe0Y
        SEuGOhX66tSMpTeoJKX3Z/A=
X-Google-Smtp-Source: ABdhPJzOojBz2pIHkXAjnmYRBEM79zjc4PP57fLTX1gumJav5z8goSAnL4qD8aOZKCHNAaco1FwrGA==
X-Received: by 2002:a05:600c:4f4d:: with SMTP id m13mr8969400wmq.81.1614473362205;
        Sat, 27 Feb 2021 16:49:22 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id o14sm18212145wri.48.2021.02.27.16.49.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Feb 2021 16:49:21 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 05/14] getgrent_r.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Sun, 28 Feb 2021 01:48:09 +0100
Message-Id: <20210228004817.122463-6-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210228004817.122463-1-alx.manpages@gmail.com>
References: <20210228004817.122463-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

glibc uses 'restrict' in getgrent_r(), fgetgrent_r().
Let's use it here too.

.../glibc$ grep_glibc_prototype getgrent_r
grp/grp.h:131:
extern int getgrent_r (struct group *__restrict __resultbuf,
		       char *__restrict __buffer, size_t __buflen,
		       struct group **__restrict __result);
.../glibc$ grep_glibc_prototype fgetgrent_r
grp/grp.h:161:
extern int fgetgrent_r (FILE *__restrict __stream,
			struct group *__restrict __resultbuf,
			char *__restrict __buffer, size_t __buflen,
			struct group **__restrict __result);
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/getgrent_r.3 | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/man3/getgrent_r.3 b/man3/getgrent_r.3
index 55d9d698f..29f063a0a 100644
--- a/man3/getgrent_r.3
+++ b/man3/getgrent_r.3
@@ -28,10 +28,12 @@ getgrent_r, fgetgrent_r \- get group file entry reentrantly
 .nf
 .B #include <grp.h>
 .PP
-.BI "int getgrent_r(struct group *" gbuf ", char *" buf ,
-.BI "               size_t " buflen ", struct group **" gbufp );
-.BI "int fgetgrent_r(FILE *" stream ", struct group *" gbuf ", char *" buf ,
-.BI "               size_t " buflen ", struct group **" gbufp );
+.BI "int getgrent_r(struct group *restrict " gbuf ,
+.BI "               char *restrict " buf ", size_t " buflen ,
+.BI "               struct group **restrict " gbufp );
+.BI "int fgetgrent_r(FILE *restrict " stream ", struct group *restrict " gbuf ,
+.BI "               char *restrict " buf ", size_t " buflen ,
+.BI "               struct group **restrict " gbufp );
 .fi
 .PP
 .RS -4
-- 
2.30.1.721.g45526154a5

