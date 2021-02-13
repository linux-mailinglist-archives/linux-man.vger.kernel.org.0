Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9BEBB31AE73
	for <lists+linux-man@lfdr.de>; Sun, 14 Feb 2021 00:12:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229740AbhBMXMJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 13 Feb 2021 18:12:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60818 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229718AbhBMXMF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 13 Feb 2021 18:12:05 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8DB31C0617AA
        for <linux-man@vger.kernel.org>; Sat, 13 Feb 2021 15:10:48 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id u14so4280393wri.3
        for <linux-man@vger.kernel.org>; Sat, 13 Feb 2021 15:10:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=YhA5VWcGukhhZvz2yVeyhi8dKv1kRHTz+KHqojuLtpM=;
        b=vXNM2sMHg7V+00WPuJxV7wVo+TrZFf3u0J3CO1kbh+STPsnFlVuL8qgrECNWhFapcM
         Btvyknhw0ivwahP2zrvxsKDe+7tdjprTNsXL3wfpwmNUDeTGduHHtxGw7OUVFPnkYXAE
         FEXMXyePAvnAVF3uYOJPplmZJW8k3ws7PtQiyltEyxPe5OPFOqifD4jmEagf4DPXk4gl
         lkwjWPdU7JSuyQfP07SaXTNwJMueCgSNqZp0G586MHZGq4p/ZLerWbC/p+oOk73V/oqe
         7wW24kRdn/M+04Vwf3OyztaI243wkmun/UY74A4SFg2dwh1y8B4QGWLH8MKh84TURLwh
         qeHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=YhA5VWcGukhhZvz2yVeyhi8dKv1kRHTz+KHqojuLtpM=;
        b=CV1QwoSlPVR0sZzIJtaU75FUx/5shc8KaJTD6OH8pzZByDKlkMZJtq8BsBccR5RI3l
         3lCARnA25mVlwb7CYPD8lCj0rdZZ8owG2m9d1PBVg0Mq9RNXW2jT0w4SFr9LNYSdnSBF
         xvv3hodPNf7vsoo+Qk9sUBD0pCkh5WV3yTmTifFZf1vWVqJUyeSUZiVSELdeOvfvu6a4
         PIrmB2rmJzzVoIbgR8KvBn6iqlHktK+7dTnDLRPjZ4Pqi3YCYw8UPGXsL8M8u51WpvXp
         xMb4N2RrZ+UFzZ+84hyl82wd/Kz5B2L/IoftlfHVnPu4wwB3bDdNo2KZqnd2cNhD4B3I
         YzAg==
X-Gm-Message-State: AOAM531QY/XxPgOEibqzlpSKANFHn3L5HKgG0MHnuKYiTBqOWCl7GMOf
        D3XUKyD8N387l9GpHQmYqXlp0OF1lnE=
X-Google-Smtp-Source: ABdhPJyUWc5p0Qj6oGFxlW8806RSR3YTTOJLjHMhlKOYDQXWXR7xV8ISUK9YXIsRgtEmT4GlAIh8vw==
X-Received: by 2002:a5d:40cd:: with SMTP id b13mr7729106wrq.3.1613257847437;
        Sat, 13 Feb 2021 15:10:47 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id 64sm21011878wrc.50.2021.02.13.15.10.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Feb 2021 15:10:47 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 13/14] timer_create.2: SYNOPSIS: Use 'restrict' in prototypes
Date:   Sun, 14 Feb 2021 00:10:23 +0100
Message-Id: <20210213231024.440020-14-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210213231024.440020-1-alx.manpages@gmail.com>
References: <20210213231024.440020-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

POSIX specifies that the parameters of timer_create()
shall be 'restrict'.  Glibc uses 'restrict' too.
Let's use it here too.

......

.../glibc$ grep_glibc_prototype timer_create
time/time.h:234:
extern int timer_create (clockid_t __clock_id,
			 struct sigevent *__restrict __evp,
			 timer_t *__restrict __timerid) __THROW;
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/timer_create.2 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man2/timer_create.2 b/man2/timer_create.2
index a920326c4..4d54b0d0c 100644
--- a/man2/timer_create.2
+++ b/man2/timer_create.2
@@ -31,8 +31,8 @@ timer_create \- create a POSIX per-process timer
 .B  #include <signal.h>
 .B  #include <time.h>
 .PP
-.BI "int timer_create(clockid_t " clockid ", struct sigevent *" sevp ,
-.BI "                 timer_t *" timerid );
+.BI "int timer_create(clockid_t " clockid ", struct sigevent *restrict " sevp ,
+.BI "                 timer_t *restrict " timerid );
 .fi
 .PP
 Link with \fI\-lrt\fP.
-- 
2.30.0

