Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A640A33804E
	for <lists+linux-man@lfdr.de>; Thu, 11 Mar 2021 23:34:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229679AbhCKWeH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 11 Mar 2021 17:34:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51082 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229756AbhCKWdq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 11 Mar 2021 17:33:46 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C4311C061574
        for <linux-man@vger.kernel.org>; Thu, 11 Mar 2021 14:33:45 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id b18so3714857wrn.6
        for <linux-man@vger.kernel.org>; Thu, 11 Mar 2021 14:33:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=mgmXHrDeoTzmoHBxPWQOD2RzNwW9F/xIZ7kEpSy3Bi0=;
        b=NJnKlm2IbKf1Xc3dpdbE0jq4hGio950tJzcAyrv6vYDeh6S7DgtR9ylLiEfnppfkQI
         dviCzrUpzER2sIPz5IucDmsEjd92LwGWYdzAykdoMkYNwJdY1Gd9p98vy240QrmGhtp9
         X1yAUYY4Hu59+f7HV4u1JKFVWuGb00EgsfCxybMsO1k1RLOoH1rizI/Hm6n6wUj4oF3M
         rQRy6Id94G4PaU/ilcmh8NN36VaNoBW/IG9jruAgIvaHYstRrsw/vPvT9Jr3lsvCN96m
         elBBXo6wH9LXJREpGKr1melvYaSD3jaGqrT3e7cAc+PoN/ineKMp2x3t96/Uvcdk5CTj
         hL2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=mgmXHrDeoTzmoHBxPWQOD2RzNwW9F/xIZ7kEpSy3Bi0=;
        b=ro0+q0bFSSSnfC8cM3tXIqhMzfXBkGAmcIT48MzTcRTwNg/6cug7OB47rob3mKGJk9
         kGhqK3k6kx0he1ds36ygG1b34kqx6eUbO40A9b8Be4g4uFaQ8LZfUCYcgv26y1+/ZDGQ
         jgY0+Q7u+oGunigZ5la3k63iniDJ+LgxwSnD5XqJ5kHr8j2pxSB5NQNb+hRgjIuXQmo+
         jk663XTKq2afqYkv/hCu3UEB0jhfh8FmuQ52br55p8ZvQ0OKqvMD5lbJIaJHKRjtxyaF
         4tBTFGLpzCetKSvvW+Y/NlxXaDN0f4Mfw9Gr4qJghMkjEQmFCUdyGi0A97z61+xBTM1c
         NXgg==
X-Gm-Message-State: AOAM533DZdRtIKcH9j/kYC++gIcpKiu4T2VswvkqjuwPiITzJIJSDqmy
        BFnMGlJxpTqSo5drC3130ys=
X-Google-Smtp-Source: ABdhPJyxDpiCm+vGMfHkfvP5JPKpeDzdhJKPmDYRwVpbmtowdXytiDhka1KOugHgxangIW3/QSL3TQ==
X-Received: by 2002:adf:d0c9:: with SMTP id z9mr11258834wrh.396.1615502024554;
        Thu, 11 Mar 2021 14:33:44 -0800 (PST)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id v2sm22365771wmj.1.2021.03.11.14.33.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Mar 2021 14:33:44 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 03/17] unlocked_stdio.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Thu, 11 Mar 2021 23:33:16 +0100
Message-Id: <20210311223330.722437-4-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210311223330.722437-1-alx.manpages@gmail.com>
References: <20210311223330.722437-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

glibc uses 'restrict' in fread_unlocked(), fwrite_unlocked(), fgets_unlocked(), fputs_unlocked(), fgetws_unlocked(), fputws_unlocked().
Let's use it here too.

.../glibc$ grep_glibc_prototype fread_unlocked
libio/stdio.h:678:
extern size_t fread_unlocked (void *__restrict __ptr, size_t __size,
			      size_t __n, FILE *__restrict __stream) __wur;
.../glibc$ grep_glibc_prototype fwrite_unlocked
libio/stdio.h:680:
extern size_t fwrite_unlocked (const void *__restrict __ptr, size_t __size,
			       size_t __n, FILE *__restrict __stream);
.../glibc$ grep_glibc_prototype fgets_unlocked
libio/stdio.h:591:
extern char *fgets_unlocked (char *__restrict __s, int __n,
			     FILE *__restrict __stream) __wur
    __attr_access ((__write_only__, 1, 2));
.../glibc$ grep_glibc_prototype fputs_unlocked
libio/stdio.h:667:
extern int fputs_unlocked (const char *__restrict __s,
			   FILE *__restrict __stream);
.../glibc$ grep_glibc_prototype fgetws_unlocked
wcsmbs/wchar.h:820:
extern wchar_t *fgetws_unlocked (wchar_t *__restrict __ws, int __n,
				 __FILE *__restrict __stream);
.../glibc$ grep_glibc_prototype fputws_unlocked
wcsmbs/wchar.h:829:
extern int fputws_unlocked (const wchar_t *__restrict __ws,
			    __FILE *__restrict __stream);
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/unlocked_stdio.3 | 20 ++++++++++++--------
 1 file changed, 12 insertions(+), 8 deletions(-)

diff --git a/man3/unlocked_stdio.3 b/man3/unlocked_stdio.3
index 324c4fdc8..e16c5a521 100644
--- a/man3/unlocked_stdio.3
+++ b/man3/unlocked_stdio.3
@@ -44,13 +44,15 @@ putchar_unlocked \- nonlocking stdio functions
 .BI "int fgetc_unlocked(FILE *" stream );
 .BI "int fputc_unlocked(int " c ", FILE *" stream );
 .PP
-.BI "size_t fread_unlocked(void *" ptr ", size_t " size ", size_t " n ,
-.BI "                      FILE *" stream );
-.BI "size_t fwrite_unlocked(const void *" ptr ", size_t " size ", size_t " n ,
-.BI "                      FILE *" stream );
+.BI "size_t fread_unlocked(void *restrict " ptr ", size_t " size ", size_t " n ,
+.BI "                      FILE *restrict " stream );
+.BI "size_t fwrite_unlocked(const void *restrict " ptr ", size_t " size \
+", size_t " n ,
+.BI "                      FILE *restrict " stream );
 .PP
-.BI "char *fgets_unlocked(char *" s ", int " n ", FILE *" stream );
-.BI "int fputs_unlocked(const char *" s ", FILE *" stream );
+.BI "char *fgets_unlocked(char *restrict " s ", int " n \
+", FILE *restrict " stream );
+.BI "int fputs_unlocked(const char *restrict " s ", FILE *restrict " stream );
 .PP
 .B #include <wchar.h>
 .PP
@@ -62,8 +64,10 @@ putchar_unlocked \- nonlocking stdio functions
 .BI "wint_t putwc_unlocked(wchar_t " wc ", FILE *" stream );
 .BI "wint_t putwchar_unlocked(wchar_t " wc );
 .PP
-.BI "wchar_t *fgetws_unlocked(wchar_t *" ws ", int " n ", FILE *" stream );
-.BI "int fputws_unlocked(const wchar_t *" ws ", FILE *" stream );
+.BI "wchar_t *fgetws_unlocked(wchar_t *restrict " ws ", int " n ,
+.BI "                      FILE *restrict " stream );
+.BI "int fputws_unlocked(const wchar_t *restrict " ws ,
+.BI "                      FILE *restrict " stream );
 .fi
 .PP
 .RS -4
-- 
2.30.1

