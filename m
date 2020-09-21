Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 577A4271DC7
	for <lists+linux-man@lfdr.de>; Mon, 21 Sep 2020 10:20:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726334AbgIUIUn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 21 Sep 2020 04:20:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40578 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726318AbgIUIUm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 21 Sep 2020 04:20:42 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 634E0C061755
        for <linux-man@vger.kernel.org>; Mon, 21 Sep 2020 01:20:42 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id g4so11719832wrs.5
        for <linux-man@vger.kernel.org>; Mon, 21 Sep 2020 01:20:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=nk6Nz90d7elR9TgYvnl2ORkyDHBVHHDaKvkIQg44vSM=;
        b=KiYaZ3QIMLpUmJCK5EB2sgPOpdRzzMIrltHqh+ZhDEVv+Y9dViAwJs8hxWU91VN2RJ
         GOh02OqzYmda3BCnJyc3cLFT2GUL3NCiLY6RwCgRF6A2xne+B1s2lU2UoZTpa3rh5wTH
         6g4YR3Q47gyFLhh8/9CcjLoAhPD9/yK08jyY/7qW8lPhwjNMuAEw+yco4Y/Gtrdjuzhb
         NEZ5PdfSDERwV2eTtZqdcjn/39M5u6+nJryTTppNggfIP6bmahU+OfsdxCzy3G1GESTa
         nHitZgK5fwVR4tqvYqXKS2rViuw+vj1NoNwMD0t3SlrXnhKCv61nNuBCpxPGuonu6koA
         Bd+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=nk6Nz90d7elR9TgYvnl2ORkyDHBVHHDaKvkIQg44vSM=;
        b=Ipg5b12FPOhZaVdXsH8wOO9Z0Th09HulEWyc4fpiy8vkqjRvje2wRh1DPyV3aSIvq0
         FTmBXIg3qIoGNVCRYttcU1sp2iKK6DL2YGyIEhC3Z+lVfzOYAJ5hBMVQulAhv+birDcc
         WRig9NIy9XOlOyNJOu4ZdfhjSaw8b8b4Pxb/S1zjJn375NFuXHJv1HdMtFq+fX21DR3+
         xzvWyCzrHNhhxL/wA/a/QPkI5HxsOHdrSEqsYVN76zJhrn0td9Tz6XxVTq77Vf+ArLkY
         ZQBH+YykxgNNETOHrPuXJp7jQcIJlttPRMfa79q9t+d4dWvtO7FVROsPne2gRf8GSneD
         qOPQ==
X-Gm-Message-State: AOAM532kMlmH0g/Pg5FsErblBlwGA0pmTUqM+4MAgSNxh6nq+PLy8O1V
        NsMVdDMw19eEIEN77f4kHRo=
X-Google-Smtp-Source: ABdhPJwu+A88Cq73TCzKnq7wHqQkzhCBUVI7LkM9MMjL471u0GqqrNx66VJDzlUuYXASae7/8xqJsA==
X-Received: by 2002:adf:c44d:: with SMTP id a13mr50593118wrg.11.1600676440912;
        Mon, 21 Sep 2020 01:20:40 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id l5sm19102396wmf.10.2020.09.21.01.20.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Sep 2020 01:20:40 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        eggert@cs.ucla.edu, fweimer@redhat.com,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH v2] system_data_types.7: Add note about length modifiers and conversions to [u]intmax_t, and corresponding example
Date:   Mon, 21 Sep 2020 10:19:34 +0200
Message-Id: <20200921081933.24196-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <61f4e2a4-d468-ceba-2ccf-ce0c061aa20b@gmail.com>
References: <61f4e2a4-d468-ceba-2ccf-ce0c061aa20b@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Reported-by: Michael Kerrisk <mtk.manpages@gmail.com>
Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---

Hi Michael,

I added the part about range checking, and used a type with defined
limits to show a complete example.

Thanks,

Alex


 man7/system_data_types.7 | 62 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 62 insertions(+)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index dd1d01aab..ba1338179 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -629,6 +629,68 @@ See also:
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
+To scan into a variable of a type that doesn't have a length modifier,
+an intermediate temporary variable of type
+.I intmax_t
+or
+.I uintmax_t
+should be used.
+When copying from the temporary variable to the actual variable,
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
+    /* Check that the value is within the valid range */
+    if (tmp < -1 || tmp > 1000000)
+        exit(EXIT_FAILURE);
+
+    /* Copy the value to the suseconds_t variable 'us' */
+    us = tmp;
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

