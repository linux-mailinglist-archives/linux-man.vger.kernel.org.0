Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BDD603316C5
	for <lists+linux-man@lfdr.de>; Mon,  8 Mar 2021 19:55:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231295AbhCHSyr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 8 Mar 2021 13:54:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58142 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231300AbhCHSy3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 8 Mar 2021 13:54:29 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 62017C06174A
        for <linux-man@vger.kernel.org>; Mon,  8 Mar 2021 10:54:29 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id y124-20020a1c32820000b029010c93864955so4448364wmy.5
        for <linux-man@vger.kernel.org>; Mon, 08 Mar 2021 10:54:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=qrkMvIRKw7Ja85h9a/f2cq51bB7o7Y+L+GSYiapFpqc=;
        b=mcDC96Ynq3lluehovJi7xp2EtTGBfblxdFUpTzEHjTYGSQmpPMJjZxc5hq3nocSxpp
         QQKiatpPnAiatVHyz87+M1tD5M+vpTmucPIQL0PB4xEEbTBsWMEeHo8hVNdiml0sC22A
         Ahe3PoS1i1XRoKXgn4BW+mC/xQq04Ai0OfIMIVbp+dbQG9MO1GB7psjlyJB2+rNFtqyb
         R/xU8HVnF7pyrVvLRwCKVB0g3k1MlsciaS4M79EljCukF5kA3xsElv2rA2ceGbmH9cPG
         Wry7xVBwTk7wqelENRSflR3q4PW48Unqvl/0U7Fxsx7lRkYnI2bv7yB//6O6bNT8CCHo
         zYww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=qrkMvIRKw7Ja85h9a/f2cq51bB7o7Y+L+GSYiapFpqc=;
        b=ghDC6ksK53GCq3d7S1btGBmh8k3qXqebSU6cIuhg1OUON6YcIhfsmRKHD8XQ1Esrto
         VKMY1VY/2iIOkCeEngKQfH4klUJz50Qb9TB26Rfvgmx8pUtZlTslEoobQ5gE/yPhaJA1
         z/R8jpmfDdx8r1QBC+Oas4OqnftQHsYm7WnkvhAJWE0oto8qPa61QzQyqTG41xkgLNPe
         qgj1U0Cv3njQKR05IefTUOT2WOE2zir2r+lgC8lDiAOzFWk2rW5OORgsBW6CxcKFN+k5
         9Xxmejoe1Nv5d0b8oRa3JDLVeRfr579Y7QLGzWboRD3SBbIHcnqToJsXJqce+SmqoW5p
         np0w==
X-Gm-Message-State: AOAM532T+gTCFYTB/2E0IQi8DdeLONa1R1sZVkaxewkDR5R3VL8ad7VL
        +zIyvisDB3NxB4aJf2uQisk=
X-Google-Smtp-Source: ABdhPJxPTyzJRS+PEWTibo4iHMnyvzXpb3hOjQN01017PDN+qYwNy3eRymlCFH3or/l1P9GDXVrXAg==
X-Received: by 2002:a1c:a745:: with SMTP id q66mr203873wme.21.1615229668254;
        Mon, 08 Mar 2021 10:54:28 -0800 (PST)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id i11sm19889921wro.53.2021.03.08.10.54.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Mar 2021 10:54:27 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 20/23] regex.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Mon,  8 Mar 2021 19:53:29 +0100
Message-Id: <20210308185331.242176-21-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210308185331.242176-1-alx.manpages@gmail.com>
References: <20210308185331.242176-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in regcomp(), regexec(),
regerror().
Let's use it here too.

.../glibc$ grep_glibc_prototype regcomp
posix/regex.h:644:
extern int regcomp (regex_t *_Restrict_ __preg,
		    const char *_Restrict_ __pattern,
		    int __cflags);
.../glibc$ grep_glibc_prototype regexec
posix/regex.h:648:
extern int regexec (const regex_t *_Restrict_ __preg,
		    const char *_Restrict_ __String, size_t __nmatch,
		    regmatch_t __pmatch[_Restrict_arr_],
		    int __eflags);
.../glibc$ grep_glibc_prototype regerror
posix/regex.h:653:
extern size_t regerror (int __errcode, const regex_t *_Restrict_ __preg,
			char *_Restrict_ __errbuf, size_t __errbuf_size);
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/regex.3 | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/man3/regex.3 b/man3/regex.3
index 79af42ff4..12e43b3f9 100644
--- a/man3/regex.3
+++ b/man3/regex.3
@@ -34,13 +34,15 @@ regcomp, regexec, regerror, regfree \- POSIX regex functions
 .nf
 .B #include <regex.h>
 .PP
-.BI "int regcomp(regex_t *" preg ", const char *" regex ", int " cflags );
-.BI "int regexec(const regex_t *" preg ", const char *" string \
-", size_t " nmatch ,
-.BI "            regmatch_t " pmatch[] ", int " eflags );
+.BI "int regcomp(regex_t *restrict " preg ", const char *restrict " regex ,
+.BI "            int " cflags );
+.BI "int regexec(const regex_t *restrict " preg \
+", const char *restrict " string ,
+.BI "            size_t " nmatch ", regmatch_t " pmatch "[restrict]\
+, int " eflags );
 .PP
-.BI "size_t regerror(int " errcode ", const regex_t *" preg ", char *" errbuf ,
-.BI "            size_t " errbuf_size );
+.BI "size_t regerror(int " errcode ", const regex_t *restrict " preg ,
+.BI "            char *restrict " errbuf ", size_t " errbuf_size );
 .BI "void regfree(regex_t *" preg );
 .fi
 .SH DESCRIPTION
-- 
2.30.1

