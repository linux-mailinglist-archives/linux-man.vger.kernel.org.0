Return-Path: <linux-man+bounces-2470-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A9599A38A21
	for <lists+linux-man@lfdr.de>; Mon, 17 Feb 2025 17:56:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B8CBB3AF40E
	for <lists+linux-man@lfdr.de>; Mon, 17 Feb 2025 16:56:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC055226196;
	Mon, 17 Feb 2025 16:56:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=zohomail.com header.i=safinaskar@zohomail.com header.b="IuMUn7Uv"
X-Original-To: linux-man@vger.kernel.org
Received: from sender4-pp-o96.zoho.com (sender4-pp-o96.zoho.com [136.143.188.96])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE74226187
	for <linux-man@vger.kernel.org>; Mon, 17 Feb 2025 16:56:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.96
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739811371; cv=pass; b=tBAQD9rwRnjfCg5bj6BtLw3X+OeBG2v/6eQcHWlC2AldbEhw0VkmEfhhYNAg/3znblYnXSxhsRcal1eZzzKOb/J0qYg5M1syDcOE9yZSYnpU7sj3TOcKH14Eo8Pw5fH+/01/F3OhChMnPwgsxWyKG7rgW84MX/1/UHhGkYNk7JQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739811371; c=relaxed/simple;
	bh=JdrwF0osk72rTbZZKnZuCsCPOrr+Kp9+bWwbUFpBWeM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ddKomrOio+/YbdRilVm5UaleyRHRI3qtCUnSnBctu+lfrPuN9FR26pYL/56J8gRluZEsyTQLwxUtOFa1wtYca9ZgHB6xbOi1bJKItOUFHygdeK/J43whNHqqDfe8S+j3c+Jxjp6aBMuuykFOG1j+VFtpg68urUjAqycrP7t1r+A=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=zohomail.com; spf=pass smtp.mailfrom=zohomail.com; dkim=pass (1024-bit key) header.d=zohomail.com header.i=safinaskar@zohomail.com header.b=IuMUn7Uv; arc=pass smtp.client-ip=136.143.188.96
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=zohomail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=zohomail.com
ARC-Seal: i=1; a=rsa-sha256; t=1739811364; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=KERirkVs2vd+DHeaj1TVgnQsmrXISGlEt6/D7wo+aAZ4H2eMnK+slFVM4ovBatoaZj69+99d8+yZsk9abW/nvpOyzCVi0MmDLNlj3FAwWTlR/uQxzRa8Zpd35nBl1oO0IGEdgNZW4bOQtdMkDiPc+DYE5Si7yhJhLOhhhyJW+ug=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1739811364; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=355ZrzMwNaRweeV7JWxhuH0FCnM4pO3ijnmqkrn4oOY=; 
	b=EE33yIsTLWgIbnSsKvOZt/LWcaU2rzuwQ1wDDE6kzIejPDARGcyf1DYjZU4kAyDcUxodl55/zDExS5ZlZ1EohsYb8a0WU2b2O1Cqcvxi5OqY07gRtsjJRP3hCbIWawMY68oWO9xXTzC8rwLn87BVpfKBpXZY+LUgTzkvSR5lxHM=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=zohomail.com;
	spf=pass  smtp.mailfrom=safinaskar@zohomail.com;
	dmarc=pass header.from=<safinaskar@zohomail.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1739811363;
	s=zm2022; d=zohomail.com; i=safinaskar@zohomail.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-Id:Message-Id:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Feedback-ID:Reply-To;
	bh=355ZrzMwNaRweeV7JWxhuH0FCnM4pO3ijnmqkrn4oOY=;
	b=IuMUn7Uvo9Bgo1mmoobYuW0sNjmydkdteStMWSnaE/zx5wdjxFHzvgrnuDWM1/4f
	Hon0r3aycVDkH7zvrA34g0pNiLch70dInLyaXfjfhOVdtUb0BpN4qPvBNjahB4DDEo5
	WrOQvXh+5xkBRXsJc16Yh0c8qARQo8MkkysEIF+U=
Received: by mx.zohomail.com with SMTPS id 1739811361589855.7980541319769;
	Mon, 17 Feb 2025 08:56:01 -0800 (PST)
From: Askar Safin <safinaskar@zohomail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Carlos O'Donell <carlos@redhat.com>,
	linux-man@vger.kernel.org
Subject: [PATCH v3 1/2] man/man3/getcwd.3: say more clear that syscall can return "(unreachable)", but modern glibc wrapper cannot
Date: Mon, 17 Feb 2025 16:51:42 +0000
Message-Id: <20250217165143.1265542-2-safinaskar@zohomail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250217165143.1265542-1-safinaskar@zohomail.com>
References: <20250216061828.2277971-1-safinaskar@zohomail.com>
 <20250217165143.1265542-1-safinaskar@zohomail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Feedback-ID: rr0801122cac1b22128720239f138592a20000e81ae64ee57492440670e2ac82282b89e10566fc8919ad699182dff3445b:zu08011227d2c51ea255f6d2a425e17834000021d250495b64e230460e3f5dd8177be63171b8c5d119b58f4b:rf0801122aba052afe8b43ce880cb700f80000732e7bdec405944131c0440183df5127d59f5b787f8baca7d7730fe2:ZohoMail
X-ZohoMailClient: External

I verified using expirement that modern glibc wrapper getcwd actually never returns "(unreachable)".
Also I have read modern glibc sources for all 3 functions documented here.
All they don't return "(unreachable)".
Also I changed "pathname" to "pathnames".

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

Cc: Carlos O'Donell <carlos@redhat.com>
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


