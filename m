Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 472EE324126
	for <lists+linux-man@lfdr.de>; Wed, 24 Feb 2021 17:05:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235645AbhBXPnD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 24 Feb 2021 10:43:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59318 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237231AbhBXOs5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 24 Feb 2021 09:48:57 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E6784C061223
        for <linux-man@vger.kernel.org>; Wed, 24 Feb 2021 06:43:58 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id u14so2145360wri.3
        for <linux-man@vger.kernel.org>; Wed, 24 Feb 2021 06:43:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=cgE3GFmD9K2WYKFDGE6uva72GrKGw/51CiEJGLxmGN4=;
        b=Qt94wC25b4RvFkANvyMRkrzCJ41HMmaWK6uWfk/Q/O976Fve4e/J/sg8xkj3mq+5w0
         X6q3kI7jU8eu77mjODF1uWyO36aCtnBucjGyrGnAhZFB1mIfFZTKemWB0wQbf2ZIAcZI
         uthZ1r2eZfUfOjR4p9ejPGw+609B+D1RSQS9BE7P4iBUct7GGsOz1sI3UrN0qbW0gUDs
         lO46Lx/mKhdDv3XYjPKP8SAX6jQ2Pl+r9JN4fgtvlB61FWwq/HVV+WrGOGBatPq1QxhA
         r8h+veKcfdeIlRFuboLviGGICF1VGypY0Yf+mDpYfxB1yfWt0EnBXgAXWGHmCXxiaGTG
         OGPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=cgE3GFmD9K2WYKFDGE6uva72GrKGw/51CiEJGLxmGN4=;
        b=OiRGN9uutS/MFCKePNWRM0QyUe0JxrY7EAz1faP8j65GlhgisYj7jgWoYkdYNOzFKx
         BuWmKAaT+e6KORUCUC9+5QD+EeAl7zuIynEq0l9h5ewIcohu6N90pWA/MHf1xLg4KN2z
         5YEsoQKrTLHUY/aSQn/w93z9IUKsQ0TPDMB2dAg7CLeQhxyxx3fon3ikLs4jD95055kd
         Ua3Vxd2/eTextViz4selGKQ9w2woNz/dYf+Ri75ZbWrpsglg0cLP7S2ZNayNVh0gIcGe
         XKOssAfSluvEnS710yrEbCCYEQtPFquKQcSWw0eIBgYFfAeQIyfAflsvlGAkxIstbMDk
         rAlQ==
X-Gm-Message-State: AOAM531B4HQ0Vc/cu7VrVXfknbYfesCcLcqKHe6vcn5GMujA+K6ypgux
        3f5jiEMd1oZDzfR6SJHUdDc=
X-Google-Smtp-Source: ABdhPJwr7uDw4EIB6bX4VBYTHsX1p5qG6uL2CCV8Htd12+lwPPl4gGr/K3g/5aVQ96qrVZOOxrj4kA==
X-Received: by 2002:adf:f905:: with SMTP id b5mr31097161wrr.129.1614177837702;
        Wed, 24 Feb 2021 06:43:57 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id a5sm3990676wrs.35.2021.02.24.06.43.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Feb 2021 06:43:57 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 03/20] memccpy.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Wed, 24 Feb 2021 15:42:54 +0100
Message-Id: <20210224144310.140649-4-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210224144310.140649-1-alx.manpages@gmail.com>
References: <20210224144310.140649-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

POSIX specifies that the parameters of memccpy()
shall be 'restrict'.  Glibc uses 'restrict' too.
Let's use it here too.

......

.../glibc$ grep_glibc_prototype memccpy
string/string.h:54:
extern void *memccpy (void *__restrict __dest, const void *__restrict __src,
		      int __c, size_t __n)
    __THROW __nonnull ((1, 2)) __attr_access ((__write_only__, 1, 4));
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/memccpy.3 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man3/memccpy.3 b/man3/memccpy.3
index bea746f7f..ed28503c0 100644
--- a/man3/memccpy.3
+++ b/man3/memccpy.3
@@ -34,7 +34,8 @@ memccpy \- copy memory area
 .nf
 .B #include <string.h>
 .PP
-.BI "void *memccpy(void *" dest ", const void *" src ", int " c ", size_t " n );
+.BI "void *memccpy(void *restrict " dest ", const void *restrict " src ,
+.BI "              int " c ", size_t " n );
 .fi
 .SH DESCRIPTION
 The
-- 
2.30.1.721.g45526154a5

