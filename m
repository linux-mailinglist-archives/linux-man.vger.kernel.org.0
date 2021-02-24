Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B84ED324127
	for <lists+linux-man@lfdr.de>; Wed, 24 Feb 2021 17:05:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235660AbhBXPnI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 24 Feb 2021 10:43:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59302 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237232AbhBXOs5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 24 Feb 2021 09:48:57 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 59918C061225
        for <linux-man@vger.kernel.org>; Wed, 24 Feb 2021 06:44:00 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id u14so2145450wri.3
        for <linux-man@vger.kernel.org>; Wed, 24 Feb 2021 06:44:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=JVMsD3lXx2WBnHZSlFkPVew3pJfPgQEk0UFPw9w2r7E=;
        b=lT4zpRpT0nhOzYH5a9x/PmUQws+Tvv82Ejy0ss3Ai4I8Lw0i5smr5gxH3N9RhWKGCs
         yW3lRldEF7QDmMfVaTc7J2SducePysPzShr548ECgqLXUVClKOeivGa1PTv+jYUR5R/p
         ChqkC+2Zqtq18S7YT2VQo89p3sfplFqLzSR9jhB0XWIlObwidG+5pIjl1kIQ7ZdEqscc
         L80nsYTqhZThzZ0jjG8sjIxA/HBHCShvaSGR5QESq/D1fjoW0hKlAPy1uiNDG5M3a4WC
         tzdTTUCxB40A+bnz2UbR/mAMhzvBLKygcsculYuMxWIXitaLAe42gZ8G0pVtYX+06dZF
         hX4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=JVMsD3lXx2WBnHZSlFkPVew3pJfPgQEk0UFPw9w2r7E=;
        b=oGUh5XOnDO6LKCPi8f95Pyd9qhqSceUx2r4IxWEOj5On15+HLLU+oUC0i6w8pWo/Am
         81zMvWPYjGJbXY55nP3niFm8X+DHkTzx3AaEfPZXQxllyraGm51EkWGrhoTynKUG29D0
         Ht2V7q46lRz0OPs1oNtHWup7b00GwVzn7lAQV26yGW4kl65UVspPs46wl/qI0mTGtN7y
         li/czG3sFE7fpE/toI8Qihj3xtc0dmlLWzFwQiamIFS/koi61U++tuVPcq3o+Edlbplw
         1pKTV2+iAhj3lQ7J6Pvb4nKH4bmZCND6q1SXm7wx19U+4LRU06g13l0Pqp7/zgxayYQ9
         DUrg==
X-Gm-Message-State: AOAM531GesucyM3Gm4tYABpjjWk/PmhcJvhSIvJLgEsjhAFcseGppVC1
        9UG99I82BhT/vXM03Kn6apI=
X-Google-Smtp-Source: ABdhPJyTV01EjYsIRqKFxepQ1EDw9IPexMTD9c8khxLexm4Ph7xCmBjrRKCLzqFq4zm3L+LQjvpy+A==
X-Received: by 2002:a5d:4e05:: with SMTP id p5mr18564767wrt.273.1614177839164;
        Wed, 24 Feb 2021 06:43:59 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id a5sm3990676wrs.35.2021.02.24.06.43.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Feb 2021 06:43:58 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 05/20] crypt.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Wed, 24 Feb 2021 15:42:56 +0100
Message-Id: <20210224144310.140649-6-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210224144310.140649-1-alx.manpages@gmail.com>
References: <20210224144310.140649-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Glibc uses 'restrict' for the 3rd parameter of crypt_r().
Let's use it here too.

......

.../glibc$ grep_glibc_prototype crypt_t
crypt/crypt.h:63:
extern char *crypt_r (const char *__phrase, const char *__salt,
		      struct crypt_data * __restrict __data)
     __THROW __nonnull ((1, 2, 3));
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/crypt.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/crypt.3 b/man3/crypt.3
index a73c8facc..7a9b3e9ad 100644
--- a/man3/crypt.3
+++ b/man3/crypt.3
@@ -45,7 +45,7 @@ crypt, crypt_r \- password and data encryption
 .B #include <crypt.h>
 .PP
 .BI "char *crypt_r(const char *" key ", const char *" salt ,
-.BI "              struct crypt_data *" data );
+.BI "              struct crypt_data *restrict " data );
 .fi
 .PP
 Link with \fI\-lcrypt\fP.
-- 
2.30.1.721.g45526154a5

