Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 22F2930E2B4
	for <lists+linux-man@lfdr.de>; Wed,  3 Feb 2021 19:44:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233011AbhBCSnU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 3 Feb 2021 13:43:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53710 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232927AbhBCSnT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 3 Feb 2021 13:43:19 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1350C061573
        for <linux-man@vger.kernel.org>; Wed,  3 Feb 2021 10:42:39 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id d16so366433wro.11
        for <linux-man@vger.kernel.org>; Wed, 03 Feb 2021 10:42:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=aW72H/6yoo0Cyij5AQXJJ2iI0lNDeP0d6kkWVdWrIaA=;
        b=Wt3v/IKE3i7f9LR1l+8uApT2QvmdJIzbrYC1JGsJ+vwlWLQqFCYR7kNvc5rR4LtnIv
         WAE7oPzD9jJQn8VL2/2wUgSzvInjGk3nRUSjF2IS5r/kDnOqetph+tMtKfXpFCqz5Hwd
         jzG+RslO+w0l9rHkAgGI+evKrbH/GgnnoYOpl83xqiz7t627/XyaYDeHHGoenskramZ1
         4Nolw5EOsTIu3SHkrTLuloMaq0MXrKaN2Nbh4p6ePH4mpgtEQB7zPDK5zrR+LM02ckrR
         NYgGBQERwd0v/yY4VWboYG0kQ2OhWN8oaFLPt+/2TJWAqhZaPSxPFbBgj53SZOVxD8t3
         LsOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=aW72H/6yoo0Cyij5AQXJJ2iI0lNDeP0d6kkWVdWrIaA=;
        b=rxDJ8KqKq132dsBVBSeXHtui65pwZM6qaxVKhAe1OWcO7A8SvelUzW3ylIf75gNcNg
         R16Ss4ihlDRcU4ThDYf8qyvpOOyOoiYMBYkOxbyGgE4RAyO5E298BErJFbBFA2oTxUfa
         mZr1Vf6idtNL1Y45PykY2mKh/CNZwVbtUUn27fNRZ4zIest9wFmittyjYbO6ykuz71jl
         T4bWkn1+mgPJhVzTwdTM47cjFKmrOFgSMfDChHGUXbMK/wEOV/VsFTuvAIQJLUir2eqM
         ZHBGAEX+/k3O/OpoOq5iDNMHlKCJe5oLKKHsZYPf0FA+UVg+FaJV2TvBVcj84UFOVdBx
         hmjg==
X-Gm-Message-State: AOAM530otL+86tYU0CoZFFSzVmTW4D/UKn1rF8oPJPJpG+bsKgTaVk1k
        RTobbjaWmE6FXKywgVbOH2U=
X-Google-Smtp-Source: ABdhPJwNZpFyyAFZAjBP/7dxOjkwH3eSmE41kzKQP6wbkkt51+iwdM5J+HQnOcJUCBKWw6Y5aiMwmw==
X-Received: by 2002:a05:6000:2cf:: with SMTP id o15mr5034868wry.184.1612377758390;
        Wed, 03 Feb 2021 10:42:38 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id w4sm5111534wrt.69.2021.02.03.10.42.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Feb 2021 10:42:38 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] s390_guarded_storage.2: tfix
Date:   Wed,  3 Feb 2021 19:42:27 +0100
Message-Id: <20210203184225.153750-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/s390_guarded_storage.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/s390_guarded_storage.2 b/man2/s390_guarded_storage.2
index af7ad5baf..93988eead 100644
--- a/man2/s390_guarded_storage.2
+++ b/man2/s390_guarded_storage.2
@@ -145,7 +145,7 @@ This Linux-specific system call is available only on the s390 architecture.
 The guarded storage facility is available beginning with System z14.
 .SH NOTES
 Glibc does not provide a wrapper for this system call; call it using
-.BR syscall (2)
+.BR syscall (2).
 .PP
 The description of the guarded storage facility along with related
 instructions and Guarded Storage Control Block and
-- 
2.30.0

