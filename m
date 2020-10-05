Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AAC8A28426A
	for <lists+linux-man@lfdr.de>; Tue,  6 Oct 2020 00:13:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725898AbgJEWND (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Oct 2020 18:13:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54660 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725870AbgJEWND (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Oct 2020 18:13:03 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C8DBC0613CE;
        Mon,  5 Oct 2020 15:13:03 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id q5so319064wmq.0;
        Mon, 05 Oct 2020 15:13:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=piSDHxMppi0CIXJC6D3VAsGPOqAg8EM3DNDGhvsCgQE=;
        b=WD/YjlvoW2sE600cQ5ORgiitDu2CR0psXqEu+5RN0S4z8cpL5qe6WimFJdH+UrZ8oh
         s27iTffbsEgJb+/yo/kXu3H9Gg5eInGok+b3OAllekC2RTLSasufBeeQuSe1/rZ+sk5g
         62gbLeVn/RSOFsvXaTzugy/JK/aTXRPzwu941hydy/UjaoVGLB+cp0AI12vl//JXApXz
         Rxp/XB5eG2w2YM66PXDds3MFQkVJKMF7nDbxydRGavt9MkfkSyThncGrQ6hikJTBhfgm
         UfhI+k/ykOsS+UGaYeysjuNbHtCrKCtE9T8UXKE4XkPNVEl8r2zbDF69YODOCZ/uxuwt
         Sfig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=piSDHxMppi0CIXJC6D3VAsGPOqAg8EM3DNDGhvsCgQE=;
        b=D35TvlWF5OnKgdhsA1nMJYTdLG78bi29XaHSJyxTVLrkySWvqJOfNBJFSlTJc9zq6M
         5WVqxpKheYT2/5PvvwM21dYV7bKij3qqPKnbGVulQsZIfbJnvaT0dED64KWfsROjv/xp
         y2goSTinFbgBNqv4xh7PsslZxLQ7y/iVm8g+bhnTov+9UklYB0kYrWW7GSo6MVvH9CKx
         EGifPzC93LQw5/0tx42D5Ohty/Uyxe1wQdKbU2DeI0+XFnBLs4j2M3S0y4yVapsAiyVJ
         YfBEMzQ4NGLiSUqHqI9M1m53Zh/9SKBAebmx8PSbz9N5PrD4R2kkkWc8Tv42z1sqZ1Up
         WKRw==
X-Gm-Message-State: AOAM531s+Gy4oj/soht08T3Hr5t09g2D9WvpWZfYbu1e2r6GMjDr8qIx
        /cOWWmPZtns/5qlVusSjGdg=
X-Google-Smtp-Source: ABdhPJzFptfrOBEvjsr0ExMzMNTfxtXm2+xg4ZoX74v5MTkAHvGFEpZczP5URnDQtn+ZCch6ovYfww==
X-Received: by 2002:a1c:2042:: with SMTP id g63mr1404387wmg.174.1601935981859;
        Mon, 05 Oct 2020 15:13:01 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id g12sm1552581wro.89.2020.10.05.15.13.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Oct 2020 15:13:01 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] system_data_types.7: Add 'off_t'
Date:   Tue,  6 Oct 2020 00:12:47 +0200
Message-Id: <20201005221247.13065-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man7/system_data_types.7 | 50 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index b8cbc8ffe..916efef08 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -629,6 +629,56 @@ C99 and later; POSIX.1-2001 and later.
 See also:
 .BR lldiv (3)
 .RE
+.\"------------------------------------- off_t ------------------------/
+.TP
+.I off_t
+.RS
+Include:
+.IR <sys/types.h> .
+Alternatively,
+.IR <aio.h> ,
+.IR <fcntl.h> ,
+.IR <stdio.h> ,
+.IR <sys/mman.h> ,
+.IR <sys/stat.h.h> ,
+or
+.IR <unistd.h> .
+.PP
+Used for file sizes.
+According to POSIX,
+this shall be a signed integer type.
+.PP
+Versions:
+.I <aio.h>
+and
+.I <stdio.h>
+define
+.I off_t
+since POSIX.1-2008.
+.PP
+Conforming to:
+POSIX.1-2001 and later.
+.PP
+See also:
+.BR fallocate (2),
+.BR lseek (2),
+.BR mmap (2),
+.BR mmap2 (2),
+.BR posix_fadvise (2),
+.BR pread (2),
+.BR preadv (2),
+.BR truncate (2),
+.BR fseeko (3),
+.BR getdirentries (3),
+.BR lockf (3),
+.BR posix_fallocate (3)
+.\".PP		TODO: loff_t, off64_t
+.\"See also the
+.\".I loff_t
+.\"and
+.\".I off64_t
+.\"types in this page.
+.RE
 .\"------------------------------------- pid_t ------------------------/
 .TP
 .I pid_t
-- 
2.28.0

