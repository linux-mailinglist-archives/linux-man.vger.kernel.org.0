Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C1DA0326FCE
	for <lists+linux-man@lfdr.de>; Sun, 28 Feb 2021 01:51:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230153AbhB1Aut (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 27 Feb 2021 19:50:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38412 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230206AbhB1Auo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 27 Feb 2021 19:50:44 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10AC2C0617AA
        for <linux-man@vger.kernel.org>; Sat, 27 Feb 2021 16:49:26 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id m1so11031268wml.2
        for <linux-man@vger.kernel.org>; Sat, 27 Feb 2021 16:49:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=tTgSAnxTLFjz9zOHsSmkUH18INVWp3rDvh8POrPDkU0=;
        b=Lk7Udp0NU5+JKoWP26A9miyHejcb++fPaF924WU7EpPyQR3bqrY4gQWi55VhagsrmU
         LbTPiOYDWbIzOfh99uICmACWUC7tN0T7YS3D2q7PPtmVy0XcoJwvSX+ldhhcZxTgZbY/
         +PplcHi6QJSsh+sTqDBqXqayj8WZf0zZv6aOmED7WR1/uMvAksoG+HmZ8z/CrQ8JicUx
         ij3nJs2lMXt3G/VqRcEXf2JW4Lwe+mnjr4OdUQoSy0SnwtIJK/5YXwlD+xBvoc8eTjE0
         qqC34sucKr8cIkiHqqSV1htgzrEDJps01BiNCm2vauP5iC3MXeSkDnZfsOVBLixcDN08
         qz4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=tTgSAnxTLFjz9zOHsSmkUH18INVWp3rDvh8POrPDkU0=;
        b=t/2O9JNUtLYL95gojSUvgt3Yn5jm/YEyNbe6VD9wNPQiy6ARMObw6jwUDzvSIOzg0J
         WhZD39t+r/hd0nETukPiHefOszeLCmE0ZH/MMXdM7UVEXWD7HM0nolznWmFw3KJgxu6/
         gUKmcPaXS53JKvcgzm4QY3hb77U6CEdT9xL0GfUa8AOD1P9c84JY2xhtVAe2HkFmU5TB
         u4LggOEt7+AdzNrPZyqE5qpKtHicKzpAO6ae4ssMHD9a8zvP3O8+O9WTj2ZbfGQEZt+i
         +uKmyKXwtYGkJFeVZbBNa/634SM887/nGZ5VwqZPyto84g5jTPwJAEXso/bnbtc9dEcx
         Y8eQ==
X-Gm-Message-State: AOAM530BJoUpBXKF/iHOMxpw4kwQ3jQ7VxlSrsZvC3/fsBbjdjbiAQbz
        uTYPyTIopmK7zcc3qE+loCE=
X-Google-Smtp-Source: ABdhPJyijzHVj5WSVCsCJ2DdfGPebb3BqmTTJRU8jXjQzpJ65KbubghJJSh3or/t2/GG6Oh5lLWEaQ==
X-Received: by 2002:a7b:c112:: with SMTP id w18mr4256261wmi.28.1614473364927;
        Sat, 27 Feb 2021 16:49:24 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id o14sm18212145wri.48.2021.02.27.16.49.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Feb 2021 16:49:24 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 09/14] getmntent.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Sun, 28 Feb 2021 01:48:13 +0100
Message-Id: <20210228004817.122463-10-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210228004817.122463-1-alx.manpages@gmail.com>
References: <20210228004817.122463-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

glibc uses 'restrict' in addmntent(), getmntent_r().
Let's use it here too.

.../glibc$ grep_glibc_prototype addmntent
misc/mntent.h:81:
extern int addmntent (FILE *__restrict __stream,
		      const struct mntent *__restrict __mnt) __THROW;
.../glibc$ grep_glibc_prototype getmntent_r
misc/mntent.h:73:
extern struct mntent *getmntent_r (FILE *__restrict __stream,
				   struct mntent *__restrict __result,
				   char *__restrict __buffer,
				   int __bufsize) __THROW;
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/getmntent.3 | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/man3/getmntent.3 b/man3/getmntent.3
index 7f83ed248..96e642d18 100644
--- a/man3/getmntent.3
+++ b/man3/getmntent.3
@@ -42,7 +42,8 @@ getmntent_r \- get filesystem descriptor file entry
 .PP
 .BI "struct mntent *getmntent(FILE *" stream );
 .PP
-.BI "int addmntent(FILE *" stream ", const struct mntent *" mnt );
+.BI "int addmntent(FILE *restrict " stream ,
+.BI "              const struct mntent *restrict " mnt );
 .PP
 .BI "int endmntent(FILE *" streamp );
 .PP
@@ -51,8 +52,9 @@ getmntent_r \- get filesystem descriptor file entry
 /* GNU extension */
 .B #include <mntent.h>
 .PP
-.BI "struct mntent *getmntent_r(FILE *" streamp ", struct mntent *" mntbuf ,
-.BI "                           char *" buf ", int " buflen );
+.BI "struct mntent *getmntent_r(FILE *restrict " streamp ,
+.BI "              struct mntent *restrict " mntbuf ,
+.BI "              char *restrict " buf ", int " buflen );
 .fi
 .PP
 .RS -4
-- 
2.30.1.721.g45526154a5

