Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DBAF44E7DCA
	for <lists+linux-man@lfdr.de>; Sat, 26 Mar 2022 01:23:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234231AbiCYXhp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Mar 2022 19:37:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57562 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234217AbiCYXho (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 25 Mar 2022 19:37:44 -0400
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com [IPv6:2607:f8b0:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0EE72E2F6C
        for <linux-man@vger.kernel.org>; Fri, 25 Mar 2022 16:36:07 -0700 (PDT)
Received: by mail-pf1-x42b.google.com with SMTP id f3so6558217pfe.2
        for <linux-man@vger.kernel.org>; Fri, 25 Mar 2022 16:36:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fastly.com; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=OMbGgrqUkdbND/D3HkYRpMCYkgg0zcYf+vwnSRNI09c=;
        b=fgkCA3zNy1XIJ8x+jbCQCBT7yX+yKj7rY/Ps0UrEDSq3lssJmTZ9VrKgWbi5wXqXEI
         6s5dalMxROFvDyk/dyxo9HcEZtI3MCSV4vqHNdjyA2ZP3rVheGE4jSaVdFpfbk2YIadD
         kmYdpqE+bUwstZIuDnty3AXmqEreIbXqqQ1oI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=OMbGgrqUkdbND/D3HkYRpMCYkgg0zcYf+vwnSRNI09c=;
        b=CPqCVO7vUmCsYeSQFZY/clgkfg4pTGAleqgOMgKCr0sTliOISm32ifi0DcRwlDOTNX
         RvnM/zxHX8glwgza1LqMFjlVxABwGQmB++UimLdBUAmGU6OErGSl4TaJgDzKD2OhD5Rc
         T+dFFsn40xPONq5XpdVTpQu7Q0QfOhEMbx84wh7U69Yv1kyk0tntydUozuqifBtbO4EG
         7BAQamsBP9fOC/DgsJOlCmu0qgFAHib8AQHmoaty89Mpa50FNLQxTcZRUAabPTf127B9
         1s8mJCVcFZatvoz0SAPW72Y4g7xz5RXpDyjZ/YgUaBDOeWNEv69EL31FCMWafe1qAwag
         +ULQ==
X-Gm-Message-State: AOAM530fpNwZMqQu34QjjroO599sHm5gX/G2/qWsxtO0dRZQM5E+vHie
        HFR+jYBImeRHzwDwJRIlaVZL7IMAgjZ7n1moYzL1ZmXXlupnkQ/JIAH6DDN7GP+kOzyncnS5syv
        IWbcrffGqLje9t5NeZ/UtH2mi405SeEGdWshyHykbBLxoBh8vzAc1Qckj0nseY5cSrb1jrLu/
X-Google-Smtp-Source: ABdhPJwoL+BPQDdN+4/9BA4ntvH1ksq06YRk50VoXlylW2TAmS2dclI1ZYcU4jrgP2URS7aR1rODjg==
X-Received: by 2002:a63:77ca:0:b0:386:25a5:5ed with SMTP id s193-20020a6377ca000000b0038625a505edmr1480295pgc.30.1648251365966;
        Fri, 25 Mar 2022 16:36:05 -0700 (PDT)
Received: from localhost.localdomain (c-73-223-190-181.hsd1.ca.comcast.net. [73.223.190.181])
        by smtp.gmail.com with ESMTPSA id y4-20020a056a00190400b004fac0896e35sm7433165pfi.42.2022.03.25.16.36.04
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Mar 2022 16:36:05 -0700 (PDT)
From:   Joe Damato <jdamato@fastly.com>
To:     linux-man@vger.kernel.org, alx.manpages@gmail.com,
        mtk.manpages@gmail.com
Cc:     Joe Damato <jdamato@fastly.com>
Subject: [PATCH] vmsplice.2: Expand on the absence of SPLICE_F_GIFT
Date:   Fri, 25 Mar 2022 16:35:15 -0700
Message-Id: <1648251315-2837-1-git-send-email-jdamato@fastly.com>
X-Mailer: git-send-email 2.7.4
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The description of SPLICE_F_GIFT explains what happens when the flag is
specified, but it was unclear to whether data spliced into the pipe with
vmsplice, but without SPLICE_F_GIFT, is copied immediately or simply mapped
into the kernel and copied by splice(2) SPLICE_F_MOVE later.

Tests and kernel code reveal that vmsplice(2) maps the memory into the
kernel and it is copied later; this means applications can't e.g. free the
memory after a successful call to vmsplice(2) even when they omit the
SPLICE_F_GIFT flag.

Signed-off-by: Joe Damato <jdamato@fastly.com>
---
 man2/vmsplice.2 | 36 +++++++++++++++++++++++++++++++-----
 1 file changed, 31 insertions(+), 5 deletions(-)

diff --git a/man2/vmsplice.2 b/man2/vmsplice.2
index 9102c4c..b96bcc6 100644
--- a/man2/vmsplice.2
+++ b/man2/vmsplice.2
@@ -116,17 +116,43 @@ otherwise the page cache and on-disk data may differ.
 Gifting pages to the kernel means that a subsequent
 .BR splice (2)
 .B SPLICE_F_MOVE
-can successfully move the pages;
-if this flag is not specified, then a subsequent
-.BR splice (2)
-.B SPLICE_F_MOVE
-must copy the pages.
+can successfully move the pages.
 Data must also be properly page aligned, both in memory and length.
 .\" FIXME
 .\" It looks like the page-alignment requirement went away with
 .\" commit bd1a68b59c8e3bce45fb76632c64e1e063c3962d
 .\"
 .\" .... if we expect to later SPLICE_F_MOVE to the cache.
+
+If
+.B SPLICE_F_GIFT
+is not specified, the kernel will still map
+the memory into
+.I fd.
+No copy is made during the invocation of
+.BR vmsplice (2)
+itself and so the application must take care when modifying the data after
+successful calls to
+.BR vmsplice(2).
+Subsequent
+.BR splice (2)
+.B SPLICE_F_MOVE
+will make a copy of the data that was mapped into
+.I fd
+during
+.BR vmsplice (2).
+Thus, any modifications to the memory after a successful call to
+.BR vmsplice(2)
+will appear when
+.BR splice(2)
+.B SPLICE_F_MOVE
+generates its copy.
+Once usage of
+.BR splice(2)
+is complete and the pipe is closed, the application will be the only user
+of the data and can freely modify the data as needed (e.g. by
+overwriting it, releasing the memory to the allocator, etc).
+
 .SH RETURN VALUE
 Upon successful completion,
 .BR vmsplice ()
-- 
2.7.4

