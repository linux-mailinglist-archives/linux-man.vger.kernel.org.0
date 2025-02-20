Return-Path: <linux-man+bounces-2490-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 85460A3D478
	for <lists+linux-man@lfdr.de>; Thu, 20 Feb 2025 10:20:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A09D9188DBCA
	for <lists+linux-man@lfdr.de>; Thu, 20 Feb 2025 09:20:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 199621BC09A;
	Thu, 20 Feb 2025 09:20:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=zohomail.com header.i=safinaskar@zohomail.com header.b="dNGXJH/9"
X-Original-To: linux-man@vger.kernel.org
Received: from sender4-pp-o94.zoho.com (sender4-pp-o94.zoho.com [136.143.188.94])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F70A1C3C1F
	for <linux-man@vger.kernel.org>; Thu, 20 Feb 2025 09:20:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.94
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740043235; cv=pass; b=cL4G5mqGX52s3vhA1aVyHGI8SfGEAOB+p6+Xdj5sGpu3p9Vfv3/Szyzj5jq/F+SVXm9dl3I7zwbx4qoshJrT/PznzJbj8d7aTh3LY7gaMjnlWzy/ogkE8gt29W/c0DxZ64f9jiFEWt8nLoJgvs3D6ykSUsecF28m1HrRo01RU0c=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740043235; c=relaxed/simple;
	bh=ygZysRgOGafL6i9kuCWEFjFhcymLkPoS9Ne3D6OFWds=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=muJgI29hU2LpwwDyswglKPp6AZaBedoWrpsNqHpvdLR7KT1pzj81SvqDViBIKG8aJJWHG3gmW0AkDR9u77ewCKvCMF5+ENYlfATrnD9ev9VmJaITU3Xc5tTLBr2bpgMmEzNBrqXRRhOlTHq7aEZsGa6c8iv6nY+wkd9kI9Q+FJA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=zohomail.com; spf=pass smtp.mailfrom=zohomail.com; dkim=pass (1024-bit key) header.d=zohomail.com header.i=safinaskar@zohomail.com header.b=dNGXJH/9; arc=pass smtp.client-ip=136.143.188.94
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=zohomail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=zohomail.com
ARC-Seal: i=1; a=rsa-sha256; t=1740043225; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=Xcrl+K915W/Iek6Nm1sv/vb8vDVMmZXGqd0dGbvMiqGXkcbH04PBHrLekSaV7OOrtTTqvpfOVHJkT3pWHZWZVHIXmDE5mC3yrq4gduNBPJHVu+Kxr+z5GYOrwXER5qtP+Z0mu2SN3dcAvDMU6s6JytOUelUPjJ3hr45eckugopw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1740043225; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=no5VGulEdSmtAomi3svm6JdFA3lmfU2jpPnGJlnb2v0=; 
	b=k9ugvI3xPPxRvP3OO5akj7G4ua591Mnoq+FfsMYaMEsgDYfFDt1dxUPY6sVO7wqocuToen8SUrYG1oYdEv71ycDO0AG2SlOKCD8sWlKYTlUrgknWiXaunUkULTttPzBjfUnvOyAw5MNVH1+UObpnqmVsLdCI5jGJxp7KFGMg7io=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=zohomail.com;
	spf=pass  smtp.mailfrom=safinaskar@zohomail.com;
	dmarc=pass header.from=<safinaskar@zohomail.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1740043225;
	s=zm2022; d=zohomail.com; i=safinaskar@zohomail.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-Id:Message-Id:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Feedback-ID:Reply-To;
	bh=no5VGulEdSmtAomi3svm6JdFA3lmfU2jpPnGJlnb2v0=;
	b=dNGXJH/9CxH6qPyqP6liQeIs2qzlFBHLDkFc1k91paFjdw/xbkWxSXp/XtkNtOPl
	P+6HSJPkpv74rXnu1YlkG70yR5n3BBjhAXkBEsqu6DEEyHAFPPRYJ8c9qTn8/n1Ymi5
	ErFVVhoDoWWYRHqY8C7Ks6sw2+xR5bkjdMPR2oA0=
Received: by mx.zohomail.com with SMTPS id 1740043222150890.5766034435235;
	Thu, 20 Feb 2025 01:20:22 -0800 (PST)
From: Askar Safin <safinaskar@zohomail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Carlos O'Donell <carlos@redhat.com>,
	linux-man@vger.kernel.org
Subject: [PATCH v4 1/2] man/man3/getcwd.3: say more clear that syscall can return "(unreachable)", but modern glibc wrapper cannot
Date: Thu, 20 Feb 2025 09:19:25 +0000
Message-Id: <20250220091926.3985504-2-safinaskar@zohomail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250220091926.3985504-1-safinaskar@zohomail.com>
References: <20250217165143.1265542-1-safinaskar@zohomail.com>
 <20250220091926.3985504-1-safinaskar@zohomail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Feedback-ID: rr08011227a86ec3a1926e27e71b5750a2000078bba086c497c9a5ad890d467908feed46a646d1be97059961:zu080112278031a62fb55469b53d89fc7300009ffdd5a74f62dd48f0986c649932be37d8d5cf839b74b162f5:rf0801122d59c47674bf3fe64d0075d7b70000d41ddc9d99d0413394a0754d3c28e9db5d080c6ce2f25354ca8c8c4bf1f693:ZohoMail
X-ZohoMailClient: External

I verified using expirement that modern glibc wrapper getcwd actually never returns "(unreachable)".
Also I have read modern glibc sources for all 3 functions documented here.
All they don't return "(unreachable)".

Now let me describe my expirement:

	d-user@comp:/tmp$ cat getcwd.c
	#include <unistd.h>
	#include <stdio.h>
	#include <sys/syscall.h>

	int
	main(void)
	{
		char  buf[1000];

		if (syscall(SYS_getcwd, buf, sizeof(buf)) == -1)
			perror("SYS_getcwd");
		else
			printf("SYS_getcwd: %s\n", buf);

		if (getcwd(buf, sizeof(buf)) == NULL)
			perror("getcwd");
		else
			printf("getcwd: %s\n", buf);

		return 0;
	}
	d-user@comp:/tmp$ gcc -Wall -Wextra -o getcwd getcwd.c
	d-user@comp:/tmp$ sudo unshare --mount bash
	d-root@comp:/tmp# mkdir /tmp/dir
	d-root@comp:/tmp# mount -t tmpfs tmpfs /tmp/dir
	d-root@comp:/tmp# cd /tmp/dir
	d-root@comp:/tmp/dir# umount -l .
	d-root@comp:/tmp/dir# /tmp/getcwd
	SYS_getcwd: (unreachable)/
	getcwd: No such file or directory
	d-root@comp:/tmp/dir# exit
	exit

Reviewed-by: Carlos O'Donell <carlos@redhat.com>
Link: <https://sourceware.org/bugzilla/show_bug.cgi?id=18203>
Link: <https://sourceware.org/git/gitweb.cgi?p=glibc.git;h=52a713fdd0a30e1bd79818e2e3c4ab44ddca1a94>
Signed-off-by: Askar Safin <safinaskar@zohomail.com>
---
 man/man3/getcwd.3 | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/man/man3/getcwd.3 b/man/man3/getcwd.3
index 685585a60..919ffb08f 100644
--- a/man/man3/getcwd.3
+++ b/man/man3/getcwd.3
@@ -246,7 +246,10 @@ without changing its current directory into the new root).
 Such behavior can also be caused by an unprivileged user by changing
 the current directory into another mount namespace.
 When dealing with pathname from untrusted sources, callers of the
-functions described in this page
+functions described in this page (until glibc 2.27)
+or the raw
+.BR getcwd ()
+system call
 should consider checking whether the returned pathname starts
 with '/' or '(' to avoid misinterpreting an unreachable path
 as a relative pathname.
-- 
2.39.5


