Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2202D3346CC
	for <lists+linux-man@lfdr.de>; Wed, 10 Mar 2021 19:33:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233182AbhCJSch (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 10 Mar 2021 13:32:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56160 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233223AbhCJScR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 10 Mar 2021 13:32:17 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 749F9C061760
        for <linux-man@vger.kernel.org>; Wed, 10 Mar 2021 10:32:17 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id f12so24450315wrx.8
        for <linux-man@vger.kernel.org>; Wed, 10 Mar 2021 10:32:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=EqAyQylO8W1t/yhPmY8OxACFuG4Qjd3n9L9y54RJzuw=;
        b=E4mysRLZRFrNYuC3sOsMVCtUQ0blQ+HaN0DTVRCDFL7TU/s+8xV8pGTDAwXarwnIxg
         FA81DFrt6YOn6XBiP5bUGNc/6CH/kKMxRmm65WMI5qojWJkfu6gZoXvTIwwFiBCmxqFm
         5Yse58Fg/F1HlnAEHkRuLwwM3OZdfrn8Js7Bg51Y7tD9N1RN0zuSb01RdjLPUwYxGPCI
         W6J5M21xO7UtYe0t8JLn/m6LdEXJqs4w1AsoLZLVu84F40cdSwuxv8ZvJ3i0FlfgqNGI
         j3ZRlsdenqaguV88Oqv2GB+xyaYdf96JV/N+ueUWF83hDowkPI+ZUSBtmxsuYJ41gGXX
         hg+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=EqAyQylO8W1t/yhPmY8OxACFuG4Qjd3n9L9y54RJzuw=;
        b=ifYfKHcZ44JRidiTAON9M99njidNx65v7Dx4e0hlsjreeciI/OSZxAMBamr5nIouVH
         i1mRS65cEqy0LRn2b26GBn3NrJZGnAyTGxBr373gGeKrrTeMA/9ONLt9KUrZjiOevw1J
         p11h8yp58e5Vwb1nOyyesBJkvYwN0i51Eu+afqUozMHOgW5NKzFjhYpbFprs3XJlWQCh
         kvLYBvOaJKaKSbzPxRGwFDcHwOq768sltcTtQat5xE44zG1HX8lvjCWET72DfVRmGEvR
         8T10MqyKGdqwPmfY1v4ZOyjrPjfXHv9Iy+o8diYzKGc6HU32BV2pzyyczGk186rsQHXG
         i0Lg==
X-Gm-Message-State: AOAM531//SL34ZFlgwcO4h83ayZyIpJU0dexv5QWGktin3FrFw8I+DRj
        fytCtN0rIqJd5vdQdl6eWhs=
X-Google-Smtp-Source: ABdhPJyR3FAr9vlFvhVAlIeNo2xbN1N0WqpHSEPDkdkwqKjPKXAGwGKCEeZZHrhjDQkhQHMz0KsyrA==
X-Received: by 2002:adf:a59a:: with SMTP id g26mr4864188wrc.271.1615401136193;
        Wed, 10 Mar 2021 10:32:16 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id k11sm325374wmj.1.2021.03.10.10.32.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Mar 2021 10:32:15 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 12/24] strcpy.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Wed, 10 Mar 2021 19:31:38 +0100
Message-Id: <20210310183149.194717-13-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210310183149.194717-1-alx.manpages@gmail.com>
References: <20210310183149.194717-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in strcpy(), strncpy().
Let's use it here too.

.../glibc$ grep_glibc_prototype strcpy
string/string.h:125:
extern char *strcpy (char *__restrict __dest, const char *__restrict __src)
     __THROW __nonnull ((1, 2));
.../glibc$ grep_glibc_prototype strncpy
string/string.h:128:
extern char *strncpy (char *__restrict __dest,
		      const char *__restrict __src, size_t __n)
     __THROW __nonnull ((1, 2));
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/strcpy.3 | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/man3/strcpy.3 b/man3/strcpy.3
index 46993cdb3..ade8b9412 100644
--- a/man3/strcpy.3
+++ b/man3/strcpy.3
@@ -39,8 +39,9 @@ strcpy, strncpy \- copy a string
 .nf
 .B #include <string.h>
 .PP
-.BI "char *strcpy(char *" dest ", const char *" src );
-.BI "char *strncpy(char *" dest ", const char *" src ", size_t " n );
+.BI "char *strcpy(char *restrict " dest ", const char *" src );
+.BI "char *strncpy(char *restrict " dest ", const char *restrict " src \
+", size_t " n );
 .fi
 .SH DESCRIPTION
 The
-- 
2.30.1.721.g45526154a5

