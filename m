Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 64F5630EFCF
	for <lists+linux-man@lfdr.de>; Thu,  4 Feb 2021 10:39:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235073AbhBDJhi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 4 Feb 2021 04:37:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48044 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235066AbhBDJhg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 4 Feb 2021 04:37:36 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB360C061573;
        Thu,  4 Feb 2021 01:36:54 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id m13so2623167wro.12;
        Thu, 04 Feb 2021 01:36:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7Oeag4Q86b92xvRfgGJMTfVjxzKZ0rlCjKIMK5N8Lis=;
        b=NRVv6KkKgg0JkGLw8hZUFvzgK29qku2cluPJ09C3ciq5AyJdUb1/sv7bDVwONhI+iN
         gtoe/aVmhazwpPxjNMrvTZXd+lqgX/VFyANmybsmwokDs3LpF+HSdsSvnslFyBYNKi98
         +LLN1M0vr6OrvvbMOYR7+6uM77AxEgkDA3OrAolSoTu91VuYu3XmzR/QU5zQfuK+yyrt
         P6xiQdwseIO4Tyc8B3QPfvikWNUM9Fg9egR7qqlm2zldiW1oVfRsDNgo4eJes1Aoutzh
         kSiLcWHklfN3PD2g0byW0w0jlZMW3g7v9VQbIirw0SyGcHpuuMHDq8Law/FmXgmzq9/k
         jZrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7Oeag4Q86b92xvRfgGJMTfVjxzKZ0rlCjKIMK5N8Lis=;
        b=iPE9t7PMi+I6p4c1dm7kIJl0HGjH5LkVy4f/T+x1UY8b4LmhoK1QhL2XHFVnXLrnNX
         UvYvesARR/+ZLdZ+Fb6Ku3fUSuF8o7HDLGE75HFhyQuE4bafceM0f3P4VBB1dUoYyMCP
         PIl+lZdtGdvCnE8A2a0wAlJPE1xL2BHDdWCnkVI+J33IH3zcXB7DRzXibek49ovapeNb
         Yi5tAAwiGOZB+kcKGUIex2ZqEMBqVqbSLKXGgOi6WDHXhHCdIUFVcz0nlv5BcbfSWrV/
         uab2sI64MeMAhwp5kGYPyyLTboykBPoNcQAS9rY93Bfxz5C4kRyxWRF+pmW3i5KjBFv7
         iXSA==
X-Gm-Message-State: AOAM530nve5iQ0Mj5ws/TXv3QLLgD2JyBWfODmgv6F8mmoE7gxRsljj5
        APmh7svH4uDQ7AJiD3bYCl4=
X-Google-Smtp-Source: ABdhPJxrke1pDX5JESsPVh6sHda2lyYKhDQ32bCZyVN5cDvpPX1AftW8Rmv98EnwIElW53yuTWrqEQ==
X-Received: by 2002:a5d:5708:: with SMTP id a8mr8177556wrv.211.1612431413492;
        Thu, 04 Feb 2021 01:36:53 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id 62sm5705742wmd.34.2021.02.04.01.36.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Feb 2021 01:36:53 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] ipc.2: Fix prototype parameter types
Date:   Thu,  4 Feb 2021 10:30:52 +0100
Message-Id: <20210204093051.184049-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

.../linux$ grep_syscall ipc
ipc/syscall.c:110:
SYSCALL_DEFINE6(ipc, unsigned int, call, int, first, unsigned long, second,
		unsigned long, third, void __user *, ptr, long, fifth)
ipc/syscall.c:205:
COMPAT_SYSCALL_DEFINE6(ipc, u32, call, int, first, int, second,
	u32, third, compat_uptr_t, ptr, u32, fifth)
include/linux/compat.h:874:
asmlinkage long compat_sys_ipc(u32, int, int, u32, compat_uptr_t, u32);
include/linux/syscalls.h:1221:
asmlinkage long sys_ipc(unsigned int call, int first, unsigned long second,
		unsigned long third, void __user *ptr, long fifth);
.../linux$

function grep_syscall()
{
	if ! [ -v 1 ]; then
		>&2 echo "Usage: ${FUNCNAME[0]} <syscall>";
		return ${EX_USAGE};
	fi

	find * -type f \
	|grep '\.c$' \
	|sort -V \
	|xargs pcregrep -Mn "(?s)^\w*SYSCALL_DEFINE.\(${1},.*?\)" \
	|sed -E 's/^[^:]+:[0-9]+:/&\n/';

	find * -type f \
	|grep '\.[ch]$' \
	|sort -V \
	|xargs pcregrep -Mn "(?s)^asmlinkage\s+[\w\s]+\**sys_${1}\s*\(.*?\)" \
	|sed -E 's/^[^:]+:[0-9]+:/&\n/';
}

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/ipc.2 | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/man2/ipc.2 b/man2/ipc.2
index 469185638..5cfa3df3e 100644
--- a/man2/ipc.2
+++ b/man2/ipc.2
@@ -27,9 +27,8 @@
 ipc \- System V IPC system calls
 .SH SYNOPSIS
 .nf
-.BI "int ipc(unsigned int " call ", int " first ", int " second \
-", int " third ,
-.BI "        void *" ptr ", long " fifth );
+.BI "int ipc(unsigned int " call ", int " first ", unsigned long " second ,
+.BI "        unsigned long " third ", void *" ptr ", long " fifth );
 .fi
 .SH DESCRIPTION
 .BR ipc ()
-- 
2.30.0

