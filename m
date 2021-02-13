Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 188B931AE74
	for <lists+linux-man@lfdr.de>; Sun, 14 Feb 2021 00:12:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229718AbhBMXMK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 13 Feb 2021 18:12:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60820 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229742AbhBMXMF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 13 Feb 2021 18:12:05 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3CC54C0617AB
        for <linux-man@vger.kernel.org>; Sat, 13 Feb 2021 15:10:49 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id l12so4294492wry.2
        for <linux-man@vger.kernel.org>; Sat, 13 Feb 2021 15:10:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=OiMQ0BsMNywMC2E5n/VF1MDNQ/1tWUu8IBulwMkw8AQ=;
        b=VJOIAQzmr3WCEExrHm4CAkI7MLkW/eIxMdl3UEFjQBK0nKtw4XJ57+6KImcklo3Z9i
         Xl0fHblC3gKJhWRfCV3k+GI2nEAFfkUNa86FSSgrNWWFtMtKFEPnvky8X4d+5OBDV3FJ
         +jDxnZICN03/cK8YaY9/WdcIrN2kmunNKZyv6K3Z/mjtG3W+EAZMPvIhlu5EyidJQCCh
         exP2P2k0j2BGL35sgzV7LV/xkSn4u1zedvPoEaTDT5+I3oj4SCFCWmPYM2nGQbYhMG32
         EnO/yESnEoXzltquE371lB44DNf5CFEas/JoGrTWP2f+Ugz5tnKXWSidhz9C8ZmNGmF9
         fLig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=OiMQ0BsMNywMC2E5n/VF1MDNQ/1tWUu8IBulwMkw8AQ=;
        b=s6D/FWuAv3YcE2gVblImeoZ5IFA20UxMONFINc3Pn7h5ek7ymmT/AgXqbXPs62ZJ26
         /TIsTnCAcWx+pMN/dZDIwoCIY/8SS19pb6CY1EkzSA3w/HOACyhEu874boGeniYjql4n
         ra/LbzSOVF4JlmNW1hT/zKBD/H6dBwEKoM7m29Zik3XQ7buLhGK8CPdLuiIc2vzZgkrN
         g+E+bOojJml7AV3dEGtckulq+oJ+4jkCtHiOUHskBPfDiSQjXFjLVLLnWFyDkH6ovTRG
         N/Fy24C4bwrRmrmJWXzW6R16C/2PF6YmYmyXn84fqF5NyGkrj4STwRAmeQPvUwwIFcL1
         9eLg==
X-Gm-Message-State: AOAM531ASaHE1kX+yC0AaQd2RPQAloRymcvQGluGv4lJ0wTXXdy5/H+n
        d4tPsv9eksl1Rt2qkGT20zqyVv5VOfs=
X-Google-Smtp-Source: ABdhPJxGUvqxEfJpwbePnHjBFrGdeonNSyJUw98IvNOJkhqIwfuUDUCMuVANnGATwkR0Vh9xRE6FJw==
X-Received: by 2002:a05:6000:1819:: with SMTP id m25mr11062616wrh.342.1613257848096;
        Sat, 13 Feb 2021 15:10:48 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id 64sm21011878wrc.50.2021.02.13.15.10.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Feb 2021 15:10:47 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 14/14] timer_settime.2: SYNOPSIS: Use 'restrict' in prototypes
Date:   Sun, 14 Feb 2021 00:10:24 +0100
Message-Id: <20210213231024.440020-15-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210213231024.440020-1-alx.manpages@gmail.com>
References: <20210213231024.440020-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

POSIX specifies that the parameters of timer_settime()
shall be 'restrict'.  Glibc uses 'restrict' too.
Let's use it here too.

......

.../glibc$ grep_glibc_prototype timer_settime
time/time.h:242:
extern int timer_settime (timer_t __timerid, int __flags,
			  const struct itimerspec *__restrict __value,
			  struct itimerspec *__restrict __ovalue) __THROW;
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/timer_settime.2 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man2/timer_settime.2 b/man2/timer_settime.2
index e6b299f46..cf7c1ee4c 100644
--- a/man2/timer_settime.2
+++ b/man2/timer_settime.2
@@ -32,8 +32,8 @@ state of POSIX per-process timer
 .B  #include <time.h>
 .PP
 .BI "int timer_settime(timer_t " timerid ", int " flags ,
-.BI "                  const struct itimerspec *" new_value ,
-.BI "                  struct itimerspec *" old_value );
+.BI "                  const struct itimerspec *restrict " new_value ,
+.BI "                  struct itimerspec *restrict " old_value );
 .BI "int timer_gettime(timer_t " timerid ", struct itimerspec *" curr_value );
 .fi
 .PP
-- 
2.30.0

