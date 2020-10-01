Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CDCA6280226
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 17:07:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732495AbgJAPHC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 11:07:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35490 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732414AbgJAPHB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 11:07:01 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 98164C0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 08:07:01 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id w5so6194045wrp.8
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 08:07:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=YBanW5L7jTWepsRc1GN7VlVzm8sGI1LC0WeenfAKtkw=;
        b=OcLmKrO7yi81ycswKgoSgNMkycPFrGaXMyNsnSuP0QbgTGSk/timyL+DyA5JJO0QSw
         WAR12N+BoOaDJc9hvCMWqdUiQbJPNYEiLME0bNJCDPneYelUbMqmcBxODz+tEZrfgCV8
         7TXtY8+HL+/G2zbVG0+lEYZDeUf4WcJ0zfsXRTWa1bOM9RZ4+0gnUJTxa/pEFs6KDlKV
         6XiWSMeXhJtfT0ePVXieiAe4yg1UtV8YU5lQQFUyDi05Cj31yNPLi3U2r4NOIigUv40o
         jG7tWnrG3NKSS009fx5Cdu90t5QPFy4WW5xL7zYXeTR6Z0p5RL33DnPM+YZTIhcdc1P8
         t6bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=YBanW5L7jTWepsRc1GN7VlVzm8sGI1LC0WeenfAKtkw=;
        b=ocpZ9fvGPJA1fHXDdfoM+aaiA4Fc2IFRjyuEJQt5ciY5D76IGmNubTn1fEwOhkzR1y
         T0kwD0wLxTDW7ABVxeZl/zXqWcFiyodm02pQ6MvPcOMggrSWNOIqfsJp53keNhd0iJmQ
         2MDG7T4vCm/HrVgVgLt2pBjTPrzpMBAPwt8TzUCBZNT/MwasrxzUpwvZvsqDySohArq8
         u8CHGUWvnyaUYfTeyzkHmI0NRpmnSQ/9OQY3TuDsoi9fROdMvz0kNDwslIsIMBOzB9Dp
         HIa/qKGO+JoPDYAnqERhYrZ7tMdaF9nAv/NUtfIi8jtgZndIFivc4BUf4l1Hbph9Lbnk
         BzPg==
X-Gm-Message-State: AOAM532RSp6/LaXZuqG0B9jS6JSJy5k4IvGAaHHJJXFtE51Lq3jUZi8a
        FfAnmFZBFJgVmtSOJ5xs5oo=
X-Google-Smtp-Source: ABdhPJy1Rz2F8h8AWK8p6vGJDWB34fKaLPVId0Su0rdQwIFbQl+qzL0J8qlaP/GCmk76PHPCQpzFjw==
X-Received: by 2002:a5d:5751:: with SMTP id q17mr9732010wrw.409.1601564820328;
        Thu, 01 Oct 2020 08:07:00 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id f5sm351238wmh.16.2020.10.01.08.06.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2020 08:06:59 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, gcc@gcc.gnu.org,
        libc-alpha@sourceware.org
Subject: [PATCH 2/2] void-*.3: New link to system_data_types(7)
Date:   Thu,  1 Oct 2020 17:06:39 +0200
Message-Id: <20201001150638.102544-3-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201001150638.102544-1-colomar.6.4.3@gmail.com>
References: <20201001150638.102544-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/void-*.3 | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 man3/void-*.3

diff --git a/man3/void-*.3 b/man3/void-*.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/void-*.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
-- 
2.28.0

