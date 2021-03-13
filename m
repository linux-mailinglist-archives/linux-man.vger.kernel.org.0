Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2D4A933A053
	for <lists+linux-man@lfdr.de>; Sat, 13 Mar 2021 20:27:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234425AbhCMT03 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 13 Mar 2021 14:26:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36122 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234071AbhCMTZx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 13 Mar 2021 14:25:53 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 713BFC061574;
        Sat, 13 Mar 2021 11:25:53 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id f22-20020a7bc8d60000b029010c024a1407so17795060wml.2;
        Sat, 13 Mar 2021 11:25:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=/AFw5wHq+GfKWHh1wvl2IlsPE6dyDM4uX+z9mQpJ5/M=;
        b=t8HFcaPNzThd5rERaQVP0VxQzlIYY2PkyE9v7pDkWbyhHM5x922PHPxOoWApusHjWE
         KCzQQmZgIYAyxh5LZJsWylNdBkmcc737LQH4kssthFULoyLhc3WkCenB4LuPrz9za2iO
         Dp4cfCguaY8Vem69InbFZDZ3gxm1quaon1nK/SLscyRYub/V6pRPdNcRsOLVjWqy1ofi
         WE9BeJt9hM9cJrf7r8sYNsTqHhGU/YzHJuFqlJFIPcJ9IPcREvu0Ni4a2+tt7ERdmDya
         Ra9ATnSROHotfkZDUhXxOUPnQ1+B5iRGMdpWZ5bKUMUI8keTVnICL3iNR32+6/ZdsApi
         M9Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/AFw5wHq+GfKWHh1wvl2IlsPE6dyDM4uX+z9mQpJ5/M=;
        b=c/WyQV7WRqTmFlihlNpY7YmXtZlBppDt9fsxBW+9w+CMe0nl0qO80T8XB+rDU7eSX+
         TUD7dxsKHERdsuGr2UApX7fk6qA5zcKxSMxfn8HlUaZhRjK2fT8ZQ2mALBsWPt1AUaWR
         6x30MkIXpI2rk9DlnsK05YuCZ0M8QGgMLvoyjNLDQ/KkQwqh43982eC3syYQ8GGYc3jW
         JL1HZRyr601Gg2aCGrd5B0lc8TADn7Ueq7NSQ6tsgOAl+ApfeqVRp1CXOWaSpDP6h4Df
         kULssdcSW2LJqvuYxqrMGO0/3BZUofK79UvKw8zHK3vZ2K1aDslI83vyh+5XIFT3BLG8
         gYCw==
X-Gm-Message-State: AOAM532/5WkRuoIo8l1EM4FZ7yy+SnKrBGJGYkFWZv1m+7+KIxljvvBt
        I488hxnlOcGtAjqBnEfVvkU=
X-Google-Smtp-Source: ABdhPJwFJC4ND+OAQfr098dvmKqEpBmwO0pYfnx/Kpx8bTckbjgEpUfEnjj9RCx4VboksKP+tiKkkw==
X-Received: by 2002:a05:600c:4112:: with SMTP id j18mr18959294wmi.143.1615663552222;
        Sat, 13 Mar 2021 11:25:52 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id j136sm7670964wmj.35.2021.03.13.11.25.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Mar 2021 11:25:51 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        linux-kernel@vger.kernel.org, Florian Weimer <fweimer@redhat.com>
Subject: [RFC v3 04/17] arch_prctl.2: SYNOPSIS: Remove unused includes
Date:   Sat, 13 Mar 2021 20:25:14 +0100
Message-Id: <20210313192526.350200-5-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210214133907.157320-1-alx.manpages@gmail.com>
References: <20210214133907.157320-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

AFAICS, there's no reason to include that.
All of the macros that this function uses
are already defined in the other headers.

Cc: glibc <libc-alpha@sourceware.org>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/arch_prctl.2 | 1 -
 1 file changed, 1 deletion(-)

diff --git a/man2/arch_prctl.2 b/man2/arch_prctl.2
index 8706cd1ec..d1b9e16f9 100644
--- a/man2/arch_prctl.2
+++ b/man2/arch_prctl.2
@@ -28,7 +28,6 @@ arch_prctl \- set architecture-specific thread state
 .SH SYNOPSIS
 .nf
 .BR "#include <asm/prctl.h>" "        /* Definition of " ARCH_* " constants */"
-.B #include <sys/prctl.h>
 .BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
 .B #include <unistd.h>
 .PP
-- 
2.30.2

