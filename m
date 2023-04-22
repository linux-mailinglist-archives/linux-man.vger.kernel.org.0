Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E08DA6EB9D6
	for <lists+linux-man@lfdr.de>; Sat, 22 Apr 2023 17:06:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229556AbjDVPGx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 22 Apr 2023 11:06:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33610 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229539AbjDVPGw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 22 Apr 2023 11:06:52 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30FB019BD
        for <linux-man@vger.kernel.org>; Sat, 22 Apr 2023 08:06:51 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-3f193ca053eso10561525e9.0
        for <linux-man@vger.kernel.org>; Sat, 22 Apr 2023 08:06:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682176009; x=1684768009;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Oxrz2bO2pfIYgKrBSTUJd8sAcGFQ4jRc6Q7ghu5ZO/w=;
        b=DJQuV5CkumPyre5ju/1MjClufu/Ry8Y+TRT43SRARukybAKqvgrJTx62IMmMWD1dEe
         5OcBm5k2glB47O1gsMTRBw10Obc9fY1ugyhImBFE1RyDg++Txcv0D/c3t2jACbNldqCP
         y4AKEYz5j9aKZijDev23lvhblqOixnm61jozpV139ndl969G9qvEL7ZOnr3+EBldu/Bc
         nw28OBjcIRtM8VdrmWwdJCTNtW14VyUeHRsfS3ZE779j9imt/Z9fFNIxLN/NMw7mAzY6
         uk2P7/RqW8mRzheDjbrwWIs+vKrXiCPm3dCSOO4BnWxlyzQIIYZxZPZ1Y1KFiPv4TRHj
         yitw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682176009; x=1684768009;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Oxrz2bO2pfIYgKrBSTUJd8sAcGFQ4jRc6Q7ghu5ZO/w=;
        b=FotM9brjPGFs+SnsAvQdGK2kuGjidyVgkxaS4w6i3y9DtIDfYCgwZeCpHDo8SvztaX
         VHzkAgwpXQRBiHxusOgjmChgHiEoQIYJxij/6GnPuV6DS5PHa33dzTi7p8YJpXpR1zZI
         A2uKg28tTuZdmSgrP7jiXzEJQK0A94//mNeG6zCwoqZ0UPjHS8Fmx9yxSabGduT/mEK7
         RItXr5yCWIWMu7Vyg0R51RIrKFRUn+kQary/Nih917QUUMIbiZKJVSMuiurxsm8cX3Cr
         CYNzJn0gPGf2Ef2Z9+/YxYVDOsHMliNgSU9pk/4Le3W1tH0sH2okXFfR3yfLRG5lPmKq
         0NSQ==
X-Gm-Message-State: AAQBX9fNi1S9fSz/rj9XFlZ/n0MF198mcp4G6pzzjZGR7bMO940tBjw3
        OY5fAFybeYHvRTZs9lUFO/MK55hgQe4=
X-Google-Smtp-Source: AKy350b2SfEn3UZNMLWgxYinJeAhRrAsoHEfb8KxqKlkcedv7PwYcj1lja1yNLVmJgCrfRxJw3Gb5Q==
X-Received: by 2002:a05:600c:b49:b0:3f1:72db:4554 with SMTP id k9-20020a05600c0b4900b003f172db4554mr4054572wmr.1.1682176009593;
        Sat, 22 Apr 2023 08:06:49 -0700 (PDT)
Received: from localhost ([2a02:168:633b:1:9d6a:15a4:c7d1:a0f0])
        by smtp.gmail.com with ESMTPSA id m5-20020a5d6a05000000b002f01e181c4asm6786867wru.5.2023.04.22.08.06.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 Apr 2023 08:06:49 -0700 (PDT)
From:   =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Quentin Monnet <quentin@isovalent.com>, linux-man@vger.kernel.org,
        =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
Subject: [PATCH] mount_setattr.2, openat2.2, landlock.7: wfix
Date:   Sat, 22 Apr 2023 17:06:46 +0200
Message-Id: <20230422150646.5263-1-gnoack3000@gmail.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Fix spelling of "run time", as documented in man-pages(7):

* "run time" in two words when used as a noun
* "run-time" with hyphen when used as an adjective

There is another occurrence in bpf-helpers.7,
but that content gets generated from the kernel source
and should be fixed there.

Signed-off-by: Günther Noack <gnoack3000@gmail.com>
---
 man2/mount_setattr.2 | 2 +-
 man2/openat2.2       | 2 +-
 man7/landlock.7      | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/man2/mount_setattr.2 b/man2/mount_setattr.2
index 24801a4bd..8df02641a 100644
--- a/man2/mount_setattr.2
+++ b/man2/mount_setattr.2
@@ -862,7 +862,7 @@ may change in the future
 user-space applications should zero-fill
 .I struct mount_attr
 to ensure that recompiling the program with new headers will not result in
-spurious errors at runtime.
+spurious errors at run time.
 The simplest way is to use a designated initializer:
 .PP
 .in +4n
diff --git a/man2/openat2.2 b/man2/openat2.2
index e90211fad..182851089 100644
--- a/man2/openat2.2
+++ b/man2/openat2.2
@@ -545,7 +545,7 @@ may change in the future (with new fields being added when system headers are
 updated), user-space applications should zero-fill
 .I struct open_how
 to ensure that recompiling the program with new headers will not result in
-spurious errors at runtime.
+spurious errors at run time.
 The simplest way is to use a designated
 initializer:
 .PP
diff --git a/man7/landlock.7 b/man7/landlock.7
index b6c9d3821..df7b87e80 100644
--- a/man7/landlock.7
+++ b/man7/landlock.7
@@ -251,7 +251,7 @@ will stay enforced on all this thread's descendants.
 This allows creating standalone and modular security policies
 per application,
 which will automatically be composed between themselves
-according to their runtime parent policies.
+according to their run-time parent policies.
 .\"
 .SS Ptrace restrictions
 A sandboxed process has less privileges than a non-sandboxed process and

base-commit: 59e44e4511391a98f531c08aaba17391f3b7075b
-- 
2.40.0

