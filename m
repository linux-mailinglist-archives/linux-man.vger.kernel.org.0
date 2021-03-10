Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 851373346DA
	for <lists+linux-man@lfdr.de>; Wed, 10 Mar 2021 19:33:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233250AbhCJSci (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 10 Mar 2021 13:32:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56196 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233291AbhCJScX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 10 Mar 2021 13:32:23 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2AC2DC061760
        for <linux-man@vger.kernel.org>; Wed, 10 Mar 2021 10:32:23 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id w7so7727460wmb.5
        for <linux-man@vger.kernel.org>; Wed, 10 Mar 2021 10:32:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=v+opXIiWov/WZw07j+Hr+F2pJZt+UphMGIAIEODD3N8=;
        b=P5IddB4t/5vcZ1jogAcSotrfC+zimzrJpgTchZCxWYdwqftLEag3tOy/smlhMm3D62
         2UKaurNDd4MRkBlI86GJiZ5z5Oi/PSfwVIRPjt8TkLRl1PGxvufcCpmnetRELkSxH03z
         p12OOLtQDGL3MAobny3lya2LgviIkzL8VURg+isv2Dq2Fe8VvFkdpKNLhzPw7Z/Xpu6n
         +jn8tg/drS9yYruB6RU2r97mRyBKYhPAIUMnFPJOR8+PvWrMqTQqdaNThuIWHGHaefkM
         EVch4Hde9HNNAmPFsFwBKvGhbdnLcJ/UhWSpD/MKXxHgcjdyYiEvfaFagTdwjPrCM9Ua
         /5Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=v+opXIiWov/WZw07j+Hr+F2pJZt+UphMGIAIEODD3N8=;
        b=dAn6A3sk6NzhM+NGClqDbVm3rEWrDhofz9zVFZLt7HsjYAtsYL1680b4Tar/BC8Rwq
         Kc3AQcTQtZH49Pk7HTRgXFYhnOo11I3m8av0njYRoavG2+3yXsAQkLv17QEIP3Fx60LI
         dGzhtbmn7/gPJB9pXvA58zi+1iexHw0irRLEaN6vUj/K4Qx/QRNM8XTO1Ile1AEN6poA
         qVaKJqJYh7FfMCuws9ZHiuKwzfiI8YVgxNkwrcAcuHiGrJw9k7Je+/Ted8sQo069jrHc
         tu/D7It7CFNZ1TSC4DKRp1YWvS8VEkRafqFqCqD51aEWGy/LDGbrPYtYkhJo7Mr+l+dz
         CQOw==
X-Gm-Message-State: AOAM5319nbDyktKsGqtB2rtj4+w5ciC14FbEIqvf+0H3fkT5+01AqNvq
        3bXDyGIHz7grlnLHlLUUZng=
X-Google-Smtp-Source: ABdhPJxlFaJGZkRqr2m+WTSzKSvtt0l/HLnNy/hIzEw8u4s4B3QmC1ojP7yU2G9YMGML5GVx/gCEgw==
X-Received: by 2002:a05:600c:204f:: with SMTP id p15mr4639490wmg.165.1615401142019;
        Wed, 10 Mar 2021 10:32:22 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id k11sm325374wmj.1.2021.03.10.10.32.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Mar 2021 10:32:21 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 19/24] strtod.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Wed, 10 Mar 2021 19:31:45 +0100
Message-Id: <20210310183149.194717-20-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210310183149.194717-1-alx.manpages@gmail.com>
References: <20210310183149.194717-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in strtod(), strtof(), strtold().
Let's use it here too.

.../glibc$ grep_glibc_prototype strtod
stdlib/stdlib.h:117:
extern double strtod (const char *__restrict __nptr,
		      char **__restrict __endptr)
     __THROW __nonnull ((1));
.../glibc$ grep_glibc_prototype strtof
stdlib/stdlib.h:123:
extern float strtof (const char *__restrict __nptr,
		     char **__restrict __endptr) __THROW __nonnull ((1));
.../glibc$ grep_glibc_prototype strtold
stdlib/stdlib.h:126:
extern long double strtold (const char *__restrict __nptr,
			    char **__restrict __endptr)
     __THROW __nonnull ((1));
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/strtod.3 | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/man3/strtod.3 b/man3/strtod.3
index e77bd59ec..24cb4ad13 100644
--- a/man3/strtod.3
+++ b/man3/strtod.3
@@ -49,9 +49,10 @@ strtod, strtof, strtold \- convert ASCII string to floating-point number
 .nf
 .B #include <stdlib.h>
 .PP
-.BI "double strtod(const char *" nptr ", char **" endptr );
-.BI "float strtof(const char *" nptr ", char **" endptr );
-.BI "long double strtold(const char *" nptr ", char **" endptr );
+.BI "double strtod(const char *restrict " nptr ", char **restrict " endptr );
+.BI "float strtof(const char *restrict " nptr ", char **restrict " endptr );
+.BI "long double strtold(const char *restrict " nptr \
+", char **restrict " endptr );
 .fi
 .PP
 .RS -4
-- 
2.30.1.721.g45526154a5

