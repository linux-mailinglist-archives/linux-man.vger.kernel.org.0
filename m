Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BF15F443542
	for <lists+linux-man@lfdr.de>; Tue,  2 Nov 2021 19:15:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234945AbhKBSRk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 2 Nov 2021 14:17:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37364 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231848AbhKBSRk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 2 Nov 2021 14:17:40 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 35525C061714
        for <linux-man@vger.kernel.org>; Tue,  2 Nov 2021 11:15:05 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id u1so3059912wru.13
        for <linux-man@vger.kernel.org>; Tue, 02 Nov 2021 11:15:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=S/2m6OI6D6KMYL2Ah0EGnq2LZqzszgjuZEEJlAaUWOQ=;
        b=PVLhTef45663uxJ8gizOU+BaKOpp1ezTBhOB0JONZ8ML5gzdW1BjojoFdH48WQHeUm
         A+aro1kk0LffhGVSY8rVcoPhGLsUTET77IMzKIBqfvelDd4pEk1tBfNgo/7FrEhk5oMm
         bkt6Ckp0mWs/erFOtwWZ7wJX878JIz5zyshIStjTOH6ZoKs/1+nambCy3O4SU2Q6tfFN
         w2qd6Lol9VcDvfpkIqpjRADycc86XHt1JIJiCsYnmir6i67Rywz7S6S78vfCzrnQq6i8
         LUmXKCTS71CKK89DFaUQ2eWJrGBWdEKf8NevvGL2giV5K2Lj7VdsDDppJXoS0+Dwyjse
         3w/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=S/2m6OI6D6KMYL2Ah0EGnq2LZqzszgjuZEEJlAaUWOQ=;
        b=oA5Gbc9Xmsmjr+UIdls8zbOfhHl05N/H8jsOGlPwIwpLWmCIS0MGt6pzmtPP5H+xM+
         biQbnY4W/1uTgayfFCVpWKz0nZsakd2uNVQJKpurvOJ+Rtj0JoDHhDTpD3NDEV1w9sUh
         mo2WuR9CvOmPSN07rkpy4fiOBtXgdqsvon/9a5IiYD2KdH9B4oifk/iXDemx26WYXS63
         MoRRHAvrCV7sLFHu1lXo+AOdcB2CMcaeOzkD4rHE7H7kyxPR13AYdxZ916BPFuKuLmY6
         hnOzeo6ou91LIyhs0IsVZLJftz/g/GZcPNCoWlsC6i12ZS+gifNKtqhVy7OM42VJ3da0
         +7ZA==
X-Gm-Message-State: AOAM533jJpCMYgmQSBeYd3Ou9WIKTqGSyOsDXxIMTuAFsU2OBUUieyoR
        yj+5ralfSzvtRy6OQvK79DM=
X-Google-Smtp-Source: ABdhPJw5fY77s/4XgI1usAYNbFqTVzsVFO1hTArPxrd4VMv8autUdUU+mGR13Ktu7OPx3hw0PJw5FA==
X-Received: by 2002:a5d:6843:: with SMTP id o3mr37969968wrw.174.1635876903839;
        Tue, 02 Nov 2021 11:15:03 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id f18sm18467445wrg.3.2021.11.02.11.15.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Nov 2021 11:15:03 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [RFC 06/37] system_data_types.7: Document useconds_t
Date:   Tue,  2 Nov 2021 19:14:23 +0100
Message-Id: <20211102181454.280919-7-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211102181454.280919-1-alx.manpages@gmail.com>
References: <20211102181454.280919-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man7/system_data_types.7 | 29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 05ed1a41f..2dae2f7ed 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -1993,6 +1993,35 @@ and
 .I void *
 types in this page.
 .RE
+.\"------------------------------------- useconds_t -------------------/
+.TP
+.I useconds_t
+.RS
+.IR Include :
+.IR <sys/types.h> .
+.PP
+Used for time in microseconds.
+According to POSIX, it shall be an unsigned integer type
+capable of storing values at least in the range [0, 1000000],
+and the implementation shall support one or more programming environments
+where the width of
+.I useconds_t
+is no greater than the width of the type
+.IR long .
+.PP
+.IR Versions :
+POSIX.1-2001 defined
+.I useconds_t
+in
+.I <unistd.h>
+too.
+.PP
+.IR "Conforming to" :
+POSIX.1-2001 and later.
+.PP
+.IR "See also" :
+.BR usleep (3)
+.RE
 .\"------------------------------------- va_list ----------------------/
 .TP
 .I va_list
-- 
2.33.1

