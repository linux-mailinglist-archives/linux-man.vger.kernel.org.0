Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 28C2A353574
	for <lists+linux-man@lfdr.de>; Sat,  3 Apr 2021 21:42:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236853AbhDCTmP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Apr 2021 15:42:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55032 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236842AbhDCTmO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Apr 2021 15:42:14 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5D75EC0613E6
        for <linux-man@vger.kernel.org>; Sat,  3 Apr 2021 12:42:11 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id z6-20020a1c4c060000b029010f13694ba2so3793232wmf.5
        for <linux-man@vger.kernel.org>; Sat, 03 Apr 2021 12:42:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=K5YwIWG/8F5sW1/imtEvmVktAteriFqdqPrFxoJWAT8=;
        b=Emrc8vq1s3SALOl02NSiMoaOWqgVjAUtfebI7iSCT70Qsm9Cx81weorcbqxfwO8FT+
         vjXbApEiaViidKMBl/XCNkV1dI4lZlscWlXjTpzLqH/l+aLCRBmkMnlCNVLE9O4D88TC
         DMDoq8zH/WpULXEFhzBXAcC7AnmobrbSR4bGzjWpr4//0y2gpkAuyiBAlgMeCv6hqrOU
         aATCeSc92lcYTmTJ7yRhIb6wRkNVMykTcKv5qsX3hClHQCREtDaSukXz8TkVAzY8eeKF
         rmlziJdgrERr1kzTjsZV9oZZEOxrw6ktY03Yy5zJvkNjUyzfDxJVVvLupajeaeTv4GD0
         ufYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=K5YwIWG/8F5sW1/imtEvmVktAteriFqdqPrFxoJWAT8=;
        b=tTp9CASsZoQDMxfkVrDxxQ2kYG4Wrmi6oyU93mub03hSXS5ZENXlWrA5e/IrsKRDgq
         JUAdfpGA/cZRVXtWmOPIu2ONSyjiGH6DqXKtbaib64hfO99l8V5qCAQ4xJDhvNiM0Wva
         9IxmkjQyr+CdYhoqGPpbsYjP5l/gDZK8t7RsoOWjRkz5qolo6qGEOM71Fo/2hRkWUrzl
         3zcU73WvRkqJYUrcllwTnvyWXkHKg9hmyYYRYdDkFa1By27Rvxxib65vi8vA9pBTZH4W
         c2JBfExO2y1M34+1iidvqJvocVeOFxIU0jDdkH5BkOsuakW6bOPwqeEX9oa1CjM+3jTV
         yi+Q==
X-Gm-Message-State: AOAM531GpyKnBNR20Zs9DU2Kyey6/Bh1E8sHAJjKwfbYyHiR/2jvhJTm
        l2JR7bVEl+scqO2St8cyxcM=
X-Google-Smtp-Source: ABdhPJzqIpI9n41/ARL5ewvWAfnmqU+KTCL0O2dMk/8HZiONPxqy/j+8F6ZtneAMvVNR7gn1sW7ieg==
X-Received: by 2002:a1c:2541:: with SMTP id l62mr3766340wml.188.1617478930227;
        Sat, 03 Apr 2021 12:42:10 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id n1sm25211056wro.36.2021.04.03.12.42.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Apr 2021 12:42:10 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v4 33/35] ioctl_fslabel.2: ffix
Date:   Sat,  3 Apr 2021 21:40:25 +0200
Message-Id: <20210403194026.102818-34-alx.manpages@gmail.com>
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
 man2/ioctl_fslabel.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/ioctl_fslabel.2 b/man2/ioctl_fslabel.2
index 9f5e0dbbd..af17256f0 100644
--- a/man2/ioctl_fslabel.2
+++ b/man2/ioctl_fslabel.2
@@ -36,7 +36,7 @@ If a filesystem supports online label manipulation, these
 .BR ioctl (2)
 operations can be used to get or set the filesystem label for the filesystem
 on which
-.B fd
+.I fd
 resides.
 The
 .B FS_IOC_SETFSLABEL
-- 
2.31.0

