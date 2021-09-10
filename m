Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E47D540738B
	for <lists+linux-man@lfdr.de>; Sat, 11 Sep 2021 00:47:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231742AbhIJWsk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Sep 2021 18:48:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56860 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231225AbhIJWsi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 10 Sep 2021 18:48:38 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E48BC061756
        for <linux-man@vger.kernel.org>; Fri, 10 Sep 2021 15:47:27 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id 196-20020a1c04cd000000b002fa489ffe1fso2478164wme.4
        for <linux-man@vger.kernel.org>; Fri, 10 Sep 2021 15:47:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=HmJFbBsL/0+9XuFUfEjQR91Wm/sgNHFYRDv1Tkp7WAM=;
        b=KHj/6kfhYnXMhY6AXjFMP7jDEKBAc3Q3XQMXK+hDkrQibavJCMpnHNQ/iNg/QGIyOh
         /0Z45Ob0Nui5LJUYd6HUvuuO/gsgj3y1M0fxW8KQxMynssfk7t+EmYF55iUyyfnIzvz5
         XRo2ISF5fD9+WFgyw8V07kibjL3u+rG4oc+5cr0NiWUwW8mFxK9+vBxm2RzYspbepLfg
         5GXcf0/Qhs6m1ZU4yd3+L8cXttixnUZPidJth4Bu2mBckfQG9mNzau+aokQXy/5noRqJ
         VAjq0nymA49G8fLds1UEid/OUaOFvNYJGn9WgFsbFWOsEF6P4u87Yux/MEEgY8YBReHJ
         F7rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=HmJFbBsL/0+9XuFUfEjQR91Wm/sgNHFYRDv1Tkp7WAM=;
        b=3NMx9Mlz2S88wcL8ySvZyu2nk8RefrLjR8fbkGTCIcZPhCynZXlO0IO+UyxqGRXPTI
         WAzoWwG0O+snZ+Sw/X4z9U+ehYSVYjCuxXIq3tM8QOgFfm3Rk4XPLUfGIAPbDoBIsE0E
         KjZs65iChpYQVM3U/died825iN6znSnxENTAyDhje7sF1m6AKjVmA0vf/29iKRmhxR6H
         37/RTyuuFZdkGkLeu36/4Ou94vf1JfJS/VSLV8vKEHOWG4yxM6AygpRDH2H0mKnmZWVW
         exPSjvwT9CZrL7aNq03A5AdnxLWfMI8s01Jno2ypZ5ZJpKNEev/MjIOcDj6mCrImhJKM
         mndg==
X-Gm-Message-State: AOAM531VX0bhasRaRrjZ2acffBxOiD5SVYmc8KvJR2BjgFfjpCJlioRl
        P3GgCSvvY9BYIVK19UBJK4e4mnbvCWg=
X-Google-Smtp-Source: ABdhPJwcmn9baGYcSIvUi+LohZqNokHYKt4hVjwz2YW1rwApFu/IDz3m0lh0adUBlcaQYog5OKShcA==
X-Received: by 2002:a05:600c:2046:: with SMTP id p6mr35108wmg.88.1631314045771;
        Fri, 10 Sep 2021 15:47:25 -0700 (PDT)
Received: from sqli.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id k18sm15520wmi.25.2021.09.10.15.47.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Sep 2021 15:47:25 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 07/15] process_madvise.2: Minor tweaks to Zhangkui's patch
Date:   Sat, 11 Sep 2021 00:47:08 +0200
Message-Id: <20210910224717.499502-8-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210910224717.499502-1-alx.manpages@gmail.com>
References: <20210910224717.499502-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

I also fixed surrounding cases to avoid confusion.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/process_madvise.2 | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/man2/process_madvise.2 b/man2/process_madvise.2
index caa8bc0b3..6a5c6ebb9 100644
--- a/man2/process_madvise.2
+++ b/man2/process_madvise.2
@@ -105,15 +105,15 @@ The
 .I advice
 argument is one of the following values:
 .TP
-.BR MADV_COLD
+.B MADV_COLD
 See
 .BR madvise (2).
 .TP
-.BR MADV_PAGEOUT
+.B MADV_PAGEOUT
 See
 .BR madvise (2).
 .TP
-.BR MADV_WILLNEED
+.B MADV_WILLNEED
 See
 .BR madvise (2).
 .PP
-- 
2.33.0

