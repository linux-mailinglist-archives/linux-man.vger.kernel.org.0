Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A94EB77B437
	for <lists+linux-man@lfdr.de>; Mon, 14 Aug 2023 10:34:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229999AbjHNIdn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 14 Aug 2023 04:33:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39314 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233577AbjHNId1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 14 Aug 2023 04:33:27 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 136C693
        for <linux-man@vger.kernel.org>; Mon, 14 Aug 2023 01:33:26 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-3fe426b8583so41286645e9.2
        for <linux-man@vger.kernel.org>; Mon, 14 Aug 2023 01:33:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692002005; x=1692606805;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BvtGH+3l5dGQzzi+wolUlkVG1aLAynVcFGbAxxJ+22o=;
        b=ghar1Oi4LWu75T1F+HcX4cRBnFxnLynQ4dzckdy81Gzt5JOLa3xMescUMu2+bCPA59
         I2HdFVHNczX55RQfxfTkShv5hckzvnXVAQi03691CQ1Gom6YRSYfLQvvjyOO6XkZ/cnO
         H8JB5wAw2DTfCpaMWBmsShM4vBzuu4DXPlYQf78CkVVchub+P5DPbq121NIU4pchV2iw
         jGIgWVgI2TEspVgRuSy1+I6P3ZTpBayQBLKhV6TE7OobHWXHV4AKG8TfeX+PlN1Oxurl
         15U5H1NOMF4gbA/lrHA5X0PcIw8ZgLCMpmQCpZtweDxHoeCb0yCBYH50KHFJKJCTF0Ev
         IUSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692002005; x=1692606805;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BvtGH+3l5dGQzzi+wolUlkVG1aLAynVcFGbAxxJ+22o=;
        b=M+RIk+VmtcEPp4O9xaq7BQL5eJAG0CpC+Bx4PfTYbI7m8I2H9HrTjp2jblgL0XyDkb
         qbr4CCtKgTo7HExKbWzPdSR5AJeYGOkBVJ5Th6uek/uxyQelEyqezCg5/7osUqAPsa5I
         DZz+TCWGKSZsj9Rsyll5n7851j1CUrG02M+FW5Vp1PaQMoOyPHY9WUdcqHd+9TJrQ7xs
         g3reGkKbT+IiZRd5A8JbBOmN6sMoPhSZBCvJ4lyz8CC8eBRDHzzjmn3S9YM+12PtYcbv
         HvH9h6RTAusPinQwBUDtFBLdIMYUfqYffWkkuX45FZSZ0dwIV1T0mQJqa8u+Z3aUVOUz
         uHow==
X-Gm-Message-State: AOJu0YwF9/SHql0d8Gp/jG8PMnKUe7MU3PAZsZ9bmcrdVIgDIe3p5yvu
        HxACLTYjB1eXevIYIaPn676EO97WG2V6Dw==
X-Google-Smtp-Source: AGHT+IFrAnwUUbOF1w7s59oScR74EyqJ3FBVli7mQKEnYUR7UjVigo7BSUTJ/Hlc00b8RNAI1+Lb0w==
X-Received: by 2002:adf:f98c:0:b0:319:6fff:f2c1 with SMTP id f12-20020adff98c000000b003196ffff2c1mr3182061wrr.38.1692002005134;
        Mon, 14 Aug 2023 01:33:25 -0700 (PDT)
Received: from nixos.fritz.box ([46.128.124.21])
        by smtp.gmail.com with ESMTPSA id w4-20020adfcd04000000b003176eab8868sm13749038wrm.82.2023.08.14.01.33.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Aug 2023 01:33:24 -0700 (PDT)
From:   Sascha Grunert <saschagrunert@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org, Kees Cook <keescook@chromium.org>,
        Sascha Grunert <sgrunert@redhat.com>,
        Sascha Grunert <saschagrunert@gmail.com>
Subject: [PATCH v2] proc.5: add Seccomp_filters entry
Date:   Mon, 14 Aug 2023 10:33:21 +0200
Message-ID: <20230814083321.503554-1-saschagrunert@gmail.com>
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

From: Sascha Grunert <sgrunert@redhat.com>

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
+Number of seccomp filters attached to the process
+(since Linux 5.9, see
+.BR seccomp (2)).
+.TP
 .I Speculation_Store_Bypass
 .\" commit fae1fa0fc6cca8beee3ab8ed71d54f9a78fa3f64
 Speculation flaw mitigation state
-- 
2.41.0

