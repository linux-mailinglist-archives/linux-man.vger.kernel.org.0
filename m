Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3EAD831AE77
	for <lists+linux-man@lfdr.de>; Sun, 14 Feb 2021 00:12:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229741AbhBMXME (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 13 Feb 2021 18:12:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60792 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229718AbhBMXMC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 13 Feb 2021 18:12:02 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 96B9DC06178C
        for <linux-man@vger.kernel.org>; Sat, 13 Feb 2021 15:10:44 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id v1so4251402wrd.6
        for <linux-man@vger.kernel.org>; Sat, 13 Feb 2021 15:10:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=2FlSypTA3GpwWvKJfvYrkgZiCYSvFtmlDva/4inw+VI=;
        b=IiygSUNxuxo+Ho8Hg3gPNoG2623JKTNb/IKThBQonrSs8rF3nj6AKfiqlc9jRtCZLe
         Q3fHb4ZL0+YjWNRIpM+MbEKtvYuuhdZ0LT3NOI8IrquJXxx8wLdKnyH48Qy8zM9FhwXl
         U86zhJQPvtt5AWQ0swuenz+tRZqa1O23uS0+IrsdRM7YKmTGmNLNhpR8qUdfjenl75Hz
         pqUSZu4H9TUVRkm95XEHfswv+Uq7HQ+XJOkM7+MjNADWSV09quU8Uaq5gVDTZ7HbuNOO
         +0Wiz/pk8JgtGM8+VjsnS5l7iO1Xa+BFQavZkq6QaQkQyYHgEYTsh4+3w+jLWrJjYr9j
         vPzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2FlSypTA3GpwWvKJfvYrkgZiCYSvFtmlDva/4inw+VI=;
        b=b/+q3mrzkjn+EGeIfCmtXyj1x88oacGwhtzmt6+cAoRYvEv6ea4FSXXuFyPQ7r9ImV
         D8/yqdCxR6uquUc/tBo6nQ4w2i0gMydIsVhqFIWNINDzyi7wK4cionxM5A6PjednI9Du
         46rpVEA6YVpgHCwoZKkqBYKbgr48uKjJiweDeDlstikSCozslA+w2ZEqk4U0SpmBF9B9
         UoDb+8LWRX3DiHHpO0rZk64zG6eMEr+gqPaazMTnCbMt6+1LPuJLzmYO46kM5YIvv3na
         pL/kcR2DOLtM5JcF8uslQ151X36WotqwhYInv/4va8E/LfYEDlET2ciPBCBTJZzgmyi3
         a+Nw==
X-Gm-Message-State: AOAM530OaM/sFFEkU+ADu9egyq3a9uUDQVk0XqG1TNMu9nEhhpm1c00v
        z5hb6ZASg5jf5rDCeWoBhk31UqFb2WY=
X-Google-Smtp-Source: ABdhPJw+7ZMvKiq28Pk1ypWGrhuxvndq2KN5D/oxnYHE5nppj2SiMNlaBIGH+o0kV0JhLfM48ZNVYQ==
X-Received: by 2002:adf:fb03:: with SMTP id c3mr6867625wrr.395.1613257843427;
        Sat, 13 Feb 2021 15:10:43 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id 64sm21011878wrc.50.2021.02.13.15.10.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Feb 2021 15:10:43 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 07/14] sigaction.2: SYNOPSIS: Use 'restrict' in prototypes
Date:   Sun, 14 Feb 2021 00:10:17 +0100
Message-Id: <20210213231024.440020-8-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210213231024.440020-1-alx.manpages@gmail.com>
References: <20210213231024.440020-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

POSIX specifies that the parameters of sigaction()
shall be 'restrict'.  Glibc uses 'restrict' too.
Let's use it here too.

......

.../glibc$ grep_glibc_prototype sigaction
signal/signal.h:243:
extern int sigaction (int __sig, const struct sigaction *__restrict __act,
		      struct sigaction *__restrict __oact) __THROW;
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/sigaction.2 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man2/sigaction.2 b/man2/sigaction.2
index ce72cebf8..cc183198d 100644
--- a/man2/sigaction.2
+++ b/man2/sigaction.2
@@ -52,8 +52,8 @@ sigaction, rt_sigaction \- examine and change a signal action
 .nf
 .B #include <signal.h>
 .PP
-.BI "int sigaction(int " signum ", const struct sigaction *" act ,
-.BI "              struct sigaction *" oldact );
+.BI "int sigaction(int " signum ", const struct sigaction *restrict " act ,
+.BI "              struct sigaction *restrict " oldact );
 .fi
 .PP
 .RS -4
-- 
2.30.0

