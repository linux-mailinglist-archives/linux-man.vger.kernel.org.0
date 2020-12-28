Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 546912E358F
	for <lists+linux-man@lfdr.de>; Mon, 28 Dec 2020 10:45:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726944AbgL1Jpl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 28 Dec 2020 04:45:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45860 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726697AbgL1Jpl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 28 Dec 2020 04:45:41 -0500
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB4F6C061794
        for <linux-man@vger.kernel.org>; Mon, 28 Dec 2020 01:45:00 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id q75so9376164wme.2
        for <linux-man@vger.kernel.org>; Mon, 28 Dec 2020 01:45:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=qWamLoSaE8LOTOTMx2btz/khGmXjzv2Y7nbOxp0ixiI=;
        b=VonLnq1bp9Io2JJCLgs46zu9N+Nvs/97aoQlBJuhEyqUc2Bvk4oEhkwZxNZgF72tvS
         cFBt+fwdqqrU4/O4wo2pkQdwy/S1Vmvd97DMev2YuzaPwEU2V5dKWMqwR2FOYPILwYdY
         gyWRCizkVOHWIKo2vB7Y+dwR1KCendyDK61XSewC2mBHM2oTXnA0ekcx57xnbiBF4jCE
         OQ3moo2jUD0JrJtWh2WKsuMwZzgs1+Ym9WOEDbZ87+ygBbTRX0ukxfZNjUyaEi43Fs3O
         QnpDmZLfzgGUzzAQES5b98YlWOkmgaDA15eWxE71b62XpNjsQP+DLq3OUaXhuDV7SHwQ
         ahHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=qWamLoSaE8LOTOTMx2btz/khGmXjzv2Y7nbOxp0ixiI=;
        b=RLQxSY8/grFE+1WTvve8BZ46lE44TukQkjwEGlU6jtW84Fvy7xnYKatTX6upfPQ7jl
         XIdJ2M/k5xlOaUJmaU5/ZIQR9n3jxPbpadCqOzkcNLWCcRRDpj4tykfHtKaPR7c4OsRk
         DnXVtxUZpgB9jijEHrHjmt+Ux5b9wqBNRH8q/uKfZkOtenLaelAmn9T8GcgtEOiQ+CK/
         E+TSCzEEEK2dVqNZbVv2kFZN68DCI/ryCW7iHvzmHbndxIXw44jIIRuEMLgV4WWca49G
         YzB0ZDq7widZIHfx/Q6MimX7oFqOJ1TF+GWHigTOBpuCu+hEnJ3/RcnxfgpiZ152C8LA
         CSJA==
X-Gm-Message-State: AOAM531r18YPPj4ZG55zj7bnKSuVy9ITjpmhsYgaQLt6INfOA4rC5xwS
        uwkY/+Qw1VOpS4Z7UhYboh4=
X-Google-Smtp-Source: ABdhPJyAEXzq7mCmpXrhzYKX3Dfc6Mk911jGL60QXCN5LAPWmREWLBYT3+JVQytFs7Pz2j3Ep30eVQ==
X-Received: by 2002:a1c:4904:: with SMTP id w4mr19363165wma.140.1609148699709;
        Mon, 28 Dec 2020 01:44:59 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id c6sm32119165wrh.7.2020.12.28.01.44.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Dec 2020 01:44:59 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Jakub Wilk <jwilk@jwilk.net>, linux-man@vger.kernel.org
Subject: [PATCH 1/4] signal.7: tfix
Date:   Mon, 28 Dec 2020 10:42:10 +0100
Message-Id: <20201228094211.4917-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Jakub Wilk <jwilk@jwilk.net>

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
---

Hi Michael,

Here are some tfixes I merged from Jakub.

Thanks,

Alex

 man7/signal.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/signal.7 b/man7/signal.7
index e5b9e00ca..1b48356b8 100644
--- a/man7/signal.7
+++ b/man7/signal.7
@@ -357,7 +357,7 @@ From the kernel's point of view,
 execution of the signal handler code is exactly the same as the execution
 of any other user-space code.
 That is to say, the kernel does not record any special state information
-indicating that the thread is currently excuting inside a signal handler.
+indicating that the thread is currently executing inside a signal handler.
 All necessary state information is maintained in user-space registers
 and the user-space stack.
 The depth to which nested signal handlers may be invoked is thus
-- 
2.29.2

