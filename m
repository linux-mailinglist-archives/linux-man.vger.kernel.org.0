Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 71EDE27183E
	for <lists+linux-man@lfdr.de>; Sun, 20 Sep 2020 23:40:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726178AbgITVks (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 20 Sep 2020 17:40:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55736 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726126AbgITVks (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 20 Sep 2020 17:40:48 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E05E6C061755
        for <linux-man@vger.kernel.org>; Sun, 20 Sep 2020 14:40:47 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id c18so10739680wrm.9
        for <linux-man@vger.kernel.org>; Sun, 20 Sep 2020 14:40:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7QHw6uvDkflovYAhoDhInFEpLNAfLYvvjLltYpz/6Lw=;
        b=Ywjo2VA9v0yYo/NtOnH+PxSECKpdB16w8nI4TzhalRiHwqAOj2GPiMIv7nHHwpJdj7
         Kylif06N07fV3MUQo2fDFpQBt1Tn+f6iBvjCxljYb4j7rCEYYVZuqCo3OfyEPeFBesjj
         XJs0r4AL9cP2G9IiSnF/NNwkA6IQ1QGPCGD8syHwQb+KJcydkZZYXw/MMROdmKHudhY8
         uLBLwD4NjZOMBWDnHZoGqWy0WYF830X0yX4hH/dXCIzgOQAxPkU2m0Tfn8U1S/3bc+dy
         BYCTrpPHodqZGERyqy9zXjQgY8v3yHnXjhfU6D2jECIFK9jGJqPWliJ2XXFUBXoGH5tn
         ftEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7QHw6uvDkflovYAhoDhInFEpLNAfLYvvjLltYpz/6Lw=;
        b=CckAYuUEdNa7IZJNvClaFBkKtTyHWysyvVA3renW0cRK/RFTAIihrzjCWXA8Kq968q
         Derh+58d5WUTa4IZUoc9fJPgSfZyQugUnYQYZSy/m8YyUH2u6gPMhWmt03OZCbr5ScIN
         wokYQrCUYZZjJUfUcUQ2pqrNeLIFABNSlWtGzTHxqMzxFP9eJpbJ1z13nR3KQJwNwVmv
         kOkzenXtCxEXQ3SdqXW/jnseYB/99Uq3R5QGRqqn3XYeg7aeuE3P0jadXM4bfZ2lDARA
         fOEsFqowLdQJqVrC6MOHxf9i5OmHoTs8GUyk/Ycgnu3geahdyGLiW0OMaPmRXnjG2Zyg
         abFg==
X-Gm-Message-State: AOAM530DCn8jAeQMUrJ4vJqPdE8mm4oxOW8RWCAmT0b0xEAHd5kZTwF7
        0lrnuRsv3zNAX5Ss/OUcwpk=
X-Google-Smtp-Source: ABdhPJxmHXRrhiYG1Wj2el2jNvWzqSdfsJVtdkbuWilEK5ygqn0udfFoa0oPifkD1MTb/XDnC8jXQg==
X-Received: by 2002:adf:f5c7:: with SMTP id k7mr50737842wrp.246.1600638046504;
        Sun, 20 Sep 2020 14:40:46 -0700 (PDT)
Received: from localhost.localdomain ([93.115.133.118])
        by smtp.googlemail.com with ESMTPSA id v9sm17767994wrv.35.2020.09.20.14.40.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Sep 2020 14:40:45 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        eggert@cs.ucla.edu, fweimer@redhat.com,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH] system_data_types.7: Add note about length modifiers and conversions to [u]intmax_t, and corresponding example
Date:   Sun, 20 Sep 2020 23:40:13 +0200
Message-Id: <20200920214012.454410-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Reported-by: Michael Kerrisk <mtk.manpages@gmail.com>
Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
Hi Michael,

On 9/20/20 10:20 PM, Michael Kerrisk (man-pages) wrote:
> PS It occurs to me that this manual page is a suitable place 
> to explain the general technique of casting integral system
> data types to [u]intmax_t for the purpose of printf(). Would
> you like to add this, Alex?

Sure.  Good idea!

Hope you like the patch :)

Cheers,

Alex


 man7/system_data_types.7 | 52 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 52 insertions(+)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 5128e1f01..1fcc09dae 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -626,6 +626,58 @@ See also:
 .SH NOTES
 The structures described in this manual page shall contain,
 at least, the members shown in their definition, in no particular order.
+.PP
+Most of the types described in this page don't have a corresponding
+length modifier for the
+.BR printf (3)
+and the
+.BR scanf (3)
+families of functions.
+To print a value of a type that doesn't have a length modifier,
+it should be converted to
+.I intmax_t
+or
+.I uintmax_t
+by an explicit cast.
+To scan into a variable of a type that doesn't have a length modifier,
+an intermediate temporary variable of type
+.I intmax_t
+or
+.I uintmax_t
+should be used.
+The example below shows how these conversions should be done.
+.SH EXAMPLES
+The program shown below scans from a string and prints a value stored in
+a variable of a type that doesn't have a length modifier.
+The appropriate conversions from and to
+.I intmax_t
+are used as explained in the notes section above:
+.PP
+.EX
+#include <stdint.h>
+#include <stdio.h>
+#include <stdlib.h>
+#include <time.h>
+
+int
+main (void)
+{
+    static const char *const str = "There are 60 s in an hour";
+    time_t   secs;
+    intmax_t tmp;
+
+    /* Scan the number from the string into the temporary variable */
+    sscanf(str, "There are %jd", &tmp);
+
+    /* Copy the value to the time_t variable secs */
+    secs = tmp;
+
+    /* Print the value */
+    printf("There are %jd seconds in an hour!\en", (intmax_t) secs);
+
+    exit(EXIT_SUCCESS);
+}
+.EE
 .SH SEE ALSO
 .BR feature_test_macros (7),
 .BR standards (7)
-- 
2.28.0

