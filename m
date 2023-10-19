Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2677F7D0066
	for <lists+linux-man@lfdr.de>; Thu, 19 Oct 2023 19:23:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233283AbjJSRX2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 19 Oct 2023 13:23:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47580 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233238AbjJSRX2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 19 Oct 2023 13:23:28 -0400
Received: from mail-oa1-x2b.google.com (mail-oa1-x2b.google.com [IPv6:2001:4860:4864:20::2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09768CF
        for <linux-man@vger.kernel.org>; Thu, 19 Oct 2023 10:23:23 -0700 (PDT)
Received: by mail-oa1-x2b.google.com with SMTP id 586e51a60fabf-1dd71c0a41fso5068717fac.2
        for <linux-man@vger.kernel.org>; Thu, 19 Oct 2023 10:23:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697736201; x=1698341001; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=YGyVIrh3QyBQMvq0f9l6IHBE6zWfmPqnTiBOu5T/cnY=;
        b=xse9FKxrh631TMxLpx/xrqgooehRCDGHjdJA1RNcSlgr2ktSpEVF3xfX3HMEW6Tw6E
         2voYTMz/AoENPHFSuH2AqgI0+OVUpIZQuv1tj5kPNh1KH9/7wueQ6XgkTg9uXwEIPLo2
         PV/xxpXXgI5sBuvNTIlptQgXbCAzAHsVvLhRqI7t0lJUrz+9jCMJ+SItqHquE7rvzce6
         PC9roq8jhDLaChw3Uv3lkyksosUk9cwc2om0tBJ+ItDPXEVxBIXZ5HhoLLwv5QwxUAhq
         D5bzBQvFQNrQzPzmBDh6QtwKKjk4AFG/Nz3fChSyS0VhFE+v9GGArjLcNWEWB7lqK9g1
         u6Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697736201; x=1698341001;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YGyVIrh3QyBQMvq0f9l6IHBE6zWfmPqnTiBOu5T/cnY=;
        b=qiSQ8LPO6f3sAG25OFx64T68l6v29Wz09dq6Zt7ql9ylbHPSVcA9/z2Vuy4g6f5j2i
         OVTmwDBYveqhcd8UkJm5cx/byYMvLnnzBnjFk085LHuXdPPYkCu15ec5JvBfmk/yFEH3
         V5Dqfd0Rcqse7BXylYIqJezMuKRyQM3C5haFHO5JbMowr7ZW6KMSj2hnco9h5tVeItN5
         Din5NVFzItqlYeIXL2lkRMksR+ASQVVHbbu0s2juX/HryN6oVgKGT3Cd9dJSLpzq+W9L
         aCYEF2Dg4FZCSsWlsE8vuNsAxIpsyhonVREsbE9tYJqo/zJ6mIMdAighCnyYjnPpasCX
         VDfA==
X-Gm-Message-State: AOJu0YyG01HouAOQltvZgItTXzUKrU0V1LWoVuF1D/imtafICsx9v4E8
        2Wg7FdJzFrHbNDncYCUmz6J7ZMh/ErYHdu7U3KePyg==
X-Google-Smtp-Source: AGHT+IHUcnO5s946NCg3vyW5UOMPEtSdpHBAeuMUNluRFMNmgbLHNhCvHmXGIuw748ywKSQz6xkq/A==
X-Received: by 2002:a05:6870:104f:b0:1e9:cb91:1b05 with SMTP id 15-20020a056870104f00b001e9cb911b05mr3090102oaj.53.1697736200865;
        Thu, 19 Oct 2023 10:23:20 -0700 (PDT)
Received: from mandiga.. ([2804:1b3:a7c3:a647:8435:c932:f94b:575b])
        by smtp.gmail.com with ESMTPSA id x184-20020a6363c1000000b005897bfc2ed3sm3524pgb.93.2023.10.19.10.23.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Oct 2023 10:23:20 -0700 (PDT)
From:   Adhemerval Zanella <adhemerval.zanella@linaro.org>
To:     linux-man@vger.kernel.org
Cc:     alx@kernel.org
Subject: [PATCH v3] ld.so.8: Describe glibc Hardware capabilities
Date:   Thu, 19 Oct 2023 14:23:15 -0300
Message-Id: <20231019172315.208972-1-adhemerval.zanella@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
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
index cf03cb85e..5b02ae88f 100644
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
+The legacy hardware capabilities combinations has the drawback where
+each feature name incur in
+cascading extra paths added on the search path list,
+adding a lot of overhead on
+.B ld.so
+during library resolution.
+For instance, on x86 32-bit, if the hardware
+supports
+.B i686
+and
+.BR sse2
+, the resulting search path will be
+.BR i686/sse2:i686:sse2:. .
+A new capability
+.B newcap
+will set the search path to
+.BR newcap/i686/sse2:newcap/i686:newcap/sse2:newcap:i686/sse2:i686:sse2: .
+.PP
+glibc 2.33 added a new hardware capability scheme,
+where each ABI can define
+a set of paths based on expected hardware support.
+Each path is added depending of the hardware of the machine,
+and they are not combined together.
+They also have priority over the legacy hardware capabilities.
+The following paths are currently supported.
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

