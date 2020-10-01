Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 06D6F28040B
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 18:35:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732299AbgJAQfX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 12:35:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49154 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732016AbgJAQfX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 12:35:23 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE2CCC0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 09:35:22 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id m6so6562545wrn.0
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 09:35:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=wI2nVrRnzo1LxZImCMHQing6ubfulTgbEOUnVK3VCNw=;
        b=q70ZvtFhXZ+VHwC8d4kVaGU5es5DuecWGPCowgoGfQg29/ELUTQ6Lavr14sBrprh7B
         QFfSyUueeONO6c/EE6eA9EtiNA3WU6w1bIVdkl+FQh8yoiDHEeP1L6ij3uaeVKnIdLxE
         XlqLHC9ThBFtRaKqaQB8awnw2ToWYqZ2dGKF2YBDsjnYBxvenKwNn+MeEhJMIitfkXmS
         E06uCUSnTrnvGNEGJXp3TQApfGjK62n75k6psJnuoPR/bc/ADlcoEHKeiEOIXu2bAM2b
         xBKYmsog6T6+MohPq9ZOuB3+TdnkyLK6/uDziw3wQxn0QEwnS7mCQotOs/xD9cuhEsBg
         2kNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=wI2nVrRnzo1LxZImCMHQing6ubfulTgbEOUnVK3VCNw=;
        b=oysj/Yhs7htYTyKAEgusBN4OKs/jUtA8cc1jtMANdpvPpunYP8PDiFYYNVvioNPzWv
         vgkbVmaCQmxlagG6tZ0wfH9ygexNq/z5N9urWlBJBTVkVUq979I5MevGxdOXcZh9IZfH
         OE4PUr4D9+IgU+/MFfzUeqLNVQOBAscb/z0C8hVW8NojCBdZG08G7CGIN6uCt1V7oRTi
         Sn/qqCoRVwUKIneOPZz8GtL2X9u8PQgTb1DZr+qdRPZenGRxYjBamhKcYe09N7lMkw+M
         15NT4TBpASIbCwruUna/3jxe90z7edBihb9cFZTRhuq9d4kpmDhkGMzmvSTe2aGrYJFG
         k9hw==
X-Gm-Message-State: AOAM5332zfGnh/YNqNcNo9W6JM0OOephsadhc/61d/532lWrHKH5ipsc
        kXnhF3Q4to8P4WZ4EEA9VkcXgxj6B1SBEA==
X-Google-Smtp-Source: ABdhPJx0aVHhqbiLtaX56BFIomoYbo0q5RH6AXmdCgH0DmbFrfDC3ZZ5gLEynGH5p3Bb6n8hi9gqQw==
X-Received: by 2002:adf:e907:: with SMTP id f7mr9876191wrm.169.1601570121433;
        Thu, 01 Oct 2020 09:35:21 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id f14sm10660997wrt.53.2020.10.01.09.35.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2020 09:35:20 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, gcc-patches@gcc.gnu.org,
        libc-alpha@sourceware.org
Subject: [PATCH 3/4] system_data_types.7: Add 'unsigned __int128'
Date:   Thu,  1 Oct 2020 18:34:43 +0200
Message-Id: <20201001163443.106933-4-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201001163443.106933-1-colomar.6.4.3@gmail.com>
References: <20201001163443.106933-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man7/system_data_types.7 | 35 +++++++++++++++++++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 5f9aa648f..3cf3f0ec9 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -1822,6 +1822,41 @@ and
 .I void *
 types in this page.
 .RE
+.\"------------------------------------- unsigned __int128 ------------/
+.TP
+.I unsigned __int128
+.RS
+An unsigned integer type
+of a fixed width of exactly 128 bits.
+.PP
+When using GCC,
+it is supported only for targets where
+the compiler is able to generate efficient code for 128-bit arithmetic".
+.PP
+Versions:
+GCC 4.6.0 and later.
+.PP
+Conforming to:
+This is a non-standard extension, present in GCC.
+It is not standardized by the C language standard nor POSIX.
+.PP
+Notes:
+This type is available without including any header.
+.PP
+Bugs:
+It is not possible to express an integer constant of type
+.I unsigned __int128
+in implementations where
+.I unsigned long long
+is less than 128 bits wide.
+.PP
+See also the
+.IR __int128 ,
+.I uintmax_t
+and
+.IR uint N _t
+types in this page.
+.RE
 .\"------------------------------------- va_list ----------------------/
 .TP
 .I va_list
-- 
2.28.0

