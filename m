Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AC3EE407384
	for <lists+linux-man@lfdr.de>; Sat, 11 Sep 2021 00:47:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232491AbhIJWsh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Sep 2021 18:48:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231342AbhIJWse (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 10 Sep 2021 18:48:34 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AA9BDC061574
        for <linux-man@vger.kernel.org>; Fri, 10 Sep 2021 15:47:22 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id l7-20020a1c2507000000b002e6be5d86b3so2352182wml.3
        for <linux-man@vger.kernel.org>; Fri, 10 Sep 2021 15:47:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=cds2xF4jisGm7gA0YLrxCtCAGrAGVJc/rD2BoBrtudU=;
        b=IuwS0lpDnFN3Q0vAxhPeJF4oKm/OmstrrUrW3K+xuIM2UOBATN4fsy0g4lBx/kuoPQ
         nEfdvZUVTdjN5EwDjTgOpElxQ49TkNmSraGYdTRey53wdnK3R7ceBxtN7InRmsB+MzHB
         fh3a0BzdN6hm++61Mmv48VFhprRYFj64OEqzIZE+YyP2kVJ1GxKhpFLIMaIPeXXbF/Bx
         1zt12iG/1wQJzH0WQUbQs3JQSdKqV+2rfoNsM0mOu9/j6oNxpjvGbQPVtX5tGVfNbHXg
         eZZr7BgFaPgTnj/GsSqaTmiJEotDpppkYCzhi80CWPfPcieh91dA8xLsC9l6sWUVCDMq
         wEnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=cds2xF4jisGm7gA0YLrxCtCAGrAGVJc/rD2BoBrtudU=;
        b=lQWNtBybduqhQ/uM9pYurHhtDeuuy84JNY0R4XpZN1vlvmUGyZJgV34DXKi5wr6owF
         +PKtS6PgKo1MWDu3TCWNRnIJX/STTsi4ior2jtr4Nlje47MbwWPXMsbjJxZs3vke7yQY
         kRWJv3Oci540RFTBXmqfuSpg/qqv/L+wvccuXqWoRk9wkG2lTfPy9dTgm3nDWGDydf3r
         DDJWe9YhlHFEFKZlMdXanLKEE2biSJT+0in6kdpVJEdF6OZ1ThT7FNTkIAoHEUk3GEqI
         5ggWooxiI9X9nhuTHSJM3GLrFTZet6PIdFy+MvZu6zUwBgxtNzp7m26TK9K6jq0z0iWR
         tq5A==
X-Gm-Message-State: AOAM532jFW1m+4YUJB9XgSo94o9yilr0xrGsYpOiumnX3r7TUIG4LixB
        vabLO4uz42ab3u5vc5IvDk8=
X-Google-Smtp-Source: ABdhPJwqZyExWjoUh+kneq11xSgOu5VIwOkZedS/XajodaoFpYZt9/lDWgsiwdLCbfFXgLB/wQYQfA==
X-Received: by 2002:a1c:21c3:: with SMTP id h186mr14802wmh.89.1631314041384;
        Fri, 10 Sep 2021 15:47:21 -0700 (PDT)
Received: from sqli.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id k18sm15520wmi.25.2021.09.10.15.47.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Sep 2021 15:47:21 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>,
        linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 01/15] termios.3: CIBAUD and IBSHIFT are implemented on Linux, just unsupported by glibc
Date:   Sat, 11 Sep 2021 00:47:02 +0200
Message-Id: <20210910224717.499502-2-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210910224717.499502-1-alx.manpages@gmail.com>
References: <20210910224717.499502-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Pali Rohár <pali@kernel.org>

Signed-off-by: Pali Rohár <pali@kernel.org>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/termios.3 | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/man3/termios.3 b/man3/termios.3
index c11937458..d0630fe23 100644
--- a/man3/termios.3
+++ b/man3/termios.3
@@ -348,7 +348,12 @@ bits.
 .B _BSD_SOURCE
 or
 .BR _SVID_SOURCE ]
-(Not implemented on Linux.)
+(Not implemented in glibc, supported on Linux via
+.BR TCGET *
+and
+.BR TCSET *
+ioctls; see
+.BR ioctl_tty (2))
 .TP
 .B CMSPAR
 (not in POSIX)
-- 
2.33.0

