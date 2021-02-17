Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9D3FD31D72A
	for <lists+linux-man@lfdr.de>; Wed, 17 Feb 2021 10:58:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231742AbhBQJ5B (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 17 Feb 2021 04:57:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46568 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231470AbhBQJ5B (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 17 Feb 2021 04:57:01 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 64A45C06174A
        for <linux-man@vger.kernel.org>; Wed, 17 Feb 2021 01:56:20 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id l12so16730858wry.2
        for <linux-man@vger.kernel.org>; Wed, 17 Feb 2021 01:56:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=+V6fVJ/1lDUPDxxzrJ90Y/DdsHf9LhpjLd1YqplcSs0=;
        b=nK2vcXtk+7AY4yvD7LbsSEaNwp+omhtQc/kcrK2zKoDbTnYzKSNVJNuS+0wd1BJUFQ
         RcECMMlhVtq0c65CCXBuBQySDrdWtTE/yqsnYhGLWzHKYi0nfQj/GCV0p30sMycO5ndk
         aqRuIeycmax37gxBvCk5WhgAfHvSycDlBmEVlrCFflNbHe7VYNP7qZYF0hlyNxPfecOy
         pAZhBtGX1GojVCLbhkCGKA6NOFYVsoLzTz5ldK9pE+edJ8D9QPhk83o6ozXSur/VOOqY
         ylgJ3OAGCpPaojPI/9BMOm94ZrRLX7JZU+U0EojMFfwgcLku8+KPyWug5RxhAi7T8TEY
         2/5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=+V6fVJ/1lDUPDxxzrJ90Y/DdsHf9LhpjLd1YqplcSs0=;
        b=qSITUpJty+aRkD7yntV5u88a+aWkfAjN7eyKxxk9iIlI6HjaLl9lp1AO9QgS+/rylA
         AYNMAFIxuQKspDRZpvg646Kd9L6qeyWkxR4zCEXMysr7xB0EtWhPzhHLeR8J7Up9NzPw
         DBBhR9pl29MMsomf1PMx3sLcB2RVyRyrumLfQcPPMHFORBrGsslfKvXI2b6ezNSnEImE
         8Iox+eiWFD8wAbmgNyMCVY8TGD2k8WD05K0FyG/qQV00+8tya8pUGzmBAeanwETM7aXx
         yjh6R3uRzM06Le5bRt6XmqoPX7cPwkyAeRu2+GMD/R0r0aQOdFAXWBKQp/gmv0Opnvc7
         H4Zw==
X-Gm-Message-State: AOAM530+B5HfjrQR0J5hyJAqrVNpbgmu+rb5ia4ZRt5ltCfRi7B1n8Yo
        JSzlvEffqRWm6wOuxktUqJk=
X-Google-Smtp-Source: ABdhPJz6vIRmCRAMeu3ul1skSYURL+Blta5mDetbmht75qjkWs7HA3s2NddIIQt3AVBEZjcrPaLVhw==
X-Received: by 2002:a5d:5010:: with SMTP id e16mr28147264wrt.202.1613555779238;
        Wed, 17 Feb 2021 01:56:19 -0800 (PST)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id o25sm11105437wmh.1.2021.02.17.01.56.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Feb 2021 01:56:18 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH] strerror.3: VERSIONS: Document that strerrorname_np() and strerrordesc_np() functions first appeared on glibc 2.32
Date:   Wed, 17 Feb 2021 10:52:32 +0100
Message-Id: <20210217095231.27727-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---

Hi Michael,

I struggled to use strerrorname_np(), until I found that these were
so new that Debian Sid didn't have them :)

Cheers,

Alex

---
 man3/strerror.3 | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/man3/strerror.3 b/man3/strerror.3
index 5dfe76f69..07684c40a 100644
--- a/man3/strerror.3
+++ b/man3/strerror.3
@@ -235,6 +235,11 @@ Insufficient storage was supplied to contain the error description string.
 The
 .BR strerror_l ()
 function first appeared in glibc 2.6.
+The
+.BR strerrorname_np (),
+and
+.BR strerrordesc_np ()
+functions first appeared in glibc 2.32.
 .SH ATTRIBUTES
 For an explanation of the terms used in this section, see
 .BR attributes (7).
-- 
2.30.0

