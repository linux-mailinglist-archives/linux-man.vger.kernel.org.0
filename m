Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 23F353346D1
	for <lists+linux-man@lfdr.de>; Wed, 10 Mar 2021 19:33:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233461AbhCJSci (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 10 Mar 2021 13:32:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56184 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233250AbhCJScV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 10 Mar 2021 13:32:21 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 910BCC061760
        for <linux-man@vger.kernel.org>; Wed, 10 Mar 2021 10:32:21 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id j2so24429651wrx.9
        for <linux-man@vger.kernel.org>; Wed, 10 Mar 2021 10:32:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=OIW+c88WNANR2uQfAZvZY9uKjc23gROJ0crLhYmg8zw=;
        b=OSc9zhJNtzYahZt4WVOAvenf1auEWSy2YUxwy3q9xnkhuGJOjmGJxlkKTMWxCPRqXE
         Jy4fSrpoHsO8OMx2J24EkcxqpCOSXSeh4eopsbxceiQL8yUPZujgSo2pWTJX5uZOsbLj
         3RHuhr1FYCA3MGDlFUvvqShmKTu1Mca8kHW7FCR5QCNo/VAr6WXxTFK29WiIXvWF35vs
         PKKsmrTx3fUHoepulsvNCDLDuqg9JQtsG/iIJXHK4MucpDUg2+bPCOxD+fzYKINfK/We
         pIePL8yGhEx6XHbWHj6sFtu5o84pl4wAtkV17FBnBar11ljVdZK80t0bs3CryC6NMyeW
         DfMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=OIW+c88WNANR2uQfAZvZY9uKjc23gROJ0crLhYmg8zw=;
        b=H0DtPEB5C2iaegykN54Qbm8dx90p3RjWGsHkTkq21WJJZQqCa9zN+XfsPJMtvp8y4u
         r1f+g2+0UdQDGEJHlikw7XyBCZ09Zchj5H0dOtc9OndngoTsXorwBFFPbCTuMNuPNMCQ
         ndifZ75LjQpjgNztvOdPvATIEkqOZUBwNpcTk2czTP3XvWSkNwEIO8V8YBBzt9NP5g83
         0BWw/Qr6nHeHuyXD0Ee4vRFbUAdC+JrMyWleu1+OkRd0gGMOphy5Y552aiC9rd+cMQv9
         Ho5CRgO/wlK9c0XOFGUfCG0JoaBMrvtnzMrcImampQzjj2sAJdemT5bzzB0+6jWGXb/Q
         qEzg==
X-Gm-Message-State: AOAM531Uwu8RRu+M1OGY9d95GF2yrw62TpXymap4AC1vCdBZdv65BKlw
        d2W+HaWamAfRJatL94adLp0=
X-Google-Smtp-Source: ABdhPJwcUtE9k4dsy5jRJf5EehZCPVxcDSQ5c0N5aQalrxysQMZtttgH/EBp9li3rhc8KEOyUNm0pg==
X-Received: by 2002:a5d:4203:: with SMTP id n3mr4799407wrq.116.1615401140218;
        Wed, 10 Mar 2021 10:32:20 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id k11sm325374wmj.1.2021.03.10.10.32.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Mar 2021 10:32:19 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Ulrich Drepper <drepper@redhat.com>
Subject: [PATCH 17/24] strptime.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Wed, 10 Mar 2021 19:31:43 +0100
Message-Id: <20210310183149.194717-18-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210310183149.194717-1-alx.manpages@gmail.com>
References: <20210310183149.194717-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in strptime().
However, glibc doesn't specify 'restrict' for the last parameter.
Let's use the most restrictive form here
(although I believe both to be equivalent).

.../glibc$ grep_glibc_prototype strptime
time/time.h:95:
extern char *strptime (const char *__restrict __s,
		       const char *__restrict __fmt, struct tm *__tp)
     __THROW;
.../glibc$

Cc: <libc-alpha@sourceware.org>
Cc: Ulrich Drepper <drepper@redhat.com>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/strptime.3 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man3/strptime.3 b/man3/strptime.3
index c1a66ffc0..30c6f59df 100644
--- a/man3/strptime.3
+++ b/man3/strptime.3
@@ -36,7 +36,8 @@ strptime \- convert a string representation of time to a time tm structure
 .BR "#define _XOPEN_SOURCE" "       /* See feature_test_macros(7) */"
 .B #include <time.h>
 .PP
-.BI "char *strptime(const char *" s ", const char *" format ", struct tm *" tm );
+.BI "char *strptime(const char *restrict " s ", const char *restrict " format ,
+.BI "               struct tm *restrict " tm );
 .fi
 .SH DESCRIPTION
 The
-- 
2.30.1.721.g45526154a5

