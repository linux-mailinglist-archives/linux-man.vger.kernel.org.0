Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0CA3C33804B
	for <lists+linux-man@lfdr.de>; Thu, 11 Mar 2021 23:34:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229569AbhCKWeD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 11 Mar 2021 17:34:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51076 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229730AbhCKWdo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 11 Mar 2021 17:33:44 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 355D2C061574
        for <linux-man@vger.kernel.org>; Thu, 11 Mar 2021 14:33:44 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id o16so681235wrn.0
        for <linux-man@vger.kernel.org>; Thu, 11 Mar 2021 14:33:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=O1IIhT+jG93d+786k1zoHGoO4jhbBlDsMn7B+La2pVA=;
        b=r8eLEB1f+SlJCFWhwvzgFhuPr8yFFnG6eFZOQMrkjTlGBa75NPFYWUnjPkMj52/2vH
         SwYYwFFIzqKpAaLVEhraZ/0cOCdXX6A2PQumL/xWLTLAtBDKnrDC9RZOML+D05QTZU5b
         cMG2daZWIHMsD30Gp/Roo4cqLAVr8vcJZqT/v9D6VYik+YQLRLbmAtwC9413lNllkCBr
         oV2YKtjTu1P6k0UVb1C7hVe87FpWuUO1YGE7Alx+ByHq71DH5/4v9NVtvga3F0u/No1h
         pjIQNolqtj0cBYLMZuwppCaS/oc3/xKgtmXeocbhzFPh6vclDE4Ky7CCO05akBgTuUs9
         PO/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=O1IIhT+jG93d+786k1zoHGoO4jhbBlDsMn7B+La2pVA=;
        b=aAit7JKXuwmFjaaj5B+QIitucJ6JuD1SPZuqPheL1VbPkonJR959uikENqDWTRO9A3
         YSfWiRyOD6F5Eh9ezT7psFV6O6O3+uLUEXKqE0WB+biQmgGhqqpgLiDRIv8fl7KzfCCO
         FoErkFZXQAfOHY66RfhTN0XWYolhdJnwVzSDgodFv0RtVloz+yFuCSqNQG+hvIUbPRx1
         TSrcB7hLB5h75haoSKHo/83hvcNkoUiofTm2NwmzobBQuNb7QYtDXSXdD5lBHayo5U6X
         uVA40qtwddABYVxwdKx2HaduPd/JFGZc4OjA/91C0uoU0Eh5K4MxOT8WgVA8jMPEePZz
         ZZeQ==
X-Gm-Message-State: AOAM531BNcRVoMbKlVbMeN+2rd7DsbXs8p3L6RqVMwRWMhx713gNDOyL
        tWsIhF0o47Uta2GSJpSWZyI=
X-Google-Smtp-Source: ABdhPJyNjm5BYeI+sLAdLEnPDwYyL1TJkC0VFyItKnoLGIlPvgAD6fa9RAczQNX7pADcTr3q0VntJw==
X-Received: by 2002:a5d:6049:: with SMTP id j9mr10755654wrt.117.1615502022965;
        Thu, 11 Mar 2021 14:33:42 -0800 (PST)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id v2sm22365771wmj.1.2021.03.11.14.33.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Mar 2021 14:33:42 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 01/17] scanf.3: SYNOPSIS: Use 'restrict' in prototypes; ffix too.
Date:   Thu, 11 Mar 2021 23:33:14 +0100
Message-Id: <20210311223330.722437-2-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210311223330.722437-1-alx.manpages@gmail.com>
References: <20210311223330.722437-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in scanf(), fscanf(), sscanf(), vscanf(), vfscanf(), vsscanf().
Let's use it here too.

.../glibc$ grep_glibc_prototype scanf
libio/stdio.h:397:
extern int scanf (const char *__restrict __format, ...) __wur;
.../glibc$ grep_glibc_prototype fscanf
libio/stdio.h:391:
extern int fscanf (FILE *__restrict __stream,
		   const char *__restrict __format, ...) __wur;
.../glibc$ grep_glibc_prototype sscanf
libio/stdio.h:399:
extern int sscanf (const char *__restrict __s,
		   const char *__restrict __format, ...) __THROW;
.../glibc$ grep_glibc_prototype vscanf
libio/stdio.h:443:
extern int vscanf (const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 1, 0))) __wur;
.../glibc$ grep_glibc_prototype vfscanf
libio/stdio.h:435:
extern int vfscanf (FILE *__restrict __s, const char *__restrict __format,
		    __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 2, 0))) __wur;
.../glibc$ grep_glibc_prototype vsscanf
libio/stdio.h:447:
extern int vsscanf (const char *__restrict __s,
		    const char *__restrict __format, __gnuc_va_list __arg)
     __THROW __attribute__ ((__format__ (__scanf__, 2, 0)));
.../glibc$

Also reorder v* functions to match the order of non-v functions.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/scanf.3 | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/man3/scanf.3 b/man3/scanf.3
index f353f1d4d..aefc262ab 100644
--- a/man3/scanf.3
+++ b/man3/scanf.3
@@ -56,15 +56,19 @@ scanf, fscanf, sscanf, vscanf, vsscanf, vfscanf \- input format conversion
 .nf
 .B #include <stdio.h>
 .PP
-.BI "int scanf(const char *" format ", ...);"
-.BI "int fscanf(FILE *" stream ", const char *" format ", ...);"
-.BI "int sscanf(const char *" str ", const char *" format ", ...);"
+.BI "int scanf(const char *restrict " format ", ...);"
+.BI "int fscanf(FILE *restrict " stream ,
+.BI "           const char *restrict " format ", ...);"
+.BI "int sscanf(const char *restrict " str ,
+.BI "           const char *restrict " format ", ...);"
 .PP
 .B #include <stdarg.h>
 .PP
-.BI "int vscanf(const char *" format ", va_list " ap );
-.BI "int vsscanf(const char *" str ", const char *" format ", va_list " ap );
-.BI "int vfscanf(FILE *" stream ", const char *" format ", va_list " ap );
+.BI "int vscanf(const char *restrict " format ", va_list " ap );
+.BI "int vfscanf(FILE *restrict " stream ,
+.BI "           const char *restrict " format ", va_list " ap );
+.BI "int vsscanf(const char *restrict " str ,
+.BI "           const char *restrict " format ", va_list " ap );
 .fi
 .PP
 .RS -4
-- 
2.30.1

