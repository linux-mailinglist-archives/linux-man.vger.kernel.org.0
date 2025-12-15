Return-Path: <linux-man+bounces-4426-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 74DC3CBE683
	for <lists+linux-man@lfdr.de>; Mon, 15 Dec 2025 15:52:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 61A72301935F
	for <lists+linux-man@lfdr.de>; Mon, 15 Dec 2025 14:51:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7338B313E0A;
	Mon, 15 Dec 2025 14:42:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UM/kWeuy"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D086E30F94F
	for <linux-man@vger.kernel.org>; Mon, 15 Dec 2025 14:42:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765809724; cv=none; b=CDe0biOKuqpb7cCvpu+4sRP4B5RmfbbGk67r8+gn+3YQdql61ktqT/N7d8uxgGNIW+biBSZF5Xh4arobj0Zkg7bG+JvdVsQ2u715ikVn5QEcBlBhaBAflmGlMU2HCwsTMLJTyJzktPV4IYeAfZXHwAG6oFEnN+peL+7vY3jIw/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765809724; c=relaxed/simple;
	bh=ljD69Jq/Q7mE+m9fynPr8BMNXgNqYeCZtI0iR9eKr0M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BcG1RWLzTPX13+zhzl4MxjvEeVnER4VBfLVCdMEXxO9oZq2g1HPRqQNrdRVx6t1tr7XNHK+ZWtRn+zeLOtH7T48mXR8Esj7wS3llTxS6jEhBGDbjoYfibQdIt7JPbX7qC4+oIhni31Ojipzg4IzPqY7Zt7caddRsUlXTFMAtfa4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UM/kWeuy; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C7B33C19422;
	Mon, 15 Dec 2025 14:42:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765809724;
	bh=ljD69Jq/Q7mE+m9fynPr8BMNXgNqYeCZtI0iR9eKr0M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UM/kWeuy6uNKJJtJgVkKmOyFQYF/0cYZP5E9IJFuDBOuZEuQAy0o8fur8mZg2H+Kc
	 6Mi6ryBFpw6tYC7+dg/w3f42UR9gR1oZpFNY4Eo0z5THlTOUHt7oo9pckndNfcH2B+
	 WGiyYkEVbnCv4Kza/AlYMmiitaDYRjyHcay+dk2sUzvfyRpykPg7zm94/C9T1zlre2
	 ArKZzwwia5PSLiCyt7z99uRJ+oFifQ75ZlENjOxzOcZLOqlG/zkDyQL0NvpkS5u/S4
	 Ud2AY16DQ8W2tZAVkwuB05eR5H408s002+btAHXTf274Nggp4wQp63o4vjRMFFjRj8
	 EQLcjWK92uUkw==
Date: Mon, 15 Dec 2025 15:42:01 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, Seth McDonald <sethmcmail@pm.me>, 
	Eugene Syromyatnikov <evgsyr@gmail.com>, Ingo Schwarze <schwarze@openbsd.org>, DJ Delorie <dj@redhat.com>, 
	Paul Floyd <pjfloyd@wanadoo.fr>, John Scott <jscott@posteo.net>, misc@openbsd.org
Subject: [PATCH v2 10/14] man/man3/posix_memalign.3: CAVEATS: Add section,
 and move paragraph to it
Message-ID: <1e5a0260edfd3fd4c9a5d4a79e5948cbde2addce.1765809415.git.alx@kernel.org>
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
 man/man3/posix_memalign.3 | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/man/man3/posix_memalign.3 b/man/man3/posix_memalign.3
index 8b3258dc2..c2816e1d4 100644
--- a/man/man3/posix_memalign.3
+++ b/man/man3/posix_memalign.3
@@ -61,13 +61,6 @@ .SH RETURN VALUE
 The value of
 .I errno
 is not set.
-On Linux (and other systems),
-.BR posix_memalign ()
-does not modify
-.I memptr
-on failure.
-A requirement standardizing this behavior was added in POSIX.1-2008 TC2.
-.\" http://austingroupbugs.net/view.php?id=520
 .SH ERRORS
 .TP
 .B EINVAL
@@ -118,5 +111,13 @@ .SH NOTES
 .BR malloc (3)
 always returns 8-byte aligned memory addresses, so these functions are
 needed only if you require larger alignment values.
+.SH CAVEATS
+On Linux (and other systems),
+.BR posix_memalign ()
+does not modify
+.I memptr
+on failure.
+A requirement standardizing this behavior was added in POSIX.1-2008 TC2.
+.\" http://austingroupbugs.net/view.php?id=520
 .SH SEE ALSO
 .BR aligned_alloc (3)
-- 
2.51.0


