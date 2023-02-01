Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 68A0868711D
	for <lists+linux-man@lfdr.de>; Wed,  1 Feb 2023 23:42:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229774AbjBAWmt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 1 Feb 2023 17:42:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57764 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229608AbjBAWms (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 1 Feb 2023 17:42:48 -0500
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7AAE28D01
        for <linux-man@vger.kernel.org>; Wed,  1 Feb 2023 14:42:47 -0800 (PST)
Received: by mail-ej1-x62c.google.com with SMTP id ml19so1091925ejb.0
        for <linux-man@vger.kernel.org>; Wed, 01 Feb 2023 14:42:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=abLb+NUSqXKNPoCuBnikKGyobOlToYswzT8N9gL3CUw=;
        b=gxkTGyyRzrhirjd/cCbmmzCtOWBmikmskxFoQsYI4w2fLxV8DE+tye2QqniCcV100I
         oRNyaMd7uOUDYqrvRaxjBNU2qcIkSAcpB5Sh62g+w9xb9WiXiPzoT0GoWGv2dRgQF6Oc
         Xk1S9+gfLDZZGcitN95KF3XjOoH4eE46JlHdLghtj+GIopdhn73KsrD+BAyNozmt5WuB
         qXGCqSFuFeHWhKeoWW+mwjwkgk7tYDFu2/nzbVSCc3Bp4q8SNedYqTd+MWjFDNrj6+mS
         5Ko4DxQKpU8au5Vv9ZZ1XgI6encsp+bL6Epqq14tcDQSM8Y6QXUbBm9d6iJwZzk7RnAe
         7q6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=abLb+NUSqXKNPoCuBnikKGyobOlToYswzT8N9gL3CUw=;
        b=xS7yzfpeKA8FNIuRI5s5sd9sXcYxoDNf0D69UsnEU0kY3Hx1WKvzhksQGv/IP6fZII
         cRoecOBDLcEeDEjZTq9gcKvghclymJl2IqauqjDTaNDPlQfb3pAqewKJXWKQc6gNaPKO
         rXAU28A1LLLIDmqxJ14adu4muKcch/v49XUmx6DDSVsq9Q51W+DV4rFWgu6eXLgmAKXH
         vU05eKhG/gBAdq+nuIulJt9hAgi+f0la/CtCJbRIWdNeAaD9j4Zkh9eBdcgsTus1yys8
         06b0Z8pdzbnZJ069UH1f9ywZInN3507WR2IMJF/EFXHpXAJC+4IgWCGySRhqWKsM4Ans
         Auxg==
X-Gm-Message-State: AO0yUKXoR1cF0322Tiwbc94URK2CNQBu7wbMLinUDk03WJzurvpPHtxT
        ndK6zRf+qUlYkll2TdHSk00=
X-Google-Smtp-Source: AK7set9LQqkAXhQvoCVOgW01ZPeciX+c0klwkBF7d+jIqPLwkSoWEYv6rwrqHINbIuNYOUUscYt+nA==
X-Received: by 2002:a17:906:6a27:b0:88d:ba89:1833 with SMTP id qw39-20020a1709066a2700b0088dba891833mr552746ejc.4.1675291366485;
        Wed, 01 Feb 2023 14:42:46 -0800 (PST)
Received: from localhost ([2a02:168:633b:1:7c09:9c3b:256e:8ba1])
        by smtp.gmail.com with ESMTPSA id o25-20020a1709061b1900b0084d4e9a13cbsm10745667ejg.221.2023.02.01.14.42.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Feb 2023 14:42:46 -0800 (PST)
From:   =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        =?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?= <mic@digikod.net>,
        linux-man@vger.kernel.org,
        =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
Subject: [PATCH 1/2] landlock.7: ffix
Date:   Wed,  1 Feb 2023 23:42:23 +0100
Message-Id: <20230201224224.16378-1-gnoack3000@gmail.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Günther Noack <gnoack3000@gmail.com>
---
 man7/landlock.7 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man7/landlock.7 b/man7/landlock.7
index 5c4ebb2ca..84e422f3c 100644
--- a/man7/landlock.7
+++ b/man7/landlock.7
@@ -196,7 +196,8 @@ to enable Landlock.
 If the command line parameter is not specified,
 the initialization falls back to the value of the deprecated
 .I security=
-command line parameter and further to the value of CONFIG_LSM.
+command line parameter and further to the value of
+.BR CONFIG_LSM .
 We can check that Landlock is enabled by looking for
 .I landlock: Up and running.
 in kernel logs.

base-commit: fd0e0d342de093001b034905acd5496069fed888
-- 
2.39.1

