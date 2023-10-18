Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C64747CE49B
	for <lists+linux-man@lfdr.de>; Wed, 18 Oct 2023 19:31:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231740AbjJRRbY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 18 Oct 2023 13:31:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37870 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231851AbjJRRam (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 18 Oct 2023 13:30:42 -0400
Received: from mail-oa1-x2b.google.com (mail-oa1-x2b.google.com [IPv6:2001:4860:4864:20::2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 947BE3A9A
        for <linux-man@vger.kernel.org>; Wed, 18 Oct 2023 10:21:18 -0700 (PDT)
Received: by mail-oa1-x2b.google.com with SMTP id 586e51a60fabf-1e19cb7829bso4362888fac.1
        for <linux-man@vger.kernel.org>; Wed, 18 Oct 2023 10:21:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697649677; x=1698254477; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sWQcRNT9BptBmyDPuHK/CkSB/F764EqEKv2cS9VXMro=;
        b=dLbeE5K3g+MwV/A9APjMwJHRwiAytXqi+XRqotzn5PHdnUQmUG6kVKpvFk2BPNojGa
         rY8/pvqKlZWcmczvclAJocFheHwDUvugLDFhwwKwbTmBCKELmFwccYnht/nrwRXR1Ngb
         IV0aufvRgOsyj+UmQBPlLrXlf24nz3NlwLw/sXNatPhT6dp5IMyPgtqDTFGW0WAtCUZS
         njusgh5P75pkBvEZyzr9EZXia6OgAJUpg1pi0cbeNITSaFhkvT/PW5g+kj4VdCpVEslW
         rtbULmq0ibWNa/FG+Grlorf4ybkSCdhJnOi1+N0Nt0sCFR3qUC/0mxSNBg5Lk5Hcuy3S
         nEfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697649677; x=1698254477;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sWQcRNT9BptBmyDPuHK/CkSB/F764EqEKv2cS9VXMro=;
        b=VnP5A1ZydAJiZEfblkuUmoZKPWHWgwgaZdIjJxhSLhTJGx0/SGY5lJgoZPk5VjhuZp
         /VRqifapVQofYhsrfz4o6BJQBOYlpPQADUtYBOGXrb/8a+8dOE0gtSmVPzAeaAxSrYXd
         HVLt1Mky9X1q1XMcjf+qWxkPWfPs4+yONlh438VeHo9Nh7inhBlxTydYA2Oltlhf7p/V
         oTMoA8cDnrpF5EWotPNm0Iie5O8ZPmZV4+MqQM6SwM95XkgjoM+HokpbG5Ht1oN7q1sE
         2/6jm2N9xMUHTahBddEcCrafQpfzxYCAafCCtiTnRtdnfekZ++oTcPV5AIDakP8eBsb0
         oCSw==
X-Gm-Message-State: AOJu0Yy2WsWl1FAqx2PvJ5AZ/YtwQZQcyNr3T0/Ez2LYvWA58up4/4Ng
        rDcVh5Lc2gTsV6lPDgWMrCUM5mLlpcCPkTWwFpf7fw==
X-Google-Smtp-Source: AGHT+IFNHno0AajasXO942zZLQD0PSjsKI+2YzQV6IaFYDurhmfqOxHRNGBwXyYCfoZkTGcbNX3abQ==
X-Received: by 2002:a05:6870:2896:b0:1e9:f1cc:a415 with SMTP id gy22-20020a056870289600b001e9f1cca415mr6281144oab.57.1697649676978;
        Wed, 18 Oct 2023 10:21:16 -0700 (PDT)
Received: from mandiga.. ([2804:1b3:a7c3:a647:e0e3:84ab:f290:d748])
        by smtp.gmail.com with ESMTPSA id fa36-20020a056a002d2400b006b2e07a6235sm3574777pfb.136.2023.10.18.10.21.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Oct 2023 10:21:16 -0700 (PDT)
From:   Adhemerval Zanella <adhemerval.zanella@linaro.org>
To:     linux-man@vger.kernel.org
Cc:     alx.manpages@gmail.com
Subject: [PATCH 4/5] ld.so.8: Describe glibc Hardware capabilities
Date:   Wed, 18 Oct 2023 14:21:03 -0300
Message-Id: <20231018172104.1196993-5-adhemerval.zanella@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231018172104.1196993-1-adhemerval.zanella@linaro.org>
References: <20231018172104.1196993-1-adhemerval.zanella@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
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
 man8/ld.so.8 | 47 ++++++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 46 insertions(+), 1 deletion(-)

diff --git a/man8/ld.so.8 b/man8/ld.so.8
index a0020be98..0e742cddd 100644
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
@@ -797,7 +805,7 @@ as a temporary workaround to a library misconfiguration issue.)
 .I lib*.so*
 shared objects
 .SH NOTES
-.SS Hardware capabilities
+.SS Legacy Hardware capabilities (from glibc 2.5 to glibc 2.37)
 Some shared objects are compiled using hardware-specific instructions which do
 not exist on every CPU.
 Such objects should be installed in directories whose names define the
@@ -832,6 +840,43 @@ z900, z990, z9-109, z10, zarch
 .B x86 (32-bit only)
 acpi, apic, clflush, cmov, cx8, dts, fxsr, ht, i386, i486, i586, i686, mca, mmx,
 mtrr, pat, pbe, pge, pn, pse36, sep, ss, sse, sse2, tm
+.SS glibc Hardware capabilities (from glibc 2.33)
+The legacy hardware capabilities combinations has the drawback where each feature
+name incur in cascading extra paths added on the search path list, adding a lot of
+overhead on
+.B
+ld.so
+during library resolution.  For instance, on x86 32-bit, if the hardware supports
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
+The glibc 2.33 added a new hardware capability scheme, where each ABI can define a
+set of paths based on expected hardware support. Each path is added depending of
+the hardware of the machine, and they are not combined together. They also have
+priority over the legacy hardware capabilities. The following paths are currently
+supported.
+.TP
+.B PowerPC (64-bit little-endian only)
+power9, power10
+.TP
+.B s390 (64-bit only)
+z13, z14, z15, z16
+.TP
+.B x86 (64-bit only)
+x86-64-v2, x86-64-v3, x86-64-v4
+.TP
+
+The glibc 2.37 removed support for the legacy hardware capabilities.
+
 .SH SEE ALSO
 .BR ld (1),
 .BR ldd (1),
-- 
2.34.1

