Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3871958CF9C
	for <lists+linux-man@lfdr.de>; Mon,  8 Aug 2022 23:22:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244371AbiHHVW4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 8 Aug 2022 17:22:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50668 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234943AbiHHVWz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 8 Aug 2022 17:22:55 -0400
Received: from mail-io1-xd2c.google.com (mail-io1-xd2c.google.com [IPv6:2607:f8b0:4864:20::d2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 938B11834C
        for <linux-man@vger.kernel.org>; Mon,  8 Aug 2022 14:22:54 -0700 (PDT)
Received: by mail-io1-xd2c.google.com with SMTP id g15so1670011iob.0
        for <linux-man@vger.kernel.org>; Mon, 08 Aug 2022 14:22:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:subject:message-id:mime-version:content-disposition;
        bh=fleHPgxPdnQ5RjlU7agFrtf4TXHTqDkj49Ax0IhNpLY=;
        b=oXiOVcBYtkzUv1CNDBHZkELuKTZB6ofOyeIlRpv+5rLaKhmSQVllaaTHUc/00N2Y3S
         GWTjkkhgUVni6pWuve+R64QVyNRazxRhi6sJiek8aQEsf44aNQjgG4hQ6R4u+scMwxY4
         +XqFi8iKvcuPlUILAbvMoVg2LxR9snwZaDifCbQFTT/I4Bu70of5OxGHeuVzFNJXCkJ6
         n2m0zsqcDgfvRQMAD08dZ2Mb5ZrXVMd+IrFhuKTA2X3yr1PC2V4GyETG8YEt2x75V6SG
         G9yxEwNxZzpcjq4RUs4rgUIZAPKE8dQ+FOp/zk2tcmsH+/+f05VkTYHfSp141hCh8dMW
         mqHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition;
        bh=fleHPgxPdnQ5RjlU7agFrtf4TXHTqDkj49Ax0IhNpLY=;
        b=UYvbyBX18NQjDra782jOw9L9F7Cx+jhC53vPSUivEPaHM46LdW77GxfQk5Da0kwByt
         QK7wQ1kbIhWS8fsBygeM5kxlZLGBN3qJAAQ8dG40ER/2kqLsHctz5G/t9M4H1AkaouBK
         ej6VEw6sq7YHI5AlL3ZQWnTA9v9n+xm/8fmmPUfrxkwVm0KkzjD1MGPozW5NRwceMNS+
         UQuIt8k5jfaWY+MfOlANJonpkCWa3+ihGjMyDWS2MSQevclsCjyVLNqycKCosOJe1NQE
         i4abp+N5pu2HJfN001Xi8Pu9mYSZJSfk9SswnFNKvRhyIoKaYjCqe8m4TTi+Tf6AV94K
         sZeg==
X-Gm-Message-State: ACgBeo2BVVOU4d7y7pl9vXGJBPd3oI9B4ArNWY++aC768TXxrX38dyZu
        kJX5U7bjcg4A1ecuIPsCnTZrT05hscU=
X-Google-Smtp-Source: AA6agR5GjmyVZLkVVpk6ND8tLEjKWYEbsVPFwrUPYCAW3u86qYmmgYhlKL5UQ5cssrs1nUQbGTm0UQ==
X-Received: by 2002:a6b:cdcd:0:b0:67c:9b5b:2fa with SMTP id d196-20020a6bcdcd000000b0067c9b5b02famr8315134iog.195.1659993773664;
        Mon, 08 Aug 2022 14:22:53 -0700 (PDT)
Received: from isa (096-039-137-127.res.spectrum.com. [96.39.137.127])
        by smtp.gmail.com with ESMTPSA id k5-20020a02cb45000000b00342a7e76844sm5544120jap.159.2022.08.08.14.22.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Aug 2022 14:22:53 -0700 (PDT)
Date:   Mon, 8 Aug 2022 15:22:50 -0600
From:   Brett Holman <bholman.devel@gmail.com>
To:     linux-man@vger.kernel.org, alx.manpages@gmail.com,
        mtk.manpages@gmail.com, hannes@cmpxchg.org
Subject: [PATCH] cgroups.7: Document memory_recursiveprot mount option
Message-ID: <20220808212250.6cnl3zjabvyyc52r@isa>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Brett Holman <bholman.devel@gmail.com>
---

Added in 8a931f801340c2be105 by Johannes Weiner and documented in
Documentation/admin-guide/cgroup-v2.rst, this mount option is
missing from the mount option list in cgroups.7.

 man7/cgroups.7 | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/man7/cgroups.7 b/man7/cgroups.7
index 2496c06c1..7b5a54360 100644
--- a/man7/cgroups.7
+++ b/man7/cgroups.7
@@ -1888,6 +1888,12 @@ mount option.
 The kernel supports the
 .I nsdelegate
 mount option.
+.TP
+.IR memory_recursiveprot " (since Linux 5.7)"
+.\" commit 8a931f801340c2be10552c7b5622d5f4852f3a36
+The kernel supports the
+.I memory_recursiveprot
+mount option.
 .RE
 .SH SEE ALSO
 .BR prlimit (1),
-- 
2.34.1

