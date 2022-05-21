Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 478AD52FD7B
	for <lists+linux-man@lfdr.de>; Sat, 21 May 2022 17:02:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235681AbiEUPC1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 21 May 2022 11:02:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51002 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232481AbiEUPCZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 21 May 2022 11:02:25 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B897B2DD4E
        for <linux-man@vger.kernel.org>; Sat, 21 May 2022 08:02:23 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id h14so14990432wrc.6
        for <linux-man@vger.kernel.org>; Sat, 21 May 2022 08:02:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=VFqJse3kniUi5ZE801Oh4EBY9q1yuVAR+RMegDkH4gg=;
        b=NWd/uEb6AmxT3ouzt+opEk4/IRN94DhpeXn/CEM16pfMrH3etPAkYhaW/A6/p0/GcR
         Qz75EmXbc9NbmRp5swOfCRaV8hQtIQs7yIjqFPYvh8GY+EUxlW8dlPa77zmfcPNFc0OZ
         h4anLoDZLLBdDaqzqy6Gk9yp+0yL/RuiZORXS6u4yNG1hE3qYgKUsgppHCFj+p35h2jG
         74IfCOnsdJDxE2nd9PJLlAhDYu2D0DPJDT1Ou4u0Ogc5eNJZHb4bZH2KKo1wQdPhyadt
         xeigEttfzg9/T9x/fKGAEKOcQ9Yh2n9/3VapAzpb7a8k7nRVA+k6l0wvFC7cx4yePi8C
         gK7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=VFqJse3kniUi5ZE801Oh4EBY9q1yuVAR+RMegDkH4gg=;
        b=8HPlcvz0U4yaGYxw8wceE4i9QwGgElR09jQepR2yjQilPCaT8LRPRjGaDXLdhjG182
         6Q80vNqxQn8cAnJUvPjOsW2R9oyc90ClQ90xt3Z0QIMQWATWI9ZvfmodGIklU15Xyyk/
         vX/SgZpb3v7vXCRCMlJgeLTZBISZnczTQepVRcy2qsm8ryj3pl2ZIOgQKcbg8+QwAfhb
         yJfizFCLcIU8QP1YO9AEOfAtmtKDvlNVbdboadlxB/QLdPf1fpXyBXTzJNBcTEqpfiX/
         W+kOBZcor4XHUDc6J8bjCLdlbeHHweYECgXDhsEQRHiGkvETHtjqhg3kEFNiitfoTwGC
         p9dw==
X-Gm-Message-State: AOAM530NZPKpP2dIfCTzWcCq48XL2lCQmCsGRmEcQ9646fg0eJlNmzSz
        URl+iLtY8jBlwMF8lUUeYgbz/qK2Yws=
X-Google-Smtp-Source: ABdhPJy2rqdCGbyaxQPJiYIMoArqtRUMUy9ndbX3LVsgtg+KSf6FSzymE0VR2XJJnevaceuIjwIbmA==
X-Received: by 2002:adf:dc8d:0:b0:20d:bfd:2018 with SMTP id r13-20020adfdc8d000000b0020d0bfd2018mr12310927wrj.540.1653145342339;
        Sat, 21 May 2022 08:02:22 -0700 (PDT)
Received: from asus5775.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id s9-20020a7bc389000000b0039482d95ab7sm4428653wmj.24.2022.05.21.08.02.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 May 2022 08:02:21 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     linux-man@vger.kernel.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>
Subject: [RFC] Various pages: srcfix.  Replace .PD 0 with .TQ.
Date:   Sat, 21 May 2022 17:00:41 +0200
Message-Id: <20220521150040.45966-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---

Hi Branden,

Could you please review this Linux man-pages patch?
If you like it, I'll apply the same changes to all of the pages.

Thanks,

Alex

 man2/bpf.2   | 60 ++++++++++++++++++++++++----------------------------
 man2/fcntl.2 | 12 +++++------
 2 files changed, 33 insertions(+), 39 deletions(-)

diff --git a/man2/bpf.2 b/man2/bpf.2
index 8ae3eae80..155f20e3a 100644
--- a/man2/bpf.2
+++ b/man2/bpf.2
@@ -1075,16 +1075,14 @@ However they may not store kernel pointers within
 the maps and are presently limited to the following helper functions:
 .\" [Linux 5.6] mtk: The list of available functions is, I think, governed
 .\" by the check in net/core/filter.c::bpf_base_func_proto().
-.IP * 3
-get_random
-.PD 0
-.IP *
-get_smp_processor_id
-.IP *
-tail_call
-.IP *
-ktime_get_ns
-.PD 1
+.TP
+* get_random
+.TQ
+* get_smp_processor_id
+.TQ
+* tail_call
+.TQ
+* ktime_get_ns
 .PP
 Unprivileged access may be blocked by writing the value 1 to the file
 .IR /proc/sys/kernel/unprivileged_bpf_disabled .
@@ -1148,40 +1146,38 @@ The JIT compiler for eBPF is currently
 .\" and by checking the documentation for bpf_jit_enable in
 .\" Documentation/sysctl/net.txt
 available for the following architectures:
-.IP * 3
-x86-64 (since Linux 3.18; cBPF since Linux 3.0);
+.TP
+* x86-64 (since Linux 3.18; cBPF since Linux 3.0);
 .\" commit 0a14842f5a3c0e88a1e59fac5c3025db39721f74
-.PD 0
-.IP *
-ARM32 (since Linux 3.18; cBPF since Linux 3.4);
+.TQ
+* ARM32 (since Linux 3.18; cBPF since Linux 3.4);
 .\" commit ddecdfcea0ae891f782ae853771c867ab51024c2
-.IP *
-SPARC 32 (since Linux 3.18; cBPF since Linux 3.5);
+.TQ
+* SPARC 32 (since Linux 3.18; cBPF since Linux 3.5);
 .\" commit 2809a2087cc44b55e4377d7b9be3f7f5d2569091
-.IP *
-ARM-64 (since Linux 3.18);
+.TQ
+* ARM-64 (since Linux 3.18);
 .\" commit e54bcde3d69d40023ae77727213d14f920eb264a
-.IP *
-s390 (since Linux 4.1; cBPF since Linux 3.7);
+.TQ
+* s390 (since Linux 4.1; cBPF since Linux 3.7);
 .\" commit c10302efe569bfd646b4c22df29577a4595b4580
-.IP *
-PowerPC 64 (since Linux 4.8; cBPF since Linux 3.1);
+.TQ
+* PowerPC 64 (since Linux 4.8; cBPF since Linux 3.1);
 .\" commit 0ca87f05ba8bdc6791c14878464efc901ad71e99
 .\" commit 156d0e290e969caba25f1851c52417c14d141b24
-.IP *
-SPARC 64 (since Linux 4.12);
+.TQ
+* SPARC 64 (since Linux 4.12);
 .\" commit 7a12b5031c6b947cc13918237ae652b536243b76
-.IP *
-x86-32 (since Linux 4.18);
+.TQ
+* x86-32 (since Linux 4.18);
 .\" commit 03f5781be2c7b7e728d724ac70ba10799cc710d7
-.IP *
-MIPS 64 (since Linux 4.18; cBPF since Linux 3.16);
+.TQ
+* MIPS 64 (since Linux 4.18; cBPF since Linux 3.16);
 .\" commit c6610de353da5ca6eee5b8960e838a87a90ead0c
 .\" commit f381bf6d82f032b7410185b35d000ea370ac706b
-.IP *
-riscv (since Linux 5.1).
+.TQ
+* riscv (since Linux 5.1).
 .\" commit 2353ecc6f91fd15b893fa01bf85a1c7a823ee4f2
-.PD
 .SH EXAMPLES
 .\" [[FIXME]] SRC BEGIN (bpf.c)
 .EX
diff --git a/man2/fcntl.2 b/man2/fcntl.2
index e01a02d86..0b4ae51fe 100644
--- a/man2/fcntl.2
+++ b/man2/fcntl.2
@@ -1209,7 +1209,6 @@ which is a bit mask specified by ORing together zero or more of
 the following bits:
 .PP
 .RS
-.PD 0
 .TP
 .B DN_ACCESS
 A file was accessed
@@ -1217,7 +1216,7 @@ A file was accessed
 .BR pread (2),
 .BR readv (2),
 and similar)
-.TP
+.TQ
 .B DN_MODIFY
 A file was modified
 .RB ( write (2),
@@ -1226,7 +1225,7 @@ A file was modified
 .BR truncate (2),
 .BR ftruncate (2),
 and similar).
-.TP
+.TQ
 .B DN_CREATE
 A file was created
 .RB ( open (2),
@@ -1237,18 +1236,18 @@ A file was created
 .BR symlink (2),
 .BR rename (2)
 into this directory).
-.TP
+.TQ
 .B DN_DELETE
 A file was unlinked
 .RB ( unlink (2),
 .BR rename (2)
 to another directory,
 .BR rmdir (2)).
-.TP
+.TQ
 .B DN_RENAME
 A file was renamed within this directory
 .RB ( rename (2)).
-.TP
+.TQ
 .B DN_ATTRIB
 The attributes of a file were changed
 .RB ( chown (2),
@@ -1256,7 +1255,6 @@ The attributes of a file were changed
 .BR utime (2),
 .BR utimensat (2),
 and similar).
-.PD
 .RE
 .IP
 (In order to obtain these definitions, the
-- 
2.36.1

