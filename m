Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4DD312C6DC7
	for <lists+linux-man@lfdr.de>; Sat, 28 Nov 2020 00:49:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731014AbgK0XrA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 27 Nov 2020 18:47:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35052 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732251AbgK0XqP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 27 Nov 2020 18:46:15 -0500
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC611C0613D1;
        Fri, 27 Nov 2020 15:45:51 -0800 (PST)
Received: by mail-wr1-x444.google.com with SMTP id r3so7174111wrt.2;
        Fri, 27 Nov 2020 15:45:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ArS/EwWJdEoWtOikMdJmuMJ71dFV+wrZB3bzscQJ/Nc=;
        b=cad8pQahC4RRnxSAYAIvt5EVtjpY3oNE27b/2bvcra7gpMNKofSF5JgfxostkARLG2
         51W+iimFudA79Ct/cmwn8WzQEAQ9GKHz/399SSZRQqP5LXqND7jYshNQLpKvZHSN8fN9
         CPMV1bB/IlANQS481ibCJjKFhTAiIzxZe3FRJNTGKaMoCqyUPnmCMNjyBYyiHZBqGiRd
         G/Qs+vkVWkOZPQXIBLZccRK6gm/PDpq8sB1gzXMDmVxVZGr7DZjhytelUQr5DjqP7P1S
         JrvFtTFTj/ADLusLHoH/fk8KQ+KsyjCtqVLJlPCUAxJYXHEKXa6Ag82m20Wd7o4nZ3pt
         HbTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ArS/EwWJdEoWtOikMdJmuMJ71dFV+wrZB3bzscQJ/Nc=;
        b=H5y3fv8KOXPoOA9jx5hm/hbwiYJ+jKpf2Ey77gYeF9Ct6LJAkXztwUnwt3IEgibFJc
         8DgzYOpOykq4H2UAW1FLrceuFJncqfUdvvIHPEc+rdeXtolX97tG3yplzTW853q9jObP
         h3ktj58kD3Z9F7jn7dKg+XvY0H1L9WnbepMb42utr4mol8Kjf67LW4QwN06Hcdal9CCw
         2SqWS8hbvtpO4xKDqJ3mSpDPdpQqsjtGL2f53iIsztW9adDGdGeL2HIk+QweB7CWBPBx
         sVnHAaWVYruDqwA05mG4qVY5IJM4TLR8Ie9VGZSdqwMu89CEw0Rkcmfjw/9uzK09lqce
         aJsg==
X-Gm-Message-State: AOAM5338qbv02aLXbfDMdMiW6DW+QaULsyycrJ2us2ZDONBbPYDVgeZL
        QO0ywInQ+mohYkj4tAbDuGM=
X-Google-Smtp-Source: ABdhPJyuNeqFF0Mzk0Hy9cB5zQVOpgJLjz322bEapz0SAPrjuXFR/nAINaj9TL/njybPZcn5hRI5XQ==
X-Received: by 2002:a5d:4052:: with SMTP id w18mr14227792wrp.63.1606520750447;
        Fri, 27 Nov 2020 15:45:50 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id a12sm17963600wrq.58.2020.11.27.15.45.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Nov 2020 15:45:49 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] subpage_prot.2: SYNOPSIS: Fix return type: s/long/int/
Date:   Sat, 28 Nov 2020 00:44:18 +0100
Message-Id: <20201127234417.26257-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The Linux kernel uses 'int' instead of 'long' for the return type.
As glibc provides no wrapper, use the same type the kernel uses.

......

$ grep -n wrapper man-pages/man2/subpage_prot.2
40:There is no glibc wrapper for this system call; see NOTES.
99:Glibc does not provide a wrapper for this system call; call it using

$ grep -rn SYSCALL_DEFINE.*subpage_prot linux/;
linux/arch/powerpc/mm/book3s64/subpage_prot.c:190:
SYSCALL_DEFINE3(subpage_prot, unsigned long, addr,

$ sed -n /SYSCALL.*subpage_prot/,/^}/p \
  linux/arch/powerpc/mm/book3s64/subpage_prot.c \
  |grep return;
		return -ENOENT;
		return -EINVAL;
		return -EINVAL;
		return 0;
		return -EFAULT;
			return -EFAULT;
	return err;

$ sed -n /SYSCALL.*subpage_prot/,/^}/p \
  linux/arch/powerpc/mm/book3s64/subpage_prot.c \
  |grep '\<err\>';
	int err;
			err = -ENOMEM;
		err = -ENOMEM;
	err = 0;
	return err;

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/subpage_prot.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/subpage_prot.2 b/man2/subpage_prot.2
index b38ba718f..d6f016665 100644
--- a/man2/subpage_prot.2
+++ b/man2/subpage_prot.2
@@ -32,7 +32,7 @@
 subpage_prot \- define a subpage protection for an address range
 .SH SYNOPSIS
 .nf
-.BI "long subpage_prot(unsigned long " addr ", unsigned long " len ,
+.BI "int subpage_prot(unsigned long " addr ", unsigned long " len ,
 .BI "                  uint32_t *" map );
 .fi
 .PP
-- 
2.29.2

