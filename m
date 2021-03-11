Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C2ADE338051
	for <lists+linux-man@lfdr.de>; Thu, 11 Mar 2021 23:34:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229687AbhCKWeM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 11 Mar 2021 17:34:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51112 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229796AbhCKWdu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 11 Mar 2021 17:33:50 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC329C061762
        for <linux-man@vger.kernel.org>; Thu, 11 Mar 2021 14:33:49 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id t9so676273wrn.11
        for <linux-man@vger.kernel.org>; Thu, 11 Mar 2021 14:33:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=w8lI9ZL2/2rFyeNzC9uZ91TB7W9B6nwiYozhQGL4dpM=;
        b=jgywuUOCfmHGz8nW1bztjVYs2XL0hfrdUrsj7t0WdaMLtsbF487k+zgPv65LxGBB52
         d5T/IgKx5b7yqorSv4zwfmc6FXTYqCcCe+edHCCqcJoK8ldGCbZHRCGe4ODhtQRxRGah
         I69ftzokJbObVId+AdHq2yO9VSvgMsbZ//dRhCW8vKNj5wqaovxVAV93HbevxBhFFNOl
         MxrdRKwk4rhjzyFnQ2c8CAUT7gd02ghbRDlRDVA/nZ6fLgDwlABHn1uwsjxIJV86W6ss
         RKjDsYqXoPJrt+xaOR6zj3QrgQXDVele4NhibQpVZQPBn3QihQ5RVK6POVOXL0sBlf6d
         mT5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=w8lI9ZL2/2rFyeNzC9uZ91TB7W9B6nwiYozhQGL4dpM=;
        b=WweBrfntDJVpUB6WFiY/8cFplwzVnIQ6lWalHuUDRiMJTDu7a7HmG2uGjHAl5Epsbl
         6f6mb/xyqC1SHe0wbS+ZpmLbqWLl1gItAK/nh5hldeJhd0pun8jIMt9rTz0gfuadKRBK
         Iu5ypFsBZic4QKIAWtISHenvvsjIaVz6CYk6AeJx/UIuvt6dZLVWjb5ygac/oX+0/ADI
         CyRiFPphRCn/0SSf2V5RYfG9aN3bdqROR2crOvQg2dqyoe26cMALJ7EEGOlqeB9JqB6z
         Ekr42I6qK3YYAj9QH0cxohYLlTZX2w6QFgxIUg+8rjxb172K6Eh71FQZ/7FsAJzgZ5/E
         1SQw==
X-Gm-Message-State: AOAM531JH9UXpEw4BETaBrsqFEEDbeKd6nZxS7SQF2o3KTZqEgpMHOqa
        BSS2/Q4FqV9+ntOD5TO4+I8GGwhBXd8=
X-Google-Smtp-Source: ABdhPJzLt/0fJRlBMWiKKWCxBix92NM2Ef0KnWNeq4CB/THm3qQH2CptNy2co+vc2d8xawN5tdl19w==
X-Received: by 2002:a5d:5906:: with SMTP id v6mr10908843wrd.137.1615502028572;
        Thu, 11 Mar 2021 14:33:48 -0800 (PST)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id v2sm22365771wmj.1.2021.03.11.14.33.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Mar 2021 14:33:48 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 08/17] wcscpy.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Thu, 11 Mar 2021 23:33:21 +0100
Message-Id: <20210311223330.722437-9-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210311223330.722437-1-alx.manpages@gmail.com>
References: <20210311223330.722437-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in wcscpy().
Let's use it here too.

.../glibc$ grep_glibc_prototype wcscpy
wcsmbs/wchar.h:87:
extern wchar_t *wcscpy (wchar_t *__restrict __dest,
			const wchar_t *__restrict __src)
     __THROW __nonnull ((1, 2));
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/wcscpy.3 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man3/wcscpy.3 b/man3/wcscpy.3
index 8fa4a4e8b..c96711fdf 100644
--- a/man3/wcscpy.3
+++ b/man3/wcscpy.3
@@ -20,7 +20,8 @@ wcscpy \- copy a wide-character string
 .nf
 .B #include <wchar.h>
 .PP
-.BI "wchar_t *wcscpy(wchar_t *" dest ", const wchar_t *" src );
+.BI "wchar_t *wcscpy(wchar_t *restrict " dest \
+", const wchar_t *restrict " src );
 .fi
 .SH DESCRIPTION
 The
-- 
2.30.1

