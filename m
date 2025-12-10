Return-Path: <linux-man+bounces-4384-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 79D8CCB2EF4
	for <lists+linux-man@lfdr.de>; Wed, 10 Dec 2025 13:41:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 91C173007275
	for <lists+linux-man@lfdr.de>; Wed, 10 Dec 2025 12:40:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1925731B823;
	Wed, 10 Dec 2025 12:40:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pS94rFO1"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCF6E2C17A1
	for <linux-man@vger.kernel.org>; Wed, 10 Dec 2025 12:40:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765370412; cv=none; b=DCk32QUc6wbFv+uMlvB1+azdQvrJrEFpV4tWDE3maXAzQgYNYHGA8VHPHWa3Fu6pUC43cYqpz+BSzPsZ22knph80yPufn5ccIUDrT99s4Pa4UBAjDY17hhh02x+bZ2vGZ5/WiEAA7Q4OYR0pXW/TknufesIewwIIAmZ14Ii6S98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765370412; c=relaxed/simple;
	bh=G6j6a3iQINFGSCMffipZMaDnkecTCbbk8c8FticOr+E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hImK2L+pe3FaXhcv9fT6zrEePWhr/9nPn/ozJGD8RhctPdHoWjnmxT/mBsD+4P5zJIJYy76OrenLWPf9bTyxB9xiUVpoy9/YA1gkkfRndhHUzu/6II2r8DdUq1sb3jOYpPOQ0VAA24Q3d+d/smKaCIanUNn/E/hmjNtya/xh0JM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pS94rFO1; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6F0EEC4CEF1;
	Wed, 10 Dec 2025 12:40:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765370412;
	bh=G6j6a3iQINFGSCMffipZMaDnkecTCbbk8c8FticOr+E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pS94rFO1q+WDFhYwf7Pmn8XFiXihWbM+Dk6yS/b8JHwCzwShB7RmgtPruwQTgIrQa
	 HcblD09keOafcKwmrzvvM/YF+JDDbmVaHgqh40dsaj3/fh5tJcwTU0hJPxQlv/mARU
	 UuCjJl9hhD5wF15GUTglCqammwLyvQbov3IJ3WZc+D2XUa3qrduB0wsQOs44QSIlFp
	 j1w6MtRiB8qjTuMmNhS4853XAq+jEYeKjnY7THJpiGLUO/do904AZcYmwu7Jt5cplr
	 QOood9HtCuFpANrCxnUsHp4fMWjQhPVZztxUXRL52UxMg+jZHa2NUZ+tQtFJyd4rZb
	 qns9oAYy1k4MQ==
Date: Wed, 10 Dec 2025 13:40:09 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, Seth McDonald <sethmcmail@pm.me>
Subject: [PATCH v1 04/12] man/man3/posix_memalign.3: STANDARDS:
 aligned_alloc() conforms to C23
Message-ID: <9db9d670c94c595d7caf6075d98c82fa4946e63d.1765370035.git.alx@kernel.org>
X-Mailer: git-send-email 2.51.0
References: <cover.1765370035.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <cover.1765370035.git.alx@kernel.org>

Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man/man3/posix_memalign.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man3/posix_memalign.3 b/man/man3/posix_memalign.3
index d0adaab01..ba99f0c6a 100644
--- a/man/man3/posix_memalign.3
+++ b/man/man3/posix_memalign.3
@@ -162,7 +162,7 @@ .SH ATTRIBUTES
 .SH STANDARDS
 .TP
 .BR aligned_alloc ()
-C17.
+C23.
 .TP
 .BR posix_memalign ()
 POSIX.1-2008.
-- 
2.51.0


