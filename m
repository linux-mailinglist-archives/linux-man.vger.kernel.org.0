Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BD8777CF92C
	for <lists+linux-man@lfdr.de>; Thu, 19 Oct 2023 14:40:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235371AbjJSMkz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 19 Oct 2023 08:40:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34004 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235376AbjJSMky (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 19 Oct 2023 08:40:54 -0400
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com [IPv6:2607:f8b0:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 026F7197
        for <linux-man@vger.kernel.org>; Thu, 19 Oct 2023 05:31:53 -0700 (PDT)
Received: by mail-pf1-x42a.google.com with SMTP id d2e1a72fcca58-6b1e46ca282so6282948b3a.2
        for <linux-man@vger.kernel.org>; Thu, 19 Oct 2023 05:31:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697718712; x=1698323512; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/m33mkx0HN5aTezIvehoeL8GbGe+SHRnM7utEV+9oOQ=;
        b=uDUMB8Nolb+LEn2l/ve3YxV2eQNDtGBEWRzgvCXcEPsOGvIKj1XWI0hqfXKxQTPSzE
         Ua9uyU1v01Zcsy/hf48GgJpqFJmIyAgz44LxQS1GeSxxYvEiH5MK9l51gSjlM7J3jXJ8
         ILoQp3Ly9TTYUQHvUM8q75TPq3a6z0qey/tcsxeqHz9qsKyO6GUXG75SXBmL0vppey91
         9NhKfcug/nUXvCGzjjK+1MiK4BckQIq8c6fE8VF4yLRUJ1jXi/+mTqUnTZSPO6wPnjF5
         M/scmP0sDKn4oMSvya+C3LdcdL+1n243UEln1j+xaoXt3Asbb6ek/0Yv9hU6tk2G+Lq+
         /HyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697718712; x=1698323512;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/m33mkx0HN5aTezIvehoeL8GbGe+SHRnM7utEV+9oOQ=;
        b=CxGIM07cz7mL6tffb2q0Aik1QnUdrcvbJiIQGQYV/9zc1W5maP0XrN3gphYnBrisNF
         phCbL7ysnKRaid4hpBd792d6nZWCbz7oopnce+q/OrnNEl9DaWJSGoQl2daTFHwfFZZk
         F+XTagZQ6u62x5HiiiczqdoBoupsyLVFiFVSpsdiISwUifBuZPLlKtMqNMwrPrjRUu0b
         fvWDjCbz+fSekOiQT/gmunhij5mMbes0B+vpRklNkhifVp3KK6rjDAw9+GShmIMOn0s3
         8WCS0gtx9ntPGCkHutDb8Uy74/rA2KU5L/zjM+L+8vnDvsPnmznedLqn+Zrj2+9RkbLb
         Y4og==
X-Gm-Message-State: AOJu0YzZeiGG2XY5v96rokS22F99UEb0053wGGn6qMekvc6ImcpI1N5P
        9zPSA4Rx4dHLOXkMFvj+fXnuFoXcWywn6U8NIWbknA==
X-Google-Smtp-Source: AGHT+IH0mTMtdfUgMgar3E2KZ76WY9jQad5i1TUIkHxzv8xMEp5++emPBSHL0MQuUSymUvl2IHUZvA==
X-Received: by 2002:a05:6a20:7da0:b0:17b:3fe8:b4e1 with SMTP id v32-20020a056a207da000b0017b3fe8b4e1mr2115758pzj.50.1697718712314;
        Thu, 19 Oct 2023 05:31:52 -0700 (PDT)
Received: from mandiga.. ([2804:1b3:a7c3:a647:8435:c932:f94b:575b])
        by smtp.gmail.com with ESMTPSA id h2-20020a170902f7c200b001bbd1562e75sm1845297plw.55.2023.10.19.05.31.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Oct 2023 05:31:50 -0700 (PDT)
From:   Adhemerval Zanella <adhemerval.zanella@linaro.org>
To:     linux-man@vger.kernel.org
Cc:     alx@kernel.org
Subject: [PATCH v2 2/2] ld.so.8: Describe glibc Hardware capabilities
Date:   Thu, 19 Oct 2023 09:31:39 -0300
Message-Id: <20231019123139.1808532-3-adhemerval.zanella@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231019123139.1808532-1-adhemerval.zanella@linaro.org>
References: <20231019123139.1808532-1-adhemerval.zanella@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

It was added on glibc 2.33 as a way to improve path search, since
legacy hardware capabilities combination scheme do not scale
properly with new hardware support.  The legacy support was removed
on glibc 2.37, so it is the only scheme currently supported.

Signed-off-by: Adhemerval Zanella <adhemerval.zanella@linaro.org>
---
 man8/ld.so.8 | 48 +++++++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 47 insertions(+), 1 deletion(-)

diff --git a/man8/ld.so.8 b/man8/ld.so.8
index cf03cb85e..3025da861 100644
--- a/man8/ld.so.8
+++ b/man8/ld.so.8
@@ -208,6 +208,14 @@ The objects in
 .I list
 are delimited by colons.
 .TP
+.BI \-\-glibc-hwcaps-mask " list"
+only search built-in subdirectories if in
+.IR list .
+.TP
+.BI \-\-glibc-hwcaps-prepend " list"
+Search glibc-hwcaps subdirectories in
+.IR list .
+.TP
 .B \-\-inhibit\-cache
 Do not use
 .IR /etc/ld.so.cache .
@@ -808,7 +816,7 @@ as a temporary workaround to a library misconfiguration issue.)
 .I lib*.so*
 shared objects
 .SH NOTES
-.SS Hardware capabilities
+.SS Legacy Hardware capabilities (from glibc 2.5 to glibc 2.37)
 Some shared objects are compiled using hardware-specific instructions which do
 not exist on every CPU.
 Such objects should be installed in directories whose names define the
@@ -843,6 +851,44 @@ z900, z990, z9-109, z10, zarch
 .B x86 (32-bit only)
 acpi, apic, clflush, cmov, cx8, dts, fxsr, ht, i386, i486, i586, i686, mca, mmx,
 mtrr, pat, pbe, pge, pn, pse36, sep, ss, sse, sse2, tm
+.SS glibc Hardware capabilities (from glibc 2.33)
+The legacy hardware capabilities combinations has the drawback where each
+feature name incur in cascading extra paths added on the search path list,
+adding a lot of overhead on
+.B ld.so
+during library resolution.
+For instance, on x86 32-bit, if the hardware
+supports
+.B i686
+and
+.B sse2
+, the resulting search path will be
+.B
+i686/sse2:i686:sse2:. .
+A new capability
+.B newcap
+will set the search path to
+.B
+newcap/i686/sse2:newcap/i686:newcap/sse2:newcap:i686/sse2:i686:sse2: .
+
+glibc 2.33 added a new hardware capability scheme, where each ABI can define
+a set of paths based on expected hardware support.
+Each path is added depending of the hardware of the machine, and they are not
+combined together.
+They also have priority over the legacy hardware capabilities. The following
+paths are currently supported.
+.TP
+.B PowerPC (64-bit little-endian only)
+power9, power10
+.TP
+.B s390 (64-bit only)
+z13, z14, z15, z16
+.TP
+.B x86 (64-bit only)
+x86-64-v2, x86-64-v3, x86-64-v4
+.PP
+The glibc 2.37 removed support for the legacy hardware capabilities.
+.
 .SH SEE ALSO
 .BR ld (1),
 .BR ldd (1),
-- 
2.34.1

