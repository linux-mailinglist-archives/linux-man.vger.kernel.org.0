Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0B9F8369D2F
	for <lists+linux-man@lfdr.de>; Sat, 24 Apr 2021 01:14:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229718AbhDWXOq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 23 Apr 2021 19:14:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44854 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229520AbhDWXOp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 23 Apr 2021 19:14:45 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4BF19C061574;
        Fri, 23 Apr 2021 16:14:08 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id d200-20020a1c1dd10000b02901384767d4a5so1991293wmd.3;
        Fri, 23 Apr 2021 16:14:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=C4ZPzplc9OAmt+zuL1FDfQQzTkLLffr304oYuA/Q1dQ=;
        b=ckH/C22dufqESO7HjVddJUfyAZ33VYqHuQNSMQ3+1+qtoHtcbJ/ldBtIHL6lOWgV3u
         euXTvlmDYp13cPXFfy91TfLiEvKeiWy9TyLJxKMjxmRCgnqa/GmyIBe+1aag4gpbpVvc
         jzSnWkmcb+arhjnDJmXLtreG4TWkZAfkHzcZNnpSoC3hvWZjDu5iAScruFEhY5xvU0n4
         I41ao/OW69i9o49aCQ8CKytvCgLpI9j9Sgl8sNjP2ustavT8wBhjO/QoBTZ+Uf2py0gP
         UgK6gWrVCCHqPEmfxOZSjZhPaLou2eXqaY6xsEocWmN4ZioNpGaUJ+FnLk/7LLAunlR1
         iV0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=C4ZPzplc9OAmt+zuL1FDfQQzTkLLffr304oYuA/Q1dQ=;
        b=teFJ8N79NF17MUg8IHoa95P+gB0I9EVecmZ9CeBloUKqK3xTC455Kk0nAfgQhXlVbf
         69jFRcIo5iKpfeB7te7IOT5j99VfoOqGwL6sXhNtDAsfqM/msq939xxDw+d9TfdOmnLr
         6O8jPZ/DCvYtlVFEKHmrVoHJwxBdARPTt4cUAZpxxYbVC6QfXCguF5CU5ZglukqiTfIG
         1sYH7MRxpdK8310AQWPLmKbfsIbLD71gOc78/gHP4mZ/SamQXanC6/gB75AbejGq6lYk
         Afuj7mCiYWQKaOJkMo+VUtHX2rj/BSr6n3ItMPZB47+rInZzdluFQdGObI5LIv2sEu/o
         oiBQ==
X-Gm-Message-State: AOAM53117x7MSh+eY9mv4V9q/kbvLzyowvWW+uErNQEU2lQ4uNDU5Rzp
        PSpvFTyK2n8AO9MX/hTuI9nokWHb9pc=
X-Google-Smtp-Source: ABdhPJy3Sw9bnVCp4YJSFWgB2Sa9Y7GiIhAh/r/MvZ7/Wv2D5d24nUdLjF1CMegf5GKt9bbcfII/fQ==
X-Received: by 2002:a1c:6646:: with SMTP id a67mr7982825wmc.86.1619219647099;
        Fri, 23 Apr 2021 16:14:07 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id w4sm10883653wrp.58.2021.04.23.16.14.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Apr 2021 16:14:06 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-kernel@vger.kernel.org, libc-alpha@sourceware.org,
        gcc-patches@gcc.gnu.org
Subject: [RFC] bpf.2: Use standard types and attributes
Date:   Sat, 24 Apr 2021 01:06:10 +0200
Message-Id: <20210423230609.13519-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Some manual pages are already using C99 syntax for integral
types 'uint32_t', but some aren't.  There are some using kernel
syntax '__u32'.  Fix those.

Some pages also document attributes, using GNU syntax
'__attribute__((xxx))'.  Update those to use the shorter and more
portable C2x syntax, which hasn't been standardized yet, but is
already implemented in GCC, and available through either --std=c2x
or any of the --std=gnu... options.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/bpf.2 | 47 +++++++++++++++++++++++------------------------
 1 file changed, 23 insertions(+), 24 deletions(-)

diff --git a/man2/bpf.2 b/man2/bpf.2
index 6e1ffa198..204f01bfc 100644
--- a/man2/bpf.2
+++ b/man2/bpf.2
@@ -188,39 +188,38 @@ commands:
 .EX
 union bpf_attr {
     struct {    /* Used by BPF_MAP_CREATE */
-        __u32         map_type;
-        __u32         key_size;    /* size of key in bytes */
-        __u32         value_size;  /* size of value in bytes */
-        __u32         max_entries; /* maximum number of entries
-                                      in a map */
+        uint32_t    map_type;
+        uint32_t    key_size;    /* size of key in bytes */
+        uint32_t    value_size;  /* size of value in bytes */
+        uint32_t    max_entries; /* maximum number of entries
+                                    in a map */
     };
 
-    struct {    /* Used by BPF_MAP_*_ELEM and BPF_MAP_GET_NEXT_KEY
-                   commands */
-        __u32         map_fd;
-        __aligned_u64 key;
+    struct {    /* Used by BPF_MAP_*_ELEM and BPF_MAP_GET_NEXT_KEY commands */
+        uint32_t                     map_fd;
+        uint64_t [[gnu::aligned(8)]] key;
         union {
-            __aligned_u64 value;
-            __aligned_u64 next_key;
+            uint64_t [[gnu::aligned(8)]] value;
+            uint64_t [[gnu::aligned(8)]] next_key;
         };
-        __u64         flags;
+        uint64_t                     flags;
     };
 
     struct {    /* Used by BPF_PROG_LOAD */
-        __u32         prog_type;
-        __u32         insn_cnt;
-        __aligned_u64 insns;      /* \(aqconst struct bpf_insn *\(aq */
-        __aligned_u64 license;    /* \(aqconst char *\(aq */
-        __u32         log_level;  /* verbosity level of verifier */
-        __u32         log_size;   /* size of user buffer */
-        __aligned_u64 log_buf;    /* user supplied \(aqchar *\(aq
-                                     buffer */
-        __u32         kern_version;
-                                  /* checked when prog_type=kprobe
-                                     (since Linux 4.1) */
+        uint32_t                     prog_type;
+        uint32_t                     insn_cnt;
+        uint64_t [[gnu::aligned(8)]] insns;     /* \(aqconst struct bpf_insn *\(aq */
+        uint64_t [[gnu::aligned(8)]] license;   /* \(aqconst char *\(aq */
+        uint32_t                     log_level; /* verbosity level of verifier */
+        uint32_t                     log_size;  /* size of user buffer */
+        uint64_t [[gnu::aligned(8)]] log_buf;   /* user supplied \(aqchar *\(aq
+                                                   buffer */
+        uint32_t                     kern_version;
+                                                /* checked when prog_type=kprobe
+                                                   (since Linux 4.1) */
 .\"                 commit 2541517c32be2531e0da59dfd7efc1ce844644f5
     };
-} __attribute__((aligned(8)));
+} [[gnu::aligned(8)]];
 .EE
 .in
 .\"
-- 
2.31.0

