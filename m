Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DFC4632F6E1
	for <lists+linux-man@lfdr.de>; Sat,  6 Mar 2021 00:52:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229875AbhCEXvj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 5 Mar 2021 18:51:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42208 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229911AbhCEXvX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 5 Mar 2021 18:51:23 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AA09BC06175F
        for <linux-man@vger.kernel.org>; Fri,  5 Mar 2021 15:51:22 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id u187so2664900wmg.4
        for <linux-man@vger.kernel.org>; Fri, 05 Mar 2021 15:51:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=iXfj+ysqq81ozyYtY+Jv42rHAHmCy5CcVEwV8ZEX+XY=;
        b=RTLnUQjyIARQYrFNYWMlJf8icxUkItFRmP4EQ210Y4NMRuSir5nIMDNw/OVIeVltYR
         xeJDlK6uxEKkp+SUY1qC9ZHB4/Q4aIn0hJYmtQhISIZYrqJndDmeOILi1Pk5KmXvAmUj
         cmM55turzQiiMz13R9LOg0qUN3VyQYGWXyb5pG9+2cL13JXsRsIYLF0hWXrwob96degq
         7dK/6v1n1maAHbo8pMn7EoPu/erTyOnqPRIua/+ohY8zCoQWvuEVw3ddCZeNqJ2wf7bM
         NwxnUDfNQD/cdP0UlJRBOX2AR6eaTov9gcaF0GPKQ8apdThcrmyM6JqLptZkEhZ6zSAk
         lZPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=iXfj+ysqq81ozyYtY+Jv42rHAHmCy5CcVEwV8ZEX+XY=;
        b=rfpQuRALAgLxSpcGrMvMhIU7M5nlxdbnotlXemwTP1UWKs7F6tYldNXH9rq5qq+35E
         neaBsLiWQh9Hys9gE0D7Oiy8JK7HB+UWOgLsDMsZRXTYwqoxFQMg0+0QKi9TommX8PDL
         SPOAVfYwSI8vUY+ZUymfMjkQkZI7NgorYaNFpT/VRa95qlzSAvupQ62cE53Ei8xU1Uvo
         LJMUyY42FYevEqnUwO52YcyOnRmeMd38vyT4O/aEmZc5cjixyJWpjYS6GDWx0IlAtmBK
         FIivh/sWc4yICdlB0e+9fUo4BCj1NnnnUX6cKXhV4yIq2KLivbwOtwUQ3RvMBA4qlxHx
         ALag==
X-Gm-Message-State: AOAM531vlaI08kmFc6avJxxW9Ms7U8qx3ShnUsZ0DHtzG9vR8GVCC0gu
        zgBihOwetXlPjn4Umxh6vNM=
X-Google-Smtp-Source: ABdhPJzSeeXls5PCc8ijcdMrdAu2P0qo5ICQoo65/4aB6UlhHWujMHLQrVMc/Jrg/rawcJZf1Iu6+w==
X-Received: by 2002:a1c:7916:: with SMTP id l22mr10895132wme.86.1614988281474;
        Fri, 05 Mar 2021 15:51:21 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id f7sm7219835wrm.36.2021.03.05.15.51.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Mar 2021 15:51:21 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 08/22] makecontext.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Sat,  6 Mar 2021 00:50:52 +0100
Message-Id: <20210305235105.177359-9-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210305235105.177359-1-alx.manpages@gmail.com>
References: <20210305235105.177359-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX.1-2001 and glibc use 'restrict' in swapcontext().
Let's use it here too.

.../glibc$ grep_glibc_prototype swapcontext
stdlib/ucontext.h:41:
extern int swapcontext (ucontext_t *__restrict __oucp,
			const ucontext_t *__restrict __ucp)
  __THROWNL __INDIRECT_RETURN;
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/makecontext.3 | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/man3/makecontext.3 b/man3/makecontext.3
index 83720dd2c..859181ddb 100644
--- a/man3/makecontext.3
+++ b/man3/makecontext.3
@@ -32,8 +32,10 @@ makecontext, swapcontext \- manipulate user context
 .nf
 .B #include <ucontext.h>
 .PP
-.BI "void makecontext(ucontext_t *" ucp ", void (*" func ")(), int " argc ", ...);"
-.BI "int swapcontext(ucontext_t *" oucp ", const ucontext_t *" ucp );
+.BI "void makecontext(ucontext_t *" ucp ", void (*" func ")(), int " argc \
+", ...);"
+.BI "int swapcontext(ucontext_t *restrict " oucp ,
+.BI "                const ucontext_t *restrict " ucp );
 .fi
 .SH DESCRIPTION
 In a System V-like environment, one has the type
-- 
2.30.1.721.g45526154a5

