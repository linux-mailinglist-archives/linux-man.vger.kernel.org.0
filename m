Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 85E2B3316BE
	for <lists+linux-man@lfdr.de>; Mon,  8 Mar 2021 19:55:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231201AbhCHSyq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 8 Mar 2021 13:54:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58116 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231293AbhCHSyY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 8 Mar 2021 13:54:24 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1126C06174A
        for <linux-man@vger.kernel.org>; Mon,  8 Mar 2021 10:54:23 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id v15so12586561wrx.4
        for <linux-man@vger.kernel.org>; Mon, 08 Mar 2021 10:54:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=+D6bPtfpJKdyQJlAIB485h1ce5wJgTAU0BHF3II4F5Q=;
        b=VanGPuwkpMHVhGanGorsi6D8hrzg4cNXNaeAJ5k0eVv4offw+xCKtB0vSDKKOVUYWB
         IqZA0lbcbkBFhOdZeoyNejmqtpjvQUJsXRMhjP7+S4XLCcTzV7kydXZmth6WS5d7wzSq
         ILOljVa202nOsGIE+1H7A9ozDt/oLCUvXHe7lXnB6GQ4cTEDVmYyeRAY2l9plI6j2YT3
         PRQEOEVz7zCOfdN6b8dZC+q4aggcIox98bca5+LhINzNZ5XQH05Bwk3itkgK89w1WFgQ
         d49yoUxMJfu1ONYBxndvEejyT2EmaKsS1xK/IQ9ActKnNV3T6Q8o6SUWZ4V3ow0apDmi
         S4jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+D6bPtfpJKdyQJlAIB485h1ce5wJgTAU0BHF3II4F5Q=;
        b=ofnLN+Ya3kh3zGBAWC6CW0m8RktNPhnGzKJRuTTjyKWRTuXCbGoU+jzvBbKxXxdzV8
         HabpB03WuBdzfYZK8v7ojEZAM0ZIfgj4livUQMvMTGjo4C+aQS8SuWBJfeUP1P2cHeBd
         9JPqPhDR44IAAyTZP3z8StpTOPsSAZQKYyqaeyIp2BLF6kqY7kYCwt1KbIyQ6N9Yhurj
         44ZMeUyDuc8IrjkCqhjFDhZEWxQAo9iLNpYTAxt2+sHdIOwR0fjSHS77Z8bDd8Pa+pup
         ROcuxvZDZWG5uWcBs8Sl7eOfEUIIYBvfQKu5fQw7B33CmRHPqRHCqM85Xk6+ogmmJQJO
         /dmg==
X-Gm-Message-State: AOAM5314vmZeShl3Bc2BphnSkBMmZlCofM/p4bHK7n7ngJf5p4MOiCMq
        WKWd81DjAnSrD1sqYmkP4ZE=
X-Google-Smtp-Source: ABdhPJxv5w2iC9SSe8Sh+fddELy1R+zhhHzmC4xUVPWwG3fuLX2XiDlLhXShNTp0dk+pPwDW6sFJAA==
X-Received: by 2002:a5d:4c84:: with SMTP id z4mr827975wrs.158.1615229662723;
        Mon, 08 Mar 2021 10:54:22 -0800 (PST)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id i11sm19889921wro.53.2021.03.08.10.54.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Mar 2021 10:54:22 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 15/23] qecvt.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Mon,  8 Mar 2021 19:53:24 +0100
Message-Id: <20210308185331.242176-16-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210308185331.242176-1-alx.manpages@gmail.com>
References: <20210308185331.242176-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

glibc uses 'restrict' in qecvt(), qfcvt().
Let's use it here too.

.../glibc$ grep_glibc_prototype qecvt
stdlib/stdlib.h:890:
extern char *qecvt (long double __value, int __ndigit,
		    int *__restrict __decpt, int *__restrict __sign)
     __THROW __nonnull ((3, 4)) __wur;
.../glibc$ grep_glibc_prototype qfcvt
stdlib/stdlib.h:893:
extern char *qfcvt (long double __value, int __ndigit,
		    int *__restrict __decpt, int *__restrict __sign)
     __THROW __nonnull ((3, 4)) __wur;
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/qecvt.3 | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/man3/qecvt.3 b/man3/qecvt.3
index e38922dbf..f904bad54 100644
--- a/man3/qecvt.3
+++ b/man3/qecvt.3
@@ -32,8 +32,12 @@ qecvt, qfcvt, qgcvt \- convert a floating-point number to a string
 .nf
 .B #include <stdlib.h>
 .PP
-.BI "char *qecvt(long double " number ", int " ndigits ", int *" decpt ", int *" sign );
-.BI "char *qfcvt(long double " number ", int " ndigits ", int *" decpt ",i int *" sign );
+.BI "char *qecvt(long double " number ", int " ndigits \
+", int *restrict " decpt ,
+.BI "            int *restrict " sign );
+.BI "char *qfcvt(long double " number ", int " ndigits \
+", int *restrict " decpt ,
+.BI "            int *restrict " sign );
 .BI "char *qgcvt(long double " number ", int " ndigit ", char *" buf );
 .fi
 .PP
-- 
2.30.1

