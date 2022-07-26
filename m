Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4A0D458137E
	for <lists+linux-man@lfdr.de>; Tue, 26 Jul 2022 14:54:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238714AbiGZMya (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 26 Jul 2022 08:54:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50188 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233370AbiGZMy3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 26 Jul 2022 08:54:29 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F7AA1D321
        for <linux-man@vger.kernel.org>; Tue, 26 Jul 2022 05:54:28 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id a18-20020a05600c349200b003a30de68697so942943wmq.0
        for <linux-man@vger.kernel.org>; Tue, 26 Jul 2022 05:54:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=LWslDXgvLCiIfbuCLYCJLJzFizj0J4oG0CAoBrAs+FQ=;
        b=XFh1My2VLxarogYap6fM8KscU1I4BoUagv6/aoAOXELTS/Mk9t+fA+zZ+GyEJ93ceL
         9VzbxQrLmTy/Qx/1xTs5wWKwbBm4mDkks0Kse3v5gUH8x9wGN57dGLWFj7JW08wBea0b
         P6wm0eJnF5VqaQyCEQXvVVrL5b80BbM83HlehIXX8ULCVoewOTtucVnkoB50B8/6R4pt
         8vF+0EbnMKsOVH1aSAXMnrWCNaSmzH7IX1TV+L6t+eDTn54lz6PKnaI6JnS5w7eOeUQg
         SgqhM9RW502/7QXpZDFVblkNsRLik/BJeLqNqE+etNJEmRQZWzaO+FbJ0yj9sdNCywW2
         TBFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=LWslDXgvLCiIfbuCLYCJLJzFizj0J4oG0CAoBrAs+FQ=;
        b=ukrTAKVlWf6Hhi4qTMaPFa/VyIMNzlR6SgU66E8yiO6dk6S0fFvcqCBcJ5bYFmeWeO
         AsHrDAZEv3kzaA8ugO9rxXYAGRP8Hf40wbBy1HUQ8DYz3qdtwGNPiNR5KGjcljNT4i96
         1wPFUNcVH0Rcy2sZljBimAfd9q6dJBCkxZWpq85rdf+qZPiNxIc7EB7vE7s9ztwXKQWh
         J6ayuzvA5paRv64gqdyeDImGUQ61LG3fjMf1J58w6gc+tECez5Jhc0+itlQWsBfc0PPs
         XeZ3Mh6oWCe1LqZ658rU6RAyrj+ipi8+/pjMI14fzcjXDiqXpOENe2mM/IWF57CY2cNz
         HZ5w==
X-Gm-Message-State: AJIora9wxFzKhzKDIOLaM12KQHW7ADvzmuF3/zPxZS20oryL3tSL96Nc
        BSMIqUqBP9lEt/lagH1tn8ciippBsbc=
X-Google-Smtp-Source: AGRyM1uotZmcgc+3L8vYGg+IbiGuhNDd8cSIRz5W17EHnH2gfqF9tCGCbaEXJ30C1kceMC3Eva3ojw==
X-Received: by 2002:a05:600c:35c7:b0:3a3:2612:f823 with SMTP id r7-20020a05600c35c700b003a32612f823mr12043729wmq.33.1658840066472;
        Tue, 26 Jul 2022 05:54:26 -0700 (PDT)
Received: from asus5775.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id bg17-20020a05600c3c9100b003a04d19dab3sm3169327wmb.3.2022.07.26.05.54.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Jul 2022 05:54:26 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx.manpages@gmail.com>, groff@gnu.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Ralph Corderoy <ralph@inputplus.co.uk>,
        Ingo Schwarze <schwarze@usta.de>, Jakub Wilk <jwilk@jwilk.net>
Subject: [PATCH v4] NULL.3const: Add documentation for NULL
Date:   Tue, 26 Jul 2022 14:48:01 +0200
Message-Id: <20220726124800.108850-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220724191931.15683-1-alx.manpages@gmail.com>
References: <20220724191931.15683-1-alx.manpages@gmail.com>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2543; h=from:subject; bh=/CeqKCH0/N0R1TFPoy17pzR+ZYP0/aBccCHXPKl6WXs=; b=owEBbQKS/ZANAwAKAZ6MGvu+/9syAcsmYgBi3+JnoCXkUveud7qZsis0fi+u5UR9RCoKPudQ/VVt 0mRnc1OJAjMEAAEKAB0WIQTqOofwpOugMORd8kCejBr7vv/bMgUCYt/iZwAKCRCejBr7vv/bMkmzD/ 9cy4Hjnf9PHvYXNBM6t8hSdGlpt4B4brDygF5DS+dbuCe4Amv6p2moRBJGk6OwZACcJ2Oi+qhdrrkG gN5g0Q1ZOzEvVtzWS/Q4gj/SIqaWUO4WI/glpDr95AWaNgTDwMsw3+DLJpyXOlzmDjraG1c0FONkPJ wO6mhd1yTZ7lqQvAYB6VU0hHy9yqI2qoOgUAoFfIhcFZJMXufsCkD6AxIRm5RSP676+Nu+ZcPB3Iaj RxkqNzy1EfOVo2Sb2ueGNyfqgmKs+LYiSNEu5R7I5RP2iow6PsT9Lhzxxgfm4+/uJVUS/H9QOfg+8M uc4JB7OMrhqCkaXivtM4mRn4AeHnEERi5hLBc0jTL8iIPYq6k3oF3XjTtw4ahwgrDt/ta2cF7zydG4 dGeo3bp952TRWtpNalh4biwwkqyKFQjtnu3fs7rP3AOyZ8mIT+EPijOnjLNjMvmxj6qUD0nbbd6ghD X+Qbux950Jgwzk1FNjlhlWp0VHQRlbk3M8sHFib4TQg7cFUuwkGk0DOIquwfU7qCVzdx4+0Uma7iNS ISC3j8p8U3u4RqFjwtUnSZyiC1iAAMuobe404jQwgogxr2Lr6U6ivYhqhHbrW18z0SkzXIOL5kuhc3 p3wQaHXxylu693LkACLC7+w/Yk4XAG/G4mR0ZaDL1Snx1y2/jac1jugKu8vg==
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
Cc: Jakub Wilk <jwilk@jwilk.net>
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

v4:

- Remove details about POSIX defining NULL as (void*)0.  [Ingo]
  All Unix systems already define it that way, so it's irrelevant for
  us that ISO C or old versions of POSIX didn't define it that way.
- Reword the remaining DESCRIPTION [Ingo]
- Move a big part of NOTES into a new CAVEATS section [Ingo]
  NOTES is a generic "doesn't fit elsewhere" section.
  Those things fitted very well a CAVEATS section.
- Simplify mention of 0 as a null pointer constant, and change it to
  make clear that it's a thing to avoid. [Ingo]
- Keep extra headers in NOTES, as it's a thing that few readers will
  be interested in.
- Reworded a few things. [Ingo]

 man3const/NULL.3const | 76 +++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 76 insertions(+)
 create mode 100644 man3const/NULL.3const

diff --git a/man3const/NULL.3const b/man3const/NULL.3const
new file mode 100644
index 000000000..28a6f67aa
--- /dev/null
+++ b/man3const/NULL.3const
@@ -0,0 +1,76 @@
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
+represents a null pointer constant,
+that is, a pointer that does not point to anything.
+.SH CONFORMING TO
+C99 and later;
+POSIX.1-2001 and later.
+.SH NOTES
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
+.SH CAVEATS
+It is undefined behavior to dereference a null pointer,
+and that usually causes a segmentation fault in practice.
+.PP
+It is also undefined behavior to perform pointer arithmetics on it.
+.PP
+.I NULL \- NULL
+is undefined behavior, according to ISO C, but is defined to be 0 in C++.
+.PP
+To avoid confusing human readers of the code,
+do not compare pointer variables to
+.BR 0 ,
+and do not assign
+.B 0
+to them.
+Instead, always use
+.BR NULL .
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

