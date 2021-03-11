Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 40AF6338058
	for <lists+linux-man@lfdr.de>; Thu, 11 Mar 2021 23:34:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229774AbhCKWeU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 11 Mar 2021 17:34:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51128 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229910AbhCKWdy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 11 Mar 2021 17:33:54 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7EFEC061574
        for <linux-man@vger.kernel.org>; Thu, 11 Mar 2021 14:33:53 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id t5-20020a1c77050000b029010e62cea9deso14041968wmi.0
        for <linux-man@vger.kernel.org>; Thu, 11 Mar 2021 14:33:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=EvIkShvPl3pktrVcFl7iohI1FVK3iSO1QBc2v9HY+Fg=;
        b=Vb2cWONmDd9Qr219mA3BUmn4ONATv+3BIJHpF71dCnSBWS3TDB21NvblRZ/I/PBYkE
         ySzuCmN6vTVv5QOUI6HkyENqx3WloxfCmSnwOj5Txjieceoiq+If5ADnC/3ZyfhOV/QY
         h0VsxhNTVqcfjIaIGwr5HmW2VWGDeTnDQScJTB46aWvK5ZeGy7b38NopxeRA8nmKiitw
         bF/I1hkmZGdR6o5E5hbSsYT9hMCy1pRjCtbHZMf5kwuPQ3CoJfuY4VgWHGH78fqbEGv4
         nciaQmww94j0ade6tUIc2HRYUQNPKIKnzn4JeFaugPC0Jmk/flYwrUNN3N9alP35+yiF
         c16g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=EvIkShvPl3pktrVcFl7iohI1FVK3iSO1QBc2v9HY+Fg=;
        b=c57DbKaxJo9+vC8o466IqLSi3UC2IqX3EBgy2OVgHRjK0kT3SbPSSShJJ4qrZ0An6R
         yMYl8W9RV9i6EnK6pT7Vc3OREukRsVxza5Y9f+rl1v9+dmmaQfnKFCRG/SPncIP9iDX2
         3yAr56CgXg7sJTLIYGEWptEzant7Z1MH24+fwxoYFN1Ta5tVt8Y7T8Vf9Po0r0cdwP7Z
         oJN10W4eRlHmOLn52jbIn9/MUuabZ2JgaPyZ4V+GZMd6rAmc1ITgJF98tUMHBf2aw5tU
         I45NKh9XnGxydp6EiI8Yx8YwQ6txELhRVzKCsRKSvJjOeKqc0KefCuTRLPu7nEVowVi2
         tX9g==
X-Gm-Message-State: AOAM530z7N+dnFgfwLNQmsXLeLpTV1aEH2Jc8FP04ERAeo309x0Mw6X6
        gNlrw9i+wcitFAeOwRHZxBKUoiSOleA=
X-Google-Smtp-Source: ABdhPJz/2zegEbRFOqpd7/4CGCkvMseM+Ll1lZ3ZBMybILocu3RPFWgWcnBHDqmjlCZPBL+dRKeiKg==
X-Received: by 2002:a05:600c:4a06:: with SMTP id c6mr10169709wmp.35.1615502032489;
        Thu, 11 Mar 2021 14:33:52 -0800 (PST)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id v2sm22365771wmj.1.2021.03.11.14.33.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Mar 2021 14:33:52 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 13/17] wcstoimax.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Thu, 11 Mar 2021 23:33:26 +0100
Message-Id: <20210311223330.722437-14-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210311223330.722437-1-alx.manpages@gmail.com>
References: <20210311223330.722437-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in wcstoimax(), wcstoumax().
Let's use it here too.

.../glibc$ grep_glibc_prototype wcstoimax
stdlib/inttypes.h:305:
extern intmax_t wcstoimax (const __gwchar_t *__restrict __nptr,
			   __gwchar_t **__restrict __endptr, int __base)
     __THROW;
.../glibc$ grep_glibc_prototype wcstoumax
stdlib/inttypes.h:310:
extern uintmax_t wcstoumax (const __gwchar_t *__restrict __nptr,
			    __gwchar_t ** __restrict __endptr, int __base)
     __THROW;
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/wcstoimax.3 | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/man3/wcstoimax.3 b/man3/wcstoimax.3
index fad1f5e36..001897b2b 100644
--- a/man3/wcstoimax.3
+++ b/man3/wcstoimax.3
@@ -29,10 +29,10 @@ wcstoimax, wcstoumax \- convert wide-character string to integer
 .B #include <stddef.h>
 .B #include <inttypes.h>
 .PP
-.BI "intmax_t wcstoimax(const wchar_t *" nptr ", wchar_t **" endptr \
-", int " base );
-.BI "uintmax_t wcstoumax(const wchar_t *" nptr ", wchar_t **" endptr \
-", int " base );
+.BI "intmax_t wcstoimax(const wchar_t *restrict " nptr ,
+.BI "                   wchar_t **restrict " endptr ", int " base );
+.BI "uintmax_t wcstoumax(const wchar_t *restrict " nptr ,
+.BI "                   wchar_t **restrict " endptr ", int " base );
 .fi
 .SH DESCRIPTION
 These functions are just like
-- 
2.30.1

