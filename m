Return-Path: <linux-man+bounces-1590-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4732694B53C
	for <lists+linux-man@lfdr.de>; Thu,  8 Aug 2024 04:56:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CDDFC28478A
	for <lists+linux-man@lfdr.de>; Thu,  8 Aug 2024 02:56:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5DA11A291;
	Thu,  8 Aug 2024 02:56:40 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from joooj.vinc17.net (joooj.vinc17.net [155.133.131.76])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0600A433C1
	for <linux-man@vger.kernel.org>; Thu,  8 Aug 2024 02:56:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=155.133.131.76
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723085800; cv=none; b=jluH4Wi/JL7to+UadVXZjP5iUYhLQl8tY6M2D8v4o3yX+vS2w9T0uqaaQQXPucfkyUCErue855jU2u/n5geAnJ9Ly7TdMQb5/Q5Qq2pxnVybmrOOivFBuGgK/bhB00x3w9KVnN7al5ncPU1LYurueK0S1hS+QPeTd2GcvyL2jSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723085800; c=relaxed/simple;
	bh=1TCMtepEtx/rYY09+zvAHIy3ThYiAzwj8mn+fv1yPPM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LxILW/ciM/8yMU11ILMvZ/mrkxXQf1FZZ7CZqwByaKSGDXlVC+zFYY4q44bk0UOkrpZ+3WfhuJC3p8+OCGmofOKIM9wW8SjTlXei8iV7PWGsk1j9AoloPMZkcGjPLLrAPdpO1UFEgpV72IstlboMquAWYnViOzOv4Pj7uoLRpz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=vinc17.net; spf=pass smtp.mailfrom=vinc17.net; arc=none smtp.client-ip=155.133.131.76
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=vinc17.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vinc17.net
Received: from smtp-qaa.vinc17.net (135.197.67.86.rev.sfr.net [86.67.197.135])
	by joooj.vinc17.net (Postfix) with ESMTPSA id 060324FA;
	Thu,  8 Aug 2024 04:56:36 +0200 (CEST)
Received: by qaa.vinc17.org (Postfix, from userid 1000)
	id 857BDCA0100; Thu, 08 Aug 2024 04:56:36 +0200 (CEST)
Date: Thu, 8 Aug 2024 04:56:36 +0200
From: Vincent Lefevre <vincent@vinc17.net>
To: Alejandro Colomar <alx@kernel.org>
Cc: Michael Kerrisk <mtk.manpages@gmail.com>,
	Alejandro Colomar <alx.manpages@gmail.com>,
	linux-man@vger.kernel.org
Subject: Re: [PATCH] nextup.3: minor improvements
Message-ID: <20240808025636.GE3086@qaa.vinc17.org>
References: <20240807105617.GH3221@qaa.vinc17.org>
 <oa5aca4pqtnnwjopngqkouwueglyujmusnms535mgh4ipyawbk@4wonm4ymhcdv>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <oa5aca4pqtnnwjopngqkouwueglyujmusnms535mgh4ipyawbk@4wonm4ymhcdv>
X-Mailer-Info: https://www.vinc17.net/mutt/
User-Agent: Mutt/2.2.13+77 (9dc98409) vl-169878 (2024-06-20)

On 2024-08-07 23:19:56 +0200, Alejandro Colomar wrote:
> Hi Vincent,
> 
> On Wed, Aug 07, 2024 at 12:56:17PM GMT, Vincent Lefevre wrote:
> > The current "If x is 0" is a bit misleading because "is" is not the
> > equality test, while this condition should apply to both -0 and 0.
> > Replace this condition by "If x is equal to 0".
> 
> How does 'is' differ semantically from 'is equal to' in this case?

"is" designates the value (it is a short for "has the value").
For instance, in the same man page (with the typo fixed):
"If x is NaN" (saying "is equal to" would be incorrect, because
the equality comparison with NaN is always false).

That's why the sqrt(3) man page has

  If x is +0 (-0), +0 (-0) is returned.

and the cbrt(3) man page has

  If x is +0, -0, positive infinity, [...]

"is equal to" corresponds to the usual equality, as written in
a source code. (IEEE 754-2019 actually uses "equals".)

For zero, one can also say "If x is ±0" as in the IEEE 754 standard.
The IEEE 754 standard also uses "zero" in the sense "±0" (but it
never uses "0" in this sense when there may be an ambiguity, knowing
that in practice, "0" has the same meaning as "+0"). In a condition,
when it says something like "x = 0", this means that x is either +0
or -0 because these values compare equal to each other.

So one could also say "If x is zero".

> I don't think 'is equal to' does anything different to mean also -0.

Note that the glibc manual in info format says for nextup:

  If X = ‘0’ the function returns the smallest positive subnormal
  number in the type of X.

and for nextdown:

  If X = ‘0’ the function returns the smallest negative subnormal
  number in the type of X.

> >  If
> >  .I x
> > -is 0, the returned value is the smallest representable positive number
> > -of the corresponding type.
> > +is equal to 0, the returned value is the smallest representable positive
> > +number of the corresponding type.
> 
> Please keep semantic newlines.  See man-pages(7).

I suppose that the issue is here "long clauses should be split at
phrase boundaries", so that you would like to avoid a split between
"positive" and "number". Perhaps better between "is" and "the".

BTW, it seems that this is often not honored, including in new text
(see e.g. commit c86bb39a117fb593f1ff7b7e729d70166d942446 two months
ago, with a split between "undefined" and "behavior").

And should I introduce a newline after the comma, though it is
currently not present? But this will not eliminate the need for
another line break.

-- 
Vincent Lefèvre <vincent@vinc17.net> - Web: <https://www.vinc17.net/>
100% accessible validated (X)HTML - Blog: <https://www.vinc17.net/blog/>
Work: CR INRIA - computer arithmetic / AriC project (LIP, ENS-Lyon)

