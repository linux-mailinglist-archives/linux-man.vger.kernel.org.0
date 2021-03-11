Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 77905338050
	for <lists+linux-man@lfdr.de>; Thu, 11 Mar 2021 23:34:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229553AbhCKWeK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 11 Mar 2021 17:34:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51092 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229774AbhCKWds (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 11 Mar 2021 17:33:48 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 85148C061760
        for <linux-man@vger.kernel.org>; Thu, 11 Mar 2021 14:33:47 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id a18so3693457wrc.13
        for <linux-man@vger.kernel.org>; Thu, 11 Mar 2021 14:33:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=A+5xdgG5R2IiW+Ta/Tu6CEr4I+VMQD4N/McGaJXMbs4=;
        b=Jx+WYIBMJPgRWwzDfwxGzVJb2x10OSonZzR8aY4dUrPsQjr17ki7osPavYYANqWYbM
         Te7wCzEJX428vWVoS73dC3hnKcdGa+9AbsoRUrSLZW4O9EPp2BmhuLBA0k0Mht8JaDWT
         qe3HljP5O3vVYZZwWVPsUOppGB/+WrNRJnd3bIGotcaqe0AT5ZpHEbJJRbSon10zsTml
         7FB8JfxdvXFfVPdzdNLSm1K1gi02UCWP57GkeFdGDpdrmBR93eYzM2jBs1cXxY5HxWTD
         ACfGe1eND+ZUXMocM22L8sSK/lV1F49ntluLvmnrm90//yJ8ZW9AJAQPffr8T5QTvuM0
         GtEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=A+5xdgG5R2IiW+Ta/Tu6CEr4I+VMQD4N/McGaJXMbs4=;
        b=iaemX6rTtGxqEqq9Qt5PaAXV8pYa6h5irfm6sSzrURwZEqkIvRdoxu3bzmZkcSOakG
         jbaQvkBOd+bJXcAdD9FRgB3+u+feUr6lNOp1jBlIEGAvIk8tmB7V/RtAmwiiyh5jvC3x
         AXX3EyhV+zsXt6L1Y5W+stRmI+fE85VYYnuUZ7LtsSvt9aOdAF5bZSlRQdHXbxbfF/Wm
         1SL4o6L+UdQ3h5KoveP4hideauDB9UBp+kHC0xnIrfbAk9AionEOYrY8heKJiiGY+r7p
         1VMQdi5HueYdNXMXF1ctU5JzhCFKXyKpA0cUW5dxSHnWl+LMF/DIPEfR6uQW6SUm+8ya
         AGdQ==
X-Gm-Message-State: AOAM533GbZhmGfVAwj6l1clJlw4Z8Ths2srOHrLL+eJWW569vshK8ZnP
        lzKEG3aaG7IssYFgrRLHNaw=
X-Google-Smtp-Source: ABdhPJymQ/mMkoXLJGw9Q3S6OCOOEyHsdfvXyijGrFUzirUzoBpafozN0aFnA09td1FVO/KZjvb+lg==
X-Received: by 2002:adf:df10:: with SMTP id y16mr10966903wrl.372.1615502026313;
        Thu, 11 Mar 2021 14:33:46 -0800 (PST)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id v2sm22365771wmj.1.2021.03.11.14.33.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Mar 2021 14:33:45 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 05/17] wcpncpy.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Thu, 11 Mar 2021 23:33:18 +0100
Message-Id: <20210311223330.722437-6-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210311223330.722437-1-alx.manpages@gmail.com>
References: <20210311223330.722437-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in wcpncpy().
Let's use it here too.

.../glibc$ grep_glibc_prototype wcpncpy
wcsmbs/wchar.h:556:
extern wchar_t *wcpncpy (wchar_t *__restrict __dest,
			 const wchar_t *__restrict __src, size_t __n)
     __THROW;
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/wcpncpy.3 | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/man3/wcpncpy.3 b/man3/wcpncpy.3
index cbe7c418d..842088e0c 100644
--- a/man3/wcpncpy.3
+++ b/man3/wcpncpy.3
@@ -20,7 +20,9 @@ returning a pointer to its end
 .nf
 .B #include <wchar.h>
 .PP
-.BI "wchar_t *wcpncpy(wchar_t *" dest ", const wchar_t *" src ", size_t " n );
+.BI "wchar_t *wcpncpy(wchar_t *restrict " dest \
+", const wchar_t *restrict " src ,
+.BI "                 size_t " n );
 .fi
 .PP
 .RS -4
-- 
2.30.1

