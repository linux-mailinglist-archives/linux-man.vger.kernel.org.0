Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BD0B43346D8
	for <lists+linux-man@lfdr.de>; Wed, 10 Mar 2021 19:33:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233354AbhCJScj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 10 Mar 2021 13:32:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56208 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233496AbhCJScZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 10 Mar 2021 13:32:25 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8CDA3C061760
        for <linux-man@vger.kernel.org>; Wed, 10 Mar 2021 10:32:25 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id j4-20020a05600c4104b029010c62bc1e20so11361736wmi.3
        for <linux-man@vger.kernel.org>; Wed, 10 Mar 2021 10:32:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=hVnhWYituodV/kzNGhKhIhdhny8rADVzvRuqiSRhoQk=;
        b=CI7gOUm2C6KTATheE3Z2PyanCYJjALO5ZfUqUdFcs9wgbT7XpHcCUZbu6mdiUTORwp
         S73F4FWLz+wwIxnbuX599ONBQmRQmy5yI2ALkVdaUBOxhaT3uQFGcOKN5YnXDvDeqCfE
         dRiPdMdDJtXLYjgWw08K+mFBwpxsXWlKn+0pvWBggrpc0aSuNKzDTeheIH9M0GBFvb19
         eaAYjt2mrpuz3S/XgVEE+BgCLPVU27hn7hpNE7VE6Yj4Hwx2SH2loasq16X1dO952Rd8
         0mtO0due7m4OZuSPYnGnmmhgJDojYbVQUi5NyHzLjl1kPG/nMo0O5g6DDExlEmXFib9w
         wB1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=hVnhWYituodV/kzNGhKhIhdhny8rADVzvRuqiSRhoQk=;
        b=blZT69BJO1Jb9GIXUXbCCP3IfSYllW8lD78zk1kAt6Yc87Nxl7pn9J1Te10ygxPyXq
         dpYKNe+Bdm/qsfDsU3l4YD0+H4Qq7W5ZWf8sEmEdVWKpWJzOGJ4Sy9hLbYOSdAUAQ2cE
         TwppXV/N6meptMVGsLm85Q4OLusJF5710q+omHoqf/PtlgSlnurJRfC/JtRyPd1e2fcq
         Mk3acXJ7VDUvz6RNG98MWXZa4+i1UhaSo4mNuyzFlrmpnMpfSdot66vY9BEJXtgO1Lw6
         ZXPQVTs19KVaY2k+4NgCCcRKwdw44IXhtbGe9o4C2hIj88AccRwdSYuEak9ZOKjVSDby
         pX9g==
X-Gm-Message-State: AOAM533VcIidwXwqO1Q41TKuceNltVjmggUFM0NMdnjOSLAAqFLeSIAd
        ZfLiETRb3vNMPuzOOZTFeNs=
X-Google-Smtp-Source: ABdhPJxwHneauBzPJ7UfMAGw6NEHyWsCnh3Su63HvKs0xx/Dbr0U+Nrmrn0/ARwu+OfRasikbk3Z7g==
X-Received: by 2002:a1c:32ca:: with SMTP id y193mr4615649wmy.56.1615401144420;
        Wed, 10 Mar 2021 10:32:24 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id k11sm325374wmj.1.2021.03.10.10.32.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Mar 2021 10:32:24 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 22/24] strtol.3, strtoul.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Wed, 10 Mar 2021 19:31:48 +0100
Message-Id: <20210310183149.194717-23-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210310183149.194717-1-alx.manpages@gmail.com>
References: <20210310183149.194717-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in strtol(), strtoll(), strtoul(), strtoull().
Let's use it here too.

.../glibc$ grep_glibc_prototype strtol
stdlib/stdlib.h:176:
extern long int strtol (const char *__restrict __nptr,
			char **__restrict __endptr, int __base)
     __THROW __nonnull ((1));
.../glibc$ grep_glibc_prototype strtoll
stdlib/stdlib.h:199:
__extension__
extern long long int strtoll (const char *__restrict __nptr,
			      char **__restrict __endptr, int __base)
     __THROW __nonnull ((1));
.../glibc$ grep_glibc_prototype strtoul
stdlib/stdlib.h:180:
extern unsigned long int strtoul (const char *__restrict __nptr,
				  char **__restrict __endptr, int __base)
     __THROW __nonnull ((1));
.../glibc$ grep_glibc_prototype strtoull
stdlib/stdlib.h:204:
__extension__
extern unsigned long long int strtoull (const char *__restrict __nptr,
					char **__restrict __endptr, int __base)
     __THROW __nonnull ((1));
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/strtol.3  | 7 ++++---
 man3/strtoul.3 | 8 ++++----
 2 files changed, 8 insertions(+), 7 deletions(-)

diff --git a/man3/strtol.3 b/man3/strtol.3
index 8f4a5e54c..148586b99 100644
--- a/man3/strtol.3
+++ b/man3/strtol.3
@@ -36,9 +36,10 @@ strtol, strtoll, strtoq \- convert a string to a long integer
 .nf
 .B #include <stdlib.h>
 .PP
-.BI "long strtol(const char *" nptr ", char **" endptr ", int " base );
-.BI "long long strtoll(const char *" nptr ", char **" endptr \
-", int " base );
+.BI "long strtol(const char *restrict " nptr ,
+.BI "            char **restrict " endptr ", int " base );
+.BI "long long strtoll(const char *restrict " nptr ,
+.BI "            char **restrict " endptr ", int " base );
 .fi
 .PP
 .RS -4
diff --git a/man3/strtoul.3 b/man3/strtoul.3
index b0a5c34fe..c6a55e732 100644
--- a/man3/strtoul.3
+++ b/man3/strtoul.3
@@ -37,10 +37,10 @@ strtoul, strtoull, strtouq \- convert a string to an unsigned long integer
 .nf
 .B #include <stdlib.h>
 .PP
-.BI "unsigned long strtoul(const char *" nptr ", char **" endptr \
-", int " base );
-.BI "unsigned long long strtoull(const char *" nptr ", char **" endptr ,
-.BI "                            int " base );
+.BI "unsigned long strtoul(const char *restrict " nptr ,
+.BI "                      char **restrict " endptr ", int " base );
+.BI "unsigned long long strtoull(const char *restrict " nptr ,
+.BI "                      char **restrict " endptr ", int " base );
 .fi
 .PP
 .RS -4
-- 
2.30.1.721.g45526154a5

