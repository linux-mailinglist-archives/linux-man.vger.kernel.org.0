Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9C6FF3537FD
	for <lists+linux-man@lfdr.de>; Sun,  4 Apr 2021 13:59:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229709AbhDDL77 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Apr 2021 07:59:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37892 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229801AbhDDL76 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Apr 2021 07:59:58 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88149C061756
        for <linux-man@vger.kernel.org>; Sun,  4 Apr 2021 04:59:54 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id u5-20020a7bcb050000b029010e9316b9d5so4376060wmj.2
        for <linux-man@vger.kernel.org>; Sun, 04 Apr 2021 04:59:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=n4IfdzlOv3Inx7ndsf+2+CPchTn/xz0EzX/CVT2ZL0M=;
        b=ShcCRY2Oda2gbBki1Poz1L0G73v7Q2v8LphhrqndQznAIYSOIpfXISqvmYKkT+uVwL
         I3T3YBRfg7hNpBzlVAM5viU+V+XIuZ82ifra0aZO4ttZynN8XAwgEXLl8B+p6XVFKsK2
         iXEIjCNoZP6Ps8DBnzdqTmHQNZaxTw+MQnIUpP2hn5g1kzcwTGP+bSBKUoeUc+KZClgt
         jJ0C3MjSaR7Qg6VLWbiOkXOqobSgHpy/7j/VLTioF71pENChNE9rVOPWPMIKS6Qm7bC/
         AE1v5s4qsbIR7KASSNXBTB95xvCq63qO9RNg60iwaMawg8wlEPUXAyBkte/Fb4c1smx7
         8y3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=n4IfdzlOv3Inx7ndsf+2+CPchTn/xz0EzX/CVT2ZL0M=;
        b=SSGMipK9JjLtAqrj4XdtdxaYnk9GqMtwbGqcIOITyhrYsfFYskhMeLf4lo0MfPLWkh
         4OO+fKb8lZ7Tr5Taj2Y232Qm3rD/n9SlLstMo9+K09Og3VZ+Jp+VtfLgBARttgVmpS8K
         uDCOH8GmXlZREF/jW/NbvOgpNrgaeuyNsBqXpUHtWM4gRok4wAIFiNep9FxooEbgdgB/
         /uSClDR0BpXyVJXAnUpaDGDiiuNJskL8FXS+m+OmCMwjtufZAUOinkwZWFlj84ObXAV7
         Sl40REO8/z6/WBhH4h92lqSQY51Tf88xwkWhpatTjqNlcNc8JsjjwixwtwDE20FFE9Ku
         Z81Q==
X-Gm-Message-State: AOAM5326kxnq7odavXqTqKVLUkQd4J2mN17c3yp78sQmVI79ifK9m8RD
        +CVU9/xWf7v2cJp1Z9lQktJk+/hme3M=
X-Google-Smtp-Source: ABdhPJyd+pbkLpYgEM1jbrMcTQ1nbP6m9PM9dMxykk5aWQVd0k366G44NBv+sDDhAZfBsHKvIRef8g==
X-Received: by 2002:a05:600c:4d13:: with SMTP id u19mr5008450wmp.16.1617537593356;
        Sun, 04 Apr 2021 04:59:53 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id u2sm23786967wrp.12.2021.04.04.04.59.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Apr 2021 04:59:53 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v5 29/35] ioctl_fat.2: Make clear why is each header exactly needed.
Date:   Sun,  4 Apr 2021 13:58:42 +0200
Message-Id: <20210404115847.78166-30-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210403194026.102818-1-alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Only the one that provides the prototype doesn't need a comment.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/ioctl_fat.2 | 1 +
 1 file changed, 1 insertion(+)

diff --git a/man2/ioctl_fat.2 b/man2/ioctl_fat.2
index 30e410280..263738dad 100644
--- a/man2/ioctl_fat.2
+++ b/man2/ioctl_fat.2
@@ -26,6 +26,7 @@
 ioctl_fat \- manipulating the FAT filesystem
 .SH SYNOPSIS
 .nf
+.RB "         /* Definition of [" V ] FAT_* " and " ATTR_* " constants */"
 .B #include <linux/msdos_fs.h>
 .B #include <sys/ioctl.h>
 .PP
-- 
2.31.0

