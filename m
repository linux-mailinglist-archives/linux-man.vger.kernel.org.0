Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8729D3316C7
	for <lists+linux-man@lfdr.de>; Mon,  8 Mar 2021 19:55:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231294AbhCHSyr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 8 Mar 2021 13:54:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58128 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229650AbhCHSy0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 8 Mar 2021 13:54:26 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30F44C06174A
        for <linux-man@vger.kernel.org>; Mon,  8 Mar 2021 10:54:26 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id d15so12605076wrv.5
        for <linux-man@vger.kernel.org>; Mon, 08 Mar 2021 10:54:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ZfZTkSy2d0t1QxgQZV+5fOk7Mjr7noWTh+/ZrecrUvY=;
        b=a9ZGoLBZAQmNYN0qsr2OC5AdsAOMWmuzZGbaIBYthOOmpEml/ugurOC1cPefBSCqOT
         0PiD5AVr3Z86saCFq+DE42jn86WZ2P/m6Of2nzTqCxvNtDfAD/sIkdYnOx2ygnabTuaP
         SJ+5kON7FnniXasoz6zVkO3ZFvvUH+B2GyVcVC9C5+6juMtaRgZ6NpbpDOy6D7Efb2jx
         q1WwsFp+cb9/I/hgLjRD/4nIYIf8K4Gl97k9xI9R9w/2nAfYfAVoiCOJW4dYq2c3R9Hr
         E5Jd6mFDewUrh8uqLZsofPHqGHThlLFVeIcAT8glbZf5Tp4BgJgTypvVLY9tnJuCnBhz
         bEag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ZfZTkSy2d0t1QxgQZV+5fOk7Mjr7noWTh+/ZrecrUvY=;
        b=Hmpa6btBOrlJUWAueisE6wYoe+UqUyqCQlB26+uVxS6BHZodYACvpxlj2sS1JV3esO
         43V17pnB9ESWXYlkOJoMNcVP1D/walWHfZeUHpeEfFF3g2v63lSpRABS6rN0Amnqc1wI
         CSkEMkpxM1UmvIelqktXjnIk+jY1xlzJNsLFj3/QO5qOiLzINTSOL9B5Mw4MN8e6B1l3
         0BcLjZuINpxJr2MCSCkQrTbpH8+y3Qeb9ddxVq5j9ZSm6xYql+1Lv8hhjOYYSz3imoA0
         bavFbL0WeZITrU5KrkrbkhitbBZpNsMFmvXfX5ZMAUcL8KKDYRnHOK6vD3Aaz3M7Um3n
         Jugg==
X-Gm-Message-State: AOAM5336ImVEM1aNu0orbwGyI/4+PJHDmAV8J+AqRyz9yDjZXHGQl3N2
        6sZnyEoLOCZ9xpK/e5dLFkoGjns56PU=
X-Google-Smtp-Source: ABdhPJxNg46CmKJ/ZzLQ/HOVs5zuqet5mOGhfO2WCY2M6AgJxIq0tt4P+najbPZMedBBVlgW+TEZ9Q==
X-Received: by 2002:a5d:4ac4:: with SMTP id y4mr23848618wrs.86.1615229665039;
        Mon, 08 Mar 2021 10:54:25 -0800 (PST)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id i11sm19889921wro.53.2021.03.08.10.54.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Mar 2021 10:54:24 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 17/23] rcmd.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Mon,  8 Mar 2021 19:53:26 +0100
Message-Id: <20210308185331.242176-18-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210308185331.242176-1-alx.manpages@gmail.com>
References: <20210308185331.242176-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

glibc uses 'restrict' in rcmd(), rcmd_af(), iruserok_af().
Let's use it here too.

.../glibc$ grep_glibc_prototype rcmd
resolv/netdb.h:449:
extern int rcmd (char **__restrict __ahost, unsigned short int __rport,
		 const char *__restrict __locuser,
		 const char *__restrict __remuser,
		 const char *__restrict __cmd, int *__restrict __fd2p);
.../glibc$ grep_glibc_prototype rcmd_af
resolv/netdb.h:461:
extern int rcmd_af (char **__restrict __ahost, unsigned short int __rport,
		    const char *__restrict __locuser,
		    const char *__restrict __remuser,
		    const char *__restrict __cmd, int *__restrict __fd2p,
		    sa_family_t __af);
.../glibc$ grep_glibc_prototype iruserok_af
resolv/netdb.h:537:
extern int iruserok_af (const void *__raddr, int __suser,
			const char *__remuser, const char *__locuser,
			sa_family_t __af);
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/rcmd.3 | 26 ++++++++++++++------------
 1 file changed, 14 insertions(+), 12 deletions(-)

diff --git a/man3/rcmd.3 b/man3/rcmd.3
index 0349646c7..d2df6b629 100644
--- a/man3/rcmd.3
+++ b/man3/rcmd.3
@@ -49,28 +49,30 @@ stream to a remote command
 .nf
 .BR "#include <netdb.h>    " "/* Or <unistd.h> on some systems */"
 .PP
-.BI "int rcmd(char **" ahost ", unsigned short " inport ", const char *" locuser ,
-.BI "             const char *" remuser ", const char *" cmd ", int *" fd2p );
+.BI "int rcmd(char **restrict " ahost ", unsigned short " inport ,
+.BI "         const char *restrict " locuser ", const char *restrict " remuser ,
+.BI "         const char *restrict " cmd ", int *restrict " fd2p );
 .PP
 .BI "int rresvport(int *" port );
 .PP
 .BI "int iruserok(uint32_t " raddr ", int " superuser ,
-.BI "             const char *" ruser ", const char *" luser );
+.BI "         const char *" ruser ", const char *" luser );
 .BI "int ruserok(const char *" rhost ", int " superuser ,
-.BI "             const char *" ruser ", const char *" luser );
+.BI "         const char *" ruser ", const char *" luser );
 .PP
-.BI "int rcmd_af(char **" ahost ", unsigned short " inport ", const char *" locuser ,
-.BI "             const char *" remuser ", const char *" cmd ", int *" fd2p ,
-.BI "             sa_family_t " af );
+.BI "int rcmd_af(char **restrict " ahost ", unsigned short " inport ,
+.BI "         const char *restrict " locuser ", const char *restrict " remuser ,
+.BI "         const char *restrict " cmd ", int *restrict " fd2p ,
+.BI "         sa_family_t " af );
 .PP
 .BI "int rresvport_af(int *" port ", sa_family_t " af );
 .PP
-.BI "int iruserok_af(const void *" raddr ", int " superuser ,
-.BI "             const char *" ruser ", const char *" luser \
-", sa_family_t " af );
+.BI "int iruserok_af(const void *restrict " raddr ", int " superuser ,
+.BI "        const char *restrict " ruser ", const char *restrict " luser ,
+.BI "        sa_family_t " af );
 .BI "int ruserok_af(const char *" rhost ", int " superuser ,
-.BI "             const char *" ruser ", const char *" luser \
-", sa_family_t " af );
+.BI "        const char *" ruser ", const char *" luser ,
+.BI "        sa_family_t " af );
 .fi
 .PP
 .RS -4
-- 
2.30.1

