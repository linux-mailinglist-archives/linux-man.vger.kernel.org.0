Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E888F31918A
	for <lists+linux-man@lfdr.de>; Thu, 11 Feb 2021 18:51:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232644AbhBKRu7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 11 Feb 2021 12:50:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54522 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230185AbhBKRsl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 11 Feb 2021 12:48:41 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5BE8CC061788
        for <linux-man@vger.kernel.org>; Thu, 11 Feb 2021 09:48:01 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id w4so6308611wmi.4
        for <linux-man@vger.kernel.org>; Thu, 11 Feb 2021 09:48:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ntQj5neldySuCoMH3DC+4aKJhKbtolRn7XINQx84I/g=;
        b=iVQusosqXJIX+N4upKIYHaG/P5SgZ7BQN7qCWznHEeRiKW5aGR/COKlLZYw03x2hao
         rZ8anVH6bLXfi5R+EFxtMH3U/H0jTt5dMGxbmVoNOxCgTvsfPasADQcM50MaAc0ZmM47
         XNE5GgdS+yelgMygUg33EtqsUSnxNsuuKjRutLY5cTjc/BIuu1x9sq47hAW+3xQGv3tj
         hSAV9atBZoi649EL1xCzJznBtXccYdIOOquGSrpK6ONKy9K4goYNuBIaO8UygRQIES5S
         dRLQViBhK9U94sHkfqTEBPYtTmqMD2J06KQ0sdpWKQMKkgqpCcIu7JMoaEcIaodj13Ti
         zoww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ntQj5neldySuCoMH3DC+4aKJhKbtolRn7XINQx84I/g=;
        b=pg2elbNx4zwwQgtmhoe/cXx+ZPRt8XpuPRuQ4VocinQLhOHEDMzckqRje64e1sY3gZ
         EMoWULf3OQYCe+R2qPdO0QvRbT3pIPzxRAHAAY5tC8mh6ijJUAtK1xFCWPgv7uIiMCpQ
         JXIeY9nXzVY2aXnB3tqcBQVmco/oPyyHKtujokhh5ffIQXgaXUQ2vSQxKl1Ntym68bXC
         brDrtIa5pAL67qyCPBAC2l6SMq+aLhus/OtCOMQCW846vRw/rb6ehBEGLRwFFpi/bBUr
         hyVN1y4uQ0Q+rf1xNmgXf6NraYCuL7IAdP3d+LCud9M6v43PKmWi5dYxPP8QDy+S9ezQ
         OzNQ==
X-Gm-Message-State: AOAM532WYK+198JNzNe454ba9xhhZu7VP5aNWs3RXgyrpj7gCWYuog3k
        bBVVLz6syoNw6kJ3Qi/fUhg=
X-Google-Smtp-Source: ABdhPJzu25mEciS8Fnc677DOIv7MouN4u5v7hB6UO7w3kueccPJfmw02+8UpI9Uyx8mfjanZX07mYA==
X-Received: by 2002:a1c:c6:: with SMTP id 189mr6269313wma.128.1613065680175;
        Thu, 11 Feb 2021 09:48:00 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id o14sm5223113wri.48.2021.02.11.09.47.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Feb 2021 09:47:59 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] process_madvise.2: SYNOPSIS: Fix prototype parameter type
Date:   Thu, 11 Feb 2021 18:44:57 +0100
Message-Id: <20210211174454.48112-3-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The type of vlen is 'size_t', and not 'unsigned int'.  Fix it.

......

$ grep_syscall process_madvise
mm/madvise.c:1161:
SYSCALL_DEFINE5(process_madvise, int, pidfd, const struct iovec __user *, vec,
		size_t, vlen, int, behavior, unsigned int, flags)
include/linux/syscalls.h:887:
asmlinkage long sys_process_madvise(int pidfd, const struct iovec __user *vec,
			size_t vlen, int behavior, unsigned int flags);

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
 man2/process_madvise.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/process_madvise.2 b/man2/process_madvise.2
index 9dc90ced1..b00ceb6fc 100644
--- a/man2/process_madvise.2
+++ b/man2/process_madvise.2
@@ -33,7 +33,7 @@ process_madvise \- give advice about use of memory to a process
 .B #include <sys/uio.h>
 .PP
 .BI "ssize_t process_madvise(int " pidfd ", const struct iovec *" iovec ,
-.BI "                        unsigned long " vlen ", int " advice ,
+.BI "                        size_t " vlen ", int " advice ,
 .BI "                        unsigned int " flags ");"
 .fi
 .PP
-- 
2.30.0

