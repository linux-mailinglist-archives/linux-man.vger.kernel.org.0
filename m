Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ECD2257F68F
	for <lists+linux-man@lfdr.de>; Sun, 24 Jul 2022 20:43:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231591AbiGXSnA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 24 Jul 2022 14:43:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60796 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229552AbiGXSm7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 24 Jul 2022 14:42:59 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE845DEDD
        for <linux-man@vger.kernel.org>; Sun, 24 Jul 2022 11:42:58 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id n185so5601651wmn.4
        for <linux-man@vger.kernel.org>; Sun, 24 Jul 2022 11:42:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=3oqA/P+s4QPvJG4VQ/4tKszqd6NfrS7PAwX5ddDuGFU=;
        b=RJSTNUP9cPipGx0H3zII71cjYU8t+DNs9EO4g0Onx2XklUIMCOaNPdL4mHC6Umu3No
         0I7vAMQzkeu2X40WORraSQbo3Gaz6IOihN0mt76RnSp8immabfAqRAP9iZm2u5A1hfQv
         xc/Pq9reVrsdAU67pWeOzHF0zINy6lUqeUPUku8oCW7E5r8YHrpou4smTDjZYaY0FxFw
         LEXmJN6ezB7q0/BbPF5UNcyOQWIQXPBBNGyLRPAe+26jlElBGJK/qXj6YeiiH6jYyPjz
         f7msxZf23pmfxAVsZ99EuB9GuOpdOMLFU+Z4N2jmCLAr6vO1DLNvDI6puGXu1UhI+tlH
         EwVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=3oqA/P+s4QPvJG4VQ/4tKszqd6NfrS7PAwX5ddDuGFU=;
        b=TyKvJSIE8ksC6bb820swesnpVwYqN62zsrsQeDgjp4zq+B0Ecjg/rfZzXZlPzsGels
         J7BxbZLSd6gtKkIo3wRUm8NaPADxXNuDC3u2LZr1cM+bNU0Ugvyk0rUkCtKA2/rk1eKQ
         B/4Jq+aFtO+JhNF+1qkkoUFk7HdfqmfJ5SIo5o+v44Up9J9fIlxbh9pO2yGtUdqC16JW
         juDMSsFX8dzTwQj+u7EHvrdK1BT1FwMNpFZ5Dp3UONdKw0c3G/iO86dn10lYZ7fEgXCd
         J6J7fwnKhZl9KoZocD3AXPjb1xP/CoPyNw1WZuhUpxvRv8+B3kC+4jMUNgZqjE3jgdhk
         Q+tQ==
X-Gm-Message-State: AJIora8nz48+pNXod17OEwleo+JsbAHXJSKzIcpDOR9zGlD7byLehksy
        Qn/+EUU4Weewu4aY3zge6fPVuglmdys=
X-Google-Smtp-Source: AGRyM1t38NADNPF24wXWL2BgHYo+ecMpFvbAlDsSMgtpcanceGwz6QBB5zc0adc8l+JAI+WJONTk4Q==
X-Received: by 2002:a1c:cc13:0:b0:3a2:d01e:54a1 with SMTP id h19-20020a1ccc13000000b003a2d01e54a1mr6225449wmb.164.1658688176371;
        Sun, 24 Jul 2022 11:42:56 -0700 (PDT)
Received: from asus5775.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id m9-20020a056000024900b0021d746d4820sm10028659wrz.37.2022.07.24.11.42.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Jul 2022 11:42:55 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx.manpages@gmail.com>, groff@gnu.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Ralph Corderoy <ralph@inputplus.co.uk>,
        Ingo Schwarze <schwarze@usta.de>
Subject: [PATCH] NULL.3const: Add documentation for NULL
Date:   Sun, 24 Jul 2022 20:36:05 +0200
Message-Id: <20220724183604.12355-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220722153127.14528-1-alx.manpages@gmail.com>
References: <20220722153127.14528-1-alx.manpages@gmail.com>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2425; h=from:subject; bh=hxYoJnwb+7gRIi21inz6EZsOsTPpHFmN1bwHBeGo+po=; b=owEBbQKS/ZANAwAKAZ6MGvu+/9syAcsmYgBi3ZELnSpcWfauLeFZnanA9cfrHC7elgcDKSTrg85V ++tUKeqJAjMEAAEKAB0WIQTqOofwpOugMORd8kCejBr7vv/bMgUCYt2RCwAKCRCejBr7vv/bMvIaEA Ci7eMJgjSsQKx7RAAXe6ZH2sF6lGx0SpOlobHAmimYtx+lJ/Xgfx4+Ki9qOH/1lQQ7d3NqgRMZdp3l sX0aABvBj+pRbKylWzOuPZaF6SYe6FpuEZlJPv6dcpgdyNhoUS3n/jH10slCnnNC5D43UES8aZFAdX Ltkmbysi1PlkFLgDU21X469R1Bmt2u0RjoRl/vl2/4UF4WdvoPXcvaox1VLzgOFAR3p+nvVzBamWDM HszVth2fV8hFZqKrWvCr89DmcLuCmy8EuEqXA4wO63aVN4tWLXFCUa3XPk0SQAJpVV41i7AzrwnvMZ 3G5S5UbKichyTbqKezNozrfF5hb4fEIXy0AWwxXEprRhmC4RiHKlRAx5UBpkWq4o69LepSK6kG1PXQ VIA6vy1HKwW4XuSKf2BwbTnI1Gpx7BZ5kefJFYc44qa0u/OkscXv4j3b6gRSzM1IF73P9xfM3zVADc KW7cTG7my2ftaCGnGfBqCnd2CW/Qos0qJs/AJrK7LwpUVwNVJfcgLIU+iBwEWleUD+xlt/S5OFe8VV m1P4UjX8iqEzi7b/Yki9Vl5MSlAvZS+24cmJlfDTQMxIKUl21G7lVmX7TNWHPAPTuYWxMah4w43vqr vxDrQM//Te8sEAso7GoqqkXm6kSlISn4uml0Zmpsz4ussEQlJXX79fe/iPow==
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

 man3const/NULL.3const | 70 +++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 70 insertions(+)
 create mode 100644 man3const/NULL.3const

diff --git a/man3const/NULL.3const b/man3const/NULL.3const
new file mode 100644
index 000000000..1b0cb7948
--- /dev/null
+++ b/man3const/NULL.3const
@@ -0,0 +1,70 @@
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
+.SH BUGS
+When it is necessary to set a pointer variable to a null pointer,
+it is not enough to use
+.BR memset (3)
+to zero the pointer
+(this is usually done when zeroing a struct that contains pointers),
+since ISO C and POSIX don't guarantee that a bit pattern of all
+.BR 0 s
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

