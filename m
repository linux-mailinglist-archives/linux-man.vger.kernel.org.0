Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B13CF326FD0
	for <lists+linux-man@lfdr.de>; Sun, 28 Feb 2021 01:51:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230198AbhB1Auv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 27 Feb 2021 19:50:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38416 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230210AbhB1Auo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 27 Feb 2021 19:50:44 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 96ADAC061356
        for <linux-man@vger.kernel.org>; Sat, 27 Feb 2021 16:49:27 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id o16so11021115wmh.0
        for <linux-man@vger.kernel.org>; Sat, 27 Feb 2021 16:49:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=4MOM7Qz6sWCyMLVqeeOlFwdEV31ZN4ovYp7YtTq+4y0=;
        b=dmWyhfs8Y94U6s31f6AoXQ+MUx8Smlz2+/fWbKfrJ4JNZ6EfygF2+M1iV5gteMPlEF
         bl1Ae82Z1lijYjIPyHnV1I4EblcQZqtFkvyf0lAZ0Fn6kRPZTenirCDfEAqMxFa3JSm8
         0LK81zsLU4n2I8OEExNXUi1MjHW3KMt/siHccuQuMDMG614fZOEiljZ8d+4MrjQUdIPV
         AU/LA74/asQalwzKqDRo2qDw9rm27kTs/wPCQiUpsMOuJ8CqGXbn66cMvdBQXpNwAb2k
         NFmLGDJ6riisKgXYK9D3V1CKhD2iEoRMzhYK4u3E7HC9gpuhzxjjoZHU+PsnSnA/c8UN
         z+6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=4MOM7Qz6sWCyMLVqeeOlFwdEV31ZN4ovYp7YtTq+4y0=;
        b=GBNdYDJWu5/Ink65uWJti/d2cmG47l7RR8I/FWDOmXXxv9f9XF5wcHX5nZsO7meaCl
         2f3u6OANpk3VISmrf+6aWimNxcE4in8oC6v/h39uo5xsva/z8NPq8vwsGjy2I6AeLc0V
         dIXkAUjdGshM9/Hr9mEdfvNr8DeQp8pzQbozzeOwkG+zGNAqj7+etMpGvZFdaci6/hQQ
         6JvemGrxKdPGElwCbpQWKk0AQUoy3cB/eshyuYsiXLsGSi4+c1LRHDJdokJVeMk+DPmf
         19xwIZxhf313Lo07xSWDT+eC7AgMH7qqoM4JN5RMBElHMi1Xg0ONPL2vtnwN4jaEpOxm
         7rWw==
X-Gm-Message-State: AOAM530PEtB6jS/6F8Owbgpha8WISJHz8PccOc7RM2riQKFM39W4jD2n
        QWfbpL5DACMv2LJEasX5aJ4=
X-Google-Smtp-Source: ABdhPJxJd1cqejBhqpiaFNhTyebvU3sZp6fjQlF2ZtfvrI0HBgwk+CZt67lbEIRsXohLz192kvOmfw==
X-Received: by 2002:a05:600c:190f:: with SMTP id j15mr9010445wmq.91.1614473366376;
        Sat, 27 Feb 2021 16:49:26 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id o14sm18212145wri.48.2021.02.27.16.49.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Feb 2021 16:49:26 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 11/14] getnetent_r.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Sun, 28 Feb 2021 01:48:15 +0100
Message-Id: <20210228004817.122463-12-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210228004817.122463-1-alx.manpages@gmail.com>
References: <20210228004817.122463-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

glibc uses 'restrict' in getnetent_r(), getnetbyname_r(),
getnetbyaddr_r().
Let's use it here too.

.../glibc$ grep_glibc_prototype getnetent_r
resolv/netdb.h:235:
extern int getnetent_r (struct netent *__restrict __result_buf,
			char *__restrict __buf, size_t __buflen,
			struct netent **__restrict __result,
			int *__restrict __h_errnop);
.../glibc$ grep_glibc_prototype getnetbyname_r
resolv/netdb.h:246:
extern int getnetbyname_r (const char *__restrict __name,
			   struct netent *__restrict __result_buf,
			   char *__restrict __buf, size_t __buflen,
			   struct netent **__restrict __result,
			   int *__restrict __h_errnop);
.../glibc$ grep_glibc_prototype getnetbyaddr_r
resolv/netdb.h:240:
extern int getnetbyaddr_r (uint32_t __net, int __type,
			   struct netent *__restrict __result_buf,
			   char *__restrict __buf, size_t __buflen,
			   struct netent **__restrict __result,
			   int *__restrict __h_errnop);
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/getnetent_r.3 | 23 +++++++++++++----------
 1 file changed, 13 insertions(+), 10 deletions(-)

diff --git a/man3/getnetent_r.3 b/man3/getnetent_r.3
index 679391cd0..b94a67ba5 100644
--- a/man3/getnetent_r.3
+++ b/man3/getnetent_r.3
@@ -31,17 +31,20 @@ network entry (reentrant)
 .nf
 .B #include <netdb.h>
 .PP
-.BI "int getnetent_r(struct netent *" result_buf ", char *" buf ,
-.BI "                size_t " buflen ", struct netent **" result ,
-.BI "                int *" h_errnop );
-.BI "int getnetbyname_r(const char *" name ,
-.BI "                struct netent *" result_buf ", char *" buf ,
-.BI "                size_t " buflen ", struct netent **" result ,
-.BI "                int *" h_errnop );
+.BI "int getnetent_r(struct netent *restrict " result_buf ,
+.BI "                char *restrict " buf ", size_t " buflen ,
+.BI "                struct netent **restrict " result ,
+.BI "                int *restrict " h_errnop );
+.BI "int getnetbyname_r(const char *restrict " name ,
+.BI "                struct netent *restrict " result_buf ,
+.BI "                char *restrict " buf ", size_t " buflen ,
+.BI "                struct netent **restrict " result ,
+.BI "                int *restrict " h_errnop );
 .BI "int getnetbyaddr_r(uint32_t " net ", int " type ,
-.BI "                struct netent *" result_buf ", char *" buf ,
-.BI "                size_t " buflen ", struct netent **" result ,
-.BI "                int *" h_errnop );
+.BI "                struct netent *restrict " result_buf ,
+.BI "                char *restrict " buf ", size_t " buflen ,
+.BI "                struct netent **restrict " result ,
+.BI "                int *restrict " h_errnop );
 .PP
 .fi
 .RS -4
-- 
2.30.1.721.g45526154a5

