Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6FA0D31AE6C
	for <lists+linux-man@lfdr.de>; Sun, 14 Feb 2021 00:11:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229703AbhBMXLZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 13 Feb 2021 18:11:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60652 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229710AbhBMXLX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 13 Feb 2021 18:11:23 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AEBF9C061788
        for <linux-man@vger.kernel.org>; Sat, 13 Feb 2021 15:10:42 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id n6so4238700wrv.8
        for <linux-man@vger.kernel.org>; Sat, 13 Feb 2021 15:10:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=WhxwzE675zbG3h3s+evpbQJ/2N4ENWs3XPX/dMjJw5s=;
        b=mm4kDyFUSUJranx4XiMYdGA1u+D8nPGJaI5sU3apv1AdzBXKYMpRXcnM+6CYrxDm2M
         kxpTeV2SUqeLUVV8NEv6lMdEknLo9/+qIsLc/lh4Vjm2JMDZwbKj0qPjz5brLCVRbkkq
         Ekz+WpP4Rxo4GuzlgQpcmKnrbqCKOuMcZZ3K4Jh0BFkrQNsNQVEpsJp9kU5/2v3WKU9W
         DSMfMjiAXnxK7SBVgtgLGj6Hz7gay4hHHsKvuA8m34w1yIuxNkPFwhjS5j2XNts9XlTo
         ZRGs/dLBvM8tPJKBdqAbPlYEpYjqoabSnrF40lsLZSh7pjGlvn7ZxlwIZEqqVDL4mXiY
         UiCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=WhxwzE675zbG3h3s+evpbQJ/2N4ENWs3XPX/dMjJw5s=;
        b=qM7hRvYwDRLs+41TQXkyimgEmkcTAGlHnNihETxaUbIE/BDs1gmcmf15K72PHIEw3E
         DdJ8WkECNmtTTPBGumNmHAihVh9DKIi6lsJ6ZhiAdZtwtC3J8rOWxEhHubpvtIkaLIHL
         eXMVhwk+n5kJMRoRd2GTO9yCVGyZ6K38ilznPtdoHGfSX7QKLKbbPTaishqlBaE8APBJ
         e454hGHnYMvTF8tK+8lf2eHUa9ROLUBBsN8RFUyWjxKOKa+IqYIxtkeyl0J9X31v6zVV
         TZwwIN09xHm+eU/9zZO4WRUcbBVHSIcXzg0V4S1lMM1ptiIm9nfS/+PUowR4QK3ZfNW9
         jOkA==
X-Gm-Message-State: AOAM53195hEkp14ufXNmf/ks9X4I2fcY3G8YmE9Ne0YHZKnbSOU/N4wh
        ZuPiX0lmyavE4r+PB+YdiN7dsxwGYBo=
X-Google-Smtp-Source: ABdhPJwBnX4CcJ55yS5iUl5ZoP+K0RsawjMw1pFn27l8Xq3CRjz3THYa8mk0ZYx7EY7R1OeqYoView==
X-Received: by 2002:adf:a50c:: with SMTP id i12mr10841912wrb.299.1613257841390;
        Sat, 13 Feb 2021 15:10:41 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id 64sm21011878wrc.50.2021.02.13.15.10.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Feb 2021 15:10:41 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 04/14] readlink.2: SYNOPSIS: Use 'restrict' in prototypes
Date:   Sun, 14 Feb 2021 00:10:14 +0100
Message-Id: <20210213231024.440020-5-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210213231024.440020-1-alx.manpages@gmail.com>
References: <20210213231024.440020-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

POSIX specifies that the parameters of readlink() and readlinkat()
shall be 'restrict'.  Glibc uses 'restrict' too.
Let's use it here too.

......

.../glibc$ grep_glibc_prototype readlink
posix/unistd.h:820:
extern ssize_t readlink (const char *__restrict __path,
			 char *__restrict __buf, size_t __len)
     __THROW __nonnull ((1, 2)) __wur __attr_access ((__write_only__, 2, 3));
.../glibc$ grep_glibc_prototype readlinkat
posix/unistd.h:832:
extern ssize_t readlinkat (int __fd, const char *__restrict __path,
			   char *__restrict __buf, size_t __len)
     __THROW __nonnull ((2, 3)) __wur __attr_access ((__write_only__, 3, 4));
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/readlink.2 | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/man2/readlink.2 b/man2/readlink.2
index 88c07e66d..92b9b09ae 100644
--- a/man2/readlink.2
+++ b/man2/readlink.2
@@ -48,14 +48,14 @@ readlink, readlinkat \- read value of a symbolic link
 .nf
 .B #include <unistd.h>
 .PP
-.BI "ssize_t readlink(const char *" pathname ", char *" buf \
-", size_t " bufsiz );
+.BI "ssize_t readlink(const char *restrict " pathname ", char *restrict " buf ,
+.BI "                 size_t " bufsiz );
 .PP
 .BR "#include <fcntl.h>           " "/* Definition of AT_* constants */"
 .B #include <unistd.h>
 .PP
-.BI "ssize_t readlinkat(int " dirfd ", const char *" pathname ,
-.BI "                   char *" buf ", size_t " bufsiz );
+.BI "ssize_t readlinkat(int " dirfd ", const char *restrict " pathname ,
+.BI "                 char *restrict " buf ", size_t " bufsiz );
 .PP
 .fi
 .RS -4
-- 
2.30.0

