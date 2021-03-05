Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4985D32F6DF
	for <lists+linux-man@lfdr.de>; Sat,  6 Mar 2021 00:52:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229616AbhCEXvh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 5 Mar 2021 18:51:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42172 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229759AbhCEXvR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 5 Mar 2021 18:51:17 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3DDEC06175F
        for <linux-man@vger.kernel.org>; Fri,  5 Mar 2021 15:51:16 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id u16so3921249wrt.1
        for <linux-man@vger.kernel.org>; Fri, 05 Mar 2021 15:51:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=mSn3yoW/12Ru/TyYcPhA2gU0BhlZA9Vvk34Eo3ralpo=;
        b=YF6YHD/BnIGfCq261bVOgDngiP4XJY/RLsTh7cNTJ2XSdYNjmWJ3x6Cp3gdUOIQdOL
         SLfsiJrTuukogAL0JuOhS8ATu+PsfuQ/KPHMkEU5LjJwZc7xUl7tRCqgClSBH2cUqNKd
         YxrNzmutCg8oNJBTyob52GC2Mo9650Do2Wy8RabmViqXqLRZE/2AaLhJuJgnAEeB1Lct
         14YG8MT0eLAM+XkpXpw8m8VHTN3U5ZiDRw8R62xZrz3inXQ/JW3LVDKFLWU9Ldfr+395
         axAr4oP5UK3zdT3TKy3i+U6mwz78YkeLKojdSVaMsr4OpTHx7mC2amApVQqWBu2QaQwH
         s3TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=mSn3yoW/12Ru/TyYcPhA2gU0BhlZA9Vvk34Eo3ralpo=;
        b=fA+H1eXKkmi/6bwSy6TY8ib93EhsS976ijWZO3PrUhnLegy1Emt1aUs5BXYl2ZO3IH
         SiwVgReZdTmxAfUDiHOoIx3RYDDzCDkluIFFeyFDgaZj1pPpaXSEUiTgOcWSgGx5+/Mc
         8c006EEEsP/4RKjIwokwzSaA+zpdHTt4/N6IVEN0hB3sYDS+272X+Tsz0s3dbnuZhBgl
         m5ZYV+sNshrc20hyVKMr8OyyLh6WPTA9LMTZ/s/pjY/gtD+XWEBxk6VsE5OSFvfRByyC
         0KQ7Z203+z6wniGX2fRF4WuNvnBKJgDLEJJ3TucLOZm2PWdmkYJdb9l9+q7UdjZmiIjB
         kj7A==
X-Gm-Message-State: AOAM530nYzy5nd+vSZwPbVJ3aIML+XIpWR0VRkpUw4n7PYxfHZr7LS2K
        TEekkgWUvGsBLLa3gYjFCzQ=
X-Google-Smtp-Source: ABdhPJxz8dmAiGiXgh5BHG+FQX5lcOw5izdwL1BoaTyvNmc+ToArcYmn6P0Mq4mr30VFuK9tmwsQ+w==
X-Received: by 2002:adf:e5c4:: with SMTP id a4mr11617321wrn.174.1614988275785;
        Fri, 05 Mar 2021 15:51:15 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id f7sm7219835wrm.36.2021.03.05.15.51.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Mar 2021 15:51:15 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 01/22] getservent_r.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Sat,  6 Mar 2021 00:50:45 +0100
Message-Id: <20210305235105.177359-2-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210305235105.177359-1-alx.manpages@gmail.com>
References: <20210305235105.177359-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

glibc uses 'restrict' in getservent_r(), getservbyname_r(),
getservbyport_r().
Let's use it here too.

.../glibc$ grep_glibc_prototype getservent_r
resolv/netdb.h:306:
extern int getservent_r (struct servent *__restrict __result_buf,
			 char *__restrict __buf, size_t __buflen,
			 struct servent **__restrict __result);
.../glibc$ grep_glibc_prototype getservbyname_r
resolv/netdb.h:310:
extern int getservbyname_r (const char *__restrict __name,
			    const char *__restrict __proto,
			    struct servent *__restrict __result_buf,
			    char *__restrict __buf, size_t __buflen,
			    struct servent **__restrict __result);
.../glibc$ grep_glibc_prototype getservbyport_r
resolv/netdb.h:316:
extern int getservbyport_r (int __port, const char *__restrict __proto,
			    struct servent *__restrict __result_buf,
			    char *__restrict __buf, size_t __buflen,
			    struct servent **__restrict __result);
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/getservent_r.3 | 21 +++++++++++++--------
 1 file changed, 13 insertions(+), 8 deletions(-)

diff --git a/man3/getservent_r.3 b/man3/getservent_r.3
index ad7fd22e4..c73a93afc 100644
--- a/man3/getservent_r.3
+++ b/man3/getservent_r.3
@@ -31,14 +31,19 @@ service entry (reentrant)
 .nf
 .B #include <netdb.h>
 .PP
-.BI "int getservent_r(struct servent *" result_buf ", char *" buf ,
-.BI "                size_t " buflen ", struct servent **" result );
-.BI "int getservbyname_r(const char *" name ", const char *" proto ,
-.BI "                struct servent *" result_buf ", char *" buf ,
-.BI "                size_t " buflen ", struct servent **" result );
-.BI "int getservbyport_r(int " port ", const char *" proto ,
-.BI "                struct servent *" result_buf ", char *" buf ,
-.BI "                size_t " buflen ", struct servent **" result );
+.BI "int getservent_r(struct servent *restrict " result_buf ,
+.BI "                 char *restrict " buf ", size_t " buflen ,
+.BI "                 struct servent **restrict " result );
+.BI "int getservbyname_r(const char *restrict " name ,
+.BI "                 const char *restrict " proto ,
+.BI "                 struct servent *restrict " result_buf ,
+.BI "                 char *restrict " buf ", size_t " buflen ,
+.BI "                 struct servent **restrict " result );
+.BI "int getservbyport_r(int " port ,
+.BI "                 const char *restrict " proto ,
+.BI "                 struct servent *restrict " result_buf ,
+.BI "                 char *restrict " buf ", size_t " buflen ,
+.BI "                 struct servent **restrict " result );
 .PP
 .fi
 .RS -4
-- 
2.30.1.721.g45526154a5

