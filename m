Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 863443316BB
	for <lists+linux-man@lfdr.de>; Mon,  8 Mar 2021 19:55:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231408AbhCHSyp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 8 Mar 2021 13:54:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58086 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231255AbhCHSyS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 8 Mar 2021 13:54:18 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 37322C06174A
        for <linux-man@vger.kernel.org>; Mon,  8 Mar 2021 10:54:18 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id f22-20020a7bc8d60000b029010c024a1407so4454308wml.2
        for <linux-man@vger.kernel.org>; Mon, 08 Mar 2021 10:54:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ckUTs0DsaRpVJesx7XOrRPoJPEKs+Oh3D108n+QTFIA=;
        b=G/Th4hMDTLUsP82BIEWjVaUbU4CTuPKAB5o4ZftIXZesTnk+dXRj9jYcZDnqntKA3K
         QFVm5xqgumxPIj4aFbeBEGGdbyiK/iLrmZQf8zd3cMbItsNJt+IdzGCnSLve+AbCgOVm
         bCDjV/2nzzh7S2/msJlhGyup4oJ3Br6b/jo91jcch/M9amo+9FtviFgiRtYxpce2pmHD
         zEsQePOKLUP7zkj80xpxi/x9fXBNxn+hKJEiDuZkoPA030zQfmM6bD1Sd7ObgYgB0crm
         1W6fGoECHIw2QsYjaTd+3CVHPuEoZpBF1xkPapyAaro8Iy/IVh86IPYbwoYTd9R7PRRs
         9k8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ckUTs0DsaRpVJesx7XOrRPoJPEKs+Oh3D108n+QTFIA=;
        b=iRZ35kQxyHKsKrgm4tqGWzJ0pTO6e23TuiJSAS4YKow9Fs8VaOET1Vepjyd2+9R005
         wex2t/1fPvBPieK+auSsdYYw0/5RMcB8U+Frb9gYGerW8V7anrRfalMDAWR4Z+xu9oFd
         AdMgGUMFkC0opgwmm1aNBB2FOytOp8A0Z4/6qipybzXTtt0Mz8cUosTR2PfhfLae1n5I
         wNmXFJ5Qj4mH4+I/LIRxzRvuG4n6Vp89E+3mT/jqEQEZBiQE2SPoLfTSROKLhCvcdMiI
         gCV5yyhVFR0iliPpU5Qomv/rSSmr1+ZaYpxfKn4rPy/rNXi4cAtw16tqiFCH6FIa6Q51
         Yldg==
X-Gm-Message-State: AOAM531stsjiKzPme3Du3ERt9gtuu14mN8V0GPa8v01z/bbQYi3LBypn
        s8faI0pftozZwzzdhfuA3MA=
X-Google-Smtp-Source: ABdhPJww38tJTDeWTNgBf0kjjlApqihDyEDFcaZmjSZLn7x6WKXVHg5EPqRMbbP0AU+84mWo7bvveA==
X-Received: by 2002:a1c:c20a:: with SMTP id s10mr209150wmf.144.1615229657028;
        Mon, 08 Mar 2021 10:54:17 -0800 (PST)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id i11sm19889921wro.53.2021.03.08.10.54.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Mar 2021 10:54:16 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 10/23] pthread_rwlockattr_setkind_np.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Mon,  8 Mar 2021 19:53:19 +0100
Message-Id: <20210308185331.242176-11-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210308185331.242176-1-alx.manpages@gmail.com>
References: <20210308185331.242176-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

glibc uses 'restrict' in pthread_rwlockattr_getkind_np().
Let's use it here too.

.../glibc$ grep_glibc_prototype pthread_rwlockattr_getkind_np
sysdeps/htl/pthread.h:633:
extern int pthread_rwlockattr_getkind_np (const pthread_rwlockattr_t *
					  __restrict __attr,
					  int *__restrict __pref)
     __THROW __nonnull ((1, 2));
sysdeps/nptl/pthread.h:983:
extern int pthread_rwlockattr_getkind_np (const pthread_rwlockattr_t *
					  __restrict __attr,
					  int *__restrict __pref)
     __THROW __nonnull ((1, 2));
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/pthread_rwlockattr_setkind_np.3 | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/man3/pthread_rwlockattr_setkind_np.3 b/man3/pthread_rwlockattr_setkind_np.3
index eb2dc19bf..7ade3ba7d 100644
--- a/man3/pthread_rwlockattr_setkind_np.3
+++ b/man3/pthread_rwlockattr_setkind_np.3
@@ -31,9 +31,10 @@ the read-write lock kind of the thread read-write lock attribute object
 .B #include <pthread.h>
 .PP
 .BI "int pthread_rwlockattr_setkind_np(pthread_rwlockattr_t *" attr ,
-.BI "                                   int " pref );
-.BI "int pthread_rwlockattr_getkind_np(const pthread_rwlockattr_t *" attr ,
-.BI "                                   int *" pref );
+.BI "                             int " pref );
+.BI "int pthread_rwlockattr_getkind_np("
+.BI "                             const pthread_rwlockattr_t *restrict " attr ,
+.BI "                             int *restrict " pref );
 .PP
 Compile and link with \fI\-pthread\fP.
 .PP
-- 
2.30.1

