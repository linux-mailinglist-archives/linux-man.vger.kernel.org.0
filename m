Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 44F985FF404
	for <lists+linux-man@lfdr.de>; Fri, 14 Oct 2022 21:18:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230179AbiJNTSt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 14 Oct 2022 15:18:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36466 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229560AbiJNTSs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 14 Oct 2022 15:18:48 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4947D1C208F
        for <linux-man@vger.kernel.org>; Fri, 14 Oct 2022 12:18:47 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id a3so9126705wrt.0
        for <linux-man@vger.kernel.org>; Fri, 14 Oct 2022 12:18:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Jw66wh8LaC+lR1KSWp2QEJJpLAd2nCfmAo5A2RyFARY=;
        b=mOkf7qPupo25aGDLq7sYxJr8NWCiTdPCCuEvxcBv3cXfJ4v5eHAd5G1fK7XFK7Xj9u
         uPZOMRQEvoW5gxTaNxGgPDM6ozymu167Q/6e8rdNFDWisDCqOljZlU4DNt/iXSCpWa2p
         L5yObV8JRo1IzLGYWjSSfl1sNKi6As/eMvTZ3aCMj79QxvhwSLvspHGNbpZFXlpE8QfU
         JenUsKf7xnjMTWivLSUE9f+65KuZWwqbuTwSLGOK0OYSiuR+fF6ioeW1Kx/G1ebCEnc7
         8CYuz20Kpx8jrVvbtgUyHo56nrKzt4KKrhL+mbjt139jLtzvMclL9zOHo4DdM6zNUlfb
         Ffiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Jw66wh8LaC+lR1KSWp2QEJJpLAd2nCfmAo5A2RyFARY=;
        b=hY/vRjwwtvM+Jzliq+y/FeiJ9h0OF2SBuI+gpMc0lLlKFL145qtqBS/6cXKG3vlWtb
         ZOUVMz2LQUWueApasnRZ39vxbvyTWyLjHIyZzDWj/prd7drUmgALJD6I3KBLprANkJ+h
         pPgyn9D1Ic+LmWwTPuNnKKBMPV5fs4exHyPp2POSfx68XloSMCEJ8sJ/uot9+8vXh3kV
         26rprMjDq2PK6mw5KR3AZlOf8NkBpTKrYoaippt6PpzGWYdmj1TDNL8KF4x08h5sENBo
         KkDI8p2ZSPYwCYDJtfrVGIyAFTc90kfu/IzPeAJEzjbIeymqlTLj6K/jeE9z1aWkUOEA
         2Ryg==
X-Gm-Message-State: ACrzQf02H3/IMlK58L7MFuP+ajQcsplmSNMFwE69yfZ6t4orgN0m6h1R
        XHK5oYiH4KG9uhaW+FZXnkL1Mcpp2IA=
X-Google-Smtp-Source: AMsMyM4MM4pEQxrpi3lS4+GN5hTmQprKg9KkcMqQmOMc/IMivKqR0NiiMHAoEYgtKAwweO6n09tNbw==
X-Received: by 2002:adf:9c87:0:b0:232:a0fb:ea5f with SMTP id d7-20020adf9c87000000b00232a0fbea5fmr4494674wre.473.1665775125685;
        Fri, 14 Oct 2022 12:18:45 -0700 (PDT)
Received: from asus5775.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id m7-20020a5d6247000000b0022c906ffedasm2626506wrv.70.2022.10.14.12.18.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Oct 2022 12:18:45 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: [PATCH] EOF.3const: Add documentation for EOF
Date:   Fri, 14 Oct 2022 21:18:05 +0200
Message-Id: <20221014191804.26914-1-alx@kernel.org>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2060; i=alx@kernel.org; h=from:subject; bh=fywQk58EmuG9X37NyT0xvkli3bMFb79dnsN/3Fn+9OE=; b=owEBbQKS/ZANAwAKAZ6MGvu+/9syAcsmYgBjSbXVldLUlMfGfPjB6IpgjIearfaE/SUX3MoqKKzC n3PiF3WJAjMEAAEKAB0WIQTqOofwpOugMORd8kCejBr7vv/bMgUCY0m11QAKCRCejBr7vv/bMgG7EA CFo9id+Zh9eV6J9DnlDTNAAHVhgk8mTFZ/HEIw/u0/tu6gnsv6Ia9S8mxt6EDrOux3LQONKyUjgdag bI7POMVyQ+3d13gw/9GXwRIUmZRfIejnhyM0yYCiUUDsC5w5/XVLIS7zNbzeGVMzF/IJGXPno1FgjP WAGyt2taZUfjXLzGtZ3ipwaVPXE+YrYjWfRB/Scym0SEBtg61rsJ2YnhrWfAgaLxFKsHu9ILBDLJqA PPSsyNSxz90VkYcOvWuOi10xDyIK/HWugesuG3sbnYEgf/QMy7A1017p9bzeW2rJTJo+0f45t4c380 mjQ8xfRgKLf0Z5o160BSpZyN8ddMVac9jCcl3lYbAUCEhGE4OCsbar1UF1rZg/Ey7gT3Ew/5czohsk Q2JVl4eTo6QZK6Mi8Yh7gpVHGzx/rc5VNVgWk3MINAOVAEOkR4BVXroRKz6UUZuXib7qX4a6WFofn2 CnJn0Zs6SbwjZkDZyB2eDVWbSdNUn3+q9nSvk/EVua+lAsY4mXfQkrhE+OqoT/WHBcN2lT8V2Iyf91 cR54VjxPLLshfUHHDLH6K4GrlTg5/F05s21Gtr57kAccXaYVKbV7BJdBRCc3S4IK+4Pb3JPJYXgLHV XR7asYtI+aObOfnwDoBd6iZ4+68TwOBCmaNKyFQ2bcDHNV2n8n/w+yGRdVOg==
X-Developer-Key: i=alx@kernel.org; a=openpgp; fpr=A9348594CE31283A826FBDD8D57633D441E25BB5
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
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---

Hi Branden!

How do you feel about this page?

I wasn't inspired to write an example program.  I welcome any input if
you or someone reading the list has a trivial one at hand.

Cheers,
Alex

 man3const/EOF.3const | 54 ++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 54 insertions(+)
 create mode 100644 man3const/EOF.3const

diff --git a/man3const/EOF.3const b/man3const/EOF.3const
new file mode 100644
index 000000000..f59511a47
--- /dev/null
+++ b/man3const/EOF.3const
@@ -0,0 +1,54 @@
+.\" Copyright (c) 2022 by Alejandro Colomar <alx@kernel.org>
+.\"
+.\" SPDX-License-Identifier: Linux-man-pages-copyleft
+.\"
+.\"
+.TH EOF 3const (date) "Linux man-pages (unreleased)"
+.SH NAME
+EOF \- end of file or error indicator
+.SH LIBRARY
+Standard C library
+.RI ( libc )
+.SH SYNOPSIS
+.nf
+.B #include <stdio.h>
+.PP
+.B "#define EOF  /* ... */"
+.fi
+.SH DESCRIPTION
+.B EOF
+represents the end of an input file, or an error indication.
+It is a negative value, of type
+.IR int .
+.PP
+.B EOF
+is not a character
+(it can't be represented by
+.IR "unsigned char" ).
+It is instead a sentinel value outside of the valid range for valid characters.
+.SH CONFORMING TO
+C99 and later;
+POSIX.1-2001 and later.
+.SH CAVEATS
+.SS Input
+Programs should read the return value of an input function
+before using functions of the
+.BR feof (3)
+family.
+Only when the function returned the sentinel value
+.B EOF
+it makes sense to distinguish between the end of a file or an error with
+.BR feof (3)
+or
+.BR ferror (3).
+.SS Output
+Programs can't pass this value to an output function
+to "write" the end of a file.
+That would likely result in undefined behavior.
+Instead,
+closing the writing stream or file descriptor
+that refers to such file
+is the way to signal the end of that file.
+.SH SEE ALSO
+.BR feof (3),
+.BR fgetc (3)
-- 
2.37.2

