Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BF3C97788DF
	for <lists+linux-man@lfdr.de>; Fri, 11 Aug 2023 10:24:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230153AbjHKIYC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Aug 2023 04:24:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47166 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229610AbjHKIYC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Aug 2023 04:24:02 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B20F2723
        for <linux-man@vger.kernel.org>; Fri, 11 Aug 2023 01:24:01 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-3fe4b45a336so15053905e9.1
        for <linux-man@vger.kernel.org>; Fri, 11 Aug 2023 01:24:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691742240; x=1692347040;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=nq4b+QsshUFfqL9WcBnhqaRtTL7+ivCmRrByHzHpC7c=;
        b=YUYDJoiHj1V70gwOojfKIAlHmYlxrD+owz6u7LKCqY7b/E9vpXtUNb/mBhOzZn4QTh
         FuZwmPESxn8VAC1Uqip1Lg3y5MtgRSJYqJV+iNTor7dikeZ686tdIHUujxr0TRZ4tgDW
         pXPv8pbCPVdNmxSOQ0zD0zuH74tBIVsG7MTudBHuC4s/GwcydyhXSv2ucfsMO46U6Wmz
         59cYFyF7WTWypSwObbYVIcfDJpMWbXfCFX6qYrVKBnlOgxXev4cNU/Xn5h3kd9CfCRcB
         3A6cQ+bW+qbl9QExU+kELWcXiaq1lgNKthxE6/1n78bByiLEXU/IhZv0/n9vMTKUjXgk
         2r8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691742240; x=1692347040;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nq4b+QsshUFfqL9WcBnhqaRtTL7+ivCmRrByHzHpC7c=;
        b=ZskPnAUvnO+GC4ZeT6geY/ZnRR0Dytv/anNp753u1v1ojZDSIEeQfSfUzKu/2AnF1c
         yDCE2AREL3pPjgwxx6ViDyoc0qzR7Jja2kt6uvpWq7SxrU4eXkGhhdSDvUNPyCPaJgyv
         zpS+yvK7ztfgrrFtQEXXbcc9pSyYFQ/d8HFOKFQFjSXrHQ6ZVQ0Kp5aPjt1xveip5n0X
         Uyg1/Ss9SO4BYn9w11u5MU/Y0GtnRVTxlY2QWeL+/1A2ZTkB2l4EsxBVJiC11HBFy7//
         vmAvdw+4OUjpnO6kGssNOA5JO6o5FZDz63HvhNNN9AWBwg6dOgNfqe5Tt97enx5Ni/bL
         zqcA==
X-Gm-Message-State: AOJu0YzWAVVTXg0MSMbFv0j49BJ0PAvjy9n11rMhRd5c3151HQzSkykX
        9k+bs+vnQMqSPLb1hus7ZC2UoxaJgIwefCvX
X-Google-Smtp-Source: AGHT+IEVFc7osL/3eBMGSiQ1lPWZAX21qT0d0IvzOR4FE5Hs7jiJV1Y9TOKcpwSXOc7iefS1w3RIJA==
X-Received: by 2002:a7b:c045:0:b0:3fe:795:712a with SMTP id u5-20020a7bc045000000b003fe0795712amr1061979wmc.27.1691742239703;
        Fri, 11 Aug 2023 01:23:59 -0700 (PDT)
Received: from nixos.fritz.box ([46.128.124.21])
        by smtp.gmail.com with ESMTPSA id h14-20020a05600c260e00b003fa8dbb7b5dsm4469353wma.25.2023.08.11.01.23.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Aug 2023 01:23:59 -0700 (PDT)
From:   Sascha Grunert <saschagrunert@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org, Kees Cook <keescook@chromium.org>,
        Sascha Grunert <saschagrunert@gmail.com>
Subject: [PATCH] [PATCH] proc.5: add Seccomp_filters entry
Date:   Fri, 11 Aug 2023 10:23:40 +0200
Message-ID: <20230811082340.392669-1-saschagrunert@gmail.com>
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

