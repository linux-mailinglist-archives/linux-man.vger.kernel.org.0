Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D2EC63316C8
	for <lists+linux-man@lfdr.de>; Mon,  8 Mar 2021 19:55:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231293AbhCHSyq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 8 Mar 2021 13:54:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58120 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231294AbhCHSyZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 8 Mar 2021 13:54:25 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1502EC06174A
        for <linux-man@vger.kernel.org>; Mon,  8 Mar 2021 10:54:25 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id a18so12543971wrc.13
        for <linux-man@vger.kernel.org>; Mon, 08 Mar 2021 10:54:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=RJ+h0uD0Gkg5pesa7FBTc2qqeUz0DbwZEYdXmGg5970=;
        b=PRmxPUyuzXmuZUnKlmKgpHH08x/eADFLKSCPUzm0Qr+QJlBXfAoyMu9FmRWX8SOfAR
         Yhcz6Dn03Wl4EzpoDc8F2OjqlYTvSuQuhE6i3j+CXWjr7OWRTvEGKoB2C++Oh/XdMyxw
         j1VVKHXYdPbBSemvPB2Wkn32QnhgtY8MdbsbkYMD1Du1PQbxtlyuQrQ0IuCBseYEMJ24
         8juo5AhxKwOotMFCCaofRa+NvAztxX+yRdanBSH9LHRRykmR+oMk2s2YLtfhHu8LKX0g
         8QPHqZ5ag91S28mvsQzEK52yQmfdrx2P34lm04Py3BeIrPyVGyez34EOdDCTaJYRvRvd
         5y/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=RJ+h0uD0Gkg5pesa7FBTc2qqeUz0DbwZEYdXmGg5970=;
        b=ihqcPAPKMN7BwaC/MWkVs6tdY23r3XZXISYmrgLMx0GAtBSWNxZ+yDq5StVQeJbbIS
         v1XaJxl7s3oXMiKj3nnr5JY2KvOeO8BmEdBzKl4nnXQ5zzXCQB4mfNR+EnBuboInGuGF
         XSbODCIWN3u4qWZZuuAQaEgzZi+ksnNBAD/dNAI9WvQFqKFquOeWHJSNBScQ5hDU58pv
         mb9d/lJjX5GaZGvfaet9vkKnQgaoTbQSvLsB96zPF84725+3VY1HtEinijq6M8qlLoKJ
         IpFHdhSeePa3CxHP9qjNRRRgbnivd2YyvaeSVQ2LJjQ73CKq1F5syNaF9Q1GbGdwLITy
         vshw==
X-Gm-Message-State: AOAM532iUmgVfKEtRyGhNgwZ4zOel/iHDZYlr9rInERSH50OmTYdoQyR
        hhyGeulamfMiV1hXCd87BCM=
X-Google-Smtp-Source: ABdhPJwV9M0zv4v/c7aSoOr1WX0Eo+xXs55PtjOKWwdCXX3Ex59vvU6d7PJByGM96yA1ZBKm9e153g==
X-Received: by 2002:a5d:4203:: with SMTP id n3mr24085388wrq.116.1615229663924;
        Mon, 08 Mar 2021 10:54:23 -0800 (PST)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id i11sm19889921wro.53.2021.03.08.10.54.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Mar 2021 10:54:23 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 16/23] random_r.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Mon,  8 Mar 2021 19:53:25 +0100
Message-Id: <20210308185331.242176-17-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210308185331.242176-1-alx.manpages@gmail.com>
References: <20210308185331.242176-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

glibc uses 'restrict' in random_r(), initstate_r(), setstate_r().
Let's use it here too.

.../glibc$ grep_glibc_prototype random_r
stdlib/stdlib.h:434:
extern int random_r (struct random_data *__restrict __buf,
		     int32_t *__restrict __result) __THROW __nonnull ((1, 2));
.../glibc$ grep_glibc_prototype initstate_r
stdlib/stdlib.h:440:
extern int initstate_r (unsigned int __seed, char *__restrict __statebuf,
			size_t __statelen,
			struct random_data *__restrict __buf)
     __THROW __nonnull ((2, 4));
.../glibc$ grep_glibc_prototype setstate_r
stdlib/stdlib.h:445:
extern int setstate_r (char *__restrict __statebuf,
		       struct random_data *__restrict __buf)
     __THROW __nonnull ((1, 2));
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/random_r.3 | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/man3/random_r.3 b/man3/random_r.3
index 5363e5e78..882ba83a2 100644
--- a/man3/random_r.3
+++ b/man3/random_r.3
@@ -31,12 +31,14 @@ random number generator
 .nf
 .B #include <stdlib.h>
 .PP
-.BI "int random_r(struct random_data *" buf ", int32_t *" result );
+.BI "int random_r(struct random_data *restrict " buf ,
+.BI "             int32_t *restrict " result );
 .BI "int srandom_r(unsigned int " seed ", struct random_data *" buf );
 .PP
-.BI "int initstate_r(unsigned int " seed ", char *" statebuf ,
-.BI "                size_t " statelen ", struct random_data *" buf );
-.BI "int setstate_r(char *" statebuf ", struct random_data *" buf );
+.BI "int initstate_r(unsigned int " seed ", char *restrict " statebuf ,
+.BI "             size_t " statelen ", struct random_data *restrict " buf );
+.BI "int setstate_r(char *restrict " statebuf ,
+.BI "             struct random_data *restrict " buf );
 .fi
 .PP
 .RS -4
-- 
2.30.1

