Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C507574B2F1
	for <lists+linux-man@lfdr.de>; Fri,  7 Jul 2023 16:17:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233016AbjGGORo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 7 Jul 2023 10:17:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53150 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232672AbjGGORo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 7 Jul 2023 10:17:44 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F2311B6
        for <linux-man@vger.kernel.org>; Fri,  7 Jul 2023 07:17:42 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-3fbc63c2e84so21269585e9.3
        for <linux-man@vger.kernel.org>; Fri, 07 Jul 2023 07:17:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cloudflare.com; s=google; t=1688739461; x=1691331461;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PnuEPM1hNKqw+l6qFcPNpsBelZIpl2kdcJCP3OvMVSQ=;
        b=wKtdnRD4sApLorIfoZHeZDegXEzuAlx/HXbbvoxAxCKx7DsdmQxunPU97YeBgO4+Gm
         45Mv17mPvExqf4OqHkDrcd4IRPgGUeqP+IjDdYiK0e6q2Cm0muEFjGXrUzc2TIiB7f3W
         zxFHFViTTNyF9ZkRLTU4r754uIdfAdSV2ECPA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688739461; x=1691331461;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PnuEPM1hNKqw+l6qFcPNpsBelZIpl2kdcJCP3OvMVSQ=;
        b=TeB57UqYdOruFBLFIHyysQMU14SfoAv2ZPpGQGq/a4GywEgI8uzZQJLK97htWEb1d6
         GtXBckSQQ3w4UnVXqMXdb9ovRCvkx0XIr9ySOLCJy9jHa412W9YdMct6QrSQ1vLz+ALk
         /K0q6QnFntXSUjSNXO3etydVE/IGSZj7C61/D3hEUsNbIZNLPduUXk4WtuCn4OnmR9MM
         rL5n0PzvDQXLwP7L0fOaFvWcbTHBvK7JqS81KuIbvSO2n5nNgVUt9EYwg99D8TjOjiy8
         LR+gKURqdMgXfR8Z2zw0BcDgpo/x7igUqFsWQDca4hDVDACOp25u1Qz0rXzCwN03LVC1
         2ddA==
X-Gm-Message-State: ABy/qLbrs+qGJIJ2i1Q+P1zibYLxzUmhl8Ws8NX2X4RpYm7G6KmSOy0B
        sFt3dBIim5jkLSmPqC687C/FZQ==
X-Google-Smtp-Source: APBJJlG4vVYLXg2ZIL5oIJ/D5OBV4MpOdvE7AJ1QXjjsQSd/u1NK0w1yAIdkxA0cHu/rLK7oABQ4Dg==
X-Received: by 2002:a05:600c:294a:b0:3fc:1a9:7900 with SMTP id n10-20020a05600c294a00b003fc01a97900mr509906wmd.16.1688739460818;
        Fri, 07 Jul 2023 07:17:40 -0700 (PDT)
Received: from cloudflare.com (79.184.122.64.ipv4.supernova.orange.pl. [79.184.122.64])
        by smtp.gmail.com with ESMTPSA id c5-20020a7bc005000000b003fbdbd0a7desm2578237wmb.27.2023.07.07.07.17.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Jul 2023 07:17:40 -0700 (PDT)
From:   Jakub Sitnicki <jakub@cloudflare.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, kernel-team@cloudflare.com,
        Simon Horman <simon.horman@corigine.com>
Subject: [PATCH RESEND] ip.7: Document IP_LOCAL_PORT_RANGE socket option
Date:   Fri,  7 Jul 2023 16:17:39 +0200
Message-ID: <20230707141739.1171440-1-jakub@cloudflare.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Linux commit 91d0b78c5177 ("inet: Add IP_LOCAL_PORT_RANGE socket option")
introduced a new socket option available for AF_INET and AF_INET6 sockets.

Option is available starting from Linux 6.3. Document it.

Reviewed-by: Simon Horman <simon.horman@corigine.com>
Signed-off-by: Jakub Sitnicki <jakub@cloudflare.com>
---
Resending the man page update now that the feature has been released.
Previous submission can be found at [1].

I'm the author of the feature. We did a technical review of the man page text
together with the code [2].

[1]: https://lore.kernel.org/all/20230201123634.284689-1-jakub@cloudflare.com/
[2]: https://lore.kernel.org/all/20221221-sockopt-port-range-v6-0-be255cc0e51f@cloudflare.com/
---
 man7/ip.7 | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/man7/ip.7 b/man7/ip.7
index 92ecf4b3e..c97a917ff 100644
--- a/man7/ip.7
+++ b/man7/ip.7
@@ -499,6 +499,27 @@ and
 .B IP_TOS
 are ignored.
 .TP
+.BR IP_LOCAL_PORT_RANGE " (since Linux 6.3)"
+Set or get the per-socket default local port range. This option can be used to
+clamp down the global local port range, defined by the
+.I ip_local_port_range
+.I /proc
+interface described below, for a given socket.
+.IP
+The option takes an
+.I uint32_t
+value with the high 16 bits set to the upper range bound, and the low 16 bits
+set to the lower range bound. Range bounds are inclusive. The 16-bit values
+should be in host byte order.
+.IP
+The lower bound has to be less than the upper bound when both bounds are not
+zero. Otherwise, setting the option fails with EINVAL.
+.IP
+If either bound is outside of the global local port range, or is zero, then that
+bound has no effect.
+.IP
+To reset the setting, pass zero as both the upper and the lower bound.
+.TP
 .BR IP_MSFILTER " (since Linux 2.4.22 / 2.5.68)"
 This option provides access to the advanced full-state filtering API.
 Argument is an
-- 
2.41.0

