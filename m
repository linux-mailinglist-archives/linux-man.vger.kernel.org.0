Return-Path: <linux-man+bounces-4391-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 266C1CB2F06
	for <lists+linux-man@lfdr.de>; Wed, 10 Dec 2025 13:42:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 26A233017843
	for <lists+linux-man@lfdr.de>; Wed, 10 Dec 2025 12:40:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8BEE324704;
	Wed, 10 Dec 2025 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V1TSknkQ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 765A82F8BDF
	for <linux-man@vger.kernel.org>; Wed, 10 Dec 2025 12:40:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765370434; cv=none; b=h6mDVFkj1kIrJFJn4GK1doKZr/t2NFZ3WcJmMOYgOoMxtmSNHsqd6b/Ycb3XLCzCAJOHiS/d+vBGyLG0C/HKk+AgT+yK7DEZZ/1UY+1TE3vEiXzDaF6byF9VrKdalaNgPzq3dc6NoLSsMLqQADtmOyrOWQEjsgYYZ3ToPK2JPws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765370434; c=relaxed/simple;
	bh=FSSXGVjkj908ojj53THKPhaRcPrEy0hqKMqzCKuG8iY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nr1HV5IqX6BxhVHBFy3mpP6smh6PZgSCvfVQrqlNLqWgYRww2g6cxcj79VfLz4g6zgA6+7/Xp+qiUtFPjIxhv+ciHxqahu9k1ooSt0rAVL6gtBU39vVqhzAA53PQg4bBTFocRI/PEdCSDM5Naf89R6oCuf1TLHHhNtRlK0Uh8Ms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V1TSknkQ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 25039C4CEF1;
	Wed, 10 Dec 2025 12:40:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765370432;
	bh=FSSXGVjkj908ojj53THKPhaRcPrEy0hqKMqzCKuG8iY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=V1TSknkQuU8q9lj0PKxg3centkQi8A7UlB1EKF64aupibnTSxeSfIsYjeVtbeQINe
	 cVdc2HAOTOWEd2S9wviJGFfl9I/xx+yVIhBCsfVn3ro42jf/vYVg/ZIs2QF8LbzQke
	 zFdaQdImLWu0nLRGnn3Rx2DQOu1zzubEQ/3UXmqxoh2UI1SlBz/d3jzEXJPV0vFA7p
	 uchqP+S7Gnc0Q41XoB7XYZi28p5VUIe32ksQE6sccAVKi/8eHI0e7RhOkG0vvXCSet
	 i/QmgWGxo5WQVUGRRYD1qy1vHRR4aM/3NuE6kXc/gICYByCHasIDpcLzcoBVyzy+QA
	 vwtwBoNr+ZGHw==
Date: Wed, 10 Dec 2025 13:40:29 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, Seth McDonald <sethmcmail@pm.me>
Subject: [PATCH v1 11/12] man/man3/posix_memalign.3: Remove redundant text
Message-ID: <7960911fc7b956e93a5d5b3ed9dba1cbec13dfd7.1765370035.git.alx@kernel.org>
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
 man/man3/posix_memalign.3 | 16 ----------------
 1 file changed, 16 deletions(-)

diff --git a/man/man3/posix_memalign.3 b/man/man3/posix_memalign.3
index c2816e1d4..fd76895a9 100644
--- a/man/man3/posix_memalign.3
+++ b/man/man3/posix_memalign.3
@@ -90,23 +90,7 @@ .SH STANDARDS
 .SH HISTORY
 glibc 2.1.91.
 POSIX.1d, POSIX.1-2001.
-.\"
-.SS Headers
-Everybody agrees that
-.BR posix_memalign ()
-is declared in
-.IR <stdlib.h> .
 .SH NOTES
-.BR posix_memalign ()
-verifies that
-.I alignment
-matches the requirements detailed above.
-.P
-POSIX requires that memory obtained from
-.BR posix_memalign ()
-can be freed using
-.BR free (3).
-.P
 The glibc
 .BR malloc (3)
 always returns 8-byte aligned memory addresses, so these functions are
-- 
2.51.0


