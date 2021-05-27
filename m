Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3382A39284B
	for <lists+linux-man@lfdr.de>; Thu, 27 May 2021 09:14:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234279AbhE0HPv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 27 May 2021 03:15:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33150 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235012AbhE0HPg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 27 May 2021 03:15:36 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5EA64C0613CE
        for <linux-man@vger.kernel.org>; Thu, 27 May 2021 00:14:02 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id n17-20020a7bc5d10000b0290169edfadac9so1936616wmk.1
        for <linux-man@vger.kernel.org>; Thu, 27 May 2021 00:14:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NEKIGVtxy4b6kzHwc/HyYZT95DWgW6RLBdjjBL/Lpjs=;
        b=PJ4ECg2/lgau9M0+TS6JOfbAIPKeKQFpqOM0U+euStubbMujRYpC5IX0jjB8KeNTlu
         dJujZaeoycRBttkV2VzxIAobOv2UFRw9T5vx17kJ1zLkxIR8bdWgjKHqbwj+FhJlfT49
         W5dXpmjojrbKIz4MxS4sxcji3w1h19L2SbbHEaS7i/RRo8Db5+jZY8cyS4Pu+eNAEQU8
         sLV10Xi/l10IDCE5/qNBz/9UjYelOm2n1iKfkfm9cUFBW2U660d8GgF6+QdHK7ZHVovf
         DTBX7XJdL1/REox81s+QoW8MZ5pHgdFLKYSIVjwjTT7azEruIawgGHZdjnuQU9mmCjK0
         q3Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NEKIGVtxy4b6kzHwc/HyYZT95DWgW6RLBdjjBL/Lpjs=;
        b=FO3I2JxHGkF+izxHTLA3k2q1Q5JrFounmwufRvs02hf12vBBkoCSS8mSSw1pTFcUiJ
         vqeRl7/E1yhVdfCt1kImk50PRWTw93+DfzTQ8Pm5RtvK5MZHAmj+2RlucjRDs6CLiYNn
         WDz6DIu5zzP5eBtk6ctqx+YC1NhUO7Iqo4p0ZrjijADnCS1qAoc6oST0/viS7m045Ncd
         bT8E/qf5t2cxL6bkhywd0W1U1qplqdC8vIss3ETrmMkGd/LHapGyqmFkj/Mz5ji9X7Pr
         4QVp+UDqkTzsSCajLUAUVC8vA4kOocRq7V9ZW4YaOSRVppAH3lAjjDk+BvntmnBvkQpZ
         /RVA==
X-Gm-Message-State: AOAM533ezNLDyk4JCTk3WaQwFi4xFMj62/ww24xlo0eZzKkaT7YwH4Jq
        hmZJtB9sVB5BedRLdAbQ7j0=
X-Google-Smtp-Source: ABdhPJxTsl44gny8sCgMSdBvBdfcdoLTEafOumF06ZZAVPzD9xkc1nNm4Mc2SwXIAFGs3F/G+UUF7Q==
X-Received: by 2002:a1c:c90f:: with SMTP id f15mr6896200wmb.142.1622099641022;
        Thu, 27 May 2021 00:14:01 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id r4sm1826040wre.84.2021.05.27.00.13.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 May 2021 00:14:00 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     dann frazier <dann.frazier@canonical.com>,
        linux-man@vger.kernel.org,
        Heinrich Schuchardt <xypron.glpk@gmx.de>,
        David Howells <dhowells@redhat.com>,
        Pedro Principeza <pedro.principeza@canonical.com>,
        Randy Dunlap <rdunlap@infradead.org>,
        Kyle McMartin <kyle@redhat.com>,
        Matthew Garrett <mjg59@google.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH] kernel_lockdown.7: Remove description of lifting via SysRq (not upstream)
Date:   Thu, 27 May 2021 09:13:42 +0200
Message-Id: <20210527071341.5764-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: dann frazier <dann.frazier@canonical.com>

The patch that implemented lockdown lifting via SysRq ended up getting
dropped[*] before the feature was merged upstream. Having the feature
documented but unsupported has caused some confusion for our users.

[*] http://archive.lwn.net:8080/linux-kernel/CACdnJuuxAM06TcnczOA6NwxhnmQUeqqm3Ma8btukZpuCS+dOqg@mail.gmail.com/

Signed-off-by: dann frazier <dann.frazier@canonical.com>
Cc: Heinrich Schuchardt <xypron.glpk@gmx.de>
Cc: David Howells <dhowells@redhat.com>
Cc: Pedro Principeza <pedro.principeza@canonical.com>
Cc: Randy Dunlap <rdunlap@infradead.org>
Cc: Kyle McMartin <kyle@redhat.com>
Cc: Matthew Garrett <mjg59@google.com>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man7/kernel_lockdown.7 | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/man7/kernel_lockdown.7 b/man7/kernel_lockdown.7
index 30863de62..b0442b3b6 100644
--- a/man7/kernel_lockdown.7
+++ b/man7/kernel_lockdown.7
@@ -33,11 +33,6 @@ where X indicates the process name and Y indicates what is restricted.
 .PP
 On an EFI-enabled x86 or arm64 machine, lockdown will be automatically enabled
 if the system boots in EFI Secure Boot mode.
-.PP
-If the kernel is appropriately configured, lockdown may be lifted by typing
-the appropriate sequence on a directly attached physical keyboard.
-For x86 machines, this is
-.IR SysRq+x .
 .\"
 .SS Coverage
 When lockdown is in effect, a number of features are disabled or have their
-- 
2.31.1

