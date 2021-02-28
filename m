Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9BE78326FD3
	for <lists+linux-man@lfdr.de>; Sun, 28 Feb 2021 01:51:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230210AbhB1AvH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 27 Feb 2021 19:51:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38384 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230206AbhB1Au5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 27 Feb 2021 19:50:57 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C5C9C06121D
        for <linux-man@vger.kernel.org>; Sat, 27 Feb 2021 16:49:28 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id v15so12297953wrx.4
        for <linux-man@vger.kernel.org>; Sat, 27 Feb 2021 16:49:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=HpUxCBrOySQadu5LcVtJ9QANIHTX9RSvPEWM0EYfL58=;
        b=WfsUqCAsYj2HtUByDS87gJjueCLiWCkgOKWvNiBsgx0JlaoC0xms7NhnrUuFmqzmqu
         so4u4dPcvXb8M4KeVd8+Kf53JjCIITZUp9tOUGtwiSRvcT3vhj+ZWWoinGlWeOYOtXRk
         J5F5J6zpTLwT/St5euGjirSd1pcjubz4HaX3MBGsRAN2R4Wvf5XVdcl4HEYz8XkGpWJ1
         8F5rC92ph4uckMS+KHhfnTdlmni0i9W0CoSA+LPHYgpMSp0PfWgkX9WhgK7IYPIEvciF
         lkpDiaZSWwBjxhY4W2Pi5X/Yi8qmxexIzZlOD0Yy8/m4JYfQ4pPpt4uIEt0iXDXJPbZ0
         jQBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=HpUxCBrOySQadu5LcVtJ9QANIHTX9RSvPEWM0EYfL58=;
        b=hHpowUzwdLWzSMAU1ZAMlCMxxXNiodaDj6Huf+ZxpiLz1Fobh9XTxsnkebvY6y9X1L
         YLWdNe3oLMTYrv9E3tT1T3sWNlq9HRi8Z04EzFKc9lEU3+k8+BUXeR9fzFMgat3Sr4ax
         3/23pa+ntC6dlYgLo3xUFzxhr6+YiN0gNSflP9a9u7Ca86L74P/+UUJnaMD5UlFlJ3bX
         0fIktdz1Tg6bDX6Gx0XseXMqCM031q8DM5ZWH/HuXbph9/R9Y1iO6o8cf45spp0to3Y+
         dlq10JQjz50248BIX/CzirjNt3vMQh7jQaH5DSIeMRF1mORfS7niAusqkpTLiUxtFlUm
         pN1Q==
X-Gm-Message-State: AOAM532pLHL1+pzDKuPKn5WIKrHIgs01AoRgGCHqkrmEMwU1pfcQf0b1
        ao8hVaYqxVvKhybwExi+d7k=
X-Google-Smtp-Source: ABdhPJzzkO+LKPp7YVrs8y7IhFJUk3nvAu0ypi1uxirDE19v7v/TWvAP8q1wHXsHrsJvKDD50E68Kg==
X-Received: by 2002:a5d:4ed1:: with SMTP id s17mr9741907wrv.402.1614473367262;
        Sat, 27 Feb 2021 16:49:27 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id o14sm18212145wri.48.2021.02.27.16.49.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Feb 2021 16:49:26 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 12/14] getprotoent_r.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Sun, 28 Feb 2021 01:48:16 +0100
Message-Id: <20210228004817.122463-13-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210228004817.122463-1-alx.manpages@gmail.com>
References: <20210228004817.122463-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

glibc uses 'restrict' in getprotoent_r(), getprotobyname_r(),
getprotobynumber_r().
Let's use it here too.

.../glibc$ grep_glibc_prototype getprotoent_r
resolv/netdb.h:372:
extern int getprotoent_r (struct protoent *__restrict __result_buf,
			  char *__restrict __buf, size_t __buflen,
			  struct protoent **__restrict __result);
.../glibc$ grep_glibc_prototype getprotobyname_r
resolv/netdb.h:376:
extern int getprotobyname_r (const char *__restrict __name,
			     struct protoent *__restrict __result_buf,
			     char *__restrict __buf, size_t __buflen,
			     struct protoent **__restrict __result);
.../glibc$ grep_glibc_prototype getprotobynumber_r
resolv/netdb.h:381:
extern int getprotobynumber_r (int __proto,
			       struct protoent *__restrict __result_buf,
			       char *__restrict __buf, size_t __buflen,
			       struct protoent **__restrict __result);
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/getprotoent_r.3 | 17 ++++++++++-------
 1 file changed, 10 insertions(+), 7 deletions(-)

diff --git a/man3/getprotoent_r.3 b/man3/getprotoent_r.3
index 55e37d0c9..651ec00c2 100644
--- a/man3/getprotoent_r.3
+++ b/man3/getprotoent_r.3
@@ -31,14 +31,17 @@ protocol entry (reentrant)
 .nf
 .B #include <netdb.h>
 .PP
-.BI "int getprotoent_r(struct protoent *" result_buf ", char *" buf ,
-.BI "                size_t " buflen ", struct protoent **" result );
-.BI "int getprotobyname_r(const char *" name ,
-.BI "                struct protoent *" result_buf ", char *" buf ,
-.BI "                size_t " buflen ", struct protoent **" result );
+.BI "int getprotoent_r(struct protoent *restrict " result_buf ,
+.BI "                  char *restrict " buf ", size_t " buflen ,
+.BI "                  struct protoent **restrict " result );
+.BI "int getprotobyname_r(const char *restrict " name ,
+.BI "                  struct protoent *restrict " result_buf ,
+.BI "                  char *restrict " buf ", size_t " buflen ,
+.BI "                  struct protoent **restrict " result );
 .BI "int getprotobynumber_r(int " proto ,
-.BI "                struct protoent *" result_buf ", char *" buf ,
-.BI "                size_t " buflen ", struct protoent **" result );
+.BI "                  struct protoent *restrict " result_buf ,
+.BI "                  char *restrict " buf ", size_t " buflen ,
+.BI "                  struct protoent **restrict " result );
 .PP
 .fi
 .RS -4
-- 
2.30.1.721.g45526154a5

