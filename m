Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 65DCA3537F9
	for <lists+linux-man@lfdr.de>; Sun,  4 Apr 2021 13:59:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230452AbhDDL74 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Apr 2021 07:59:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37870 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230446AbhDDL7z (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Apr 2021 07:59:55 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 849C6C061756
        for <linux-man@vger.kernel.org>; Sun,  4 Apr 2021 04:59:51 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id b9so722696wrs.1
        for <linux-man@vger.kernel.org>; Sun, 04 Apr 2021 04:59:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=pcPv5Fuq5z0fIsLcPIO2L+6g4NPWa5MD8jyc9rRrveQ=;
        b=YPt5bVCa4Zc2nvNX3LKhb/9PwuHtj9xpazxRdDGGzVv7b2RYNDSbyv4xvADB4h3xLo
         E57v4SXS7QVIq+0sqrcbRI5x0CwOzj0aanDsUoK9WTkPQdzbHQnrcaMzAbZiRWAh3bPM
         Zak/sN7t/p1WDYsiB1U65yymGi39R6PqfNBam8FuCAAN02LVH/KdPhLRIg1W76923/Z5
         5ctf2fVoVJTBFxQ/hVRW0gYd0kbdbMy5r+kBgzoomtKlGERM21aTrJSK4ZoyDSeQSf2K
         5MgltixOa9Fb19RY7Z8rMM5Zyrlrylsj9/INL0R63VuUDexUwj7KPdHTEc71otBy8loz
         xATQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=pcPv5Fuq5z0fIsLcPIO2L+6g4NPWa5MD8jyc9rRrveQ=;
        b=aV/yoBAB4dY6n5B2QdaZMiS9BjfTNUKzsqJKUD8lhMq0ynDJidM+OgqIHu977ZjHex
         PDZzE9zzfFB1WOg7vl+i+OD3tL54PXCZk4rrI9KrQn38YDp+Oczk/utVe1jJgKNKRIDi
         QuoVM1fMOhZkP3CB9mS3OtHteZfansWDr/4ryJYgG5p74Gio7c2tyOmu2uSH1riMnwNH
         gvxT6APkOm39prwmK+LYFGaJIyQK6YKd0qOQoOIjVfy1GXsDvh6vDHWn/gXHN7zdmND6
         9FtBx9yeGO2+jmQLpB9GaLjJhr1LZn7UwrJ4a57A0S04/7+s/WHlny+v4Xp9WgDwifEd
         3AKg==
X-Gm-Message-State: AOAM5309v/aZWGefICaa8asS9odsnOyLCarys7ng7p2/W2h7VZW58H+/
        bU4qtf4oaqx8ED9oyXrCX4c=
X-Google-Smtp-Source: ABdhPJxWM1i6U8beK8Co/cYI7nm/TskUUs9NACQmBOgnjlQ6b6umcmeFvI95MFFmylfVBEXlL0D8vw==
X-Received: by 2002:adf:a1d8:: with SMTP id v24mr23814265wrv.378.1617537590374;
        Sun, 04 Apr 2021 04:59:50 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id u2sm23786967wrp.12.2021.04.04.04.59.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Apr 2021 04:59:50 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v5 25/35] get_robust_list.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Sun,  4 Apr 2021 13:58:38 +0200
Message-Id: <20210404115847.78166-26-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210403194026.102818-1-alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/get_robust_list.2 | 19 ++++++++-----------
 1 file changed, 8 insertions(+), 11 deletions(-)

diff --git a/man2/get_robust_list.2 b/man2/get_robust_list.2
index dd43cded2..b1368ddd3 100644
--- a/man2/get_robust_list.2
+++ b/man2/get_robust_list.2
@@ -32,16 +32,16 @@
 get_robust_list, set_robust_list \- get/set list of robust futexes
 .SH SYNOPSIS
 .nf
-.B #include <linux/futex.h>
-.B #include <syscall.h>
+.BR "#include <linux/futex.h>" \
+"    /* Definition of " "struct robust_list_head" " */"
+.BR "#include <sys/syscall.h>" "    /* Definition of " SYS_* " constants */"
+.B #include <unistd.h>
 .PP
-.BI "long get_robust_list(int " pid ", struct robust_list_head **" head_ptr ,
-.BI "                     size_t *" len_ptr );
-.BI "long set_robust_list(struct robust_list_head *" head ", size_t " len );
+.BI "long syscall(SYS_get_robust_list, int " pid ,
+.BI "             struct robust_list_head **" head_ptr ", size_t *" len_ptr );
+.BI "long syscall(SYS_set_robust_list,"
+.BI "             struct robust_list_head *" head ", size_t " len );
 .fi
-.PP
-.IR Note :
-There are no glibc wrappers for these system calls; see NOTES.
 .SH DESCRIPTION
 These system calls deal with per-thread robust futex lists.
 These lists are managed in user space:
@@ -138,9 +138,6 @@ could be found.
 These system calls were added in Linux 2.6.17.
 .SH NOTES
 These system calls are not needed by normal applications.
-No support for them is provided in glibc.
-In the unlikely event that you want to call them directly, use
-.BR syscall (2).
 .PP
 A thread can have only one robust futex list;
 therefore applications that wish
-- 
2.31.0

