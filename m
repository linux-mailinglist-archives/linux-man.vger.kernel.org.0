Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 499FE3316B2
	for <lists+linux-man@lfdr.de>; Mon,  8 Mar 2021 19:55:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231321AbhCHSyl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 8 Mar 2021 13:54:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58034 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231266AbhCHSyJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 8 Mar 2021 13:54:09 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 84411C06174A
        for <linux-man@vger.kernel.org>; Mon,  8 Mar 2021 10:54:09 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id e23so137750wmh.3
        for <linux-man@vger.kernel.org>; Mon, 08 Mar 2021 10:54:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=lcDvJtGifbiTnGYbOsWJPLpNr+9m68Q3y0cTBRqq7mU=;
        b=CVg3R8v/SIiZ5ox+jWiSm/5fS9s2PPDWWwM4DRc18HnnXTUzX1bFZFOv5Ha/sPaxjm
         ZmVBPQYrlY+qEPXgGHZbnD4SduSeg40ZV/Q7TeaR4D96PaOj96G6PekMGlvlov/MXcx2
         uHAiepJWYDbwBMLDAF0oUzLp4XH/wEsF2Sz6tQRFDf3orvlBEDAeLwbdUmLeeLiuHlUg
         RKvya7HLhvX/PhvZjBqdRygY2Pv8m64TWnt473gBnShLhgzCWTdrAjOBGxpbYhaAi+e9
         5lQstvY4Gg6d1Pc1vACDJx92MUjhuwwu7lVplXOdVxJfCrhAaBoL5ZGzrs6763vKn6wL
         YPEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=lcDvJtGifbiTnGYbOsWJPLpNr+9m68Q3y0cTBRqq7mU=;
        b=EUy93f4YEbZgDLnMhSVA02G/+2ZkKPcgUiy13jn9TtohJ05nDaU0Dpq1lkwh3BCUN3
         mymAnhXQEsiv5DjLz3Lj+5Imp623PkqeZBSD0rokE36+FahYeNmwMGhyUB2OFuk+pUnl
         KKqbo1+l48wBeb5w/6hZYa2U21V6iqm54YdSqD4YZtFGSKO6LyPVl6uKLFRAaz0h2bOW
         JctiTtNdWfpxbmUnKm9dW5qnp73g6k4kGYPNF0BrDGksTsAcVKsj4ANUd2ykpkMT9A6x
         0nCpNr7SEION5yXYIsPEMWGlxN+4ByP3TZSc/2eUu9bvS1le0pZAY8UHkRphU0gKYPCi
         NhZA==
X-Gm-Message-State: AOAM531m+98upJSw4TqJUCRMVxz4ds7SzIIKJ4sFEWfb5C2pOYLMsCXo
        Pf1DKGudZr/HzceVscmQGuU=
X-Google-Smtp-Source: ABdhPJyg0E92KrJRAaJs1G+YPHmVHX9uyU580Qt9XVWQdkSBdiPqYXZGHeaf5Ueb3ZRzUzTtOEhfuA==
X-Received: by 2002:a7b:c214:: with SMTP id x20mr210242wmi.186.1615229648262;
        Mon, 08 Mar 2021 10:54:08 -0800 (PST)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id i11sm19889921wro.53.2021.03.08.10.54.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Mar 2021 10:54:07 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 03/23] pthread_attr_setstackaddr.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Mon,  8 Mar 2021 19:53:12 +0100
Message-Id: <20210308185331.242176-4-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210308185331.242176-1-alx.manpages@gmail.com>
References: <20210308185331.242176-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in pthread_attr_getstackaddr().
Let's use it here too.

.../glibc$ grep_glibc_prototype pthread_attr_getstackaddr
sysdeps/htl/pthread.h:138:
extern int pthread_attr_getstackaddr (const pthread_attr_t *__restrict __attr,
				      void **__restrict __stackaddr)
	__THROW __nonnull ((1, 2));
sysdeps/nptl/pthread.h:333:
extern int pthread_attr_getstackaddr (const pthread_attr_t *__restrict
				      __attr, void **__restrict __stackaddr)
     __THROW __nonnull ((1, 2)) __attribute_deprecated__;
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/pthread_attr_setstackaddr.3 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man3/pthread_attr_setstackaddr.3 b/man3/pthread_attr_setstackaddr.3
index bf626c7cb..f926c16f2 100644
--- a/man3/pthread_attr_setstackaddr.3
+++ b/man3/pthread_attr_setstackaddr.3
@@ -33,8 +33,8 @@ set/get stack address attribute in thread attributes object
 .PP
 .BI "int pthread_attr_setstackaddr(pthread_attr_t *" attr \
 ", void *" stackaddr );
-.BI "int pthread_attr_getstackaddr(const pthread_attr_t *" attr ,
-.BI "                              void **" stackaddr );
+.BI "int pthread_attr_getstackaddr(const pthread_attr_t *restrict " attr ,
+.BI "                              void **restrict " stackaddr );
 .PP
 Compile and link with \fI\-pthread\fP.
 .fi
-- 
2.30.1

