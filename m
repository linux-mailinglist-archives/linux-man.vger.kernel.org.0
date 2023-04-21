Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DA2046EADB0
	for <lists+linux-man@lfdr.de>; Fri, 21 Apr 2023 17:06:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232177AbjDUPGC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 Apr 2023 11:06:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44916 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230310AbjDUPGB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 Apr 2023 11:06:01 -0400
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5FD1210DD
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 08:06:00 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-5066ce4f725so2555709a12.1
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 08:06:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682089559; x=1684681559;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=sH6d//JAJDx98FXYOqYJFPuOMmQHPhcC1d/OLSd3Vok=;
        b=NeSWmSQk4RDf6tEtnBe1pAR6OIyJjhA21MBwVR3JpM8gGz8xWq5OyiCp6sVBAnWVPW
         2RHeFvxWc8G+aj0wsuHCuBu5d8IKPMBQWR8Cj+7KaF6UNS3HGxagQoTxvn5ogWjpb4/S
         oceJmOrtGkLOa2YcwZMiPYR/Tff5IjuKmVlMVoBVi4Vbe0kJM0JEDVf6NbEe9DbYdVP5
         KGCyVgoYUfIrj7ZGR/DNikvJ8QSfqAR1pfqfrNumBI1u6qOk1Rgkoch9Hqsz2Vwt8GBV
         1n7tEFbHJRpkXtD8IhnbO8NAfgyh1ou6yAx390sPOo5I0aqY+1WciLtTjsaQeaKa7wLB
         v+aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682089559; x=1684681559;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sH6d//JAJDx98FXYOqYJFPuOMmQHPhcC1d/OLSd3Vok=;
        b=lMjfd2yPw7qw9hvDtBRlNXm1zvQbpWUdrq4P2HJvY8scvg6c04HLSUy9/bnTWCcWd+
         kewdVjzJaoiNnBqDri6grvQXf9YW7EQ/jGILFsLxhKLfd6vWj0cMApQq2IAIMvV+8Np7
         ZQLC45FQJNVl8JS1BB/p56aOyrHvurCl750Ti/9FYHfhZ55YNT5ItCgqvZTCz6k21OEX
         T/fx8KWp7XO0whvTz5O9aKmgAeTTQH6IxgoxvtPOq2mV23l+a5ewPmTOLm4necPhH4G9
         mWnJxehPJAXEMb8ms4MDMnwAFL5apvwaaBqDVWgdDBaooXjU1lDGgh03L5XajG23ra9q
         f/KQ==
X-Gm-Message-State: AAQBX9cb1s3S/G4vWlGfoynA5u2vnCUYOi13OSCwSx/okKbippwvelhg
        55BK11AQzjwROYh4WaA5wRbNW0vumgo=
X-Google-Smtp-Source: AKy350ZE4ctX7b63qpO4uqY3BMgAZDvTD0c13MvhDenBsDR9Mn9g2s5Tk275cpSeQMbiIfyn3Pe8+A==
X-Received: by 2002:a17:906:151b:b0:94f:562b:2979 with SMTP id b27-20020a170906151b00b0094f562b2979mr2975798ejd.31.1682089558645;
        Fri, 21 Apr 2023 08:05:58 -0700 (PDT)
Received: from localhost ([2a02:168:633b:1:9d6a:15a4:c7d1:a0f0])
        by smtp.gmail.com with ESMTPSA id oq27-20020a170906cc9b00b0094f410225c7sm2137194ejb.169.2023.04.21.08.05.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Apr 2023 08:05:58 -0700 (PDT)
From:   =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org,
        =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
Subject: [PATCH] mount_setattr.2, openat2.2, bpf-helpers.7, landlock.7: wfix
Date:   Fri, 21 Apr 2023 17:05:55 +0200
Message-Id: <20230421150555.5075-1-gnoack3000@gmail.com>
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

Spell "run time" in two words, as documented in man-pages(7).

Signed-off-by: Günther Noack <gnoack3000@gmail.com>
---
 man2/mount_setattr.2 | 2 +-
 man2/openat2.2       | 2 +-
 man7/bpf-helpers.7   | 2 +-
 man7/landlock.7      | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

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
diff --git a/man7/bpf-helpers.7 b/man7/bpf-helpers.7
index 26ddf8369..663dfd1d1 100644
--- a/man7/bpf-helpers.7
+++ b/man7/bpf-helpers.7
@@ -3025,7 +3025,7 @@ copied and the last byte is set to NUL.
 On success, returns the number of bytes that were written,
 including the terminal NUL. This makes this helper useful in
 tracing programs for reading strings, and more importantly to
-get its length at runtime. See the following snippet:
+get its length at run time. See the following snippet:
 .INDENT 7.0
 .INDENT 3.5
 .sp
diff --git a/man7/landlock.7 b/man7/landlock.7
index b6c9d3821..250b69635 100644
--- a/man7/landlock.7
+++ b/man7/landlock.7
@@ -251,7 +251,7 @@ will stay enforced on all this thread's descendants.
 This allows creating standalone and modular security policies
 per application,
 which will automatically be composed between themselves
-according to their runtime parent policies.
+according to their run time parent policies.
 .\"
 .SS Ptrace restrictions
 A sandboxed process has less privileges than a non-sandboxed process and

base-commit: 59e44e4511391a98f531c08aaba17391f3b7075b
-- 
2.40.0

