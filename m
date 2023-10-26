Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D69C17D883D
	for <lists+linux-man@lfdr.de>; Thu, 26 Oct 2023 20:28:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230008AbjJZS2L (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 26 Oct 2023 14:28:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44670 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229815AbjJZS2K (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 26 Oct 2023 14:28:10 -0400
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com [IPv6:2607:f8b0:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1231A192
        for <linux-man@vger.kernel.org>; Thu, 26 Oct 2023 11:28:08 -0700 (PDT)
Received: by mail-pf1-x42e.google.com with SMTP id d2e1a72fcca58-6b44befac59so1795702b3a.0
        for <linux-man@vger.kernel.org>; Thu, 26 Oct 2023 11:28:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698344887; x=1698949687; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=va8xcjOQqe2vmGQvW/xu/JZyJfaD8kmMD9UqMRP3QgU=;
        b=HTKbbPk/JqaBtIoFjJevpJuRHp0N0ryoUi4dEuLtnWQOniQYujoWYl6XpMeSdjfW1F
         S/oRR/A+75Oh5JVyclmOQNTPzcvfOUQUVufHyp7N18ygFj7v43pYIyHPT6CRcmZe4p6S
         SagmHATzRqcjbRX/59KjXVXQg4EpfAtFtG353/HAKqsFpSU+UpnrWD9WibO32sNtyAN0
         HoA7ckCVQuIS3+IW1fTZsAOpoQv9CLqA1B9N17U1D4Pa+n0VLCD3ZACzqKKlYrEjjRA+
         XqSpm31qUvUToLhPJvvUxXtqEAs8yTynXkdVN23twmovFEe7olvaNit9XDHTC24B/Zvd
         o9Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698344887; x=1698949687;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=va8xcjOQqe2vmGQvW/xu/JZyJfaD8kmMD9UqMRP3QgU=;
        b=uLpaLI20LRzZDWZ+lAYv3HVUQY1qb5pPxHj71Ao01lEuucJe1DeVIkaWWwZ52E6jYA
         iKcddUCe6JmLfRrS/kYr2erKGL7YzeRP0vuhv7C5/B7sRgEw9dA1UTJOxZazPYz+N/xX
         8wsa4NJ8/PyH7qRjA/IOUMQSQjgbkvSTFZj4WHU/qdUtq1lDVykhIVHx8A5xdgUSK5FA
         9wuLJU3L5NYFwC7h9lMNvi5yVVPFaBCCzNvHB/OiaeAcADGsQK0jeIzNrZWyfwCRrhsv
         2WgLRtLIX6/g1/jxnBqMc+oen1sFVnj+IGKsMjfnlGm2sbeM2EiX9yCz5QQh3yCeV4aL
         wq0Q==
X-Gm-Message-State: AOJu0YyBgs2y31DHtsraQq2N9a49paSjHP2WwYu05HASqu3nwDLY8BTD
        mgmQl0qL4T8OG3b1wav+Az1w6T1UNAtXVW72JS8igw==
X-Google-Smtp-Source: AGHT+IGfv9c8KxPqg7+ZsvjRSHsD07Te2sDYNd9B4VKrbXL6XJJEUhY8Gx25r00wgMHJOwVfuRCDMg==
X-Received: by 2002:a05:6a20:4407:b0:17b:62ae:a8bf with SMTP id ce7-20020a056a20440700b0017b62aea8bfmr4117230pzb.30.1698344886902;
        Thu, 26 Oct 2023 11:28:06 -0700 (PDT)
Received: from mandiga.. ([2804:1b3:a7c3:a647:ad90:6e37:bd13:fb33])
        by smtp.gmail.com with ESMTPSA id v12-20020a63f20c000000b005b32d6b4f2fsm10725072pgh.81.2023.10.26.11.28.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Oct 2023 11:28:06 -0700 (PDT)
From:   Adhemerval Zanella <adhemerval.zanella@linaro.org>
To:     linux-man@vger.kernel.org
Cc:     alx@kernel.org
Subject: [PATCH v4] ld.so.8: Describe glibc Hardware capabilities
Date:   Thu, 26 Oct 2023 15:28:02 -0300
Message-Id: <20231026182802.2194109-1-adhemerval.zanella@linaro.org>
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

The feature was added on glibc 2.33 as a way to improve the path
search, since the legacy hardware capabilities combination scheme
does not scale properly with new hardware support.  The legacy support
was removed non glibc 2.37, so it is the only scheme currently
supported.

Signed-off-by: Adhemerval Zanella <adhemerval.zanella@linaro.org>
---
 man8/ld.so.8 | 63 +++++++++++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 62 insertions(+), 1 deletion(-)

diff --git a/man8/ld.so.8 b/man8/ld.so.8
index cf03cb85e..ed27744cb 100644
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
@@ -843,6 +851,59 @@ z900, z990, z9-109, z10, zarch
 .B x86 (32-bit only)
 acpi, apic, clflush, cmov, cx8, dts, fxsr, ht, i386, i486, i586, i686, mca, mmx,
 mtrr, pat, pbe, pge, pn, pse36, sep, ss, sse, sse2, tm
+.PP
+The legacy hardware capabilities support has the drawback that each
+new feature added grows the search path exponentially, because it has
+to be added to every combination of the other existing features.
+.PP
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
+.SS glibc Hardware capabilities (from glibc 2.33)
+.TP
+.\" The initial discussion on various pitfalls of the old scheme is
+.\" https://sourceware.org/pipermail/libc-alpha/2020-May/113757.html
+.\" and the patchset that proposes the glibc-hwcap support is
+.\" https://sourceware.org/pipermail/libc-alpha/2020-June/115250.html
+glibc 2.33 added a new hardware capability scheme, where under each
+CPU architecture, certain levels can be defined, grouping support for
+certain features or special instructions. Each architecture level has
+a fixed set of paths that it adds to the dynamic linker search list,
+depending on the hardware of the machine. Since each new architecture
+level is not combined with previously existing ones, the new scheme
+does not have the drawback of growing the dynamic linker search list
+uncontrollably.
+.PP
+For instance, on x86 64-bit, if the hardware supports
+.B x86_64-v3
+(for instance Intel Haswell or AMD Excavator)
+, the resulting search path will be
+.BR glibc-hwcaps/x86-64-v3:glibc-hwcaps/x86-64-v2:.
+.\" The x86_64 architectures levels are defined the official ABI:
+.\" https://gitlab.com/x86-psABIs/x86-64-ABI/-/blob/master/x86-64-ABI/low-level-sys-info.tex
+.\" The PowerPC and s390x are glibc defined ones based on chip
+.\" support (which maps to ISA levels).
+The following paths are currently supported, in priority order.
+.TP
+.B PowerPC (64-bit little-endian only)
+power10, power9
+.TP
+.B s390 (64-bit only)
+z16, z15, z14, z13
+.TP
+.B x86 (64-bit only)
+x86-64-v4, x86-64-v3, x86-64-v2
+.PP
+glibc 2.37 removed support for the legacy hardware capabilities.
+.
 .SH SEE ALSO
 .BR ld (1),
 .BR ldd (1),
-- 
2.34.1

