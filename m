Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CEDD15C01F8
	for <lists+linux-man@lfdr.de>; Wed, 21 Sep 2022 17:46:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230282AbiIUPqT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 21 Sep 2022 11:46:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50188 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230268AbiIUPqR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 21 Sep 2022 11:46:17 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 32ABD77574
        for <linux-man@vger.kernel.org>; Wed, 21 Sep 2022 08:46:16 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id y3so14639333ejc.1
        for <linux-man@vger.kernel.org>; Wed, 21 Sep 2022 08:46:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=ClWTbYeEhvOYg6XFFj5MAvSc/o7Jg6oSmZhpikiAjn0=;
        b=PcAjrVvPZl/bFVdPKbAkXLKXq87SBJNVNecYr01Q6FKxrjOyiDen4/aaDrdqFvwCPP
         gfdsDkt3oWWZdXBq5ifTU63mRZ3+2+p4kp4yjWtSZF0Ug93ygEb8UUJd13dsKIjvsEvg
         u2paAVCkZyIuIwrjgVc8YeDbXNnXAIkCk3eKMGS7+jG9spqFTj+0lupeU1SSEu6nz/7j
         XSyTtCgV6+NNudHESM3yHyUbvDS46cHjBtRLylgzJZS1QcxEDBWLPBY2jcFGo9AG1uEB
         ByzCvG0HXlKZsCiWcJgbX/n6TFIanaU2s8PfavTuSU9PGa6nUMwjd6tPpk5ySpXpSP7v
         htxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=ClWTbYeEhvOYg6XFFj5MAvSc/o7Jg6oSmZhpikiAjn0=;
        b=3KhhUXm5wLIGEAiKyetiJs9lJERi9JKN8W/GqAxhzYMC+8IFGsp6v5jGh5+lHr7j+d
         Qkdpd66MT2xAcQR4IlgCiCZJJLMzprJ/Up63iNfueOiSUH89mWWsaGJ/gYm66dE3Npe2
         bdxFGbVwVB1+QYjGxLi1Z6hfnUDMeMkeZQewCgd19gY6UwooX4wo8UJ8Tku695jqVwjM
         yZSargmhE1jKLoPG5YJOZgJ6Udz3TNQPOfXPlD9voBgd2+rhpn0q5ulqDVQSb4T+cNdc
         aNl3Rvhypyv4Mzj6E/2K0zvtT4Q/Ytp+9FzdFJvxBKYgTNYaCUkZuSvTufiFCNe+fZhd
         ojJQ==
X-Gm-Message-State: ACrzQf00HJbl2qfn/WkNpmNuhZp9pZfp5m0SgxVVbH99FwTfkfteBYkV
        ++3uXwhaBHQWWcfpECRgWMKoPMYHdZE=
X-Google-Smtp-Source: AMsMyM4b2qdlTvlswuO7F/q93mHI5Y378nlmn04SuZz3VCQ5ysSyXXgh5n8bsHTXkVf9CyLwjWlOyQ==
X-Received: by 2002:a17:906:9b83:b0:730:b3ae:343 with SMTP id dd3-20020a1709069b8300b00730b3ae0343mr22259105ejc.670.1663775174592;
        Wed, 21 Sep 2022 08:46:14 -0700 (PDT)
Received: from localhost (internet-185-112-167-50.cznet.cz. [185.112.167.50])
        by smtp.gmail.com with ESMTPSA id kw12-20020a170907770c00b0076ff600bf2csm1465531ejc.63.2022.09.21.08.46.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Sep 2022 08:46:13 -0700 (PDT)
From:   =?UTF-8?q?=C5=A0t=C4=9Bp=C3=A1n=20N=C4=9Bmec?= <stepnem@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] mlock.2, pivot_root.2, poll.2, select.2, fopen.3, capabilities.7: tfix
Date:   Wed, 21 Sep 2022 17:46:02 +0200
Message-Id: <20220921154602.446336-1-stepnem@gmail.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Signed-off-by: Štěpán Němec <stepnem@gmail.com>
---
 man2/mlock.2        | 2 +-
 man2/pivot_root.2   | 2 +-
 man2/poll.2         | 2 +-
 man2/select.2       | 2 +-
 man3/fopen.3        | 2 +-
 man7/capabilities.7 | 4 ++--
 6 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/man2/mlock.2 b/man2/mlock.2
index fc138f6fdf44..da1ff69769d3 100644
--- a/man2/mlock.2
+++ b/man2/mlock.2
@@ -36,7 +36,7 @@ and
 perform the converse operation,
 unlocking part or all of the calling process's virtual
 address space, so that pages in the specified virtual address range may
-once more to be swapped out if required by the kernel memory manager.
+once more be swapped out if required by the kernel memory manager.
 .PP
 Memory locking and unlocking are performed in units of whole pages.
 .SS mlock(), mlock2(), and munlock()
diff --git a/man2/pivot_root.2 b/man2/pivot_root.2
index f2df25d127b0..ecb92c103a2c 100644
--- a/man2/pivot_root.2
+++ b/man2/pivot_root.2
@@ -60,7 +60,7 @@ must not be on the same mount as the current root.
 .IP \-
 \fIput_old\fP must be at or underneath \fInew_root\fP;
 that is, adding some nonnegative
-number of "\fI/..\fP" prefixes to the pathname pointed to by
+number of "\fI/..\fP" suffixes to the pathname pointed to by
 .I put_old
 must yield the same directory as \fInew_root\fP.
 .IP \-
diff --git a/man2/poll.2 b/man2/poll.2
index 8d2b08d63c6c..459cb383a702 100644
--- a/man2/poll.2
+++ b/man2/poll.2
@@ -577,7 +577,7 @@ main(int argc, char *argv[])
     if (pfds == NULL)
         errExit("malloc");
 
-    /* Open each file on command line, and add it \(aqpfds\(aq array. */
+    /* Open each file on command line, and add it to \(aqpfds\(aq array. */
 
     for (nfds_t j = 0; j < nfds; j++) {
         pfds[j].fd = open(argv[j + 1], O_RDONLY);
diff --git a/man2/select.2 b/man2/select.2
index 0fc075d48897..413baf3d6fef 100644
--- a/man2/select.2
+++ b/man2/select.2
@@ -547,7 +547,7 @@ On some UNIX systems,
 .BR select ()
 unblocks and returns, with an indication that the file descriptor is ready
 (a subsequent I/O operation will likely fail with an error,
-unless another process reopens file descriptor between the time
+unless another process reopens the file descriptor between the time
 .BR select ()
 returned and the I/O operation is performed).
 On Linux (and some other systems),
diff --git a/man3/fopen.3 b/man3/fopen.3
index d2fb6abeacf4..a2d3b5ab4ecc 100644
--- a/man3/fopen.3
+++ b/man3/fopen.3
@@ -123,7 +123,7 @@ called for its synchronizing side effect).
 Opening a file in append mode (\fBa\fP as the first character of
 .IR mode )
 causes all subsequent write operations to this stream to occur
-at end-of-file, as if preceded the call:
+at end-of-file, as if preceded by the call:
 .PP
 .in +4n
 .EX
diff --git a/man7/capabilities.7 b/man7/capabilities.7
index ef56c63f9a34..c991b17b5666 100644
--- a/man7/capabilities.7
+++ b/man7/capabilities.7
@@ -1040,7 +1040,7 @@ Therefore, when assigning capabilities to a file
 if we specify the effective flag as being enabled for any capability,
 then the effective flag must also be specified as enabled
 for all other capabilities for which the corresponding permitted or
-inheritable flags is enabled.
+inheritable flag is enabled.
 .\"
 .SS File capability extended attribute versioning
 To allow extensibility,
@@ -1271,7 +1271,7 @@ file permitted capabilities, then
 fails with the error
 .BR EPERM .
 This prevents possible security risks that could arise when
-a capability-dumb application is executed with less privilege that it needs.
+a capability-dumb application is executed with less privilege than it needs.
 Note that, by definition,
 the application could not itself recognize this problem,
 since it does not employ the

base-commit: bf8f5415a1dd3296d3741008936458aeaf8769fc
-- 
2.37.3

