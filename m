Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 18E3432F6F2
	for <lists+linux-man@lfdr.de>; Sat,  6 Mar 2021 00:52:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229964AbhCEXvl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 5 Mar 2021 18:51:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42276 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229972AbhCEXve (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 5 Mar 2021 18:51:34 -0500
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3C90C06175F
        for <linux-man@vger.kernel.org>; Fri,  5 Mar 2021 15:51:33 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id l22so2677807wme.1
        for <linux-man@vger.kernel.org>; Fri, 05 Mar 2021 15:51:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=HhvuXCSbRnCi7UkA1cJpWv2boJvtS+wypg1tiYOyje8=;
        b=QItW8Y0y/wcIFx3ImRlMx7jRU6f1/RIfSQvW2hHVneKj1A9Nqx//wvNAsMmoWZMCvP
         h9HuAcVZXF40mETqkj7G7Az8tY6ysEKwGVrcfL0iVCwNe8F7NpvTec4ikWMTDw8ceGiV
         LSqMNOm1XkLsiAe30HOZSPk9IHDju7MLLP2SVDTR/Pomu9w73FEKDjHC2BtUxGuateZ7
         GQSxjQdBQeS+pBT+/KNBgHh3/Vy3O8/iaPbcjuKsSeTf33qckmeK+xFxbr1Wb4LNPnvg
         ByBvyYJtnrWAmGfuwSg5FiaKRqYBNLusCWuRzbJvXadHWvpkDBxv+MhdmoIVcr+SpVfW
         r98A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=HhvuXCSbRnCi7UkA1cJpWv2boJvtS+wypg1tiYOyje8=;
        b=SdT1ZuY7C2kKXD6JlP8JWrUDNKQUAfZlAq4dLd8isKoNG9t+FSItTWVb2l3wZYud5A
         rcC2GXI+NlhzImF1M+aAcRQcPZpITZ02Kw4CHQf18lC+6BkZAEVhvgadFZDaAVZhq42L
         9RV8UXAAWfCBHSZvIVSxzOTqbvDYzsDhTtnjDv9hUkR1B1q+G+qZhupP9JlB6d21foVz
         UOPlfEQZ2nPe5lCVDp7/XtI/pjV/D9pNoWVTedYelhFgMJP1TGjgseF2AvPtOW1gbCDJ
         qW83PgciK1+UVDb7k/kqjktw/6vrdc7UNyuonH+ng9v22iSed1zxcSYrErYtnSdI4KLv
         w2Ug==
X-Gm-Message-State: AOAM533LamRkN/PxC+1JJ0jUMrTCwtjUy1ofZEjEtrS+fG0iRXXZDDE7
        m6rsBPHF7qbSMndVxBN4nLU=
X-Google-Smtp-Source: ABdhPJyI8SAW6g80glEEoplZMLFES4asrKDGXzsQrrBUUHzQDaHaAQ1/3RLCLvohHzUd7tpy3Lg5Ew==
X-Received: by 2002:a1c:a504:: with SMTP id o4mr10949087wme.174.1614988292707;
        Fri, 05 Mar 2021 15:51:32 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id f7sm7219835wrm.36.2021.03.05.15.51.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Mar 2021 15:51:32 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 21/22] printf.3: SYNOPSIS: Use 'restrict' in prototypes; ffix too
Date:   Sat,  6 Mar 2021 00:51:05 +0100
Message-Id: <20210305235105.177359-22-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210305235105.177359-1-alx.manpages@gmail.com>
References: <20210305235105.177359-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in printf(), fprintf(),
dprintf(), sprintf(), snprintf(), vprintf(), vfprintf(),
vdprintf(), vsprintf(), vsnprintf().
Let's use it here too.

.../glibc$ grep_glibc_prototype printf
libio/stdio.h:332:
extern int printf (const char *__restrict __format, ...);
.../glibc$ grep_glibc_prototype fprintf
libio/stdio.h:326:
extern int fprintf (FILE *__restrict __stream,
		    const char *__restrict __format, ...);
.../glibc$ grep_glibc_prototype dprintf
libio/stdio.h:382:
extern int dprintf (int __fd, const char *__restrict __fmt, ...)
     __attribute__ ((__format__ (__printf__, 2, 3)));
.../glibc$ grep_glibc_prototype sprintf
libio/stdio.h:334:
extern int sprintf (char *__restrict __s,
		    const char *__restrict __format, ...) __THROWNL;
.../glibc$ grep_glibc_prototype snprintf
libio/stdio.h:354:
extern int snprintf (char *__restrict __s, size_t __maxlen,
		     const char *__restrict __format, ...)
     __THROWNL __attribute__ ((__format__ (__printf__, 3, 4)));
.../glibc$ grep_glibc_prototype vprintf
libio/stdio.h:347:
extern int vprintf (const char *__restrict __format, __gnuc_va_list __arg);
.../glibc$ grep_glibc_prototype vfprintf
libio/stdio.h:341:
extern int vfprintf (FILE *__restrict __s, const char *__restrict __format,
		     __gnuc_va_list __arg);
.../glibc$ grep_glibc_prototype vdprintf
libio/stdio.h:379:
extern int vdprintf (int __fd, const char *__restrict __fmt,
		     __gnuc_va_list __arg)
     __attribute__ ((__format__ (__printf__, 2, 0)));
.../glibc$ grep_glibc_prototype vsprintf
libio/stdio.h:349:
extern int vsprintf (char *__restrict __s, const char *__restrict __format,
		     __gnuc_va_list __arg) __THROWNL;
.../glibc$ grep_glibc_prototype vsnprintf
libio/stdio.h:358:
extern int vsnprintf (char *__restrict __s, size_t __maxlen,
		      const char *__restrict __format, __gnuc_va_list __arg)
     __THROWNL __attribute__ ((__format__ (__printf__, 3, 0)));
.../glibc$

ffix: Align common parameters.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/printf.3 | 29 ++++++++++++++++++-----------
 1 file changed, 18 insertions(+), 11 deletions(-)

diff --git a/man3/printf.3 b/man3/printf.3
index 48bb9771d..fa6564426 100644
--- a/man3/printf.3
+++ b/man3/printf.3
@@ -39,20 +39,27 @@ vsprintf, vsnprintf \- formatted output conversion
 .nf
 .B #include <stdio.h>
 .PP
-.BI "int printf(const char *" format ", ...);"
-.BI "int fprintf(FILE *" stream ", const char *" format ", ...);"
-.BI "int dprintf(int " fd ", const char *" format ", ...);"
-.BI "int sprintf(char *" str ", const char *" format ", ...);"
-.BI "int snprintf(char *" str ", size_t " size ", const char *" format ", ...);"
+.BI "int printf(const char *restrict " format ", ...);"
+.BI "int fprintf(FILE *restrict " stream ,
+.BI "            const char *restrict " format ", ...);"
+.BI "int dprintf(int " fd ,
+.BI "            const char *restrict " format ", ...);"
+.BI "int sprintf(char *restrict " str ,
+.BI "            const char *restrict " format ", ...);"
+.BI "int snprintf(char *restrict " str ", size_t " size ,
+.BI "            const char *restrict " format ", ...);"
 .PP
 .B #include <stdarg.h>
 .PP
-.BI "int vprintf(const char *" format ", va_list " ap );
-.BI "int vfprintf(FILE *" stream ", const char *" format ", va_list " ap );
-.BI "int vdprintf(int " fd ", const char *" format ", va_list " ap );
-.BI "int vsprintf(char *" str ", const char *" format ", va_list " ap );
-.BI "int vsnprintf(char *" str ", size_t " size ", const char *" format \
-", va_list " ap );
+.BI "int vprintf(const char *restrict " format ", va_list " ap );
+.BI "int vfprintf(FILE *restrict " stream ,
+.BI "            const char *restrict " format ", va_list " ap );
+.BI "int vdprintf(int " fd ,
+.BI "            const char *restrict " format ", va_list " ap );
+.BI "int vsprintf(char *restrict " str ,
+.BI "            const char *restrict " format ", va_list " ap );
+.BI "int vsnprintf(char *restrict " str ", size_t " size ,
+.BI "            const char *restrict " format ", va_list " ap );
 .fi
 .PP
 .RS -4
-- 
2.30.1.721.g45526154a5

