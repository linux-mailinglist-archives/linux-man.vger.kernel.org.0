Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 64B13338053
	for <lists+linux-man@lfdr.de>; Thu, 11 Mar 2021 23:34:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229705AbhCKWeO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 11 Mar 2021 17:34:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51104 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229803AbhCKWdv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 11 Mar 2021 17:33:51 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7EF23C061760
        for <linux-man@vger.kernel.org>; Thu, 11 Mar 2021 14:33:50 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id l12so3725478wry.2
        for <linux-man@vger.kernel.org>; Thu, 11 Mar 2021 14:33:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=mEOBPFqRtKB66owQS7eDNqVayBoeiWSNYoOK/hX6Kgc=;
        b=jMCTVgnoU/muCksmyKM+V6qB64ljMhQ0ma+Uni9buOAHzkvhRtkUjtRJdQuSJ6p5bL
         V9G9t6ky1pvJo3ML8bHiopb/kEa23tswsiSmEVWjHPxorEMUCXqreT7QjKslBwtH1t+F
         1mmCUE+6MUJAGgZFOzKOAH408fCyftFBtVZcIPA0hgVx1v3cow8xs2yOEQl+hIw9tEXD
         Mmcff0z/f90BkR3Hm3oFYE3unSEzS0eT0g7skv+RYLxUDbjnp0AdFRWhPQZQ7yS4xrzs
         hB7pUipYqd+4ClvQjz22Xm/4yXSJ+C3MZ7YRt4e79FDNEHFpszG7wmDaS7tL6gNby8mh
         i4Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=mEOBPFqRtKB66owQS7eDNqVayBoeiWSNYoOK/hX6Kgc=;
        b=EGQ2XbiNNIPJ+oEwNj89x3yxBqm5U9McalteyrQR46eI/Q7g3l7TVeNCfXRO7H9ovk
         6wnXktZsOdbIBMNL/8sIKF//taRoLjMWTLi0EsvbamkXWJlf+NLnWD1gqJmKLjZDYmFq
         +YLcH15/8IVPfcirUUjgfOFJOqP4yDeJCSkTROd8st4H8VrpzORW3FXHKSwKZyjOVzo5
         5WNtMOnwg9SgxcMdPu9wE2BkUGB3I7aAFlww+hWtm43V2LxscR329bOlgRUkjiC2z34M
         kB8FdBv0m5jhmPoyj9dCforjF2blBapNEnkQFnK/MFyrQHAFZDgB3cuO3ldUr7WGAnEX
         UWiA==
X-Gm-Message-State: AOAM530WG/pu4hdbaiqe/IwSZmzIhGARXRapvP6gger5kYh0NYbkJsBo
        9FuyYIKRCBQ90cMmqFzn+VNNlF6pKpY=
X-Google-Smtp-Source: ABdhPJx3LGr8NVQz7MfDQX/TE92ZjlPsDQWD+6+Y2YeFPpQkFt4m1MlQ4SgDsq3s57jc2yK1jX1nXA==
X-Received: by 2002:adf:fbce:: with SMTP id d14mr10577451wrs.44.1615502029328;
        Thu, 11 Mar 2021 14:33:49 -0800 (PST)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id v2sm22365771wmj.1.2021.03.11.14.33.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Mar 2021 14:33:49 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 09/17] wcsncat.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Thu, 11 Mar 2021 23:33:22 +0100
Message-Id: <20210311223330.722437-10-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210311223330.722437-1-alx.manpages@gmail.com>
References: <20210311223330.722437-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in wcsncat().
Let's use it here too.

.../glibc$ grep_glibc_prototype wcsncat
wcsmbs/wchar.h:101:
extern wchar_t *wcsncat (wchar_t *__restrict __dest,
			 const wchar_t *__restrict __src, size_t __n)
     __THROW __nonnull ((1, 2));
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/wcsncat.3 | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/man3/wcsncat.3 b/man3/wcsncat.3
index 0d88bb999..2a786f122 100644
--- a/man3/wcsncat.3
+++ b/man3/wcsncat.3
@@ -20,7 +20,9 @@ wcsncat \- concatenate two wide-character strings
 .nf
 .B #include <wchar.h>
 .PP
-.BI "wchar_t *wcsncat(wchar_t *" dest ", const wchar_t *" src ", size_t " n );
+.BI "wchar_t *wcsncat(wchar_t *restrict " dest \
+", const wchar_t *restrict " src ,
+.BI "                 size_t " n );
 .fi
 .SH DESCRIPTION
 The
-- 
2.30.1

