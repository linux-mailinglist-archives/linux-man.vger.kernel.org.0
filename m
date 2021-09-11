Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 28605407947
	for <lists+linux-man@lfdr.de>; Sat, 11 Sep 2021 18:01:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232241AbhIKQCt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Sep 2021 12:02:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55710 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232708AbhIKQCs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Sep 2021 12:02:48 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1757DC061574
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:01:36 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id m9so7371981wrb.1
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:01:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=X8BvWjLsnPcLQMhXE0EC5uyVEzd4T3qhcLdBp2e53Js=;
        b=CA6/KUvSqNXWyQ1bRP0ti/zrlpdhu/7oCvaqVjPxji3YpL2GLZYgaFYt03SIrWGBM7
         SLFuhUuopw0tJZELU8Bbcl5/GB2ALwvrLF0buOOfYgMgr7G+d1Gyi5Q5BkOUbYYRcC53
         oBpcA2YZ9mGY5A9WoF9dEVjpzvTmg6E/N5LtYtn+JUCU4/58LYxgj1Weo8Rl1x8Oo/kO
         CDHB/CFmUcBY6+4IXc1N5nUNXBfSSV+yTFhQp54ZpQXUtMJEXT2NgxzSyEwTksVVwIcI
         CfJBHQLxwxDkzEPYX4PHOu/BaHZCIoIuDh1m2RbzAQcp1c0BgHD3TFIPDYRcoum9ZDMu
         tFgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=X8BvWjLsnPcLQMhXE0EC5uyVEzd4T3qhcLdBp2e53Js=;
        b=FAdQ9Wctuslp5h+Jz7PwzaxmPvhKy4TIRcNiSBNdZ6zvV4P6v3gsxfBE5k31NLmyeo
         BsEXEYFUFa0Kw66PT1pO+7w3zfo93Xx7uNmZtrO+D4uxQDbRJMK/4wdcOPgPyVFuN8/r
         MXOBUj9a8YsnL4WLF6Xgjs6VGTITYUiQ1R6iVE8YGx7AV7iVIlCYt8MVjYKHsVdODwmh
         mM2bDhlG+csbh8QjsHbTfJidvoQgcZIbsTNxAuBF4Tl0VXHm7QtLncFgNSXzrqFJXxLL
         +vtPvrc3KaeteTIIRELxi3vaF158Y8pE/3fk+BtptY3pugUEU1dOU+kgsKOtagGZ7EAP
         bEug==
X-Gm-Message-State: AOAM5313BAwgxdyKqOrNXRsbffgVzfkra6r/bS/RG/hJFKAxEoDDrwRb
        XN57HSwGBc2efoFESfnULgo=
X-Google-Smtp-Source: ABdhPJwfR5epgINC0PsNeNADBqMUrd4eUgyKqZMDWBsqlyZyPGs1q5BctZMHpl0p9R+Y8rVPGiv4wQ==
X-Received: by 2002:a5d:58ef:: with SMTP id f15mr3760092wrd.160.1631376094771;
        Sat, 11 Sep 2021 09:01:34 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id i9sm1947313wmi.44.2021.09.11.09.01.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Sep 2021 09:01:34 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 08/45] vmsplice.2: Add LIBRARY section
Date:   Sat, 11 Sep 2021 18:00:41 +0200
Message-Id: <20210911160117.552617-9-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210911160117.552617-1-alx.manpages@gmail.com>
References: <20210911160117.552617-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/vmsplice.2 | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/man2/vmsplice.2 b/man2/vmsplice.2
index 9102c4c92..eacf842b2 100644
--- a/man2/vmsplice.2
+++ b/man2/vmsplice.2
@@ -26,6 +26,9 @@
 .TH VMSPLICE 2 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
 vmsplice \- splice user pages to/from a pipe
+.SH LIBRARY
+Standard C library
+.RI ( libc ", " -lc )
 .SH SYNOPSIS
 .nf
 .BR "#define _GNU_SOURCE" "         /* See feature_test_macros(7) */"
-- 
2.33.0

