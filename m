Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CACF93346CB
	for <lists+linux-man@lfdr.de>; Wed, 10 Mar 2021 19:33:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233223AbhCJSch (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 10 Mar 2021 13:32:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56164 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233288AbhCJScS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 10 Mar 2021 13:32:18 -0500
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A8BFC061760
        for <linux-man@vger.kernel.org>; Wed, 10 Mar 2021 10:32:18 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id l22so7744482wme.1
        for <linux-man@vger.kernel.org>; Wed, 10 Mar 2021 10:32:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=6+5cYVxGM416CCW1Kt63Tc4b+b6uRKL9mvOnyhbZ8iw=;
        b=kDKv0yDQFzOvctP1G466cnMeYnKbWl14dhnwwM+J18n7aXB/6ly57S9d526WnBRJBu
         mKD0YLmn3CSQgyCq/97ePHCtJD3eo+SY2Q4vbN1KOWZuyd6LTp7fwGRgSjncycpnSL1H
         qvjR+kvZXd3zebtbVokhUHN7qOfY4YXZynG0aDmw4Vkw6sut3pKgc7saDQ7+4X0/06Vh
         /nBk6QQfQJFMTThiQ9K6CkQSdj30fM2duijJ1LdEx+0MUxLTU6xlkFX9SON9DMSYXmqc
         OnKWhPSa4pmEpFPcKCjdLTkyA+YIsxz4RGAo94U8pXRALC+N/KyrYAqgFpDX/9HvxVPw
         iuSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=6+5cYVxGM416CCW1Kt63Tc4b+b6uRKL9mvOnyhbZ8iw=;
        b=Rd73XynyRKJRT6YaUtWh1NiiSsLX8VJ3UxAnitO7yzbplP9ECEx04CsiFKqFgLR+4R
         zTGpH42+gh2mBgYiZ6Gf7PwQEu/lQxUc1gKofIb/Y+pqcNTjZO/I3z5USdAgnxWK5XTo
         cuufjjRtBXR627307SlHQ54U6ZQGpu4FNSs6prfqBJsEKJdI00i08YK1d7+V03UHXJ61
         zGrRDnhcxZ4B3y+aRk6b/ZoUO8/zeFDSvdwbhfbdOI3LrX7yKRiSzXobfOeUQ/6nKv3a
         5Ma5q8ciJEJnLGRLPLh8GKpZghYhYRiYafsRk2Q6aarUBrqPy03vNApy7/zqySKMPLCV
         e8wQ==
X-Gm-Message-State: AOAM53388nCbmJoJTc6088KM61AeUpqdu0nY6PIwmQHppVZtAhsV1Qv+
        f3xgXEqEHYDd/jOR8q41ce8=
X-Google-Smtp-Source: ABdhPJyoWrTUCFk1VbyimBHGDNC94q0t06EAKH82YRX2b9+0AT+Tmy/nKLnAcjLw/4ZeQ5DWJZsbEw==
X-Received: by 2002:a7b:c055:: with SMTP id u21mr4750192wmc.68.1615401137077;
        Wed, 10 Mar 2021 10:32:17 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id k11sm325374wmj.1.2021.03.10.10.32.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Mar 2021 10:32:16 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 13/24] strfmon.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Wed, 10 Mar 2021 19:31:39 +0100
Message-Id: <20210310183149.194717-14-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210310183149.194717-1-alx.manpages@gmail.com>
References: <20210310183149.194717-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in strfmon(), strfmon_l().
Let's use it here too.

.../glibc$ grep_glibc_prototype strfmon
stdlib/monetary.h:38:
extern ssize_t strfmon (char *__restrict __s, size_t __maxsize,
			const char *__restrict __format, ...)
     __THROW __attribute_format_strfmon__ (3, 4);
.../glibc$ grep_glibc_prototype strfmon_l
stdlib/monetary.h:47:
extern ssize_t strfmon_l (char *__restrict __s, size_t __maxsize,
			  locale_t __loc,
			  const char *__restrict __format, ...)
     __THROW __attribute_format_strfmon__ (4, 5);
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/strfmon.3 | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/man3/strfmon.3 b/man3/strfmon.3
index f2434a7fa..98c8d34fe 100644
--- a/man3/strfmon.3
+++ b/man3/strfmon.3
@@ -28,9 +28,10 @@ strfmon, strfmon_l \- convert monetary value to a string
 .nf
 .B #include <monetary.h>
 .PP
-.BI "ssize_t strfmon(char *" s ", size_t " max ", const char *" format ", ...);"
-.BI "ssize_t strfmon_l(char *" s ", size_t " max ", locale_t " locale ,
-.BI "                  const char *" format ", ...);"
+.BI "ssize_t strfmon(char *restrict " s ", size_t " max ,
+.BI "                const char *restrict " format ", ...);"
+.BI "ssize_t strfmon_l(char *restrict " s ", size_t " max ", locale_t " locale ,
+.BI "                const char *restrict " format ", ...);"
 .fi
 .SH DESCRIPTION
 The
-- 
2.30.1.721.g45526154a5

