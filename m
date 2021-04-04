Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 62D1A3537F2
	for <lists+linux-man@lfdr.de>; Sun,  4 Apr 2021 13:59:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230418AbhDDL7v (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Apr 2021 07:59:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37836 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230410AbhDDL7v (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Apr 2021 07:59:51 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 13465C0613E6
        for <linux-man@vger.kernel.org>; Sun,  4 Apr 2021 04:59:46 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id o6so1558374wmq.3
        for <linux-man@vger.kernel.org>; Sun, 04 Apr 2021 04:59:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=8sXcJxfoGscdez3mIIgG0Vwgw6xUHy5fJqoPTId1UhU=;
        b=YK5VxIyUKUCu9sogiRKAs2ZBF4QlLyamG+W9Ihcj2AS1jA5zQ1UQ/s8WfGkKFtU8KX
         Eonb/Nv7mWD4Hpsft8yIaxU/Obr7ziECxTquxbpHdak+C7P33DTHXJH4ALY1vKlE6xlD
         YujjIlclnucK1GFL3J0QUwuifTGntjaazMotXNPFG4v7SXzecUxkiMFOKzjp6X9c7QRq
         aiICeouBUT0gL7DyZv6L0VzrNKpfGA+1i5OaY5UX8J+w8Pylt5WC8EySiw2uorDN07Pt
         E66ioyA3JlkX01ynCMYLpmPb5rfADAgz06Oh1bQl/n9JBZQXFhPP81NOKng66nciPvlD
         lDwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8sXcJxfoGscdez3mIIgG0Vwgw6xUHy5fJqoPTId1UhU=;
        b=EFJs6gvm+IR6jH+Imwhyg1SlOBtyqIJCHkquzJXViURBaOWPAVSGKP/o9guxyd83Db
         arxlCvathAe0Sw7feJo5HIp+4N3/Ge+oDgjVI/3pfnzGe/hAKH/1hW2kJPtzBmXbreSW
         caoDeBNtzWW28u/a35CNECFTZOMF8dQT6JWRcNSomzygTZCx4K/uvGfELzl6ZWHFiVX+
         e+LzZhDY8zwRUiNRawhf6cTnF+ubcLL7aULrqPnVzozX2LMOZ/h5CnZ6l7saDgYzk9ug
         fhyIhoSu276L8rLrs09SeUo02g78PNKB/Jy10B4mbM5vk2ldPC/+c4FWmIzW/7XRtASI
         cVLw==
X-Gm-Message-State: AOAM533n10jA+xmkfdczLSf0kaAMVnSAlJy8Bln+UGIjp/wjDDQYafED
        42ak+fcHOE69MU5uLzijxh8=
X-Google-Smtp-Source: ABdhPJzdRz+CM5ro9+pp4d2luvYFDlOKM+G1vhEe9V8r6xOe9UoXW5HlhzpcIOmgdshlBQIwK9z+FQ==
X-Received: by 2002:a1c:a501:: with SMTP id o1mr1745841wme.37.1617537584875;
        Sun, 04 Apr 2021 04:59:44 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id u2sm23786967wrp.12.2021.04.04.04.59.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Apr 2021 04:59:44 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v5 17/35] fanotify_init.2: Add comment: why more than one include is needed
Date:   Sun,  4 Apr 2021 13:58:30 +0200
Message-Id: <20210404115847.78166-18-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210403194026.102818-1-alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/fanotify_init.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/fanotify_init.2 b/man2/fanotify_init.2
index 2418bbdd2..2b44fc6ec 100644
--- a/man2/fanotify_init.2
+++ b/man2/fanotify_init.2
@@ -26,7 +26,7 @@
 fanotify_init \- create and initialize fanotify group
 .SH SYNOPSIS
 .nf
-.B #include <fcntl.h>
+.BR "#include <fcntl.h>" "            /* Definition of " O_* " constants */"
 .B #include <sys/fanotify.h>
 .PP
 .BI "int fanotify_init(unsigned int " flags ", unsigned int " event_f_flags );
-- 
2.31.0

