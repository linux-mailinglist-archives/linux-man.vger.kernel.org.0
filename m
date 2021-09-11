Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9B6C5407965
	for <lists+linux-man@lfdr.de>; Sat, 11 Sep 2021 18:02:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232310AbhIKQDQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Sep 2021 12:03:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55858 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233244AbhIKQDP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Sep 2021 12:03:15 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9CCD2C061574
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:02:02 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id d6so7329578wrc.11
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:02:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=YiqjgNv9m2wxKk3rDt72xH7N8oyI2vmSFO0aWAEJbuI=;
        b=bgMV5bhImxQXvpxsLQkMHFKOkatnvghePEBtIM1Bj9vTElwH+8KgNBOZK3OtyFJuxX
         +mugtgB/1p3h0htrAn33s6JrnReMXXxtHytkR/YnB+8eFF+7SBrr1yZ4PDVz//oGXft2
         iLCf41xQGzlriaJEswPJaU1pbKgoxxClKCZp9ORTUwUNRVudf9AekipY1EuXkcmiHXpv
         6y0oO4rVweyc9o1AgpiMJ6GbIJWHe1rXXcy09EVYhPGnlZXiUbvjceG/aL14a3KUsc2h
         q8d+dv+YqozjJXUNmW+uuljHbSO9o6mjiRGm8P3uFT8Qsd1YJm0U4H74dIb2HzBgDc0L
         m1EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=YiqjgNv9m2wxKk3rDt72xH7N8oyI2vmSFO0aWAEJbuI=;
        b=mi9Cb+mIjYVe1us7zJ+6ERoVaTpNERQzFGEbEf8Zs1OZqwNSFBtNG+34Xc0YM6Cgik
         rE6I3t4n8u4Kt8NJPCRGTuDKL+UY8R16+HZkxWMmTwCZ11FujHdA575UI5kJSqJ9ieS+
         hEOrMeIfxeTBCgN6DrQyfv16erjD/0T6sYdmam8LuQPKjWHQHRGNxAAU2CmXCz4RfP+a
         7w8DmrO3HSJVzHhde5JeAA+q+8CfxHHe9AHY35ohNfOvKF17ZIQ4Yd2hBNovSs0laUVu
         ywvacKqiZbd+EvPNteIq87nqxjQhrU+XB82gG/Kp2KdJIlt1VYp9LqV6ZtelmmeviXTP
         05ow==
X-Gm-Message-State: AOAM531zSIepFggVPn7fFQCrsBjE0TTvobx26z7lR0H+D/+EHyY0iK3c
        JALhHw3RAM2+YNI4YzMTOJU=
X-Google-Smtp-Source: ABdhPJxZYMLSFfZzLKBo07u7k+aMucWoVbDKw4jMyf3Bt5UOfKg97uvVpDOA2ESb5FMhr8xXMbNPdw==
X-Received: by 2002:adf:eb83:: with SMTP id t3mr3603052wrn.365.1631376121263;
        Sat, 11 Sep 2021 09:02:01 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id i9sm1947313wmi.44.2021.09.11.09.02.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Sep 2021 09:02:00 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 38/45] statx.2: Add LIBRARY section
Date:   Sat, 11 Sep 2021 18:01:10 +0200
Message-Id: <20210911160117.552617-38-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210911160117.552617-1-alx.manpages@gmail.com>
References: <20210911160117.552617-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/statx.2 | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/man2/statx.2 b/man2/statx.2
index 04b3e5075..670264cda 100644
--- a/man2/statx.2
+++ b/man2/statx.2
@@ -30,6 +30,9 @@
 .TH STATX 2 2021-08-27 "Linux" "Linux Programmer's Manual"
 .SH NAME
 statx \- get file status (extended)
+.SH LIBRARY
+Standard C library
+.RI ( libc ", " -lc )
 .SH SYNOPSIS
 .nf
 .BR "#include <fcntl.h>           " "/* Definition of " AT_* " constants */"
-- 
2.33.0

