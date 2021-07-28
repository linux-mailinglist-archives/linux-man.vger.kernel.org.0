Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 046253D9697
	for <lists+linux-man@lfdr.de>; Wed, 28 Jul 2021 22:20:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231416AbhG1UUl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Jul 2021 16:20:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35618 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231359AbhG1UUj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Jul 2021 16:20:39 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE641C061765
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 13:20:37 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id f14-20020a05600c154eb02902519e4abe10so5219777wmg.4
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 13:20:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=DAIatfH89xTJDswamj/lJrwY8n6uVMR4mwuoqqwR9IY=;
        b=EOf3G6Zit4bbX8lGfFEkOwlQtuVhiSibXzmNcut2qOLHd53ZZaglxTfSYAwehI0NtW
         D4qqK50sDyzyd9/KFYOydI/XyA1LPZ7OHyLDGrKtuJGdpcQrQytOGEiqd6MTyj9Btwy+
         k6z6i1btayiQL44+v0a7Qj1gODR8Zd5r+wV47OIW1bR82I32X+b9yTOdXpLmnFfsP1el
         8q/x52QbU0LZHXunu48zqQwv6xj2en8gpsY9+8WMP4qET+7mmcVe0tEDVU5fyjsjyiT3
         KC95vl7su5+Jx4Y/LpXYTlYrPBWHe2hCCZSYzqy4/nwjIj/Sn0IjWXSUrctPA2Uq+Thm
         2sqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=DAIatfH89xTJDswamj/lJrwY8n6uVMR4mwuoqqwR9IY=;
        b=Eq44BJykbJpznKSVPN/9yAGhKhgX+iFsG3zOMO4/pw2sAuJt9xWCat7npMI/2QtA/J
         5SWYdmD4j9xRngzJzq4JcH0oEeDiDjfui6/7LoMOv4IqzeDCDZrbmGb2UQd5CsUuYHSK
         2eyPyMCnhTRHV+o6YyD3bJIOCCcM0rFFoufMkis3x7yliAOVN2A/3E0rA76LizmyzWam
         zE9A5WwENjm3RhXQfWruQIyMF2aHcEGIXUP9uSXMpq9RKWHXTiep5sdbPt+5im7eub0v
         RXFcDgGHiVf+wcZs95PAjqf8uJd6Sl3rolJ4hnn/4vO+30jXCN8MHAkXDBpAL6fq5B3X
         ih+Q==
X-Gm-Message-State: AOAM532E+D5xTa4qPqABqHQJMYHd8qQSJS6x2YkeLRALxPKMYDXGCuWn
        GdRV6mK0mxO28uRofTElX2P3UBGQmSI=
X-Google-Smtp-Source: ABdhPJyWqPBU1CxW1TIyH0uZlzVZgwqlzomoh337nQbVxYoKB3QO1tAG1qt5Ia1EeKS04eSdQJpaBw==
X-Received: by 2002:a7b:cb98:: with SMTP id m24mr1353329wmi.24.1627503636581;
        Wed, 28 Jul 2021 13:20:36 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id o29sm879703wms.13.2021.07.28.13.20.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jul 2021 13:20:36 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     =?UTF-8?q?=C5=A0t=C4=9Bp=C3=A1n=20N=C4=9Bmec?= <stepnem@gmail.com>,
        linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 24/32] namespaces.7: fix confusion caused by text reorganization
Date:   Wed, 28 Jul 2021 22:20:00 +0200
Message-Id: <20210728202008.3158-25-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210728202008.3158-1-alx.manpages@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Štěpán Němec <stepnem@gmail.com>

Since commit ee81d7e41852, the flags list has been (only) above, not
below, these references.

(The flags table was added even before that, in commit
0b497138b908 ("namespaces.7: Add table of namespaces to top of page"))

Fixes: ee81d7e41852 ("namespaces.7: Include manual page references in the summary table of namespace types")
Signed-off-by: Štěpán Němec <stepnem@gmail.com>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man7/namespaces.7 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man7/namespaces.7 b/man7/namespaces.7
index d35c2d383..0ac32c77e 100644
--- a/man7/namespaces.7
+++ b/man7/namespaces.7
@@ -97,7 +97,7 @@ If the
 .I flags
 argument of the call specifies one or more of the
 .B CLONE_NEW*
-flags listed below, then new namespaces are created for each flag,
+flags listed above, then new namespaces are created for each flag,
 and the child process is made a member of those namespaces.
 (This system call also implements a number of features
 unrelated to namespaces.)
@@ -119,7 +119,7 @@ If the
 .I flags
 argument of the call specifies one or more of the
 .B CLONE_NEW*
-flags listed below, then new namespaces are created for each flag,
+flags listed above, then new namespaces are created for each flag,
 and the calling process is made a member of those namespaces.
 (This system call also implements a number of features
 unrelated to namespaces.)
-- 
2.32.0

