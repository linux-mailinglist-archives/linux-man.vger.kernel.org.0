Return-Path: <linux-man+bounces-416-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 812BC84D2CE
	for <lists+linux-man@lfdr.de>; Wed,  7 Feb 2024 21:20:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 14EF91F2472F
	for <lists+linux-man@lfdr.de>; Wed,  7 Feb 2024 20:20:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F22CB126F29;
	Wed,  7 Feb 2024 20:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=smrk.net header.i=@smrk.net header.b="WmY5V86o"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.smrk.net (mail.smrk.net [45.76.87.244])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 372AF1272D0
	for <linux-man@vger.kernel.org>; Wed,  7 Feb 2024 20:20:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.76.87.244
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707337235; cv=none; b=tgzmyH9NfkORy0C4nv09tV4MCQhJzTJE20walcyT0wfAYPiF4qsdFxMWTH0kyB4YCkKqhwoaHlq1SZNmuu7NDC0RXL1srridJu/QwdAu+J0ldpVJtI6/sCiVJp2ZjwExr24y0MTCYcJtNyOY/QzSvPllIhKz5IvLGPsxQdKATYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707337235; c=relaxed/simple;
	bh=RlNP85nsQR9P4/mUUO8xdMf+fgCJ78pcGqW3JF8pPzQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=A+SEW7U+IbZZnDKVSJhT1zc+sxaZCcfUBWNcwmYw9p46tXJwWujWVfk2ppeQbsVUSv1TsDQrsNgFmGfyBxQOHdYuGCp0NIe3LsioGRYYgeQezpBaGRQ5tBHEISoo50HjG6dWA1K9BPUQO1/8asaOvTZmJVvmRox3hADdZ+6ZzCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=smrk.net; spf=pass smtp.mailfrom=smrk.net; dkim=pass (2048-bit key) header.d=smrk.net header.i=@smrk.net header.b=WmY5V86o; arc=none smtp.client-ip=45.76.87.244
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=smrk.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=smrk.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=smrk.net; s=20221002;
	t=1707336829;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=NRqJhrkwCMJD4YawO92xhUu3W+J037oqVmq33zIjulI=;
	b=WmY5V86oWmFCBdMTQQp6sEfM+8MNY1F+cO4xHwKG3a3ajiOww3lH/ZrNOik3qmngi2kX7G
	LwSkvfRZTHE9Vgc2I2O3qejnsJKeBrUTdLDPmed3pXqheHnxogOcH95DJmOc/6U8bdwZna
	rjoFto5mjoHDM/90eWieZXe6KCMNaulDE84UbG2QKMYLNg9jxrdNiwqGA0RimYpfc7rzEx
	tDkwBC2TBoMRJHWsmPQ3tEFCq3C1YnNVH6O8qc3ejec0Olpvl8UTvLAD7u+r0h68qNyZON
	Ymc85SP+Lil7KEiLJjyDKzTpz27Pf7wrUJbou2ZHgbKN3hY0mi7poRJ4dqjbSw==
Received: from localhost (<unknown> [192.168.5.2])
	by smrk (OpenSMTPD) with ESMTPSA id 3ae963bd (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Wed, 7 Feb 2024 21:13:49 +0100 (CET)
From: =?UTF-8?q?=C5=A0t=C4=9Bp=C3=A1n=20N=C4=9Bmec?= <stepnem@smrk.net>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH] seteuid.2: glibc implements seteuid calling setresuid, not setreuid
Date: Wed,  7 Feb 2024 21:13:36 +0100
Message-ID: <20240207201336.477108-1-stepnem@smrk.net>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Analogously with set*gid.

This has been the case since more than two decades, e.g.:

  commit eae59a5681a6 glibc-2.3.2-793-geae59a5681a6
  Commit: Ulrich Drepper <drepper@redhat.com>
  CommitDate: Sun Jun 8 22:37:53 2003 +0000

  Update.

          * sysdeps/unix/sysv/linux/seteuid.c (seteuid): Use setresuid32
          syscall directly if possible.  If __ASSUME_SETRESUID_SYSCALL is
          defined drop compatibility code.
  [...]

The change in implementation from setreuid/setregid is also
already mentioned two paragraphs earlier in the same man page.

Fixes: a36b2bb0eca4 ("seteuid.2: seteuid() and setegid() are implemented as library functions")
Fixes: 8554dd0324b0 ("seteuid.2: tfix")
Signed-off-by: Štěpán Němec <stepnem@smrk.net>
---
 man2/seteuid.2 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man2/seteuid.2 b/man2/seteuid.2
index 312ed1f9e002..0eae04f79fc9 100644
--- a/man2/seteuid.2
+++ b/man2/seteuid.2
@@ -117,9 +117,9 @@ .SS C library/kernel differences
 and
 .BR setegid ()
 are implemented as library functions that call, respectively,
-.BR setreuid (2)
+.BR setresuid (2)
 and
-.BR setregid (2).
+.BR setresgid (2).
 .SH STANDARDS
 POSIX.1-2008.
 .SH HISTORY

base-commit: 452f15569fc3cb1697b6482754dd51a56fcab970
prerequisite-patch-id: 79eb7cb4939079d7fa9f00007856784f30801886
-- 
2.43.0


