Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C68B67788E7
	for <lists+linux-man@lfdr.de>; Fri, 11 Aug 2023 10:26:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233273AbjHKI0g (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Aug 2023 04:26:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48964 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231617AbjHKI0g (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Aug 2023 04:26:36 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1A1E2D43
        for <linux-man@vger.kernel.org>; Fri, 11 Aug 2023 01:26:35 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-3fe5c0e57d2so15072375e9.0
        for <linux-man@vger.kernel.org>; Fri, 11 Aug 2023 01:26:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691742394; x=1692347194;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=nq4b+QsshUFfqL9WcBnhqaRtTL7+ivCmRrByHzHpC7c=;
        b=OrP8rbVDfm0XFbXNzcJHWY80zsaXS8m73OcOdDarDbXKU8M1BRBJMd753T2lmfowyX
         gAHYg5VX7+WYiDpaJVdoHp8WSAXzBE6CLbzNADYLpZx2X/M8qEsVCuiH2Jqde3ChZslB
         Tow43FE6ThaNxUmT4VW+gcmFIvyfpc8ZjHASAiwmzK8nUI0tBjN1AWZeoHFWKOMAEg7g
         ixfKM9vI1IBzG+cMbYzlUVmYuoNpBAzn4TtcpHeSWx7+DVaiYQysKgkHxu8kaxFwHJ2e
         PEI7LmtShGayR1sZyxVELV0r6Jd2kZlwaEmLs+HUlpO4ocP0SnWpr0qexKLVCY+Xqtwl
         ekGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691742394; x=1692347194;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nq4b+QsshUFfqL9WcBnhqaRtTL7+ivCmRrByHzHpC7c=;
        b=i5G9MerdoleGd1MtddMcZ4NrdRq9UUaKEbAuYbxCwm34cA9zsA/Wv28tQUa3RGrowN
         0tMbURHjVvEN1JJTtCZ9uX35al11ceJKshk9PDDFES4ZZogJI6FTOD3U04dqt45Vv+9W
         ddeO/EpdgaTcJIU2MyADZReZI8QdHOGWURIX7gvECgQ84WlpczJcJEzgrsXhe8D4vIU/
         4W6su/0/FdAvVf/QqJZtxm4yJQSy0/O4rdExgUB0hlo9MUi+mkp3EzewxZjQMceqzgYx
         6jaO6Rv8s/J3nu7FHlLaTCF4NMQHuDE2a1aE60+63cJXNSHejuWz9YHBKDSC1SCOuaTo
         0ORA==
X-Gm-Message-State: AOJu0YxXuB7AzRAbfZ9wyWfxGw3prnV7H8IdK4/D9DfJG2iFB3yQcU9M
        TUGP7J0kml3pdDtVJrpDoAg=
X-Google-Smtp-Source: AGHT+IEy/eqtJ8/8HbbbBaH0Tc7CDP0SsqxZqLV/fw9esboL2Nf5opEsTUWHyv6uD+ejaC4E7ETzsw==
X-Received: by 2002:a05:600c:2258:b0:3fe:2f80:8394 with SMTP id a24-20020a05600c225800b003fe2f808394mr1048843wmm.15.1691742393807;
        Fri, 11 Aug 2023 01:26:33 -0700 (PDT)
Received: from nixos.fritz.box ([46.128.124.21])
        by smtp.gmail.com with ESMTPSA id j13-20020a5d452d000000b003179d7ed4f3sm4706780wra.12.2023.08.11.01.26.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Aug 2023 01:26:33 -0700 (PDT)
From:   Sascha Grunert <saschagrunert@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org, Kees Cook <keescook@chromium.org>,
        Sascha Grunert <saschagrunert@gmail.com>
Subject: [PATCH] proc.5: add Seccomp_filters entry
Date:   Fri, 11 Aug 2023 10:26:27 +0200
Message-ID: <20230811082627.403498-1-saschagrunert@gmail.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The field exists since Linux 5.9 (818c03) but have not been documented
yet.

Signed-off-by: Sascha Grunert <saschagrunert@gmail.com>
---
 man5/proc.5 | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/man5/proc.5 b/man5/proc.5
index 04b45ccb7..c80b93e24 100644
--- a/man5/proc.5
+++ b/man5/proc.5
@@ -2551,6 +2551,7 @@ CapBnd: ffffffffffffffff
 CapAmb:	0000000000000000
 NoNewPrivs:     0
 Seccomp:        0
+Seccomp_filters:        0
 Speculation_Store_Bypass:       vulnerable
 Cpus_allowed:   00000001
 Cpus_allowed_list:      0
@@ -2809,6 +2810,12 @@ This field is provided only if the kernel was built with the
 .B CONFIG_SECCOMP
 kernel configuration option enabled.
 .TP
+.I Seccomp_filters
+.\" commit c818c03b661cd769e035e41673d5543ba2ebda64
+Number of attached seccomp filters to the process
+(since Linux 5.9, see
+.BR seccomp (2)).
+.TP
 .I Speculation_Store_Bypass
 .\" commit fae1fa0fc6cca8beee3ab8ed71d54f9a78fa3f64
 Speculation flaw mitigation state
-- 
2.41.0

