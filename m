Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 73A9E3BA9CD
	for <lists+linux-man@lfdr.de>; Sat,  3 Jul 2021 19:25:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229557AbhGCR1u (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Jul 2021 13:27:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54944 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229463AbhGCR1u (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Jul 2021 13:27:50 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39AE0C061762
        for <linux-man@vger.kernel.org>; Sat,  3 Jul 2021 10:25:16 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id u8-20020a7bcb080000b02901e44e9caa2aso8421979wmj.4
        for <linux-man@vger.kernel.org>; Sat, 03 Jul 2021 10:25:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=8wGaP6iq7jaT8RaWvQbePCqyyjT7PO2ONeRHtnfE2Gs=;
        b=dWGGffaNp0v5bqZ2qjRJ6+oYean1C9qxgf4NL5u4KFbcAwM014MOs6McZglO1//t3N
         8i1eX0rRM+JvdSwpZGd2kjthHvXBmG2bBhyL7su29DWSM0vMx+7WQ5ftD9NQ22jQbva2
         2qw3ULkHY2jtvC6Ig+pYzKKOvYGQdfVWT644wj0fiMxwGA5Fu2JU6LLcdWsRo2ux9Gac
         pm4k0RMoRf2Bj+U4A9IeGgI3SfyFRlbvzrRbQcg6OkvuZ3dAbpkXlaiSjJfpdlKMMuWA
         eeqgpEY3gBf9k98zN8Z9YvRBx2FMvKFzTwCyMhoh1cD1Abdx6mxCME3XkCyhHZmB0Mdv
         b0VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8wGaP6iq7jaT8RaWvQbePCqyyjT7PO2ONeRHtnfE2Gs=;
        b=WgO0URPcblG1tzPppV4TLmCrvh/h30LKL6z4QVE3uIU3eUJTs79nicef8TJ+wSdXbQ
         IY+3LfizU1OJNRwlitxYIYFvgRUTBSLfNTfD7VFWKcq20HF1413L2x270zAJ1NXyei+S
         jOOSLvI7QxZozQQSDC+M61nL4mxLGBCFkVWl1f30kSDyoXEv87YL/wvGpIODzJpSw6gL
         yAF+Er7eir6nKxQl7zKJI4lf2F6vLkSufXLTzYMlHGGvtj5e30e7BY71dkUxvnYwapFb
         Wb6buJlrtwSzoJCWQE3IiEaEO4kIK0Aku5jT32mhNOjTNuO7Ui8MEzHvDK+4m9Glbste
         BlwA==
X-Gm-Message-State: AOAM531bZ7t4IlIUIfBxuA3DyEnKUImwKFq5vVjMBkLjcPcUx2nRlrZG
        v4Snp6hFfeZJTA63NjLko6fG8PBalTc=
X-Google-Smtp-Source: ABdhPJy13JGZjxV9QkJ4QtL7eburuxZtxJlXCE2R6HmG/XiN8BzvnQavmOyIbWfaKUPjxE/hZ2vzDA==
X-Received: by 2002:a05:600c:2215:: with SMTP id z21mr5694676wml.92.1625333114840;
        Sat, 03 Jul 2021 10:25:14 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id t9sm7152770wrq.92.2021.07.03.10.25.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Jul 2021 10:25:14 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        Alan Peakall <Alan.Peakall@helpsystems.com>
Subject: [PATCH] posixoptions.7: Fix legacy functions list (s/getcwd/getwd/)
Date:   Sat,  3 Jul 2021 19:23:52 +0200
Message-Id: <20210703172351.79481-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <SN6PR08MB49282117AFEB2499B3DD224380319@SN6PR08MB4928.namprd08.prod.outlook.com>
References: <SN6PR08MB49282117AFEB2499B3DD224380319@SN6PR08MB4928.namprd08.prod.outlook.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Alan:

[
The on-line copy of the manual page "posixoptions(7)" dated
2018-04-30 has an entry for "getcwd()" in the section headed
"XSI - _XOPEN_LEGACY - _SC_XOPEN_LEGACY".
I believe that entry should be "getwd()" as that is the API call
which was present in X/Open-6 but withdrawn in X/Open-7.
]

Reported-by: Alan Peakall <Alan.Peakall@helpsystems.com>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---

Hi Alan,
Thanks for the report.  This patch should fix it.

Hi Michael,
Please apply this patch.

Thanks,

Alex

 man7/posixoptions.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/posixoptions.7 b/man7/posixoptions.7
index d2ee10302..d6882fe05 100644
--- a/man7/posixoptions.7
+++ b/man7/posixoptions.7
@@ -968,7 +968,7 @@ The following functions are present:
 .IR fcvt ()
 .IR ftime ()
 .IR gcvt ()
-.IR getcwd ()
+.IR getwd ()
 .IR index ()
 .IR mktemp ()
 .IR rindex ()
-- 
2.32.0

