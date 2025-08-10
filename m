Return-Path: <linux-man+bounces-3425-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B1EC9B1FB05
	for <lists+linux-man@lfdr.de>; Sun, 10 Aug 2025 18:31:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CD27118964A5
	for <lists+linux-man@lfdr.de>; Sun, 10 Aug 2025 16:32:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1F2D335C7;
	Sun, 10 Aug 2025 16:31:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G9Edly+j"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90F991AF4C1
	for <linux-man@vger.kernel.org>; Sun, 10 Aug 2025 16:31:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754843510; cv=none; b=NPAjH9JhUS/UYllTI1H6fftUARUlzXLmgcjS+av2fvgRODTo5tD+Rx2AwCPth5HTVGhEej4h/ruFCP3dncOWDK4mp/71O8lZ5cS8GFyRG0GnM2jgKa32cAx/Ye2y7hQ3hEWF7GA2kKcdxecF3+AyFFLJRrpTSv7ZSbu/d+Tyh4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754843510; c=relaxed/simple;
	bh=XlP72RGv3MAsDru64gdCBWwoDXFiMPfzAlSloCADU9o=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=Y52FHNC52Pwzcw5mLQvg4Oza5zJP5P6WZplG5nh3CeLYF0slsl4u1TcGo/Xi0zHOp37kKOK8GzqDgyfDpexuH24wO440ZOOpfi5m86xfoU+fA3bzHN/O/R7vS6xEXqUt05J3z9k2wopKEVl1rPhom4duyc4e297IJKzqMq26hLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G9Edly+j; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 75FCAC4CEEB;
	Sun, 10 Aug 2025 16:31:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754843510;
	bh=XlP72RGv3MAsDru64gdCBWwoDXFiMPfzAlSloCADU9o=;
	h=Date:From:To:Cc:Subject:From;
	b=G9Edly+jsMtjZpgi3xVGaG3a6w6xT6wjdurotGK+xVICBjdo0xPHwuHDjF7ohBsgI
	 m4UyZnVNaSk+/i28mtINGu1xZdpmOasJJ5+5StcdqbApTWI5huObu5vPDPJEBsbIiB
	 4irpc0/hWncsFEpIz5DT+A246mKGmQk1r0X+KveduD3KoM+c9TH57d0rjAU2U/WII5
	 XEF6YX/vj+Au7Z5rc41h9bKtTAzHmsAZvOe+Jt15k1xbdIrIT0zKvcIMXm/vtMg21c
	 QHjZbJseA2vrYx2dEZ9u+ZC2P24gUxKZsuN3A7534d1/1pjmc8Gg5HUOwxf+ZfaPZc
	 42yEzpJC2v0wA==
Date: Sun, 10 Aug 2025 18:31:45 +0200
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, 
	Christopher Bazley <chris.bazley.wg14@gmail.com>
Subject: [PATCH] man/man2/getgroups.2: setgroups(2): Don't use NULL as a
 0-length array
Message-ID: <4e5e85f923b2e31af2b19a866af1324459248603.1754843358.git.alx@kernel.org>
X-Mailer: git-send-email 2.50.1
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Reported-by: Christopher Bazley <chris.bazley.wg14@gmail.com>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---

Hi Chris,

I've fixed the manual page to stop recommending the use of NULL with
setgroups(2), as I agree that this is very much the same case as the
dreaded memcpy(0,0,0), and is unsafe.

I'll maintain the _Nullable pseudo-attribute in getgroups(2), as that's
a different case (it overloads a completely different meaning).


Have a lovely day!
Alex


 man/man2/getgroups.2 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man/man2/getgroups.2 b/man/man2/getgroups.2
index 635158282..cdda43992 100644
--- a/man/man2/getgroups.2
+++ b/man/man2/getgroups.2
@@ -16,7 +16,7 @@ .SH SYNOPSIS
 .P
 .B #include <grp.h>
 .P
-.BI "int setgroups(size_t " size ", const gid_t " list "[_Nullable " size ]);
+.BI "int setgroups(size_t " size ", const gid_t " list [ size ]);
 .fi
 .P
 .RS -4
@@ -75,7 +75,7 @@ .SH DESCRIPTION
 .P
 .in +4n
 .EX
-setgroups(0, NULL);
+setgroups(0, (gid_t [0]){});
 .EE
 .in
 .SH RETURN VALUE

base-commit: 0ffeac3f71295732c4040595e5ab35680825fb91
-- 
2.50.1


