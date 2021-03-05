Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8070532F6E8
	for <lists+linux-man@lfdr.de>; Sat,  6 Mar 2021 00:52:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229919AbhCEXvk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 5 Mar 2021 18:51:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42232 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229723AbhCEXv1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 5 Mar 2021 18:51:27 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 607CAC06175F
        for <linux-man@vger.kernel.org>; Fri,  5 Mar 2021 15:51:27 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id a18so3881890wrc.13
        for <linux-man@vger.kernel.org>; Fri, 05 Mar 2021 15:51:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Q1pjliYa+Fqfa23JL9Oat0fPdR24xbt5VeZBKpsNeZE=;
        b=XHU5TUOJUiEp3WKZsucOI5PHGTWmmXPbRdA4pEWiw759rAAlmt9v/I1E0Rysa1qlid
         lZLlUnoh4L1wKBMfz8zv18KfL5SXtMi+tt/g9iYYUigwoqpO+BHxRrkzsN0rXWFeFhC+
         /eGhpg/WiPE0oxHX99sV5JTtSJZbmdX7lnADPWzEcoDGOub7l/LC0Xcdct2zLNITWu0M
         MPd5VnWT1iS8CIzoJc6MyvRDbrVKFCOhVnGU7YDwDPDzX5krvCRhTjdlsDSSQ/UATp4Y
         8hI7/ai06KDjR9tZKEsHbIcrOJx9OsrqhTi3YqN6Z2l2X90Ix2N7xgNVyW+KyavNdCc7
         /xrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Q1pjliYa+Fqfa23JL9Oat0fPdR24xbt5VeZBKpsNeZE=;
        b=Z3MQoWSL/q9BUPBwEqXddyHq3zddbTzhCEkzganwGzer6iVvbk3CQK+UPuqBd3AMQC
         jeBXiE6xTw+zDFySGMlZAg4k5/1a6PNJ/GJiS5YeV+YV5Vst0aOEOHLpouEe/5hCbKZO
         gu4Sj/Wvh1r3fgY/aI3/KjE+52X6t3CD7b0D0BwZ+zHLsmNNIbGD9Tggrb/ITcBv4N9b
         QJC9BceoNa3A5tBnqBVzhX4IAwpAZQVVIp57UDlGfzzdQ7Tuk4vVOEoWKntLLbet5I06
         dYpQU583jXhaETxP9lULYXdI1J4KnzAnaVba8ZHBzFFctHkvbROR9zc7AQ/3ACIl/6fP
         5Umw==
X-Gm-Message-State: AOAM533M/0XIF9BR03JiAobQUe9rUko4NGezvvcT1nc4gPdHF+LxHfvO
        m3bdtAYU2xDJj4YKw4Up5fc=
X-Google-Smtp-Source: ABdhPJwNtmAXL/kpIVID8W2Qp27gmGizxUH+7G5P6wD1RpD7Zhq10fT9z353PtOzDpgmwaez4Hdhcg==
X-Received: by 2002:a05:6000:1ca:: with SMTP id t10mr11593207wrx.45.1614988286189;
        Fri, 05 Mar 2021 15:51:26 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id f7sm7219835wrm.36.2021.03.05.15.51.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Mar 2021 15:51:25 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 13/22] mbsrtowcs.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Sat,  6 Mar 2021 00:50:57 +0100
Message-Id: <20210305235105.177359-14-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210305235105.177359-1-alx.manpages@gmail.com>
References: <20210305235105.177359-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in mbsrtowcs().
Let's use it here too.

.../glibc$ grep_glibc_prototype mbsrtowcs
wcsmbs/wchar.h:337:
extern size_t mbsrtowcs (wchar_t *__restrict __dst,
			 const char **__restrict __src, size_t __len,
			 mbstate_t *__restrict __ps) __THROW;
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/mbsrtowcs.3 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man3/mbsrtowcs.3 b/man3/mbsrtowcs.3
index 429af329e..7b7acaf7c 100644
--- a/man3/mbsrtowcs.3
+++ b/man3/mbsrtowcs.3
@@ -20,8 +20,8 @@ mbsrtowcs \- convert a multibyte string to a wide-character string
 .nf
 .B #include <wchar.h>
 .PP
-.BI "size_t mbsrtowcs(wchar_t *" dest ", const char **" src ,
-.BI "                  size_t " len ", mbstate_t *" ps );
+.BI "size_t mbsrtowcs(wchar_t *restrict " dest ", const char **restrict " src ,
+.BI "                 size_t " len ", mbstate_t *restrict " ps );
 .fi
 .SH DESCRIPTION
 If
-- 
2.30.1.721.g45526154a5

