Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D589532F6EF
	for <lists+linux-man@lfdr.de>; Sat,  6 Mar 2021 00:52:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229935AbhCEXvl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 5 Mar 2021 18:51:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42246 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229955AbhCEXva (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 5 Mar 2021 18:51:30 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C948DC06175F
        for <linux-man@vger.kernel.org>; Fri,  5 Mar 2021 15:51:29 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id l12so3923274wry.2
        for <linux-man@vger.kernel.org>; Fri, 05 Mar 2021 15:51:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=KdxOyC9Hv0CB7JvZPjCKcFOH0+O/XDEKOUtz7Jr6yfQ=;
        b=l+w+VCW+ycJ8RHF/t34v+hpXphHqucwI7WkqyFSoOHkLSwJk2XXh8oPHTTk/PgWCGi
         ysS9qVxUSprqcs0I6TF4yj+nYb0uVaryMVGDVThU9DLWLuJyQVMOLPSvAZiCIGHzy2qk
         0rL+7IXqNDNUUCZAdqAWJo/1Bga/+T4HvWyA7HVNcvl5huKGhXU86EfzSTzkrfo3Z7h5
         fQSlS7gDHuOKutkDhCaFs/sKlYSrfC/FIPeyGZ50waybvUwZk0mqJZbibE9OyVyNNjFx
         nbyIJEvOonYbcVh44CftTrYj+yGcPJ3i+4OXXBnklUj4ESSV6ZHwIIAuYFwxeYowRzaC
         DBcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=KdxOyC9Hv0CB7JvZPjCKcFOH0+O/XDEKOUtz7Jr6yfQ=;
        b=AcHcJ3dVKIlOVioJQU1IxOFyPjH0RSUrcfG2l9HY1RxioQ9s/QexmeYUbs20IMDUW4
         VTsZqpSmyjOoG4ZIG9LrgHVtmt2+yGX1FqUz5NvrbBZR7fbbKxZYvINE4AW0Rxel7xhZ
         lDDQA5sGfBXMDx+IfAUmGdEz2R8q1GxgAtIQC8L+v30nDqcIvljFsvBu4GW5WbmnTz5L
         NYsQk7BtfCt2SPd6zHeGshSJ6gSw5yjzVQT8dQFVQHGN+3ljGSJdi0zD6ePS/Y/0zrQj
         CDtrxysgN1+QYBKGGW27O6DXTWVMHLH8AzaX0WChnoD8bHqhVK8g6YPx3HbYTjGxhCvR
         /dyg==
X-Gm-Message-State: AOAM532EN/DE1/YLP+NCqXwqrRGw/7kKUv/DrWUHlk3Thack1eTJhKLg
        2yjQOjzml90/xr9Q5DmIQCM=
X-Google-Smtp-Source: ABdhPJw0QMYG8jYcDbtSve1101RhLNVhimdPnrcXSi1RSqKVyRHrKFynbF6R2JP1Ni58t7+Qm5e81g==
X-Received: by 2002:adf:b313:: with SMTP id j19mr11377163wrd.188.1614988288677;
        Fri, 05 Mar 2021 15:51:28 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id f7sm7219835wrm.36.2021.03.05.15.51.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Mar 2021 15:51:28 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 16/22] mempcpy.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Sat,  6 Mar 2021 00:51:00 +0100
Message-Id: <20210305235105.177359-17-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210305235105.177359-1-alx.manpages@gmail.com>
References: <20210305235105.177359-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

glibc uses 'restrict' in mempcpy(), wmempcpy().
Let's use it here too.

.../glibc$ grep_glibc_prototype mempcpy
string/string.h:384:
extern void *mempcpy (void *__restrict __dest,
		      const void *__restrict __src, size_t __n)
     __THROW __nonnull ((1, 2));
.../glibc$ grep_glibc_prototype wmempcpy
wcsmbs/wchar.h:276:
extern wchar_t *wmempcpy (wchar_t *__restrict __s1,
			  const wchar_t *__restrict __s2, size_t __n)
     __THROW;
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/mempcpy.3 | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/man3/mempcpy.3 b/man3/mempcpy.3
index 33c032c50..8a810e6a5 100644
--- a/man3/mempcpy.3
+++ b/man3/mempcpy.3
@@ -15,12 +15,15 @@ mempcpy, wmempcpy  \- copy memory area
 .BR "#define _GNU_SOURCE" "         /* See feature_test_macros(7) */"
 .B #include <string.h>
 .PP
-.BI "void *mempcpy(void *" dest ", const void *" src ", size_t " n );
+.BI "void *mempcpy(void *restrict " dest ", const void *restrict " src \
+", size_t " n );
 .PP
 .BR "#define _GNU_SOURCE" "         /* See feature_test_macros(7) */"
 .B #include <wchar.h>
 .PP
-.BI "wchar_t *wmempcpy(wchar_t *" dest ", const wchar_t *" src ", size_t " n );
+.BI "wchar_t *wmempcpy(wchar_t *restrict " dest \
+", const wchar_t *restrict " src ,
+.BI "                  size_t " n );
 .fi
 .SH DESCRIPTION
 The
-- 
2.30.1.721.g45526154a5

