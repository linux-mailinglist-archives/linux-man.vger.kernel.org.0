Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4318E3537E9
	for <lists+linux-man@lfdr.de>; Sun,  4 Apr 2021 13:59:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230381AbhDDL7q (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Apr 2021 07:59:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37798 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230366AbhDDL7q (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Apr 2021 07:59:46 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 73A52C061756
        for <linux-man@vger.kernel.org>; Sun,  4 Apr 2021 04:59:40 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id w203-20020a1c49d40000b029010c706d0642so6468022wma.0
        for <linux-man@vger.kernel.org>; Sun, 04 Apr 2021 04:59:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=lKHL7xxGpUL+d+UpVuRwD2E0iUbd5YaO2mOPwYyxNBg=;
        b=CLV0DjlUbBSranfJIVYpRAE8u8NRDnaENFLXoQHIYovWJpnux/A7ac7Xpdrd+DV1Iy
         2L313dgK7OcSKKJ/+LRScBdgQlG9ldn3XwQINwR6KG5nGnAr2YpABIZ1ikmeaBt4mQBF
         g9/qVR475qTkTfX6BcqdXFILYxHz24lWU51rMvRgmyanMpuwkBWSMLUh5Mru1fnGUDH9
         wiX+FcXXKUQbaXBy+qfMuyD/PDFkhgwViVMptvOXyqOP2Nze9cjz+Mrhc2qHFGx8cuOL
         9eMEDSTW/n+QLvbAW2dciu9yi7n/ZQI+iGsAeGGRkfvZMsKPRI+yoPUNZ1E4DYXu8EuV
         GllA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=lKHL7xxGpUL+d+UpVuRwD2E0iUbd5YaO2mOPwYyxNBg=;
        b=jfUDE57lqB85sxDiMouOK27+uwg4Vh2YUOA2sDM8TipzVVkuOsAhGtU7tYsE7aXwHh
         FT8+r9xz2VvpM42YYLnULIdhNj/wjFaZW8ct3n8Ec+A0z62G9vevBy5dSeH5u54M9d8d
         Xqw/uHO8wtVPg+ucsN3/Zx1aaFgGyipqWPEThrrpSQ3zfLYp2WCS4uFjU0L3CGbw3oJf
         x7T4uENmNC+nOmvcKm1d08pPS2Emdk//Xp6vdF6ByFhFk0A2wvQew6/Vgwyhm35YMEPu
         ef3u67WLdQLO/cJIcXjH8+D+P+0YwVGZeVo+Md+1gKMuR/l9CvNPr+mf68Ll7Cw6RKky
         k5Yw==
X-Gm-Message-State: AOAM531xzMs3I79IKUPeah6vqC+P8sNJov395HtxEaEfPLjoEEhJ82Aq
        4FN2sl8JK7epf5L+t7DcavE=
X-Google-Smtp-Source: ABdhPJxQ17YUM/UXDPRP/R6W+dcKYWJC1NIkUs/ILyUOLWI3AFzcs9gsg4TKmkZj3o9rQ4JzTMNkCg==
X-Received: by 2002:a1c:f605:: with SMTP id w5mr20934122wmc.66.1617537579230;
        Sun, 04 Apr 2021 04:59:39 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id u2sm23786967wrp.12.2021.04.04.04.59.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Apr 2021 04:59:38 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v5 09/35] arch_prctl.2: SYNOPSIS: Remove unused includes
Date:   Sun,  4 Apr 2021 13:58:22 +0200
Message-Id: <20210404115847.78166-10-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210403194026.102818-1-alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

AFAICS, there's no reason to include that.
All of the macros that this function uses
are already defined in the other headers.

Cc: glibc <libc-alpha@sourceware.org>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/arch_prctl.2 | 1 -
 1 file changed, 1 deletion(-)

diff --git a/man2/arch_prctl.2 b/man2/arch_prctl.2
index f8073d625..7ae5b350c 100644
--- a/man2/arch_prctl.2
+++ b/man2/arch_prctl.2
@@ -28,7 +28,6 @@ arch_prctl \- set architecture-specific thread state
 .SH SYNOPSIS
 .nf
 .BR "#include <asm/prctl.h>" "        /* Definition of " ARCH_* " constants */"
-.B #include <sys/prctl.h>
 .BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
 .B #include <unistd.h>
 .PP
-- 
2.31.0

