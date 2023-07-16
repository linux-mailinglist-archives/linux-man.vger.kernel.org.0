Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C6A78755044
	for <lists+linux-man@lfdr.de>; Sun, 16 Jul 2023 20:22:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229483AbjGPSWd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 16 Jul 2023 14:22:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36910 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229468AbjGPSWc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 16 Jul 2023 14:22:32 -0400
Received: from mail-yw1-x114a.google.com (mail-yw1-x114a.google.com [IPv6:2607:f8b0:4864:20::114a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F9FD19F
        for <linux-man@vger.kernel.org>; Sun, 16 Jul 2023 11:22:31 -0700 (PDT)
Received: by mail-yw1-x114a.google.com with SMTP id 00721157ae682-57a43b50c2fso23238787b3.0
        for <linux-man@vger.kernel.org>; Sun, 16 Jul 2023 11:22:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20221208; t=1689531751; x=1692123751;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Q2hWJrhP2dwUBax9XQ0Q65UrnYvbwgN/R2PGFhTWzuw=;
        b=lneNi66lYeFXVSPp00PtbW1qooowEHdK2lw9ztEUMkq5BSNw5XsEkuOrHRTmn6j9iz
         nrKHk+zP0C/dxxy/HOHWnAxWU4Ss/lJuhVwzP/DdYIj2mEKALNUdWS0QSOh6eWXKtnAI
         LtiO8Bkgy405GsvS0rDxNWiXRSyaWxJr5hB12V9WhgaC4/db70UC1M4YpC2AH4brLBAU
         fgGDDmJk9iuny1liTIdh9a2vdyn1tIVh4Sj7RA+2Rj6X8V+co1lo/lo/vbgubOQvYgTK
         LuVh7gHiSVwLDD7lI4sDHk8FPWsu+Qchg2oOvrbLPD4EWuAU+MpWy/dM8rwA5Xq7jyA5
         uiSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689531751; x=1692123751;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Q2hWJrhP2dwUBax9XQ0Q65UrnYvbwgN/R2PGFhTWzuw=;
        b=GWNNi4X2buFFznjx0nFPaRPzqc8VdC46iRpxnRSDT5sJ14N1m0kXbRYaVEHHpsOvsZ
         okSDLy7M/0+m9NWsq7EN6qbVSUP7BUfM2KgqWoirEK2qvywgl81RQjsQ7BWZ8+j8cZ4e
         3XKL/jT4wYHBw3aOq5yZxVfsuvAAIKmWy3cJhlYbWbVscrxCYrkV5xe5kS9GtxJCeHVQ
         Zt94xXigFhnOJbJC6nO4O+q9yMmieSXirsfKWQYRIC0hMafN2iJIlbhsp3oSmaoQasxY
         UpoUULpAgsO+ZUxVpxDgC1jAOHz4pw0mwdYUWOZttIeojqdkwpAAr1KfehhhH6XMAuth
         +DjA==
X-Gm-Message-State: ABy/qLZ8dE3ro7855AI8tiRptRzIR/DwMI5399HH4MwkLdT/Wadld6R4
        3wsrahHWj9qn9g+ifSHlPx8zAbxC2V1O
X-Google-Smtp-Source: APBJJlHbEb5A5D0i5xzc/eq436JZMD3FsPXsL5ykmEQquJ5ydIxYylly/qoar/N3vnZ+edeiEf02ZyXDYpz/
X-Received: from maskray.svl.corp.google.com ([2620:15c:2d3:205:7e22:3a8d:b7f4:eab6])
 (user=maskray job=sendgmr) by 2002:a81:ed11:0:b0:576:cd91:b888 with SMTP id
 k17-20020a81ed11000000b00576cd91b888mr119019ywm.0.1689531750825; Sun, 16 Jul
 2023 11:22:30 -0700 (PDT)
Date:   Sun, 16 Jul 2023 11:22:27 -0700
Mime-Version: 1.0
Message-ID: <20230716182227.2226356-1-maskray@google.com>
Subject: [PATCH v2] ld.so.8: Correct linker option name
From:   Fangrui Song <maskray@google.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org, Fangrui Song <maskray@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-9.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        USER_IN_DEF_DKIM_WL autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The linker option that sets the DF_1_NODEFLIB flag is -z nodefaultlib.
-z nodeflib is undefined.

```
% ld.bfd -m elf_x86_64 -e 0 /dev/null -z nodeflib
ld.bfd: warning: -z nodeflib ignored
% ld.lld -m elf_x86_64 -e 0 /dev/null -z nodeflib
ld.lld: warning: unknown -z value: nodeflib
```

Signed-off-by: Fangrui Song <maskray@google.com>
--
Changes from v1:

* Improve commit message
---
 man8/ld.so.8 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man8/ld.so.8 b/man8/ld.so.8
index 1c9a13f56..351913bd8 100644
--- a/man8/ld.so.8
+++ b/man8/ld.so.8
@@ -83,7 +83,7 @@ From the cache file
 which contains a compiled list of candidate shared objects previously found
 in the augmented library path.
 If, however, the binary was linked with the
-.B \-z nodeflib
+.B \-z nodefaultlib
 linker option, shared objects in the default paths are skipped.
 Shared objects installed in hardware capability directories (see below)
 are preferred to other shared objects.
@@ -97,7 +97,7 @@ and then
 and then
 .IR /usr/lib64 .)
 If the binary was linked with the
-.B \-z nodeflib
+.B \-z nodefaultlib
 linker option, this step is skipped.
 .\"
 .SS Dynamic string tokens
-- 
2.41.0.455.g037347b96a-goog

