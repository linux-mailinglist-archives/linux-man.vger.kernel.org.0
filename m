Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4855B2812AC
	for <lists+linux-man@lfdr.de>; Fri,  2 Oct 2020 14:29:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387757AbgJBM3c (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 2 Oct 2020 08:29:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36028 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387717AbgJBM3b (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 2 Oct 2020 08:29:31 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8759DC0613D0
        for <linux-man@vger.kernel.org>; Fri,  2 Oct 2020 05:29:31 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id q9so1502888wmj.2
        for <linux-man@vger.kernel.org>; Fri, 02 Oct 2020 05:29:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=8cz+CV5pNXM4qzGHkwy9PeCAvNAmfETDXfFqBxG+4kc=;
        b=ZjBKKaa9tD22WMr4h/g6VC2rBj8qItN3MmNgi0FFEJAxw443cU/jHMIZyfGrfpEVEU
         BQ1Rt2/P5Ryc5bQixjm29MwL/0JSmD79ZYUcnSJS42vxFLW4RfEAhn/AirHQDwumWFvn
         /sRiKufqyiJgvobqRAzyS3OVPyaOoOgN6pei9qbWE6UrvtAA5nGeWG3a3XZjJ9xValRF
         o52KA3rG7tyIkoRbcS8DuTMiY7cRYhrR/NiERX7Q8X4JNOPwgKkyDRm1QQqdaFDlyOq5
         sUXlyg98jLu7v3FAJHv/dKI1XUeHvZtQ47MQAJYHBDHVZlpFWZRxzL5vFtq1w9AiCYLz
         1eFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8cz+CV5pNXM4qzGHkwy9PeCAvNAmfETDXfFqBxG+4kc=;
        b=ZhUnjCld8GT9P3YlzEEmYbX5vQUPdrfvyH9lhJNJp5jQkx9EUlaesuFxXnuVV6lwM3
         Bcq4wZ7JCLqHB2vJcyoHSH11nFjkKRLmdLtQAN9kBwkI6GcE3wDMG/II97FNqWd9rEWo
         OFuikOj3tFk2cbk8KtDq5tCRyqlQi4CANSR0c0KNa1V3S8auH9FxfBdLRsrHJWzO5bDp
         1wgWTb+/Oy09R/KYnKPDuBsMpWgDxXgwhiWu4FLNqVKoJ1uzAUmPJ4tlcSWi6VH4/3SA
         V56nXY/MtIWiciywdscWJn4QAWUJ9Ir7/hjH2t9EVsvpRTCbTFr4TSFxwXtW4scNZcPM
         W/IQ==
X-Gm-Message-State: AOAM532UR8yGy/fYauFKTOyZsgkcPVLN8/SqRFbVRhY9CG1GSPi3Riqb
        ASGyGGnX+PNQsTZ1xtXf3KI=
X-Google-Smtp-Source: ABdhPJy1B+YCEBg5Ha5BAMKVNboUw353pfwd/itvK6+fmZQp25ishGejMly0IBHuIQN76sU8TE0vgQ==
X-Received: by 2002:a7b:c14d:: with SMTP id z13mr2590460wmi.19.1601641770272;
        Fri, 02 Oct 2020 05:29:30 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id u2sm1829331wre.7.2020.10.02.05.29.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Oct 2020 05:29:29 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, gcc-patches@gcc.gnu.org,
        libc-alpha@sourceware.org, fweimer@redhat.com,
        joseph@codesourcery.com, jwakely.gcc@gmail.com,
        szabolcs.nagy@arm.com
Subject: [PATCH v2 1/4] system_data_types.7: Add '__int128'
Date:   Fri,  2 Oct 2020 14:28:20 +0200
Message-Id: <20201002122822.24277-2-colomar.6.4.3@gmail.com>
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
 man7/system_data_types.7 | 40 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index e545aa1a0..5f9aa648f 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -40,6 +40,8 @@ system_data_types \- overview of system data types
 .\"		* Description (no "Description" header)
 .\"			A few lines describing the type.
 .\"
+.\"		* Versions (optional)
+.\"
 .\"		* Conforming to (see NOTES)
 .\"			Format: CXY and later; POSIX.1-XXXX and later.
 .\"
@@ -48,6 +50,44 @@ system_data_types \- overview of system data types
 .\"		* Bugs (if any)
 .\"
 .\"		* See also
+.\"------------------------------------- __int128 ---------------------/
+.TP
+.I __int128
+.RS
+.RI [ signed ]
+.I __int128
+.PP
+A signed integer type
+of a fixed width of exactly 128 bits.
+.PP
+When using GCC,
+it is supported only for targets where
+the compiler is able to generate efficient code for 128-bit arithmetic.
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
+.I __int128
+in implementations where
+.I long long
+is less than 128 bits wide.
+.PP
+See also the
+.IR intmax_t ,
+.IR int N _t
+and
+.I unsigned __int128
+types in this page.
+.RE
 .\"------------------------------------- aiocb ------------------------/
 .TP
 .I aiocb
-- 
2.28.0

