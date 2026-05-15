Return-Path: <linux-man+bounces-5512-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SI6oOnhDB2oCvAIAu9opvQ
	(envelope-from <linux-man+bounces-5512-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 15 May 2026 18:02:00 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 971BF552997
	for <lists+linux-man@lfdr.de>; Fri, 15 May 2026 18:02:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2A2E630A26E7
	for <lists+linux-man@lfdr.de>; Fri, 15 May 2026 15:45:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1F3C3F44CE;
	Fri, 15 May 2026 15:41:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ubL159zc"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8003E3F44F5
	for <linux-man@vger.kernel.org>; Fri, 15 May 2026 15:41:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778859684; cv=none; b=LENhcUMdTpNZYj9Jm2prFu6Jl2cg6XqaJGcCscfFRfVaU4ouWJkiqG+lUGzGLPpOHDaApgp1ykeo1CSnWROObzmMC+y/bwmrwXtiKSucfljL2hD51VLL5s03Do8LHgdPD3thd68M6Hgk2QWkjnWUVdpHPUPwE3eQ/ruC7QdwMJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778859684; c=relaxed/simple;
	bh=dJm8/VAj9oCbWlIMP5nzIvT4VLUopO/CDNOlX/C4m7Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FVCpZwvb326V66zfVKayGXfvQ0ezfoyDrtrP3mDYmwRobdfx7iFvcCYxUKQjcffS8G2r9jcb3+I5P/wslmVpSvB8AYUQE/v0hc0FP5uUHMOHoC7WlnXMW5fxoJ8kVRJSxVBSuqIt63zOKA9NKMCoPRdvm/kzk3WItipNsiQHQz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ubL159zc; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 51559C2BCB0;
	Fri, 15 May 2026 15:41:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778859683;
	bh=dJm8/VAj9oCbWlIMP5nzIvT4VLUopO/CDNOlX/C4m7Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ubL159zcq+c9oF1Ve2fSKvKjomdHFwaKbmWH4iO1/X+AdBwbEYfbBeVijcg8PDT2Y
	 jcACnAb54pV6JAGj6uuH0aQdzhYCSOmRJ5+5qAA5lgcQD00+ri+llXNuOmM1ztltPa
	 pHtz3z+fvkXxxQv1nkMQwiYCRwssPK0dGL3kpkqhEh6P51+T3UTru7HfVfCGj0URw9
	 8K9mok3em1TF5pwWoTTbGNx83ZaBQIgZgNh6+w9OGMn1oEL9XmV8by02GXXh4AcRXb
	 tGMp9o1w+CGucykiGAqs7AAy3HvZrDedyGuOKI5jhGHxdsnqBMhYDGGrRv+etdVsDz
	 DGq/Aklli/hJQ==
Date: Fri, 15 May 2026 17:41:20 +0200
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, Bruno Haible <bruno@clisp.org>, 
	Martin Uecker <uecker@tugraz.at>, Walter Harms <wharms@bfs.de>
Subject: [PATCH v1] man/man3/dlopen.3: EXAMPLES: Simplify use of dlsym(3)
Message-ID: <508bb4972e4846eab32f11e924aec8e1c9132515.1778859636.git.alx@kernel.org>
X-Mailer: git-send-email 2.53.0
References: <b2eb99d1f9a5681a4e8bca3126f3743fed900243.camel@tugraz.at>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <b2eb99d1f9a5681a4e8bca3126f3743fed900243.camel@tugraz.at>
X-Rspamd-Queue-Id: 971BF552997
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.16 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5512-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,bfs.de:email,clisp.org:email,tugraz.at:email]
X-Rspamd-Action: no action

The cast is entirely unnecessary.  Conversion from/to void* and function
pointers is implicit, and it's guaranteed by POSIX.  ISO C is irrelevant
here, because dlsym(3) requires POSIX, which provides the stronger
guarantees that we need.

And even before POSIX standardized these guarantees about void* and
function pointers, and system implementing dlsym(3) would have to
support them anyway, as otherwise dlsym(3) couldn't work at all.

Reported-by: Bruno Haible <bruno@clisp.org>
Suggested-by: Martin Uecker <uecker@tugraz.at>
Cc: Walter Harms <wharms@bfs.de>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man/man3/dlopen.3 | 20 ++++----------------
 1 file changed, 4 insertions(+), 16 deletions(-)

diff --git a/man/man3/dlopen.3 b/man/man3/dlopen.3
index 482af099..d9be7502 100644
--- a/man/man3/dlopen.3
+++ b/man/man3/dlopen.3
@@ -567,23 +567,11 @@ .SS Program source
 \&
     dlerror();    /* Clear any existing error */
 \&
-    cosine = (typeof(double (double)) *) dlsym(handle, "cos");
+    cosine = dlsym(handle, "cos");
 \&
-    /* According to the ISO C standard, casting between function
-       pointers and \[aq]void *\[aq], as done above, produces undefined results.
-       POSIX.1\-2001 and POSIX.1\-2008 accepted this state of affairs and
-       proposed the following workaround:
-\&
-           *(void **) &cosine = dlsym(handle, "cos");
-\&
-       This (clumsy) cast conforms with the ISO C standard and will
-       avoid any compiler warnings.
-\&
-       The 2013 Technical Corrigendum 1 to POSIX.1\-2008 improved matters
-       by requiring that conforming implementations support casting
-       \[aq]void *\[aq] to a function pointer.  Nevertheless, some compilers
-       (e.g., gcc with the \[aq]\-pedantic\[aq] option) may complain about the
-       cast used in this program.  */
+    /* The 2013 Technical Corrigendum 1 to POSIX.1\-2008
+       required that conforming implementations support
+       converting \[aq]void *\[aq] to a function pointer.  */
 .\" http://pubs.opengroup.org/onlinepubs/009695399/functions/dlsym.html#tag_03_112_08
 .\" http://pubs.opengroup.org/onlinepubs/9699919799/functions/dlsym.html#tag_16_96_07
 .\" http://austingroupbugs.net/view.php?id=74

Range-diff against v0:
-:  -------- > 1:  508bb497 man/man3/dlopen.3: EXAMPLES: Simplify use of dlsym(3)
-- 
2.53.0


