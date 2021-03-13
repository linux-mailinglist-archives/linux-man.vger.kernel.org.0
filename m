Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 97D90339EDC
	for <lists+linux-man@lfdr.de>; Sat, 13 Mar 2021 16:16:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233478AbhCMPP5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 13 Mar 2021 10:15:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39296 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230441AbhCMPPs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 13 Mar 2021 10:15:48 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1B714C061574
        for <linux-man@vger.kernel.org>; Sat, 13 Mar 2021 07:15:48 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id r15-20020a05600c35cfb029010e639ca09eso17537354wmq.1
        for <linux-man@vger.kernel.org>; Sat, 13 Mar 2021 07:15:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=6fDreWk4gPEapY+aFH9PQKrLRHP6GLPGx88gJVmsOeo=;
        b=e5im87qGglacUOYYyf6h6g5z9JIQDa9R0LPq6gtgpqCMVQcPJY586/gdDMX6bEHT83
         nmpsfG4F8eLl7URl9zMZy8qZ/KfYotxf91dj41HDk3a7f9kfOnp4Kgwnb0FV21yUrJMz
         JsNDDyW4BW9olryVmGMF8tDJGBt1HmPdelEoY1c9V+OftT8cpCi7TOPnzAoGCtjDQSdJ
         QfRRdUzAEwapi/ICay4hP1eQiAyxSksKirjKFGRR4aTZtoefsv4Rg3sPZfU9BBENODq2
         YuNd1ay8jbUePU3cP0++vHtrVdHPuLQdIC1nNrlUpAzjsOhnxmPhKaphT3I7WQpWjr/j
         xtCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=6fDreWk4gPEapY+aFH9PQKrLRHP6GLPGx88gJVmsOeo=;
        b=VMZV9Vz7xeKHOKtXl0KKGjLPeTSa4mefiFrurWJrgmNk+ousQg6gcmm9WTi/HSS1vx
         xZR8NunpliZHceLFUwRplqVvUXbR/YJBgTvnKJqD/D3B60G3nDG/TQQYdXEHDbCXVYZp
         pvSH5ADzEjIXhfhrHrqZ3sxpESNEGWSlb2xM9+mMp+tOvQrhSxPL8lgKspd5mhy+fDdb
         9CG+Q7PCpoLPjetsOg/uDUy02kw7AlHri/CJpGe2U6NXRGEsFYXQU8pbhbVFxsPrnP++
         1HUxeSsvSZerZzrUSLGCFstqAv4KhIpMBeZ1c+wNz8UVhbVJ0mgl7czm9pN/BE3Gi+s+
         zdZw==
X-Gm-Message-State: AOAM5305olQG2xdtDTc6lfC3cSwxjwCGH7A5uJKbIpL6AQBBT2TyMIkk
        Ko5jzD8ReZtpUxQDfE2kcrw=
X-Google-Smtp-Source: ABdhPJznnSYpVGuJLVhjTTDgZ6xoE+HbSsU3N+ILYUWJK3J/UfxT6zxyuPqMpVYmCvjE7Kgu2dj3EQ==
X-Received: by 2002:a7b:c083:: with SMTP id r3mr18155288wmh.177.1615648546512;
        Sat, 13 Mar 2021 07:15:46 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id j9sm6749482wmi.24.2021.03.13.07.15.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Mar 2021 07:15:46 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Heinrich Schuchardt <xypron.glpk@gmx.de>
Subject: [PATCH] wprintf.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Sat, 13 Mar 2021 16:06:53 +0100
Message-Id: <20210313150651.163299-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

POSIX uses 'restrict' in *wprintf() (see [v]fwprintf(3p)).
Let's use it here too.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---

Hi Michael,

I found this last one, which I didn't find through the glibc sources
because they have a bit of a mess with *printf() functions.
I checked that POSIX requires 'restrict'.

At this point, I still have a few patches about prototypes (not restrict),
but I'll buffer them for now.

Cheers,

Alex

 man3/wprintf.3 | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/man3/wprintf.3 b/man3/wprintf.3
index 676fe1ed7..76acfbb34 100644
--- a/man3/wprintf.3
+++ b/man3/wprintf.3
@@ -22,15 +22,17 @@ wide-character output conversion
 .B #include <stdio.h>
 .B #include <wchar.h>
 .PP
-.BI "int wprintf(const wchar_t *" format ", ...);"
-.BI "int fwprintf(FILE *" stream ", const wchar_t *" format ", ...);"
-.BI "int swprintf(wchar_t *" wcs ", size_t " maxlen ,
-.BI "             const wchar_t *" format ", ...);"
+.BI "int wprintf(const wchar_t *restrict " format ", ...);"
+.BI "int fwprintf(FILE *restrict " stream ,
+.BI "             const wchar_t *restrict " format ", ...);"
+.BI "int swprintf(wchar_t *restrict " wcs ", size_t " maxlen ,
+.BI "             const wchar_t *restrict " format ", ...);"
 .PP
-.BI "int vwprintf(const wchar_t *" format ", va_list " args );
-.BI "int vfwprintf(FILE *" stream ", const wchar_t *" format ", va_list " args );
-.BI "int vswprintf(wchar_t *" wcs ", size_t " maxlen ,
-.BI "             const wchar_t *" format ", va_list " args );
+.BI "int vwprintf(const wchar_t *restrict " format ", va_list " args );
+.BI "int vfwprintf(FILE *restrict " stream ,
+.BI "             const wchar_t *restrict " format ", va_list " args );
+.BI "int vswprintf(wchar_t *restrict " wcs ", size_t " maxlen ,
+.BI "             const wchar_t *restrict " format ", va_list " args );
 .fi
 .PP
 .RS -4
-- 
2.30.1.721.g45526154a5

