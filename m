Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5D81F3346D4
	for <lists+linux-man@lfdr.de>; Wed, 10 Mar 2021 19:33:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233410AbhCJSci (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 10 Mar 2021 13:32:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56174 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233425AbhCJScU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 10 Mar 2021 13:32:20 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C1F8C061760
        for <linux-man@vger.kernel.org>; Wed, 10 Mar 2021 10:32:20 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id i9so7746054wml.0
        for <linux-man@vger.kernel.org>; Wed, 10 Mar 2021 10:32:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=SbBJw7oZUCrdT15Cge/YxGfwbb0E/66cTP2LTmVSnRY=;
        b=osDtMocfH+mcAKR47YvjpLJxOmKxFAvmEx0isg40bOZTg4GqCgwqHq9wDnqacsD3UW
         OPy8otiwbRH36D8JrweKEg4jYEVfqR2AasRmqKPRkaClvsWLKuVi+qPTd7cSgzMWkLmp
         h4PxuoqO2PpyhQp1Nk+pGZUKet56CP+GuAJqnKIfLcXkdkaBLhB7IN7mjqpGF/y3Tggr
         WFqQF3CRTvg1WbeeWMFwJswHVA3ZHDcK8GuOJxBE98NEq7jYUw71pvjq9lKZ+U77U9As
         31CPwEGxgLcO/j32eFF0sCkOXe4rZC7+tmNyFWuX0pQb2SV/R/M7wPzllru88PTlpXJM
         Em+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=SbBJw7oZUCrdT15Cge/YxGfwbb0E/66cTP2LTmVSnRY=;
        b=CJVpj4I+ERJz1CR6/0XOclTFq3WLgRaxsjLyI02nKRCPs8ccTSRUEoVaurh9svDO/n
         GDyV+wNo+G1WGZDeqFrsYM6qQ8G/F4Cv/U+3gQikAzQFWzXkc9hP8qW9N1jh/WuYRtex
         8n9TLicossZ2GJUYNMNtLKvVb6slVOOoScehzaWZkQdfULlM4aNFfR8DVy2zi9EoUWW/
         xV5E4fCSFb90ee02hzferkynQnqNPGnp9i6qJWOhIuzeK6L6DGlOL0TE/TUu6AsEFO4S
         u1GQxQtw90vWlH1Xpc3obuKbLSdFsq3sALLLOBJe9KsO0eyDWuE/r3Gjn1nzT0w7BvT5
         Fgdg==
X-Gm-Message-State: AOAM531NjSHqEzPV7E45EKV9zf/Y0vOQzWd0ethY1t0CB+AuIvy7Ebrq
        4Uispb9kS9FaqIJm4pq6beE/z6Mb3nFsYA==
X-Google-Smtp-Source: ABdhPJxq34au83jDv0d8RqnRgJJjOhgBrUwWWkmj0dT5LrDKozFY0E246553+aJrWe/KygcAKJG29A==
X-Received: by 2002:a05:600c:2102:: with SMTP id u2mr4691389wml.22.1615401138646;
        Wed, 10 Mar 2021 10:32:18 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id k11sm325374wmj.1.2021.03.10.10.32.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Mar 2021 10:32:18 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 15/24] string.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Wed, 10 Mar 2021 19:31:41 +0100
Message-Id: <20210310183149.194717-16-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210310183149.194717-1-alx.manpages@gmail.com>
References: <20210310183149.194717-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in stpcpy(), strcat(), strcpy(), strncat(), strncpy(), strtok(), strxfrm().
Let's use it here too.

.../glibc$ grep_glibc_prototype stpcpy
string/string.h:475:
extern char *stpcpy (char *__restrict __dest, const char *__restrict __src)
     __THROW __nonnull ((1, 2));
.../glibc$ grep_glibc_prototype strcat
string/string.h:133:
extern char *strcat (char *__restrict __dest, const char *__restrict __src)
     __THROW __nonnull ((1, 2));
.../glibc$ grep_glibc_prototype strcpy
string/string.h:125:
extern char *strcpy (char *__restrict __dest, const char *__restrict __src)
     __THROW __nonnull ((1, 2));
.../glibc$ grep_glibc_prototype strncat
string/string.h:136:
extern char *strncat (char *__restrict __dest, const char *__restrict __src,
		      size_t __n) __THROW __nonnull ((1, 2));
.../glibc$ grep_glibc_prototype strncpy
string/string.h:128:
extern char *strncpy (char *__restrict __dest,
		      const char *__restrict __src, size_t __n)
     __THROW __nonnull ((1, 2));
.../glibc$ grep_glibc_prototype strtok
string/string.h:340:
extern char *strtok (char *__restrict __s, const char *__restrict __delim)
     __THROW __nonnull ((2));
.../glibc$ grep_glibc_prototype strxfrm
string/string.h:150:
extern size_t strxfrm (char *__restrict __dest,
		       const char *__restrict __src, size_t __n)
    __THROW __nonnull ((2)) __attr_access ((__write_only__, 1, 3));
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/string.3 | 19 +++++++++++--------
 1 file changed, 11 insertions(+), 8 deletions(-)

diff --git a/man3/string.3 b/man3/string.3
index ab4cc3ce7..06da21c28 100644
--- a/man3/string.3
+++ b/man3/string.3
@@ -66,7 +66,7 @@ in the string
 .TP
 .B #include <string.h>
 .TP
-.BI "char *stpcpy(char *" dest ", const char *" src );
+.BI "char *stpcpy(char *restrict " dest ", const char *restrict " src );
 Copy a string from
 .I src
 to
@@ -74,7 +74,7 @@ to
 returning a pointer to the end of the resulting string at
 .IR dest .
 .TP
-.BI "char *strcat(char *" dest ", const char *" src );
+.BI "char *strcat(char *restrict " dest ", const char *restrict " src );
 Append the string
 .I src
 to the string
@@ -101,7 +101,7 @@ with
 .I s2
 using the current locale.
 .TP
-.BI "char *strcpy(char *" dest ", const char *" src );
+.BI "char *strcpy(char *restrict " dest ", const char *restrict " src );
 Copy the string
 .I src
 to
@@ -129,7 +129,8 @@ Randomly swap the characters in
 Return the length of the string
 .IR s .
 .TP
-.BI "char *strncat(char *" dest ", const char *" src ", size_t " n );
+.BI "char *strncat(char *restrict " dest ", const char *restrict " src \
+", size_t " n );
 Append at most
 .I n
 bytes from the string
@@ -147,7 +148,8 @@ bytes of the strings
 and
 .IR s2 .
 .TP
-.BI "char *strncpy(char *" dest ", const char *" src ", size_t " n );
+.BI "char *strncpy(char *restrict " dest ", const char *restrict " src \
+", size_t " n );
 Copy at most
 .I n
 bytes from string
@@ -188,19 +190,20 @@ in the string
 .IR haystack ,
 returning a pointer to the found substring.
 .TP
-.BI "char *strtok(char *" s ", const char *" delim );
+.BI "char *strtok(char *restrict " s ", const char *restrict " delim );
 Extract tokens from the string
 .I s
 that are delimited by one of the bytes in
 .IR delim .
 .TP
-.BI "size_t strxfrm(char *" dest ", const char *" src ", size_t " n );
+.BI "size_t strxfrm(char *restrict " dst ", const char *restrict " src \
+", size_t " n );
 Transforms
 .I src
 to the current locale and copies the first
 .I n
 bytes to
-.IR dest .
+.IR dst .
 .SH DESCRIPTION
 The string functions perform operations on null-terminated
 strings.
-- 
2.30.1.721.g45526154a5

