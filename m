Return-Path: <linux-man+bounces-4392-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 03DD8CB2F03
	for <lists+linux-man@lfdr.de>; Wed, 10 Dec 2025 13:41:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4E43F3012244
	for <lists+linux-man@lfdr.de>; Wed, 10 Dec 2025 12:40:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B7E5324B2B;
	Wed, 10 Dec 2025 12:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LTdT3TZH"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B263324B24
	for <linux-man@vger.kernel.org>; Wed, 10 Dec 2025 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765370435; cv=none; b=WaJuVAFZbtPmhDzYzwcYJSzDTF32IIAaUIR8YO8n3bWRCDuz07xz5Xvqff5g2SFf8aBfjh0C7e+qbD91LZkLIoBpcWu3ohmo2yc0z2JRw6K5+UFVj6d6TEBIm1LHtHfQ/W8wlriHUEF4nGp6kdY31eFvw68SGvlnEkoWZBJwGPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765370435; c=relaxed/simple;
	bh=KJffKG/ygtkz99MLojJ4ajyMVTqeVC2P7HYGULgANDg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ApuGKfuW+rQkp5KmRdC1xvQ3rUW/BB1Iv/OFgbPQmHqbJ9kVUMGjns5TM3d6+1FTB2Aq1hJZaIvLCpEdeynTyeJIMriwtgW+WehgWmXhzaTNzqBjsYtizeGQY8gMDIuAEdipbobRXj4U2fUGS5UBHsx8ArlSGs7QDZhenb19sEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LTdT3TZH; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DF156C113D0;
	Wed, 10 Dec 2025 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765370434;
	bh=KJffKG/ygtkz99MLojJ4ajyMVTqeVC2P7HYGULgANDg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LTdT3TZHT6JrIdR5EsuVboyxJcynCzxDPuIeYAjMYmARlJfUmJr1DWT3ghW/Vr+fR
	 8o5fo8kpNfirz1Rno91IQ0NW/HQPMsIFTNwc9A6MHePImJjTlseotm6eQRsz+md5FV
	 o6ZE56thQO0LOOqzBrpVqdJvnSFL3pOZfu8ZYxNp4Fir5P2ImrHIVtUsu31BASDz9x
	 x5u+x6mi0UaEIU9saiz3NUOuOd8w4KZ0xCXrl62s3P+EPBIw2VDKcLdfcNN4oYYYuu
	 DfTi3YLT61goiar8NSP9jZecHArYq40Rr6gQNyc5OzQUQUE1f5WlHaGLuNedRvqxW0
	 bqwZKBdYAzsyQ==
Date: Wed, 10 Dec 2025 13:40:32 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, Seth McDonald <sethmcmail@pm.me>
Subject: [PATCH v1 12/12] man/man3/posix_memalign.3: NOTES: Remove
 superfluous section
Message-ID: <54e7d20ee909d331b87c445bbed40e9194179ace.1765370035.git.alx@kernel.org>
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
 man/man3/posix_memalign.3 | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/man/man3/posix_memalign.3 b/man/man3/posix_memalign.3
index fd76895a9..5600f7978 100644
--- a/man/man3/posix_memalign.3
+++ b/man/man3/posix_memalign.3
@@ -90,11 +90,6 @@ .SH STANDARDS
 .SH HISTORY
 glibc 2.1.91.
 POSIX.1d, POSIX.1-2001.
-.SH NOTES
-The glibc
-.BR malloc (3)
-always returns 8-byte aligned memory addresses, so these functions are
-needed only if you require larger alignment values.
 .SH CAVEATS
 On Linux (and other systems),
 .BR posix_memalign ()
-- 
2.51.0


