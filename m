Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 25FD33796A4
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 19:56:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233278AbhEJR6A (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 May 2021 13:58:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54472 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232654AbhEJR6A (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 10 May 2021 13:58:00 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E9C62C06175F
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:56:53 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id x5so17513976wrv.13
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 10:56:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=CujOcABIK+X861aRE80Z2RSaRPtiDpoJxB0RMvHDZeU=;
        b=ERcRxw2+3xKzuLycALETctSDXLHZIL9UYmgM13p+PRDNZsSYJZA13QwhcOcul0IRI0
         SUefo7H4nPqx77CL35kTNrHPnxtHxbvw9gtqT+CoHXhHLgMznAxuJ+zpRpuBE33Hjh8O
         PiAn36ruY2T5dxEgtS9yw3Dh6eGU9RK1dZ9fP9oulVfyOA/5TIKGJRfIk02jKCkafLLi
         K2USirXvx5eZLD8Q2pX+iu4onO9sInoPsDiglaap+DKgJYGpuLr9mt3JoOEFqEm15rbf
         Bp+aaZRyG6cRst3BEOWI04B2+/RSjGXJ4zLTdoJPsB18XgSmXPSTfnmUQofjzctbYHN5
         A+4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=CujOcABIK+X861aRE80Z2RSaRPtiDpoJxB0RMvHDZeU=;
        b=ijjHZ5VI0368qU11QwxM3/SPxpVHNF/GQE8Nfudf++Z0IQK0N67bLBAnTu7b4bDuYt
         p/s34oM6I/ikGMoYQX8zhAsxNi6glSRqH+6eYxLwFMVUL084rtJ+lGM8huVYbC5kTGs+
         jCp31B2EvD/ceqt863pA0Ga4/XOEFXGfX0f2s318h7JbRmv5tqsSOhwZSeSXMAKmYWEY
         8ZbDsdY7tMgfI+++x/nwKciWclP8BD3T82pIHSnhdVdkwqCIsDfCdS97hSpEkzx4SVwa
         pTSW1nvR8CCmkK3pg8JdGInBibM9NnubOKQZg7k3DOxGNPzXsxJToYMZ6fkXWiO1lral
         dPLg==
X-Gm-Message-State: AOAM5331VrEaqAawUYjS1BZXc8Ji8p7gf06sxyPhPzMn+FOQkz4OBMLn
        4UNI2Xc57WLGb+ItW49bc/8=
X-Google-Smtp-Source: ABdhPJxTVEzVILiK0f6HDaHsshxH8SYVnIhrVO2A7P8UQAgcvklPT8MEeJXtyy0YLaAaIXIWhz3bFQ==
X-Received: by 2002:a5d:638b:: with SMTP id p11mr32149601wru.90.1620669412759;
        Mon, 10 May 2021 10:56:52 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id m13sm24318830wrw.86.2021.05.10.10.56.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 May 2021 10:56:52 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Florian Weimer <fweimer@redhat.com>, Jakub Wilk <jwilk@jwilk.net>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 24/39] mq_getsetattr.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Mon, 10 May 2021 19:55:33 +0200
Message-Id: <20210510175546.28445-25-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210510175546.28445-1-alx.manpages@gmail.com>
References: <20210510175546.28445-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/mq_getsetattr.2 | 15 ++++++---------
 1 file changed, 6 insertions(+), 9 deletions(-)

diff --git a/man2/mq_getsetattr.2 b/man2/mq_getsetattr.2
index 2f11b9d44..23dd2a8b9 100644
--- a/man2/mq_getsetattr.2
+++ b/man2/mq_getsetattr.2
@@ -27,14 +27,13 @@
 mq_getsetattr \- get/set message queue attributes
 .SH SYNOPSIS
 .nf
-.B #include <mqueue.h>
+.BR "#include <mqueue.h>" "           /* Definition of " "struct mq_attr" " */"
+.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
+.B #include <unistd.h>
 .PP
-.BI "int mq_getsetattr(mqd_t " mqdes ", const struct mq_attr *" newattr ,
-.BI "                  struct mq_attr *" oldattr );
+.BI "int syscall(SYS_mq_getsetattr, mqd_t " mqdes ,
+.BI "            const struct mq_attr *" newattr ", struct mq_attr *" oldattr );
 .fi
-.PP
-.IR Note :
-There is no glibc wrapper for this system call; see NOTES.
 .SH DESCRIPTION
 Do not use this system call.
 .PP
@@ -48,9 +47,7 @@ see the description of
 .SH CONFORMING TO
 This interface is nonstandard; avoid its use.
 .SH NOTES
-Glibc does not provide a wrapper for this system call; call it using
-.BR syscall (2).
-(Actually, never call it unless you are writing a C library!)
+Never call it unless you are writing a C library!
 .SH SEE ALSO
 .BR mq_getattr (3),
 .BR mq_overview (7)
-- 
2.31.1

