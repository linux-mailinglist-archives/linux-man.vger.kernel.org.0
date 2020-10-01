Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6567A27FD15
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 12:16:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731897AbgJAKQj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 06:16:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47232 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731704AbgJAKQj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 06:16:39 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ADED1C0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 03:16:37 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id z4so5017218wrr.4
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 03:16:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=2O7qFHPyjrq2Tn95YL9fKKScMQgJyfgE++5pJKbY1NI=;
        b=Vs/MQITHV4P0k/xfCgUmL6pzD2/iHV4PwtXEm8b4rNKM/pb0SHjPTBtn22EJeesAoC
         9ZG3Xzkq275+HdoasXNxhX4YZrU2h0uQruKqdAEu4RoOnFhMAeKy3+heiMxrHvfKqURB
         ggMj5QDycIhn4eSAH2QzL05L5cgN5R4Fgwh0Mx9uk8vkufG/hmaiMDS7bgIfhimI2QsW
         rtNkvWdO/Vfkx/yvXzSGudASqlMvWQUD2NPz162fm088VoF2+rAONfc0wiDC5xg6XfaG
         +VZrKX46GSTqFMLO8sJAYxPKlqZDmdYLuHyI+B9UQgyCd4tH2niw/dq8C8DK6qu0s9Gr
         +fXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2O7qFHPyjrq2Tn95YL9fKKScMQgJyfgE++5pJKbY1NI=;
        b=Im8DSKqDoWdwoRcuqpZIoecWa4ZmfoQ3L0UQib22/IToCOgwrFqpIA+B2v3jkmi2KF
         mvK4IJYwi/3//YxdC4vBHSrTKnwQlqIDI4dXub52BouoU2CUCf2Lv9geTrEvVbvU2EQE
         iOZ17pTpkYZg/tG85qnBqQZYgJGhTiK18hucal+nBgSHFX37+KH5CzqXTDVtyhyBfw4G
         ZJ+FvbhE5e/t79FPpDURZSERy4oXUlue6IW/8ZzRI2BHkxg1Um/mD2GhVGCPYEzUSCJr
         GvzDpOqatkzZp+0Tj7LFP8mGtonIbhS1wzXiFydkrS5h86QQ+Tvh7dd4V9VJixh74Gce
         u2mQ==
X-Gm-Message-State: AOAM5304tXKMXbabZYvEtumto5PZ1CZNQirD8chviyIvU+s6P8a+NzfZ
        p9oc38sap3cb1waovqdaIAY=
X-Google-Smtp-Source: ABdhPJwYn0gQLGfk7TJreptB7rv3QFP1M1+EPGVms0K3eQkhm74gA14Oikap7Jhr/UqrNLHVLyWFYQ==
X-Received: by 2002:a5d:55c8:: with SMTP id i8mr8137442wrw.331.1601547396442;
        Thu, 01 Oct 2020 03:16:36 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id i15sm8671922wrb.91.2020.10.01.03.16.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2020 03:16:35 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     colomar.6.4.3@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org, gcc@gcc.gnu.org
Subject: [PATCH 07/16] system_data_types.7: Add uint_fastN_t family of types
Date:   Thu,  1 Oct 2020 12:15:51 +0200
Message-Id: <20201001101559.77163-8-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201001101559.77163-1-colomar.6.4.3@gmail.com>
References: <20201001101559.77163-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man7/system_data_types.7 | 79 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 79 insertions(+)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 07de6417f..e3ebc2270 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -1282,6 +1282,85 @@ See also:
 .BR getpwnam (2),
 .BR credentials (7)
 .RE
+.\"------------------------------------- uint_fastN_t -----------------/
+.TP
+.IR uint_fast N _t
+.RS
+Include:
+.IR <stdint.h> .
+Alternatively,
+.IR <inttypes.h> .
+.PP
+.IR uint_fast8_t ,
+.IR uint_fast16_t ,
+.IR uint_fast32_t ,
+.I uint_fast64_t
+.PP
+The fastest unsigned integer type
+of a width of at least N bits,
+N being the value specified in its type name.
+According to the C language standard, they shall be
+capable of storing values in the range [0,
+.BR UINT_FAST N _MAX ],
+substituting N by the appropriate number.
+.PP
+The length modifiers for the
+.IR uint_fast N _t
+types for the
+.BR printf (3)
+family of functions
+are expanded by macros of the forms
+.BR PRIuFAST N,
+.BR PRIoFAST N,
+.BR PRIxFAST N
+and
+.BR PRIXFAST N
+(defined in
+.IR <inttypes.h> );
+resulting for example in
+.B %"PRIuFAST32"
+or
+.B %"PRIxFAST32"
+for printing
+.I uint_fast32_t
+values.
+The length modifiers for the
+.IR uint_fast N _t
+types for the
+.BR scanf (3)
+family of functions
+are expanded by macros of the forms
+.BR SCNuFAST N,
+.BR SCNoFAST N,
+.BR SCNxFAST N
+and
+.BR SCNXFAST N
+(defined in
+.IR <inttypes.h> );
+resulting for example in
+.B %"SCNuFAST16"
+or
+.B %"SCNxFAST16"
+for scanning
+.I uint_fast16_t
+values.
+.PP
+Conforming to:
+C99 and later; POSIX.1-2001 and later.
+.PP
+Notes:
+Some of these types may be optimized for size
+instead of raw performance.
+.PP
+See also the
+.IR int_fast N _t ,
+.IR int_least N _t ,
+.IR int N _t ,
+.IR uint_least N _t
+and
+.IR uint N _t
+types in this page.
+.RE
 .\"------------------------------------- uintmax_t --------------------/
 .TP
 .I uintmax_t
-- 
2.28.0

