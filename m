Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A937E3A4DAA
	for <lists+linux-man@lfdr.de>; Sat, 12 Jun 2021 10:33:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230516AbhFLIfJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Jun 2021 04:35:09 -0400
Received: from mail-wm1-f49.google.com ([209.85.128.49]:39592 "EHLO
        mail-wm1-f49.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230474AbhFLIfG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Jun 2021 04:35:06 -0400
Received: by mail-wm1-f49.google.com with SMTP id l18-20020a1ced120000b029014c1adff1edso9922865wmh.4
        for <linux-man@vger.kernel.org>; Sat, 12 Jun 2021 01:33:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=r/dkJhoB4MTj2pPTryOG5tiWQxPSaBjLRfp5wfboosY=;
        b=Y2EnnOvaD9cn9kT/9IOuw4u7H+eq0gs9MVouughSD++/96kftiQwCjoyAlaB3UPON2
         qAyG4QnbzwKJ0BUFowxRYj16uMa6MhefARwvh2V17SzgUkg1aumFGZlEB9F7XowUebEC
         CDSZQgUFNAnta/QHkJrNI7Pb1KxNIh63LEEmRApj6foHx0P31/QTbciAQqPi/2vUSz2U
         wHWXCB0UJBLwOIqOCBRRVYpGWWhNZM57QHze8Ru7cLGf4rDHCFisgw0u2bVPWr4XD2vx
         MDRqlRUmIrYyRrIkCnYc5q6X0Zl6CbmXRP846+AHSX6AyKPw8iW+Wfnsu/BbDeGKSebk
         BLRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=r/dkJhoB4MTj2pPTryOG5tiWQxPSaBjLRfp5wfboosY=;
        b=jUGdfWedFNlLMl0TO24kYcLRIwGV8DXWKpGWwIHznIb9awsgVahkr/CoMs7LDfGVHh
         wwSjldRBUtS826dbDKClYOH7bYsYVH4lNT/HNRxAQA8+AEF0/+r2idlNi4dMa5FO8iRB
         3qKjJPGfuabdJmfmps0uNJvBMg+LTlaJNUoUOqOCwGDUKY0yRiAje3Df9OLO5cNePEAQ
         3iZJvRi7UvGaHiSlPTshom3hF7L9aEAQzW26liGydPT7qepapi+8oUDh+si/p7CKJqrl
         LfNBZrOgT9E/GWXv82pwN0gSpUxPUQmy+BlqWAVZmGdoecw9LIOIRjarY3pzh9DFjVBw
         2TgQ==
X-Gm-Message-State: AOAM531fr66dSl1857o7fcVykaIg4Dp/3czonp6W2X9cvkAU/HJIQBlq
        l8rxuXWisVbF2ryyI/D91x9NSNEy6lQ=
X-Google-Smtp-Source: ABdhPJypVOYNPHuNF3gG3Pn/gK5G4EA2Rv8Ek8JkF2k2DRoRx+L7syh3JfZcZbvWgW99nFia2INLag==
X-Received: by 2002:a1c:9dc5:: with SMTP id g188mr23508153wme.141.1623486726030;
        Sat, 12 Jun 2021 01:32:06 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id c12sm11165110wrr.90.2021.06.12.01.32.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Jun 2021 01:32:05 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 26/28] vmsplice.2: Remove unneeded include
Date:   Sat, 12 Jun 2021 10:31:43 +0200
Message-Id: <20210612083145.12485-27-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210612083145.12485-1-alx.manpages@gmail.com>
References: <20210612083145.12485-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

'struct iovec' is defined in <bits/types/struct_iovec.h>,
which is included by <sys/io.h>, but it is also included by
<bits/fcntl-linux.h>, which is in the end included by <fcntl.h>.
Given that we already include <fcntl.h>, we don't need any more
includes.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/vmsplice.2 | 1 -
 1 file changed, 1 deletion(-)

diff --git a/man2/vmsplice.2 b/man2/vmsplice.2
index 3fd9ff49f..9102c4c92 100644
--- a/man2/vmsplice.2
+++ b/man2/vmsplice.2
@@ -30,7 +30,6 @@ vmsplice \- splice user pages to/from a pipe
 .nf
 .BR "#define _GNU_SOURCE" "         /* See feature_test_macros(7) */"
 .B #include <fcntl.h>
-.B #include <sys/uio.h>
 .PP
 .BI "ssize_t vmsplice(int " fd ", const struct iovec *" iov ,
 .BI "                 size_t " nr_segs ", unsigned int " flags );
-- 
2.32.0

