Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 09045338055
	for <lists+linux-man@lfdr.de>; Thu, 11 Mar 2021 23:34:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229470AbhCKWeR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 11 Mar 2021 17:34:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51116 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229872AbhCKWdw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 11 Mar 2021 17:33:52 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 16DCCC061574
        for <linux-man@vger.kernel.org>; Thu, 11 Mar 2021 14:33:52 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id n11-20020a05600c4f8bb029010e5cf86347so3723260wmq.1
        for <linux-man@vger.kernel.org>; Thu, 11 Mar 2021 14:33:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=iwyGcjrlZFtxE+2vZRDgNqr/+vnEfhVD+kspEZi3mTQ=;
        b=IITEfL7NZwpHC8LbB4763ouMA847kCHnce+B3Q7gcJuC/vx6vgJn1dxGsWfKQHVpx1
         yhyDKxj0/u8CvTshGehTwDgJTJ7bTu7zTO5Uqm1M0NoRPVPXBM8R7zM2z2yMdWkGVHUK
         gsyPuAOhnEV4o10jgAAdZ9ZpAgZhWIysRg5nTInG5fFBYIbfN5juiPYtzp+HvRwv9O7a
         zxG+UH6qbJsnqikpBPJkz0M5v2IKGZoc4HojnmRmH0ULVaSc3d80D11Zkn8R+PHj3Zjp
         bn8V5JYZazLjNGyJI0yJm4JjDqPfL1QOiK4qkJeRC34zJY7hGVN17Ucksqy8pWFnVV/W
         2SwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=iwyGcjrlZFtxE+2vZRDgNqr/+vnEfhVD+kspEZi3mTQ=;
        b=aKaz8oktrUoBcVfPQE2IZ/9WX9h6z9lIi8Hb3snrodFnztWYv92ylQD80YXZSn+XFJ
         yvSG0PnqAHS2wo/zB4YGUoHrOydPhw0gZKymEbUaXyJ1y39AI+JCb/Xwi4+S9ZOxBmEm
         pwko9QCg71h/xOHDyqZ2cVI06zHozZCqQOgbNON61ELK4AmJN9GD+JIHMdAU200eC9mE
         n2VLIXmoVqR+0SsVzBTzDsXKbvd7Pk4gfaZNkQkiJpbDKY6ogU5ppoExitTRKRCCV49Q
         +2+wcyluTYOqVljgMylQ+UMt5I698RSla6APPXE4s2sY4G3n2+tjQd0l5JbNcBrZxwj6
         kdEA==
X-Gm-Message-State: AOAM531dahxku6b8AbBOUcwyFnnVHDqqJSXY2R9OrTHAshwh5z1t+86P
        HNTlfOKCR13re+HjcQK8M8iuSuOKRjc=
X-Google-Smtp-Source: ABdhPJzP7vd3AfCqN3AFl7k7KucTLWWwqZbeV3sknCWB2xVg3fywO7Qhd+8yTLFj6F8MnoZFJ9b+7Q==
X-Received: by 2002:a05:600c:4305:: with SMTP id p5mr10115920wme.58.1615502030874;
        Thu, 11 Mar 2021 14:33:50 -0800 (PST)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id v2sm22365771wmj.1.2021.03.11.14.33.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Mar 2021 14:33:50 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 11/17] wcsnrtombs.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Thu, 11 Mar 2021 23:33:24 +0100
Message-Id: <20210311223330.722437-12-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210311223330.722437-1-alx.manpages@gmail.com>
References: <20210311223330.722437-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in wcsnrtombs().
Let's use it here too.

.../glibc$ grep_glibc_prototype wcsnrtombs
wcsmbs/wchar.h:357:
extern size_t wcsnrtombs (char *__restrict __dst,
			  const wchar_t **__restrict __src,
			  size_t __nwc, size_t __len,
			  mbstate_t *__restrict __ps) __THROW;
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/wcsnrtombs.3 | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/man3/wcsnrtombs.3 b/man3/wcsnrtombs.3
index 7c9c210ad..1fb5ae626 100644
--- a/man3/wcsnrtombs.3
+++ b/man3/wcsnrtombs.3
@@ -19,8 +19,9 @@ wcsnrtombs \- convert a wide-character string to a multibyte string
 .nf
 .B #include <wchar.h>
 .PP
-.BI "size_t wcsnrtombs(char *" dest ", const wchar_t **" src ", size_t " nwc ,
-.BI "                  size_t " len ", mbstate_t *" ps );
+.BI "size_t wcsnrtombs(char *restrict " dest ", const wchar_t **restrict " src ,
+.BI "                  size_t " nwc ", size_t " len \
+", mbstate_t *restrict " ps );
 .fi
 .PP
 .RS -4
-- 
2.30.1

