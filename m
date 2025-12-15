Return-Path: <linux-man+bounces-4420-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 96BECCBE6D4
	for <lists+linux-man@lfdr.de>; Mon, 15 Dec 2025 15:56:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7343A30680EC
	for <lists+linux-man@lfdr.de>; Mon, 15 Dec 2025 14:51:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12BC92DEA95;
	Mon, 15 Dec 2025 14:41:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="thU/uboA"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C604E1898F8
	for <linux-man@vger.kernel.org>; Mon, 15 Dec 2025 14:41:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765809701; cv=none; b=LcrbzOvnppSmZq+JRuiMh4bmg+sQGFmN/YSa82N36qaqUmsND2ikg2AEf3yD3gaMhVfOEYu97KOTN+ZcM6/FUS/i7Wdcp04W0ouUqp+q9tSw6k2hLR0Fots0m6lAtzD9pNKcktrb+aVhTxRbRIFs0qL6ztqw2jcSljexpgRr2lE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765809701; c=relaxed/simple;
	bh=G6j6a3iQINFGSCMffipZMaDnkecTCbbk8c8FticOr+E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UhRG0X0XWF9ryVUoueVi/3epx19nyrFGpuMMVQnv6nW4Mlj22ksELlyCci48v6c5ytvM2uZzEKNipzcDei0J4tcIqcpowL5gY0VZJRB2IV5GpDenwqTFJrW6fwngmV/1444faf/i4I6kISm/eHcDnQCg1xTBKH6OHJvC2lMSMDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=thU/uboA; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 70463C4CEF5;
	Mon, 15 Dec 2025 14:41:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765809701;
	bh=G6j6a3iQINFGSCMffipZMaDnkecTCbbk8c8FticOr+E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=thU/uboAkAV5Puo1kJAhrw2Tdr0vjA22lIEf3LXsv3hmnbv2lEUr44Eb26tNAbkm0
	 atfsJA7Rdo1w2eJatfx3/y3n10qAHD09aaeFD5rr+vMyt52UDIeoSQYxJqM/gCLlUv
	 KiVjnjlsM8Q3P6ydUKsv3S82C5Avy16OvdjH1izMmnplr27QCJ5DG+8Zrhb4OdRPd7
	 QzXutm2GzCaxsOLUuvsTNpGEKFyJwUac5bRsVubwQ+4W/GK85gWEkuhJaa5HzaPzjS
	 s1wYzvAKhUqkog6LrWPzNKcwLRPCMcv5L6bRSVT1DVM8leEr/vg/3gcZ55Il2jVEmD
	 F0jjd1q7zGrcQ==
Date: Mon, 15 Dec 2025 15:41:37 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, Seth McDonald <sethmcmail@pm.me>, 
	Eugene Syromyatnikov <evgsyr@gmail.com>, Ingo Schwarze <schwarze@openbsd.org>, DJ Delorie <dj@redhat.com>, 
	Paul Floyd <pjfloyd@wanadoo.fr>, John Scott <jscott@posteo.net>, misc@openbsd.org
Subject: [PATCH v2 04/14] man/man3/posix_memalign.3: STANDARDS:
 aligned_alloc() conforms to C23
Message-ID: <04f5087e54eb75de430c49e50238186d84d7804c.1765809415.git.alx@kernel.org>
X-Mailer: git-send-email 2.51.0
References: <cover.1765370035.git.alx@kernel.org>
 <cover.1765809415.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <cover.1765809415.git.alx@kernel.org>

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


