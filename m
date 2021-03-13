Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7822933A061
	for <lists+linux-man@lfdr.de>; Sat, 13 Mar 2021 20:27:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234472AbhCMT0c (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 13 Mar 2021 14:26:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36172 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234397AbhCMT0C (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 13 Mar 2021 14:26:02 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE0D5C061574;
        Sat, 13 Mar 2021 11:26:01 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id u5-20020a7bcb050000b029010e9316b9d5so14144833wmj.2;
        Sat, 13 Mar 2021 11:26:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=hSTdDcjje/hceZMxpO7qDIzVpu8KWXMOYCef8SD5Sy4=;
        b=iRU7DB8qHHfol0pRy/yTycv/ytdKuDKWYoke7HDhLf1b+CyhIIORjFzpmT7FKWuyjA
         jLQqN/qAv3CxS4Ky7aFr08zDcM38GIm1Kngf2UezUgqztT4tM5IymKGGFSfcGPhePwnv
         BliJO9c6rfTL0XLHAtyXTLT7lcT2Jl2mhX+mtXL8OE8PxMJp8SyKaKlYDNP3JG0wE1Kx
         7AVkZl2niYVuEXYpill+hGssn+8ZGuH0K7O9yNRwSZy/at3kqIBBC+Y3e/VGSeTNzeXG
         eDx+JBCBBdZJ9kwrQHlJbwOufXIGf0ZZ0FTlZPvSB7nXlL1Dcp+9MUOrrxdURqUq85yO
         /8/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=hSTdDcjje/hceZMxpO7qDIzVpu8KWXMOYCef8SD5Sy4=;
        b=pOJV6aCwngv7PcuIoA7HCbnxFVsdCknfVv9W7oVhiEaehFM8zLZL4c8Ff7RnvgfggG
         BqsUWUOQRRN1blxEDzevIUQ4nyildrl8lwEavJIgqzfZP+wKD6/fbPMCMqmhURn1Up8C
         mjIn08czk8xMDoZKujUSz4nz83xADCz+9YcPTDn1Exrz83aPups2oNlGd5zJ3GQnL8lx
         isZl/74QSzbE/6vCra3pUU1hFYXj6S/jAdMKMtaOi2jW8DRn4rUFFYjF1PBpveBk7MzC
         f6k7qCWrD8ICW42vVt/rORIlX/B0OxZd/KjlqKuwemg4wrwW1AOdnkj/e/3x26YPXEtU
         mKWQ==
X-Gm-Message-State: AOAM532/YF3nWdAD3G6iSmpceNVAmj4ItaIFGKKTmsPAsKPOR3GqEpVR
        IedAqfSnQ30UBwV5t8aMn1M=
X-Google-Smtp-Source: ABdhPJwdRHI7UONCGKpzUUYdG5/c4LkiL+jfrlZ1Xo34nkDe10cswmF2DmJkFx8O2heFSuKKL01mzw==
X-Received: by 2002:a05:600c:4f14:: with SMTP id l20mr18692607wmq.71.1615663560662;
        Sat, 13 Mar 2021 11:26:00 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id j136sm7670964wmj.35.2021.03.13.11.25.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Mar 2021 11:26:00 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        linux-kernel@vger.kernel.org, Florian Weimer <fweimer@redhat.com>
Subject: [RFC v3 14/17] get_robust_list.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Sat, 13 Mar 2021 20:25:24 +0100
Message-Id: <20210313192526.350200-15-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210214133907.157320-1-alx.manpages@gmail.com>
References: <20210214133907.157320-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Also remove unused includes.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/get_robust_list.2 | 20 ++++++++------------
 1 file changed, 8 insertions(+), 12 deletions(-)

diff --git a/man2/get_robust_list.2 b/man2/get_robust_list.2
index b1ae42dbd..9c8f14443 100644
--- a/man2/get_robust_list.2
+++ b/man2/get_robust_list.2
@@ -32,17 +32,16 @@
 get_robust_list, set_robust_list \- get/set list of robust futexes
 .SH SYNOPSIS
 .nf
-.B #include <linux/futex.h>
-.B #include <sys/types.h>
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
@@ -139,9 +138,6 @@ could be found.
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
2.30.2

