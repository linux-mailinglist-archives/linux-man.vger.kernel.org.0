Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 751E864F12B
	for <lists+linux-man@lfdr.de>; Fri, 16 Dec 2022 19:41:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231944AbiLPSlY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 16 Dec 2022 13:41:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43558 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231836AbiLPSkz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 16 Dec 2022 13:40:55 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 11D921145D
        for <linux-man@vger.kernel.org>; Fri, 16 Dec 2022 10:40:48 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id i187-20020a1c3bc4000000b003d1e906ca23so1816364wma.3
        for <linux-man@vger.kernel.org>; Fri, 16 Dec 2022 10:40:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=z+dFqrz41AaefsJ3xYw39ElD+Vt5sIXjlF0Nz+BMAms=;
        b=RGx9ytmtnTbUQaWEY5zslzsLB2v9WPQiO3rCGeu/KhgKrDksJoDG1VHkSM4rApYl20
         uRB6QjqEdg0Zy2bI6JQ8Os/as1MeBc4ptYZk52kBzeg5QZXMDfsU4tAncunjHG7/PV5O
         +lBk0S7nGPKZGaWB0TcjpXk7u3LOzo64yYmXSr5NWF4qHZ28egku8rFeTpXX9K5wkH+i
         ZAWGU+hOHMm5Ne/2X4zwBcAbpfeKjqjCQWHQNsX3GJpIDUq8/tdRGaYJMBJBMhADDjZt
         ETXZNkGbZ1q5qtSJzvygqSraxhdEjmQEqjUMl5IMDYKfIzObgt2UpnXV+p6BhFDyIpEI
         Hjow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=z+dFqrz41AaefsJ3xYw39ElD+Vt5sIXjlF0Nz+BMAms=;
        b=f3SSqOWLvlBjOspuAwAbUjI5vkmidIpFg60vemQoE3vn3Xv8SoE8VYp/qJTriWvcY1
         XCcmt2ppuF+rkCPJKxVLWCGsgNfw3zKn3sjhvMI+GpPJ7jIT4VbssxZ2lr4BvraHfsnZ
         kwUNbGC0o8qv4PvkE0KQope3QHRmAPJ97GoY+qD73afOABjiu6hrM48UagsecUizaY3r
         se6wmtQVmeiikfBe8ME5cv/2v1JhAea9Ab8j3CVb15tnekSKMxYCgwDRGVfa49/hgPHg
         H+kROMq+KHlBCF/KMV0fWmiJhEYydJm93pFg5jNaajNtzXLTsYjNrxQHKmmJGoJm8sWw
         /40A==
X-Gm-Message-State: ANoB5pkQIAO/EiPewZ1hVlArexefuYhqykFWjvng4Cpv/u4QCGfdGMpo
        etbglRitm8XftJzF/eFEt5C6unLmlqs=
X-Google-Smtp-Source: AA0mqf5zhM+/f+pBzzGXougejX4rTM79Gwkytsm34QVsKNtUOvzipkmoWnELP0pIeKMrcJe6o06eQg==
X-Received: by 2002:a05:600c:384b:b0:3cf:4ec9:385d with SMTP id s11-20020a05600c384b00b003cf4ec9385dmr26698855wmr.19.1671216046554;
        Fri, 16 Dec 2022 10:40:46 -0800 (PST)
Received: from asus5775.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id j42-20020a05600c48aa00b003d1f3e9df3csm9533082wmp.7.2022.12.16.10.40.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Dec 2022 10:40:46 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>,
        Serge Hallyn <serge@hallyn.com>,
        Iker Pedrosa <ipedrosa@redhat.com>
Subject: [PATCH] utmp.5: STANDARDS: Specify that it's an XSI extension
Date:   Fri, 16 Dec 2022 19:40:35 +0100
Message-Id: <20221216184034.9216-1-alx@kernel.org>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Cc: Serge Hallyn <serge@hallyn.com>
Cc: Iker Pedrosa <ipedrosa@redhat.com>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man5/utmp.5 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man5/utmp.5 b/man5/utmp.5
index e7d85ce8b..b6d2d3337 100644
--- a/man5/utmp.5
+++ b/man5/utmp.5
@@ -221,7 +221,8 @@ .SH STANDARDS
 POSIX.1 does not specify a
 .I utmp
 structure, but rather one named
-.IR utmpx ,
+.I utmpx
+(as part of the XSI extension),
 with specifications for the fields
 .IR ut_type ,
 .IR ut_pid ,
-- 
2.38.1

