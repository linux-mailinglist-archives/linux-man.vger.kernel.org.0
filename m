Return-Path: <linux-man+bounces-2439-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 72A7BA35DE0
	for <lists+linux-man@lfdr.de>; Fri, 14 Feb 2025 13:51:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1CD5D188F5A3
	for <lists+linux-man@lfdr.de>; Fri, 14 Feb 2025 12:51:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F3601E868;
	Fri, 14 Feb 2025 12:51:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=zohomail.com header.i=safinaskar@zohomail.com header.b="Nft4AxlC"
X-Original-To: linux-man@vger.kernel.org
Received: from sender4-pp-o94.zoho.com (sender4-pp-o94.zoho.com [136.143.188.94])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB53817555
	for <linux-man@vger.kernel.org>; Fri, 14 Feb 2025 12:51:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.94
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739537467; cv=pass; b=eci5FBj4S22bcTqU+aVTXu84XZIenRtXh1ILgB4mP9OSne7Bt4+zsB8sBzDgU6ntnZRy4DNeyMRaHyNl0LWMKCj0Ssyc8XnmyfNx0CppjsbglKmdXkmohIm7re78PvjOpgIxRhZ6K4QyTg876n1w7hh8vCGmHldb/Ej7zrEvq68=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739537467; c=relaxed/simple;
	bh=noIfnht1bFys/i0UjDz4rBOBeZxEmCCHjcR/QwpvO9k=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=O8jwv5k4kIWN3xagEuSD0HiKJmiIGYcOi6D50catusE9/PkL9wIMysqXBRcWUznYRy+0IkV4HrM4OpOI7b95ZqD6jY3DpwU4DCAxj9nb99GW3bmrUpwdL0qxaE2ib2er4dcp0PJyzyJdghwCVly0NGRMFn6LcI6myLa87BAoeb0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=zohomail.com; spf=pass smtp.mailfrom=zohomail.com; dkim=pass (1024-bit key) header.d=zohomail.com header.i=safinaskar@zohomail.com header.b=Nft4AxlC; arc=pass smtp.client-ip=136.143.188.94
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=zohomail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=zohomail.com
ARC-Seal: i=1; a=rsa-sha256; t=1739537457; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=Y1VxIrnnPPnSLrQm1dQtpwAgllL3btvthLLqx4h+HvTcTGicAe8ymInoYqLyk2gm+66wZamGmOPbEjNUvvYu8CJHgTlCsayOE5zcAKeUymxlLNc+q5TqoU27/bUR/jhAKDBlkHA5UtiRrVblkPWL0QQJBV/HTKOqf5N3Mhi/vFk=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1739537457; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=2PPhF+BHrW/jFW6J9WUIh8iRvhddjzZh63Z3elW+BlA=; 
	b=mkTCg8lBpFZ8FngjUdM4Xx3VrJ2oU8Hedz48gNcvOktPkiJw3N5B0U2uyRoerEikfrN4OlXGp4qmnVuwmuEeZ6/nUWBAwRPTOe5aiHaG7T+JNdzEMU9NpGhm55I0KtFNodX7f3byXgaas1QpgOAqvG5qHu6Or0n6xHp/LimRmmw=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=zohomail.com;
	spf=pass  smtp.mailfrom=safinaskar@zohomail.com;
	dmarc=pass header.from=<safinaskar@zohomail.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1739537457;
	s=zm2022; d=zohomail.com; i=safinaskar@zohomail.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-Id:Message-Id:MIME-Version:Content-Transfer-Encoding:Feedback-ID:Reply-To;
	bh=2PPhF+BHrW/jFW6J9WUIh8iRvhddjzZh63Z3elW+BlA=;
	b=Nft4AxlCMz/lnWNXbQh6aOUHDsH1DuTLBbvmjZLqxDpWNtawKbpOPvCD53G7wT51
	9I83cj01CDex1jLgOYE+GbPteqqF10GZYbSP1EcefrAPgfsUck8nJswxitPTkCjqZb/
	2Tp+4pNhnbHZMWc4mCY6+pLd1/Emj/kDvSOcFFZo=
Received: by mx.zohomail.com with SMTPS id 1739537453685572.9493711813036;
	Fri, 14 Feb 2025 04:50:53 -0800 (PST)
From: Askar Safin <safinaskar@zohomail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH] man/man3/getcwd.3: say more clear that syscall can return "(unreachable)", but glibc wrapper cannot
Date: Fri, 14 Feb 2025 15:50:23 +0300
Message-Id: <20250214125023.2798287-1-safinaskar@zohomail.com>
X-Mailer: git-send-email 2.39.5
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Feedback-ID: rr080112277cba15b4ecb9b5c2e9eff3910000d8268b8ac720f954d5d04130584410bfb59c4351fb3f52c3a4:zu08011227149f377f8d49fd93d81cbc6400008373a287fbe51e0ddf7c9a64254cb7f84c7fe8c17737de1ab7:rf0801122cde7a2d9f9d7571a6d231e19f00008f819769ad9fac9d766c894eeee5f5a80493b0eec8a563f2961bddc09f15:ZohoMail
X-ZohoMailClient: External

I verified using expirement that glibc wrapper getcwd actually never returns "(unreachable)".
Also I have read glibc sources for all 3 functions documented here.
All they don't return "(unreachable)".
Also I changed "pathname" to "pathnames".

Signed-off-by: Askar Safin <safinaskar@zohomail.com>
---
 man/man3/getcwd.3 | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/man/man3/getcwd.3 b/man/man3/getcwd.3
index 685585a60..685a280a1 100644
--- a/man/man3/getcwd.3
+++ b/man/man3/getcwd.3
@@ -245,8 +245,10 @@ process (e.g., because the process set a new filesystem root using
 without changing its current directory into the new root).
 Such behavior can also be caused by an unprivileged user by changing
 the current directory into another mount namespace.
-When dealing with pathname from untrusted sources, callers of the
-functions described in this page
+When dealing with pathnames from untrusted sources, callers of the
+raw
+.BR getcwd ()
+system call
 should consider checking whether the returned pathname starts
 with '/' or '(' to avoid misinterpreting an unreachable path
 as a relative pathname.
-- 
2.39.5


