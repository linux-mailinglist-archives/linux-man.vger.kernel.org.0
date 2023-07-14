Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 608C575326D
	for <lists+linux-man@lfdr.de>; Fri, 14 Jul 2023 09:01:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235139AbjGNHBU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 14 Jul 2023 03:01:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45302 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235130AbjGNHBT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 14 Jul 2023 03:01:19 -0400
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com [IPv6:2607:f8b0:4864:20::b49])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E7003270D
        for <linux-man@vger.kernel.org>; Fri, 14 Jul 2023 00:01:17 -0700 (PDT)
Received: by mail-yb1-xb49.google.com with SMTP id 3f1490d57ef6-c64521ac8d6so1373839276.1
        for <linux-man@vger.kernel.org>; Fri, 14 Jul 2023 00:01:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20221208; t=1689318077; x=1691910077;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=/G9SpbCC/vS6DXYOrqb35JQd3l6CQ7F8tyliEEmReyU=;
        b=katJrE+2j4ObBunvBS9MGzSC+HrrzkmVr1jAhbM5nu4waCU9+e3Dt8maOk6H1zexdH
         Ri19/WmitzIWPPwDWChy2RuEzGFM9eGtxaFEJXy3MQgWNVIxaxkbdkY7rCwXrsiLdVC3
         Kb1wxK2y05jNrdV6SIP/s/wQzzLaBolb0x4V1dWEMpfx2cm6sTbUa4Q7laUluVAx9NA2
         wYLyTEr1mn0LARqrJCVXUyRbiV2NYQfJuGg75tOASoVF9DpmEAWD91vKFBfJNdGAmPdR
         iRWdCn/6msGMLxwPG9wF+5YrwnqYtGQFMBi+IT6ai+WGlxdwPFCi38tLZvV85NRRb4Y0
         J/XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689318077; x=1691910077;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/G9SpbCC/vS6DXYOrqb35JQd3l6CQ7F8tyliEEmReyU=;
        b=B8cBNpgmz+YFLInQm5Ok/88vS44Ce+X+jaF9V5Q5DB+C5kbRjAntf50bWMGtIN22hG
         AKkjj4F5DmSnP0QSc0PkgdOwhgpVrtLYko/4V4MayswgHZ6ETk8MqEU+bOTfAL92ysL4
         c5CSDhEo8RmT7ZKb76ejg1ijdZIPAFlOoJI4IPdeZys95UhADVLVzdeaAvPnXxboKoBr
         d9cv+IDAvmBpKOvprf/k3nrpS0qd0U4ZslC9vX5+Aw/6zPXMLd6QeoFmR8KRpBViQ7Tj
         WuU/GsVNcTInvc6Y4urX5d5Nl69+TfruIAd2dCbtAcV9SNnly0HzAxGDatytwjtiI+g+
         UUJw==
X-Gm-Message-State: ABy/qLZQMPcGJ0+O8Q3AyNeLxSOQuLZLy1iQraz2tfq3O7Se6VI2by4D
        /LsDCO/TpfzJmfNfmBcZOPsdSWl/8/ST
X-Google-Smtp-Source: APBJJlHGhFXmL99RnBjSDWLE8uqjqc6umDpokAQ9HyCP5oD9kb6MDmAoN0mAuck1g/Fw/ZBP4LVM6N9N56vo
X-Received: from maskray.svl.corp.google.com ([2620:15c:2d3:205:f11e:1cbd:819c:6597])
 (user=maskray job=sendgmr) by 2002:a5b:98d:0:b0:c66:b847:544d with SMTP id
 c13-20020a5b098d000000b00c66b847544dmr23182ybq.1.1689318077243; Fri, 14 Jul
 2023 00:01:17 -0700 (PDT)
Date:   Fri, 14 Jul 2023 00:00:43 -0700
Mime-Version: 1.0
Message-ID: <20230714070043.275611-1-maskray@google.com>
Subject: [PATCH] ld.so.8: Correct linker option name
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

The linker option that sets the DF_1_NODEFLIB flag is -z nodefaultlib
instead of -z nodeflib.

Signed-off-by: Fangrui Song <maskray@google.com>
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

