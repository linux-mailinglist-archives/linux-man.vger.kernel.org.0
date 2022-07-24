Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 27CFF57F6B4
	for <lists+linux-man@lfdr.de>; Sun, 24 Jul 2022 21:21:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229579AbiGXTVl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 24 Jul 2022 15:21:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46920 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229542AbiGXTVk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 24 Jul 2022 15:21:40 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 72F87EE0F
        for <linux-man@vger.kernel.org>; Sun, 24 Jul 2022 12:21:39 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id v13so5464083wru.12
        for <linux-man@vger.kernel.org>; Sun, 24 Jul 2022 12:21:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ULcTSEMRsjeZ737G7sf9Eic55W05F2BkapQEP5XJPbA=;
        b=jTPoFsNm9zf4USwu/7UOe8N6Pp3oK2IkAMLKNcxyDLSYZsQgE5WMEgAA0B1Cn3Ciw/
         QAuFbP0qv8mE28Shs3B3D3dolhEsYhmvVwkpYh6fqIIhQIyWZno7chE+pghxiQ3kcz3T
         /F0aGk8SoCZRSrLBMRBanCsMAmQjZUxsJcfRpKEDkx0DgL1Qqf7oeYd9AxXl8xAJs5dn
         EJPDWxcRwrgHkKKrD9oguSaGdYwfYH85qisOoOO7Qpi1Fc4IS/ZQQQ0Gz7i+FNXDLoQU
         WJgCaSkSjuKCGgYdZELfA+QBC2doeUQsbo01TRobvDQaOITnKhz+Lqj96xEvKsAsiadc
         LmMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ULcTSEMRsjeZ737G7sf9Eic55W05F2BkapQEP5XJPbA=;
        b=SXjNosNhHsCoK+QD1tESOYLdQX3Ie8z4WPLf/eWGAZMi9OZ5XkwC3FTSjnotUyedpY
         31NBU3aB68kY2r5lePH54u6jdWFT9WDWTw5pXegTUCITYP1ooqJ81kHVHd1JO1s1M+//
         x3GOVvLtTJ4UoLuCK7SygzpcJ2S1bA9zE/aOrtRER4mDCYOk0lb6OzCcafgN/hP4bYoE
         88VwkHnd43ImA0nRRifrh+joG0H+ANMAsX2ZahltQuOhqnQsOCtEjEO5gStpBX0yM/ai
         As5rZOktsaMrvN1heqcYQaboROBZeFOzkMPExsRB6tvY47/NAQM+n3AyQWq6ZmXZ3f9g
         RKgg==
X-Gm-Message-State: AJIora9iAkUMqsRC6xd7/HA0JfZKT5iZpMNW1ddfSAlJnMDYC8SK3GFy
        pp7/H4eXloHgxLBYZzBElvuqTaikris=
X-Google-Smtp-Source: AGRyM1umNSZ8roYu7AqaCNomDMNJmX5ABS/zCHvPJ1bQuyBl4fnYtdMY+DHLbaP/dnyWGovgWzBCTg==
X-Received: by 2002:adf:fc85:0:b0:21e:5922:1965 with SMTP id g5-20020adffc85000000b0021e59221965mr6016190wrr.299.1658690497896;
        Sun, 24 Jul 2022 12:21:37 -0700 (PDT)
Received: from asus5775.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id m20-20020a05600c4f5400b003976fbfbf00sm12827547wmq.30.2022.07.24.12.21.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Jul 2022 12:21:37 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx.manpages@gmail.com>, groff@gnu.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Ralph Corderoy <ralph@inputplus.co.uk>,
        Ingo Schwarze <schwarze@usta.de>
Subject: [PATCH v3] NULL.3const: Add documentation for NULL
Date:   Sun, 24 Jul 2022 21:19:32 +0200
Message-Id: <20220724191931.15683-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220722153127.14528-1-alx.manpages@gmail.com>
References: <20220722153127.14528-1-alx.manpages@gmail.com>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2609; h=from:subject; bh=v6qUMq8XCa86yEBiRImdr2BQssO6Y7d5ryJp1BruaU0=; b=owEBbQKS/ZANAwAKAZ6MGvu+/9syAcsmYgBi3Zs5W64yyoZpyacmU00JzGcq/qCEoO2kih5MFx2m QCwlJNiJAjMEAAEKAB0WIQTqOofwpOugMORd8kCejBr7vv/bMgUCYt2bOQAKCRCejBr7vv/bMmcrEA CfksgJi4WUISI+W4alcwtqOL3j+Ulpqs887IHxuzPGV5vQUShgDJYzbdrXWbeE42Ap6KXPkldokyIm aFWmmfqaNw7QnNbuHsZm56Uf9DaW1gji/tHq9lhZj1Ps3/GzH7K23fURNoNueM9xCNOJYQ9wzKnivc 8mhu8si2K2pQNSDjbvELhyjM4m7J180PD+0UyMSqi2Q5rMdFTI3YfPcRBptRL9udAWmrFbR7cTUKgS MTilYnLqQkOyymxkZv2xBgjgHk419iYcBu4ueAkrfBDfIPb1Y3EPyhhpj4gJgdwTo+9jaMy3nVX+fj 5IrugAL7FMlRjZwuhfq1TcKGWHAuAA0WIujvZ5guz8AMe3fJSB6FnozkWDnulLTHIi2w4RHKSh5tjG KUrfFOWLBmxbCxO2sB97lub2WAaYE55COerdk5ZoTVLroOn5yBQYalNfSaR/f/9iHw+GmQP13WdD82 mjRnNwhZ8vBfqdLw7et+l4ng4k9JbcyONkGFPozzgscCeVq+XXYZ1KF9Xt3jSPyTtqoPp4t29DdBuy 9nIVjADlFB6JSAYOyEqJS8HCQM081scDeoGvha/P5i7EArH62DG0q39FkRSs/bO18EZY0G1fDgkv9c 9o6D/UnQYNtOZdMHZu/DKmg3NKviOleerpwM8rPKXEvUCDqObGpFxrEk1oiA==
X-Developer-Key: i=alx.manpages@gmail.com; a=openpgp; fpr=A9348594CE31283A826FBDD8D57633D441E25BB5
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Reported-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Ralph Corderoy <ralph@inputplus.co.uk>
Cc: Ingo Schwarze <schwarze@usta.de>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---


v2:

- Move to man3const [Ralph, Branden]
- Added LIBRARY section
- Added #include [Ralph]
- Note that it can also be used as a function pointer [Ralph]
- Document that 0 is another null pointer constant [Ralph]
  But note that it's to be avoided by most coding standards [alx]
- Note that NULL is not NUL
- Improve wording about zeroing a pointer [Ralph]
  And refer to getaddrinfo(3) for an example.
  This probably can be further improved; I'm not convinced.
- Trim SEE ALSO to just void(3type)
- Other minor fixes

v3:

- Don't boldface 0s, since it doesn't refer to the literal constant 0,
  but to the bit pattern of 0s.
- Add list of headers that also define NULL (per POSIX.1-2008).


 man3const/NULL.3const | 80 +++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 80 insertions(+)
 create mode 100644 man3const/NULL.3const

diff --git a/man3const/NULL.3const b/man3const/NULL.3const
new file mode 100644
index 000000000..730f670fe
--- /dev/null
+++ b/man3const/NULL.3const
@@ -0,0 +1,80 @@
+.\" Copyright (c) 2022 by Alejandro Colomar <colomar.6.4.3@gmail.com>
+.\"
+.\" SPDX-License-Identifier: Linux-man-pages-copyleft
+.\"
+.\"
+.TH NULL 3const 2022-07-22 Linux "Linux Programmer's Manual"
+.SH NAME
+NULL \- null pointer constant
+.SH LIBRARY
+Standard C library
+.RI ( libc )
+.SH SYNOPSIS
+.nf
+.B #include <stddef.h>
+.PP
+.B "#define NULL  ((void *) 0)"
+.fi
+.SH DESCRIPTION
+.B NULL
+represents a null pointer constant.
+.PP
+According to POSIX,
+it shall expand to an integer constant expression with the value
+.B 0
+cast to type
+.IR "void *" .
+.PP
+A null pointer is one that doesn't point to a valid object or function.
+.SH CONFORMING TO
+C99 and later;
+POSIX.1-2001 and later.
+.SH NOTES
+It is undefined behavior to dereference a null pointer
+or to perform pointer arithmetics on it.
+.I NULL \- NULL
+is, surprisingly, undefined behavior, according to ISO C.
+.PP
+.B 0
+also represents a null pointer constant
+when used in a context where a pointer is expected.
+This is considered bad practise by most coding guidelines,
+since it can be very confusing,
+and so
+.B NULL
+is preferred.
+.PP
+.B NULL
+shouldn't be confused with
+.BR NUL ,
+which is an
+.BR ascii (7)
+character,
+represented in C as
+.BR \(aq\e0\(aq .
+.PP
+The following headers also provide
+.BR NULL :
+.IR <locale.h> ,
+.IR <stdio.h> ,
+.IR <stdlib.h> ,
+.IR <string.h> ,
+.IR <time.h> ,
+.IR <unistd.h> ,
+and
+.IR <wchar.h> .
+.SH BUGS
+When it is necessary to set a pointer variable to a null pointer,
+it is not enough to use
+.BR memset (3)
+to zero the pointer
+(this is usually done when zeroing a struct that contains pointers),
+since ISO C and POSIX don't guarantee that a bit pattern of all 0s
+would represent a null pointer.
+Instead, pointer variables need to be explicitly set to a null pointer
+when they need to hold a null pointer.
+See the EXAMPLES section in
+.BR getaddrinfo (3)
+for an example program that does this.
+.SH SEE ALSO
+.BR void (3type)
-- 
2.36.1

