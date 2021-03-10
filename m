Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 210393346C7
	for <lists+linux-man@lfdr.de>; Wed, 10 Mar 2021 19:33:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232598AbhCJScg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 10 Mar 2021 13:32:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56126 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233336AbhCJScM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 10 Mar 2021 13:32:12 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1467C061760
        for <linux-man@vger.kernel.org>; Wed, 10 Mar 2021 10:32:11 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id n22so7751328wmc.2
        for <linux-man@vger.kernel.org>; Wed, 10 Mar 2021 10:32:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=TTdSfDoRiVb1tuE+92dsswKwFjc3WvqJM2t894HwE+0=;
        b=E6HtMAJWC1W4AkbxQa2fhjk3BcdJYBSfmkS+eW1/DRTTwuU9pXLCLrwVQKxwntMs0B
         RybjGCdNXwremXuUZVOT4tHdOTJRXmRYGF7lt+6gRSYxH3MorlBJR8lEBpMSXgim9dca
         y3iFFYa+pAIMbxduMxkpDUgAbbeNJpMXnVgUdTBkMG36EUkkaLi3IdRfa3VdkJABblnG
         N6xoYHTFnxj46Sd73j4dcennuuZndsTjzX6pITqxSxnV6gwKRg+hSK4qcYN5zkEN1BhT
         mpS9cUsaoYQaCl/7HL7S6D137wRnFunpU7SAfKksp8Sa65ihvqTWtzi562OnceHik1Q0
         SVzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=TTdSfDoRiVb1tuE+92dsswKwFjc3WvqJM2t894HwE+0=;
        b=Jdry8/YtPn1a9cTcx5HdLEAcrYdxTFnvT9hxiDTpWTE1/3kiEls8t5k1HCMr1fP6e3
         GCx5VTQgRXeznumFMC1I1iMp5rNl//f/hDTy2xa0eXjRhQ1X7PJL6CvHYBsZUKzyGQl3
         tI4G2Mj31+Fugl7NYynS8VzC8sawHjDq5gFvZ7Zd3fyAWHBo+TKZF9Y7eZq3bCJ9S7bx
         1jGJ9Lb5lPCKKNV9Aju25dtP0sZXuKuMxj5Sm0fqV+Pyn1RbrRuuoDh+04H5HMKuGdG8
         Ft9JjX3Hz4kkoarH34qmuKJSoJH2xWijfJ/SggNlNWDnNubx+C/xWj+zP2ljHroH4FSL
         Ob/A==
X-Gm-Message-State: AOAM530sddLYdQGO+2zO7d7kZQdb/HiZKwl3cslwTfLLcNRIBK4+9KMo
        5WlqLOuXAENby+vWTCAhvLE=
X-Google-Smtp-Source: ABdhPJyPjNiZoNtH9EE7CB3RWZiEjP57WGXFB2E9xeBOAgbxHH43Fkh1RqdfZSIoC2J5qrDhpEbgow==
X-Received: by 2002:a1c:6543:: with SMTP id z64mr4706350wmb.50.1615401130522;
        Wed, 10 Mar 2021 10:32:10 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id k11sm325374wmj.1.2021.03.10.10.32.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Mar 2021 10:32:10 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 05/24] setbuf.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Wed, 10 Mar 2021 19:31:31 +0100
Message-Id: <20210310183149.194717-6-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210310183149.194717-1-alx.manpages@gmail.com>
References: <20210310183149.194717-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in setvbuf(), setbuf().
Let's use it here too.

.../glibc$ grep_glibc_prototype setvbuf
libio/stdio.h:308:
extern int setvbuf (FILE *__restrict __stream, char *__restrict __buf,
		    int __modes, size_t __n) __THROW;
.../glibc$ grep_glibc_prototype setbuf
libio/stdio.h:304:
extern void setbuf (FILE *__restrict __stream, char *__restrict __buf) __THROW;
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/setbuf.3 | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/man3/setbuf.3 b/man3/setbuf.3
index ac73bb06e..708e5c5aa 100644
--- a/man3/setbuf.3
+++ b/man3/setbuf.3
@@ -52,10 +52,10 @@ setbuf, setbuffer, setlinebuf, setvbuf \- stream buffering operations
 .nf
 .B #include <stdio.h>
 .PP
-.BI "int setvbuf(FILE *" stream ", char *" buf ", int " mode \
-", size_t " size );
+.BI "int setvbuf(FILE *restrict " stream ", char *restrict " buf ,
+.BI "            int " mode ", size_t " size );
 .PP
-.BI "void setbuf(FILE *" stream ", char *" buf );
+.BI "void setbuf(FILE *restrict " stream ", char *restrict " buf );
 .BI "void setbuffer(FILE *restrict " stream ", char *restrict " buf ,
 .BI "            size_t "  size );
 .BI "void setlinebuf(FILE *" stream );
-- 
2.30.1.721.g45526154a5

