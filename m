Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2C5B533804F
	for <lists+linux-man@lfdr.de>; Thu, 11 Mar 2021 23:34:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229683AbhCKWeJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 11 Mar 2021 17:34:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229553AbhCKWds (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 11 Mar 2021 17:33:48 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 417A2C061761
        for <linux-man@vger.kernel.org>; Thu, 11 Mar 2021 14:33:48 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id e9so677273wrw.10
        for <linux-man@vger.kernel.org>; Thu, 11 Mar 2021 14:33:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ivvxGKsQzCjOKSoXZFDJem8ZCU6S5Stbfd/eUGUXMdE=;
        b=bhrA2Fxbi/BjiqqW5hdQRt6EJNeX09VG8Bb3TBu873Di+nN94STXyxzH8z6hPf7T7n
         tyKBn+eCdZpNtetSIhCI9TJYKS4gxFf4r2MK/mWPRFP7SRiTbyltW00I6C7UC7Ws4fbp
         yA0UIjtlFEevYHo7WhdrGC4ahIiVbtP3JC2J4lZVmUG68e12HDAWw17nAc/w7HlUkwtb
         LuDq+N4fOvF1SV3uD6KHTVQcgbNZsvulbZfA2iPs2VC0mUIRbJATfiCbRhfhOkaXuauO
         tkxHl9n9RtRKRCsuuJrhHqfr5y5U34y+aSWA/nhTg1ZW2B9hmd1agoqq137WUftlWvaq
         71KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ivvxGKsQzCjOKSoXZFDJem8ZCU6S5Stbfd/eUGUXMdE=;
        b=ljOvyVRPNwDKGSB6qRLA1yFcUeu99Vc/ZjboL7UpiRAIOSTvz3K9ANJdw/DFLARyaE
         IF98ngcoy3d17jNLgnB5UrOsV9kmLTy3ZWo5mRK0ejLlQ9PFNLtWDMb+16rMMsn7jGrC
         vmN8VvuV6K483+5fUwU3xUoKVW+SHvTi6th9iMRl0rBUyKxE3RzkGE5/V5xn82dvjIQ5
         8FktHmQQSbtWkOUIFqMK4KhbCq3DYVsBjgRZ1074mu3unz5BkYyQsS7t/0GsDnyiW9OY
         pTjf7LbIg+8Dsbm07OQXfm3rskYdAZQMtYqAJSlfEGAd2enmYR0fISAwZhiHOaowlB+e
         KESQ==
X-Gm-Message-State: AOAM530ilY25wUn45Hr0aTd269XBStKPc9kC/ld2HfuUThTMhsbBoekS
        jytiXACq941O/+OjaAMNAYs=
X-Google-Smtp-Source: ABdhPJzuwORRtcNidwt8XlS5L7xvAzUDhW+GDn1MI1NIuA3WW16TDdVFSOY9y/6Z8EnwfeePqzisUg==
X-Received: by 2002:adf:fecc:: with SMTP id q12mr10776059wrs.317.1615502027085;
        Thu, 11 Mar 2021 14:33:47 -0800 (PST)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id v2sm22365771wmj.1.2021.03.11.14.33.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Mar 2021 14:33:46 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 06/17] wcrtomb.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Thu, 11 Mar 2021 23:33:19 +0100
Message-Id: <20210311223330.722437-7-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210311223330.722437-1-alx.manpages@gmail.com>
References: <20210311223330.722437-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in wcrtomb().
Let's use it here too.

.../glibc$ grep_glibc_prototype wcrtomb
wcsmbs/wchar.h:301:
extern size_t wcrtomb (char *__restrict __s, wchar_t __wc,
		       mbstate_t *__restrict __ps) __THROW;
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/wcrtomb.3 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man3/wcrtomb.3 b/man3/wcrtomb.3
index c63daab8e..475486db1 100644
--- a/man3/wcrtomb.3
+++ b/man3/wcrtomb.3
@@ -20,7 +20,8 @@ wcrtomb \- convert a wide character to a multibyte sequence
 .nf
 .B #include <wchar.h>
 .PP
-.BI "size_t wcrtomb(char *" s ", wchar_t " wc ", mbstate_t *" ps );
+.BI "size_t wcrtomb(char *restrict " s ", wchar_t " wc \
+", mbstate_t *restrict " ps );
 .fi
 .SH DESCRIPTION
 The main case for this function is when
-- 
2.30.1

