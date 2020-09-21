Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C4F3B2725A8
	for <lists+linux-man@lfdr.de>; Mon, 21 Sep 2020 15:34:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726913AbgIUNeY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 21 Sep 2020 09:34:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60940 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726501AbgIUNeX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 21 Sep 2020 09:34:23 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 74497C061755
        for <linux-man@vger.kernel.org>; Mon, 21 Sep 2020 06:34:23 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id z1so12800412wrt.3
        for <linux-man@vger.kernel.org>; Mon, 21 Sep 2020 06:34:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Nq5YsyTwEt6MAvEkQS68agi8AmKwYFZipwQ1PiSteO4=;
        b=XeGYDIOZvSCnrW1YDFaXp2Lr4RyvUOOecT+WvHu5TDVHknNBR9Qd3xEaPox2u+wSVC
         fX8EEQ8Yhsdxvdz2vv5oGJ7Al71gv1IiDX6Rj5jHJqhyF7Y4SBykwhds2Ug6/s6DKztk
         OTviO+V5wqxkz1qgg6qtZBb303pq+neTvS48L1/mirNrbKfI2OJiXH18jOCFCHB3tuLc
         FwQEj0kmCGWvttQqakINhwcltklWTVdZvRIYc2An8nilMjX5HcWSINQ+RoCXLt+bSMsF
         DyI5Xqt2YEBxNh7hLFdxHHXaZ5yO1vDvKln2T0Qf0r4hxSxcAULBe1YfbXCrIntjcxx/
         j5uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Nq5YsyTwEt6MAvEkQS68agi8AmKwYFZipwQ1PiSteO4=;
        b=cGJpq3gYrH5Vuo16sjZ6ahFbWnJvUV0/0VwrAQYnj9lY527oBUnGbdhTDd8L+AT+Ve
         KuSneQ6L6GAq6EmP6w+AXcKFLG2o5bkZGUT6qi1m9qk0OfHA9iUr3Md/40mr4kNR2swN
         7WbFcyNXnKN6l3cXiRaioFH1cqjZxsJ4UhpEgkGvNxQll8HEVh7eAbVuPcyPTcM+yfyM
         xxDAXM4M7A4ZqLaNJyBgt6qeYJeaUuNupOWhycXLUSrbsGWqq2lifMf9MNWTo4kxZbTo
         VrcMIrkQEkkKAjgldgk1cpqXwXukvKFU3tOmSBAQLGaSz1EdFtyuCbLvbaauVodaVLLJ
         YoCQ==
X-Gm-Message-State: AOAM5314Hiovu/uXQSKRVt5jX1kmpNoKArqFfSdeZiE7prknfI3yHIa+
        hWhbJZamlElDKlLb/BgciUooxp2pE4wrEQ==
X-Google-Smtp-Source: ABdhPJzuG4sbCbU9cKBX/e0YMj2/OmsKDdioHJvWPeDjztVgR0QxDO6BOKTGRgS6A6e5kUOXf4IpgQ==
X-Received: by 2002:adf:81e6:: with SMTP id 93mr52240103wra.412.1600695262172;
        Mon, 21 Sep 2020 06:34:22 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id 185sm21302512wma.18.2020.09.21.06.34.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Sep 2020 06:34:21 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        eggert@cs.ucla.edu, fweimer@redhat.com,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH v3] system_data_types.7: Add note about length modifiers and conversions to [u]intmax_t, and corresponding example
Date:   Mon, 21 Sep 2020 15:32:57 +0200
Message-Id: <20200921133256.45115-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <e48de555-d07c-3ecc-c0eb-1184d89035f3@gmail.com>
References: <e48de555-d07c-3ecc-c0eb-1184d89035f3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Reported-by: Michael Kerrisk <mtk.manpages@gmail.com>
Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---

Hi Michael,

wfix +

I thought that checking between 0 and 1M might create confusion,
so I kept that check, and added another one
to differentiate the error code from normal values.

Cheers,

Alex


 man7/system_data_types.7 | 73 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 73 insertions(+)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index dd1d01aab..da57deffa 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -629,6 +629,79 @@ See also:
 .SH NOTES
 The structures described in this manual page shall contain,
 at least, the members shown in their definition, in no particular order.
+.PP
+Most of the integer types described in this page don't have
+a corresponding length modifier for the
+.BR printf (3)
+and the
+.BR scanf (3)
+families of functions.
+To print a value of an integer type that doesn't have a length modifier,
+it should be converted to
+.I intmax_t
+or
+.I uintmax_t
+by an explicit cast.
+To scan into a variable of an integer type
+that doesn't have a length modifier,
+an intermediate temporary variable of type
+.I intmax_t
+or
+.I uintmax_t
+should be used.
+When copying from the temporary variable to the destination variable,
+the value could overflow.
+If POSIX provides lower and upper limits to the type,
+the user should check that the value is within those limits,
+before actually copying the value.
+The example below shows how these conversions should be done.
+.SH EXAMPLES
+The program shown below scans from a string and prints a value stored in
+a variable of an integer type that doesn't have a length modifier.
+The appropriate conversions from and to
+.IR intmax_t ,
+and the appropriate range checkings,
+are used as explained in the notes section above:
+.PP
+.EX
+#include <stdint.h>
+#include <stdio.h>
+#include <stdlib.h>
+#include <sys/types.h>
+
+
+int
+main (void)
+{
+    static const char *const str = "500000 us in half a second";
+    suseconds_t us;
+    intmax_t    tmp;
+
+    /* Scan the number from the string into the temporary variable */
+    sscanf(str, "%jd", &tmp);
+
+    /* Check that the value is within the valid range of suseconds_t */
+    if (tmp < -1 || tmp > 1000000) {
+        fprintf(stderr, "Scaned value might overflow!\en");
+        exit(EXIT_FAILURE);
+    }
+
+    /* Copy the value to the suseconds_t variable 'us' */
+    us = tmp;
+
+    /* Even though suseconds_t can hold the value -1,
+       it represents an error code */
+    if (us < 0) {
+        fprintf(stderr, "Scanned an error code!\en");
+        exit(EXIT_FAILURE);
+    }
+
+    /* Print the value */
+    printf("There are %jd us in half a second.\en", (intmax_t) us);
+
+    exit(EXIT_SUCCESS);
+}
+.EE
 .SH SEE ALSO
 .BR feature_test_macros (7),
 .BR standards (7)
-- 
2.28.0

