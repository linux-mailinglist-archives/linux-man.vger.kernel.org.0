Return-Path: <linux-man+bounces-4366-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 250A3CA93B1
	for <lists+linux-man@lfdr.de>; Fri, 05 Dec 2025 21:15:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5082631354EF
	for <lists+linux-man@lfdr.de>; Fri,  5 Dec 2025 20:14:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 074001514DC;
	Fri,  5 Dec 2025 20:14:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Us58hkQG"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADFCE48CFC
	for <linux-man@vger.kernel.org>; Fri,  5 Dec 2025 20:14:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764965657; cv=none; b=YcWPw5PEP4uxrsLy2xMMsYtDqqBCJGZ/kfcZz1mxeItzACT0ll+mC/FTW7IZZgnuWrB4tv1dLWyNlt6IFMhe5pBellxyAsMzqe54hIYjzH285EgQn3QcO+NtMRFDe4JO4jI7fn18yAo/rLDeY1HMPUCHUqu1aaAF4ww7aiQFuq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764965657; c=relaxed/simple;
	bh=8/GSrlun/fFhUZrHjZ68t4ZgnfT/roSk/g5rDB1u+vU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EdUqHd/ZES38o/6QiSuUIboI+aBVzMVdUrARQ+6hdQMTR1WTSFG1ItqUo9jOj/QQi442F2zqYvnAftzofiAxlTZB+oJWbYH/9p3z8aol+f+v8Ni2jbFllIFQ4Cnf0HCsKX4DQBvkMYkOPJ11ZHfF3VgoXBPHZ8knuUzmxMMzH1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Us58hkQG; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B92FEC116B1;
	Fri,  5 Dec 2025 20:14:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764965657;
	bh=8/GSrlun/fFhUZrHjZ68t4ZgnfT/roSk/g5rDB1u+vU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Us58hkQG/O/gwHFBuLyDtPNa9H+vriHtGIof7XyijYPJbd2/jONlvoRNaqBeF4STx
	 zCTtYiT/2Y9YYDTx2Wo7moKPg3DMPRUIWp57cI50yrY+3Qb+fXbj7zfuizUiqHbUDQ
	 D/Iz8TY2Co1cg0WQEvdXZfLUbkofgNKb0hfmpRu/0Gfy1D7BgCuKH5oKh0MK7mEWc2
	 /jhDeTyO1PBg6E28rKKH0SOHvRfwxld02RyXOH44Lf4kzK1c7d2BcAL1jQ7PZMgpmK
	 Q+875tIsRfNixoWJtLvs6GeA2XE7u9RhtHA+oIMlDxltQ3QtMHS4H8dtj5M11FZhVO
	 +if20qzMe86Dw==
Date: Fri, 5 Dec 2025 21:14:14 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, serge@hallyn.com
Subject: [PATCH 2/2] man/man3/snprintf.3: BUGS: snprintf(3) with a negative
 size is essentially UB
Message-ID: <d00ed9434174e97f45f2ce3fdbd65e87555f91b6.1764964289.git.alx@kernel.org>
X-Mailer: git-send-email 2.51.0
References: <cover.1764964289.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <cover.1764964289.git.alx@kernel.org>

Reported-by: Serge Hallyn <serge@hallyn.com>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man/man3/snprintf.3 | 21 ++++++++++++++++++++-
 1 file changed, 20 insertions(+), 1 deletion(-)

diff --git a/man/man3/snprintf.3 b/man/man3/snprintf.3
index dca9fc3ef..e6bb9547d 100644
--- a/man/man3/snprintf.3
+++ b/man/man3/snprintf.3
@@ -54,7 +54,8 @@ .SH DESCRIPTION
 write at most
 .I size
 bytes (including the terminating null byte (\[aq]\[rs]0\[aq])) to
-.IR str .
+.I str
+(but see BUGS).
 .P
 The functions
 .BR vsprintf ()
@@ -242,6 +243,24 @@ .SS sprintf(), vsprintf()
 .BR asprintf (3)
 and
 .BR vasprintf (3)).
+.SS snprintf(), vsnprintf()
+If
+.I size
+is negative,
+these functions will behave
+as if the size was some unreasonably high value.
+This turns these functions essentially equivalent to
+.RB [ v ] sprintf (),
+and thus likely to overflow the buffer.
+It is the programmer's responsibility to pass a non-negative
+.IR size .
+.P
+For historic reasons,
+the
+.I size
+parameter is of type
+.IR int ,
+which makes it relatively easy to pass a negative value.
 .\" .P
 .\" Linux libc4.[45] does not have a
 .\" .BR snprintf (),
-- 
2.51.0


