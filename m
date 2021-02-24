Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2F0E332411D
	for <lists+linux-man@lfdr.de>; Wed, 24 Feb 2021 17:05:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235318AbhBXPll (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 24 Feb 2021 10:41:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59308 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237212AbhBXOs5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 24 Feb 2021 09:48:57 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6335FC061221
        for <linux-man@vger.kernel.org>; Wed, 24 Feb 2021 06:43:57 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id u14so2145269wri.3
        for <linux-man@vger.kernel.org>; Wed, 24 Feb 2021 06:43:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=NZ1F3O/X6n3g314ucOfvs4fW0RHsDyoyvnby0ACG1vs=;
        b=oE924LS3GiAhSdeX2rrV8SawcfOMmUD3d67yCXtTbrF3CxFKgj7et7x1U+wilzL26r
         EVK+EybX3E7YRUP6zhV3E7JdO2aiVJ9BIOL+R+NJWxC2doh7cm1lq3Ilyd2WI+twXp0k
         4CyeTbYr1ddE1TpaCvlYXc7FtpOHxeTASrIQjlyxgTb5tjWKChOLJ0VuF71TvtaRwVmR
         ybt7Tto6yCbhrmzvCvFukd0rBDwMwb0wBDx4FyR+WA1DNTuS4uCL1vk8eo7eFXTKkWfe
         QbmlSyNMiMLw7UajxRVFwLJWLqAdOE7GOkWaOrDPqUPfs6ArQBYH6iW5Xdsoadt+O/pw
         M/gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=NZ1F3O/X6n3g314ucOfvs4fW0RHsDyoyvnby0ACG1vs=;
        b=o8dbn7zkhoE8/2w+HcQRZToh6XyOEo03fGr36xdlVAkkNfh5keTmsCD1QY76pxF+3v
         fAeQxKkAboPu7A/MVT87K0RIuYwYtj74WcHtdmR1HIkZ4YCUSITPXFUGGmKdcSUChMpw
         2r4DsWepXqN6JmNDHQptqDE/Ta7sDga78RcXJQNhsuGF4k7Y0NE1wl4IMBdaQd5Ol+Au
         SGvxgeHMZpEkFGBfMoPJswPrF8vyvZ/U02MMT+ptrWs7OjoPGRjqKMoa9xAvYsUX87Uy
         QWO0HqhGjmmj74olzcw719KG+CMy4qJG4+Z+bHslYUhwE0oQJ4b2UHmrMit4bQGiI2Sr
         aFlw==
X-Gm-Message-State: AOAM530lrZx1wJb/X4IXv6FYlz1RTu00RP0qZPPv9Vm9ak0PVhxqF4Jd
        VhqmsyVPex/wDAAcgjnmDi8=
X-Google-Smtp-Source: ABdhPJwCcsEP1GvnSWzGkolCX1jExBGCJhmvLVw/KVaIBtSEJBRl++2p3xq89hiV2sysyhXyH9UnBw==
X-Received: by 2002:adf:9dcc:: with SMTP id q12mr31479658wre.213.1614177836236;
        Wed, 24 Feb 2021 06:43:56 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id a5sm3990676wrs.35.2021.02.24.06.43.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Feb 2021 06:43:55 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 01/20] argz_add.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Wed, 24 Feb 2021 15:42:52 +0100
Message-Id: <20210224144310.140649-2-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210224144310.140649-1-alx.manpages@gmail.com>
References: <20210224144310.140649-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Glibc uses 'restrict' for some of the functions in this page:

=============================  argz_add
string/argz.h:76:
error_t argz_add (char **restrict argz,
                         size_t *restrict argz_len,
                         const char *restrict str) THROW;
=============================  argz_add_sep
string/argz.h:82:
error_t argz_add_sep (char **restrict argz,
                             size_t *restrict argz_len,
                             const char *restrict string, int delim)
     THROW;
=============================  argz_append
string/argz.h:70:
error_t argz_append (char **restrict argz,
                            size_t *restrict argz_len,
                            const char *restrict buf, size_t buf_len)
     THROW;
=============================  argz_count
string/argz.h:54:
size_t argz_count (const char *argz, size_t len)
     THROW attribute_pure__;
=============================  argz_create
string/argz.h:40:
error_t argz_create (char *const argv[], char **restrict argz,
                            size_t *restrict len) THROW;
=============================  argz_create_sep
string/argz.h:47:
error_t argz_create_sep (const char *restrict string,
                                int sep, char **restrict argz,
                                size_t *restrict len) THROW;
=============================  argz_delete
string/argz.h:88:
void argz_delete (char **restrict argz,
                         size_t *restrict argz_len,
                         char *restrict entry) THROW;
=============================  argz_extract
string/argz.h:61:
void argz_extract (const char *restrict argz, size_t len,
                          char **restrict argv) THROW;
=============================  argz_insert
string/argz.h:98:
error_t argz_insert (char **restrict argz,
                            size_t *restrict argz_len,
                            char *restrict before,
                            const char *restrict entry) THROW;
=============================  argz_next
string/argz.h:128:
char *argz_next (const char *restrict argz, size_t argz_len,
                        const char *restrict entry) THROW;
=============================  argz_replace
string/argz.h:106:
error_t argz_replace (char **restrict argz,
                             size_t *restrict argz_len,
                             const char *restrict str,
                             const char *restrict with,
                             unsigned int *restrict replace_count);
=============================  argz_stringify
string/argz.h:67:
void argz_stringify (char *argz, size_t len, int sep) THROW;

Let's use it here too.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/argz_add.3 | 41 +++++++++++++++++++++++------------------
 1 file changed, 23 insertions(+), 18 deletions(-)

diff --git a/man3/argz_add.3 b/man3/argz_add.3
index c326f9cdb..a6fbde95b 100644
--- a/man3/argz_add.3
+++ b/man3/argz_add.3
@@ -16,35 +16,40 @@ argz_next, argz_replace, argz_stringify \- functions to handle an argz list
 .nf
 .B "#include <argz.h>"
 .PP
-.BI "error_t argz_add(char **" argz ", size_t *" argz_len \
-", const char *" str );
+.BI "error_t argz_add(char **restrict " argz ", size_t *restrict " argz_len ",
+.BI "                const char *restrict " str );
 .PP
-.BI "error_t argz_add_sep(char **" argz ", size_t *" argz_len ,
-.BI "                     const char *" str ", int " delim );
+.BI "error_t argz_add_sep(char **restrict " argz \
+", size_t *restrict " argz_len ,
+.BI "                const char *restrict " str ", int " delim );
 .PP
-.BI "error_t argz_append(char **" argz ", size_t *" argz_len ,
-.BI "                     const char *" buf ", size_t " buf_len );
+.BI "error_t argz_append(char **restrict " argz ", size_t *restrict " argz_len ,
+.BI "                const char *restrict " buf ", size_t " buf_len );
 .PP
 .BI "size_t argz_count(const char *" argz ", size_t " argz_len );
 .PP
-.BI "error_t argz_create(char * const " argv "[], char **" argz ,
-.BI "                     size_t *" argz_len );
+.BI "error_t argz_create(char *const " argv "[], char **restrict " argz ,
+.BI "                size_t *restrict " argz_len );
 .PP
-.BI "error_t argz_create_sep(const char *" str ", int " sep ", char **" argz ,
-.BI "                     size_t *" argz_len );
+.BI "error_t argz_create_sep(const char *restrict " str ", int " sep ,
+.BI "                char **restrict " argz ", size_t *restrict " argz_len );
 .PP
-.BI "void argz_delete(char **" argz ", size_t *" argz_len ", char *" entry );
+.BI "void argz_delete(char **restrict " argz ", size_t *restrict " argz_len ,
+.BI "                char *restrict " entry );
 .PP
-.BI "void argz_extract(const char *" argz ", size_t " argz_len ", char **" argv );
+.BI "void argz_extract(const char *restrict " argz ", size_t " argz_len ,
+.BI "                char **restrict " argv );
 .PP
-.BI "error_t argz_insert(char **" argz ", size_t *" argz_len ", char *" before ,
-.BI "                     const char *" entry );
+.BI "error_t argz_insert(char **restrict " argz ", size_t *restrict " argz_len ,
+.BI "                char *restrict " before ", const char *restrict " entry );
 .PP
-.BI "char *argz_next(const char *" argz ", size_t " argz_len ", const char *" entry );
+.BI "char *argz_next(const char *restrict " argz ", size_t " argz_len ,
+.BI "                const char *restrict " entry );
 .PP
-.BI "error_t argz_replace(char **" argz ", size_t *" argz_len \
-", const char *" str ,
-.BI "                     const char *" with ", unsigned int *" replace_count );
+.BI "error_t argz_replace(char **restrict " argz \
+", size_t *restrict " argz_len ,
+.BI "                const char *restrict " str ", const char *restrict " with ,
+.BI "                unsigned int *restrict " replace_count );
 .PP
 .BI "void argz_stringify(char *" argz ", size_t " len ", int " sep );
 .fi
-- 
2.30.1.721.g45526154a5

