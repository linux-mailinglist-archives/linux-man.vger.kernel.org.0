Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C339C342939
	for <lists+linux-man@lfdr.de>; Sat, 20 Mar 2021 01:00:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229564AbhCSX77 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 Mar 2021 19:59:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37368 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229519AbhCSX7o (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 19 Mar 2021 19:59:44 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3A20C061760
        for <linux-man@vger.kernel.org>; Fri, 19 Mar 2021 16:59:43 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id 12so6261189wmf.5
        for <linux-man@vger.kernel.org>; Fri, 19 Mar 2021 16:59:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=fzXSO88y1tcSQOJ39O0scp70ywoQUi/ukUoZH5np5N4=;
        b=oUfkmHF0BmosnQ/Y9JUjld0bMtnHDvkpo4XcRofIuc5YvLNgbTkQPKAnz7uqArNLGq
         QAFhs3arM3373DaauiWGt4UNF+y68GMYv2zGboPYYEJAnL3Hsm5Mqp7xh7zMlq6p1RxB
         b7MiCgZE1HoQ18mG81omGtK041tlDGVu6PJLhTcwnlOXvf1P2NkNZyIydm4T6jS6uowY
         xDq7X7oElZ6pzVWDNiHhVEyInp5/BkSXYh8D4bGjV7CLwDoPv95woIV7f0qwQjqyeqXN
         IA8rDffyoNno2VS1NGmMTIcZx9RSZKu1mnF9HWk1m/Q6RN3ZhPbLD+WEBO3YzASNUNdE
         fgUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=fzXSO88y1tcSQOJ39O0scp70ywoQUi/ukUoZH5np5N4=;
        b=SdFACk8jCPm5E7Z8EvY5xmkXEhoQhuOLBqNcgwNctUT3Ni7ASY3+630ix+T+J/Xhcm
         IwO3dwT8b4yxzVPsQiZWz1eNNEUsHgOMdPba8UgJ5VECRNyjwgnt8MACXrdFYtszuTgk
         7GmAangHxJePQwVe1xsvGKsSuIr2jSrP5EUKV0rI/2Xe7TkCV5TJM1RQQY+d3yXkgqsb
         L0HCLvl/V6W5i0wklwubwIAGE856oYsc0+BNxS0NJ8sOSgVDuIj8YLnE17yVREJHpkEO
         8QFsBFCxkjk68EFTJfm613NuLKQDsfNSs0CVSmTPc6M9jPzwffXVudQ88vsWvd8368J0
         guHw==
X-Gm-Message-State: AOAM530LrBW3wa/M/2ii9hmTcsB2SMBCx/pNpZoxL1fLHApSQKinSO0b
        RXtno1tJ1w/kyiujIr5HOI4=
X-Google-Smtp-Source: ABdhPJzNPFOqxvRezwVh7sVIMD2iHH6bLHNXRdqmE1lBr3i2hGQNAedZBRjwjlP1U8baUJnPyuJZcg==
X-Received: by 2002:a7b:cdef:: with SMTP id p15mr5775693wmj.0.1616198382716;
        Fri, 19 Mar 2021 16:59:42 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id q207sm9327832wme.36.2021.03.19.16.59.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Mar 2021 16:59:42 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] printf.3: Minor wording tweaks to Utkarsh's patch
Date:   Sat, 20 Mar 2021 00:57:20 +0100
Message-Id: <20210319235717.28264-5-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The format string refers to the whole string passed in 'format'.
The syntax referred to is that of a conversion specification,
as called in the manual page.
Use specific language.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/printf.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/printf.3 b/man3/printf.3
index 7c993074c..f69a44066 100644
--- a/man3/printf.3
+++ b/man3/printf.3
@@ -193,7 +193,7 @@ an optional
 and an optional
 .IR "length modifier" .
 .PP
-Overall syntax of format string is:
+The overall syntax of a conversion specification is:
 .PP
 .in +4n
 .nf
-- 
2.30.1

