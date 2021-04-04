Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CD2AB353800
	for <lists+linux-man@lfdr.de>; Sun,  4 Apr 2021 13:59:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230458AbhDDMAC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Apr 2021 08:00:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37910 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229801AbhDDMAC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Apr 2021 08:00:02 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 94FAFC061756
        for <linux-man@vger.kernel.org>; Sun,  4 Apr 2021 04:59:56 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id r14-20020a05600c35ceb029010fe0f81519so2881055wmq.0
        for <linux-man@vger.kernel.org>; Sun, 04 Apr 2021 04:59:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=fphRg9IWRi4haT6AELJUJ99V5J0LW+3TUNTPa1MT7U8=;
        b=bQU+z/c5f6FBne0/yG9o5T3NMx5PL6DCZE8efqVXkrAP+2GMWmHteoB7ViF48Rtb4W
         j/rpamoVOAezYwq5djV9C0V+Nv2DiXIwmvxm+rHtZn33Su4fMe8aKzkwppSfE18EyWTy
         40Rxi5PJvsBU/VEPfpUR//ESSliIUNaiTYa7Q2pdkUFAJ5pAD9jt1UbfUahcEcgQPzxr
         mT9uYWxIVIkJZXgCeRgPJ8eNjFcdOI4iHFPVQS2EvhePZxbWFR60jWIVu3HXwfQNNbCs
         tyzcIgSC33iAnCVjvzwLXV3yVTEdxtP1KwhbZdOrbJajZXZ4SeaCENDXbctrGAGwgJ7e
         TyEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=fphRg9IWRi4haT6AELJUJ99V5J0LW+3TUNTPa1MT7U8=;
        b=p4Y5Rpaj+1tVC+Z1OdjjmO3uaSa0I6eYg5qblAORb2arEc1OnQcmYYJ/RC+KnfQ/7A
         1rISRRqgSr9wG6D09A7MC1fa2+RyLUBGS26vIoEVN83SqHybKuK/EoqHKhlTPWKwHwdl
         BHerxQxClM4/G4I1cCMPfE+DuMi1rOETJpx75A3xOi7PAZJYPzDuDxyitw+gh2fGdLXw
         5Y6Bdap07JF3zKDLd/RJTz/2o5PA7INcuAHlhQAi1nb3sAVSLdT/xcK64LuY/q8frMdD
         CU8UqAn/7mysT+y26Lg10rW1kii12a1iVOZnkZYY0/GB/3w+9S8PmIW0ie6rPXNBqaJA
         6F7g==
X-Gm-Message-State: AOAM5330OHv8N40gRlQrLSNaiBT9a7Jwy02Dendgs2Ne9q7T39vjZdYl
        SKQDh8o8EMOeSIQc2xK/CVs=
X-Google-Smtp-Source: ABdhPJyQPJl6rUFajANdOtnZUSjGkxtPpEnpNS8XqiXvaU5iB3TVxSWqc6apW6oCsOrH46hwQ2dXPQ==
X-Received: by 2002:a05:600c:1992:: with SMTP id t18mr20599194wmq.125.1617537595364;
        Sun, 04 Apr 2021 04:59:55 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id u2sm23786967wrp.12.2021.04.04.04.59.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Apr 2021 04:59:55 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v5 32/35] ioctl_fideduperange.2: Make clear why exactly is each header needed
Date:   Sun,  4 Apr 2021 13:58:45 +0200
Message-Id: <20210404115847.78166-33-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210403194026.102818-1-alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Only the include that provides the prototype doesn't need a comment.

Also sort the includes alphabetically.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/ioctl_fideduperange.2 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man2/ioctl_fideduperange.2 b/man2/ioctl_fideduperange.2
index 1df0628d0..82c7fdc28 100644
--- a/man2/ioctl_fideduperange.2
+++ b/man2/ioctl_fideduperange.2
@@ -25,8 +25,9 @@
 ioctl_fideduperange \- share some the data of one file with another file
 .SH SYNOPSIS
 .nf
-.B #include <sys/ioctl.h>
+.RB "         /* Definition of " FIDEDUPERANGE " and " FILE_DEDUPE_* " constants */"
 .B #include <linux/fs.h>
+.B #include <sys/ioctl.h>
 .PP
 .BI "int ioctl(int " src_fd ", FIDEDUPERANGE, struct file_dedupe_range *" arg );
 .fi
-- 
2.31.0

