Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 26CCF353801
	for <lists+linux-man@lfdr.de>; Sun,  4 Apr 2021 13:59:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229801AbhDDMAC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Apr 2021 08:00:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37926 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230364AbhDDMAC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Apr 2021 08:00:02 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1DC3CC0613E6
        for <linux-man@vger.kernel.org>; Sun,  4 Apr 2021 04:59:58 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id q26so2914431wrz.9
        for <linux-man@vger.kernel.org>; Sun, 04 Apr 2021 04:59:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=zA/Kc4vVuNWjWtGr/s1ntmcO/fLpSST0xf2nzzr9+wo=;
        b=gdBUBN5XCe49P4EMz4s2ASiEZPTnm52p0dPjvLnv76w3ycmLtbwyLKTFVOhLkpLYS+
         EQyl2Y+NE5UZBgcv97SJ7MkiQc5hQl2531X7Gn6IHe1/0Q9uf1IQU7xdHoG3Sdge2FkE
         PMC1rhETUWmvNNgKSqeUlnLVUcgukw64hbEtyDmmy4aed5hcxbYfgBj9WKY3WffyZvxX
         6UVjlbV0T07GumhzjhM5M5EodAsHlJ5uQFpytsz4xtsRS27RXAr5Q8DS1Bgse/GGA96d
         b+nLHopkkClmsAmBHp41MvGqXxLXSeyiPfSbpBkTy1dPCuBgswcPuX+YXfqjJuOIoxaL
         9Swg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=zA/Kc4vVuNWjWtGr/s1ntmcO/fLpSST0xf2nzzr9+wo=;
        b=bm1PaEx//Tq/JrUVXRJhU7Mphkrm7yV4WRiNenrZmwPn6VSuCOpOE4XnjF2VZhh5L+
         w9uhARAP6nGBwGbCDMoLMQpTdM5pbOHuMjjgFestV2lUcyCdcNBHyJw/dhDAHHIrAx5h
         qneEX4OWm5UOeFE+b86f+CTGyawBW4SQpcDPUVw7Ifm6YlNzFU2OClIFTjxHtuMTjwTL
         hKn1kNz1x4od+LONkydwfg/nT/0G+NqrGQJp6kBr3VwJxYn/bVb0ykLNkxfBmBvOFbql
         P4gy7cQTNTe9WGfwxRk2lCFSOT1Fnx1gkoM/OnCwME0ztvHNXxGCW0M4Ropy1parNXhB
         cQkQ==
X-Gm-Message-State: AOAM531rp2t1kwtCXNIeV/+diPZeCvusWZz2n8U2jtHzDSt6b6EdtmNK
        5PoczIOZcreNkwbIsOl/0CIokSmsoa4=
X-Google-Smtp-Source: ABdhPJycQlV2Va4v/9VDqHSKuOv4Vx8jWTh6BNPJWvScZcAIk7fwflfB5vyZZ4V6eKf9UgIWpNF6Bw==
X-Received: by 2002:adf:e68e:: with SMTP id r14mr23983670wrm.273.1617537596955;
        Sun, 04 Apr 2021 04:59:56 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id u2sm23786967wrp.12.2021.04.04.04.59.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Apr 2021 04:59:56 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v5 34/35] ioctl_fslabel.2: Make clear why exactly is each header needed
Date:   Sun,  4 Apr 2021 13:58:47 +0200
Message-Id: <20210404115847.78166-35-alx.manpages@gmail.com>
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
 man2/ioctl_fslabel.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/ioctl_fslabel.2 b/man2/ioctl_fslabel.2
index af17256f0..30435e1e9 100644
--- a/man2/ioctl_fslabel.2
+++ b/man2/ioctl_fslabel.2
@@ -25,8 +25,8 @@
 ioctl_fslabel \- get or set a filesystem label
 .SH SYNOPSIS
 .nf
+.BR "#include <linux/fs.h>" "       /* Definition of " *FSLABEL* " constants */"
 .B #include <sys/ioctl.h>
-.B #include <linux/fs.h>
 .PP
 .BI "int ioctl(int " fd ", FS_IOC_GETFSLABEL, char " label [FSLABEL_MAX]);
 .BI "int ioctl(int " fd ", FS_IOC_SETFSLABEL, char " label [FSLABEL_MAX]);
-- 
2.31.0

