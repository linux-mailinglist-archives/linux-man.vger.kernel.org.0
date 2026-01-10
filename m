Return-Path: <linux-man+bounces-4791-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B686D0DE83
	for <lists+linux-man@lfdr.de>; Sat, 10 Jan 2026 23:33:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1F7AE30341CC
	for <lists+linux-man@lfdr.de>; Sat, 10 Jan 2026 22:32:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3274271443;
	Sat, 10 Jan 2026 22:32:53 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from alt.a-painless.mh.aa.net.uk (alt.a-painless.mh.aa.net.uk [81.187.30.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3CED2512E6
	for <linux-man@vger.kernel.org>; Sat, 10 Jan 2026 22:32:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=81.187.30.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768084373; cv=none; b=X7xR2I5JHAQ9lNRx6Y/mQh+VSKXLyeD5/oSmvDuB+GuQzyIMDjNuEyrJBHm/hR4Wn3nsRsY2ZNT66dsLclSDd69H6D77zOmLjIwuyi9iMKU/KxofU3nHuhiGwtDYY1NEI8zsDxpzhgOcO9ZD3WVBxrZVLujbbtb4p3I+K4NSqrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768084373; c=relaxed/simple;
	bh=8pF+o5rsKzmaVAjKyRN3vmKhIZ9PrRT+mqOi79UJ2YY=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=S51NQi6/YPYwCXOl5o+rqB5PHTlnzuqzT2+RyT42NCbQ5YcNKFg1Cktw65VdsKlS4Lfl+lYqgMmGdQhTwjOQut8sWKSr+t0vvqPppku7UpYAgb/AahJN790vWkICvrue4E6nJIO+7nrpjY/9w1pVwLjATdJtLf1fEyUO0ojXtHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=offog.org; spf=none smtp.mailfrom=offog.org; arc=none smtp.client-ip=81.187.30.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=offog.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=offog.org
Received: from cartman.offog.org ([2001:8b0:83b:b53f::a])
	by painless-a.thn.aa.net.uk with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ats@offog.org>)
	id 1vehVo-009MY9-1y;
	Sat, 10 Jan 2026 22:32:48 +0000
Received: from ats by cartman.offog.org with local (Exim 4.99.1)
	(envelope-from <ats@offog.org>)
	id 1vehVW-000000000iK-3737;
	Sat, 10 Jan 2026 22:32:30 +0000
From: Adam Sampson <ats@offog.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 19/25] man/man3type/void.3type: HISTORY: Update first
 POSIX appearance of void(3type)
In-Reply-To: <aWDZFvDvb-hAXQMJ@devuan> (Alejandro Colomar's message of "Fri, 9
	Jan 2026 11:33:58 +0100")
References: <cover.1767939178.git.sethmcmail@pm.me>
	<efe8112034e9388465c108fd0418d7e0c68d12ee.1767939178.git.sethmcmail@pm.me>
	<aWDZFvDvb-hAXQMJ@devuan>
Date: Sat, 10 Jan 2026 22:32:30 +0000
Message-ID: <y2abjj1cd4x.fsf@offog.org>
User-Agent: Gnus/5.13 (Gnus v5.13)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Alejandro Colomar <alx@kernel.org> writes:

> I think 'void*' is important enough that it would be useful to dig in
> its history further.  Was it an invention of C89?  Or was it an
> extension in some existing compilers?  If the latter, it would be
> interesting to document which systems had it before C89.

From evidence in the utzoo Usenet archive, the idea was around before
the ANSI C effort.

The first mention of "void *" is in November 1982, where Ken Dalka
(ihuxe!dalka) observed in net.lang.c that void * was accepted as a type.
He didn't say which compiler was being used, but an earlier post said
ihuxe "runs USG 4.0 UN*X".

The next is from Mary Ann Horton (mark@cbosgd.UUCP) in January 1984,
also in net.lang.c, who suggests using "(void *) 0" as a definition of
NULL, giving a varargs function with args terminated by NULL as an
example.

Then in March 1984, Doug Gwyn (gwyn@Brl-Vld.ARPA) says, as part of a
discussion about casting the result of malloc in net.unix-wizards:

> The C Language Standards Committee was talking about adding
> (void *) to the language as a generic pointer type.  Perhaps
> that will eventually help...

It then shows up in various posts in both of those groups throughout
1984, including a summary by Henry Spencer in June 1984 of Larry
Rosler's presentation on the ANSI C project at Usenix saying:

> II.  "void *" is a new kind of pointer, which cannot be dereferenced but
> 	can be assigned to any other type of pointer without a cast.  The
> 	idea here is that "char *" is no longer required to be the
> 	"universal" pointer type which can point to anything.  So for
>	example, the declaration of fread earlier really should go:
>
>		extern int fread(void *, int, int, FILE *);
>
>	(People who have machines where all pointers have the same
>	representation, don't complain.  You are lucky.  Others aren't.)

Thanks,

-- 
Adam Sampson <ats@offog.org>                         <http://offog.org/>

