Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C89A934BE73
	for <lists+linux-man@lfdr.de>; Sun, 28 Mar 2021 21:09:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229655AbhC1TI2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 28 Mar 2021 15:08:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48082 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229950AbhC1THx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 28 Mar 2021 15:07:53 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 84640C061756
        for <linux-man@vger.kernel.org>; Sun, 28 Mar 2021 12:07:53 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id j7so10696634wrd.1
        for <linux-man@vger.kernel.org>; Sun, 28 Mar 2021 12:07:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=qHzDdr3iteiq5nHPSK++tVVWEL5J0DJ3t/58kw3szOA=;
        b=H/rRArdGCjuwz7NFswJcRcfuIIwA8ylVhEMSM0vizwJ7PiS/oIJuvgkJe2k+NdtYpF
         jU2yY3aDm/+n6oNboyg7p35nC9jCP/l/iuItzxge8kUe66pa1teoFIhWG+7NvavH6l/3
         gJV+l8cc9Tp1LSy13XRexlxoho3pPDQSiJ5OonAzpv4rGhMIjP+UIWopLPojpK9cGkEL
         /btQFOFw6+D4AAFZh66yFxl63SHzMgM30QtslX7tnkaM/EOLib+SXp8cC+aocfScgxUf
         GNuWdlxYc6L+zjtAJlnS77Z5ac6zwoaSpPtIWwc77Ba97dGbvl2GBpLJSS3Xm+VwOA8x
         kTlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=qHzDdr3iteiq5nHPSK++tVVWEL5J0DJ3t/58kw3szOA=;
        b=faV57U6KaoXn9X6MFXcMr7Q6zHIYQgfPD8CuAsTzjSCsYSGxBITh3UijYysBMY0Idh
         mJGvQtqWP8EfJhAMlhX45jyaxWe8/zaEFUMqf4+aNqttxVCMaaAoPCAnGiA3NPvVvAq/
         JReYpUM1EdEt/3l7XWUpKsGaFJ90y/NmpyNPZKe6+rAwlf6jHaNKvNA/pcu7tJd0neyU
         6W7fWb0+arBUJAQ3SSvaZvcI50WESWNbDejdxkw/zNmoUxH+rUUxBBmXYQBkQ+8R+88Y
         r6e8weSFXJf6Fc/ywmam4lw8NOjrAT/taIURexT0u0nOf4nWHIXLU9vdakDSQNPtfjXh
         126Q==
X-Gm-Message-State: AOAM532YtjlkJaUa+K1pjCVI1rev16UDS/bQh1WmghOUiKqTEQmzNH3T
        MrIFlqPtR65ASI5vBu7+g0s=
X-Google-Smtp-Source: ABdhPJzMOqFz48dCea3hHyFT7lfqG8HQhhrah4Yf/kabcLDrGR04N4vYF5U+++dZAiUK9sjpoN2gpw==
X-Received: by 2002:a5d:664e:: with SMTP id f14mr25894244wrw.382.1616958472336;
        Sun, 28 Mar 2021 12:07:52 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id s20sm21406129wmj.36.2021.03.28.12.07.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Mar 2021 12:07:51 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
Subject: [PATCH v3 3/3] .gitignore: Add file
Date:   Sun, 28 Mar 2021 21:06:02 +0200
Message-Id: <20210328190601.68165-3-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210320230659.182237-1-alx.manpages@gmail.com>
References: <20210320230659.182237-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Ignore:
    .html: directory for building html pages.
    .patches: directory for storing patches before sending
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 .gitignore | 2 ++
 1 file changed, 2 insertions(+)
 create mode 100644 .gitignore

diff --git a/.gitignore b/.gitignore
new file mode 100644
index 000000000..593d39213
--- /dev/null
+++ b/.gitignore
@@ -0,0 +1,2 @@
+.html
+.patches
-- 
2.31.0

