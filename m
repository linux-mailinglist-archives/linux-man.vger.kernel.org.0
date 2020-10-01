Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7321228014D
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 16:32:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732426AbgJAOcy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 10:32:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58490 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732020AbgJAOcy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 10:32:54 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8FE57C0613E2
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 07:32:53 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id e11so2389664wme.0
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 07:32:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=JIm4QMqclRms4PF8Yuy7pCBIl3bsPVDdjQKB2probEc=;
        b=byRgl5kZPlwOwB/nXR0rstXVNkY8w7ya0wlEpZevJ17mkNPSVKQJGLhkqA+yWZLUMi
         V8Ju8warNfhKFgUHdhLbWtUfP4pfV7rL9vxj55W65u0gIg4k5kORDMi/J95fMVBnCxwO
         x4RaHTXUfr2iwR2s1gFhTeoyLCH8edJCdNJmGKTNQwROB513Z4OUAbTJzGObAiFuzhk+
         IPzP6nK5yWy5kTgaJZuQ3rlG8qnYzbsqLvQzR5iyv+sUVl16pHPrSBk6pl9q7vvvQkUM
         +k/HvBwJp1b05E4/hRR9lnVvqhM5cF2/P61BG6oTJCJz68xcvI+VByOvq8KwTLHGSZKy
         YR/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=JIm4QMqclRms4PF8Yuy7pCBIl3bsPVDdjQKB2probEc=;
        b=nxeyeVDwxNWKxK5eSoUh2t7XBsLafhSUns6Q/OP0bxO7t3wv8lvkDtjNXN2zZy+EfQ
         eh4LrWEQ4BbeDLBx60+it6sx0m4ZIRn1viT/O88n25zpLBb58nR7g4hZShuVOttkiwTz
         bYg5S6Z+HNh/eD5x+faSivmqaLqkG4wdkc7DFInKc++DBwaPfZGkvAulvEfxL9jdD+37
         UUULWiSkvVgLOqPxTPj47NHJgN4UTNO3YA/2ysiWzMIXSC/8R3UaKs4Prs37W8ynGeYg
         iMs02gU8Kv9okpi5iKVIUZgJXwtIXOF6B4Q+opnr8ecj8QHXIleTBoh3IaFWTDIoOTFL
         Kbbg==
X-Gm-Message-State: AOAM530F3OZYWRXNKKdKA5vmL1AN49078/9wcZmHPRfAzwOf1xS2IKFA
        ISzmr4gVkRER/dv2ZRDQOGo=
X-Google-Smtp-Source: ABdhPJyaigCbDO7jIzpkpELQnlBqqROSUbVukZaPCXrTE/Pl7k0VH33EC5TgjUu58Ky7fqDzglKQyw==
X-Received: by 2002:a7b:c959:: with SMTP id i25mr311852wml.39.1601562772299;
        Thu, 01 Oct 2020 07:32:52 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id f23sm5463654wmc.3.2020.10.01.07.32.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2020 07:32:51 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, gcc@gcc.gnu.org,
        libc-alpha@sourceware.org
Subject: [PATCH v2 3/4] system_data_types.7: Add uint_fastN_t family of types
Date:   Thu,  1 Oct 2020 16:32:03 +0200
Message-Id: <20201001143203.98803-4-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201001143203.98803-1-colomar.6.4.3@gmail.com>
References: <20201001143203.98803-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man7/system_data_types.7 | 80 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 80 insertions(+)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index c5d0b700d..c130b7256 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -1348,6 +1348,86 @@ See also:
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
+Usually the fastest (see Notes) unsigned integer type
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
+Where there is no single type that is fastest for all purposes,
+the implementation may choose any type
+with the required signedness and at least the minimum width.
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

