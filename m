Return-Path: <linux-man+bounces-3241-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DA2AAAF6818
	for <lists+linux-man@lfdr.de>; Thu,  3 Jul 2025 04:35:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 516F35214C1
	for <lists+linux-man@lfdr.de>; Thu,  3 Jul 2025 02:35:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8C0A11CA9;
	Thu,  3 Jul 2025 02:35:02 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from joooj.vinc17.net (joooj.vinc17.net [155.133.131.76])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2589F158535
	for <linux-man@vger.kernel.org>; Thu,  3 Jul 2025 02:35:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=155.133.131.76
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751510102; cv=none; b=ncIDGlTewzAQqYB77bT2t5LUTg94PKd99BHSZ6JNm5v+rglx17mc9lD+AWFYMC9gGMy6F0lyRBaj/W5KSQUJyQpyOg/nuOHwPU0vgkhoZn2fqZ4yNRHx2C726F/8qI1iitdQdkbXLo2qgV74AiUipB9A1PjaeUOGMh2ttnZ19Z8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751510102; c=relaxed/simple;
	bh=SkJYparAKofva1yR1PrC+grBAAPck1m9rhdnx/ltbpI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Fh4w+da+5SahXtFnSHzjjps5jrE93mViaDcUdHZTgafgdBTWeEt/17TNfZR5wSSq38I8QwpjQS01TkacePe2MIMe1eViw6e7AOCy9+xs4+bNtCCKigX1sS9Jml+NlmgD+vIoT558mszUGSZ/8Ez80RGQpaC6I3Rhg+Aw8zVfWFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=vinc17.net; spf=pass smtp.mailfrom=vinc17.net; arc=none smtp.client-ip=155.133.131.76
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=vinc17.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vinc17.net
Received: from smtp-qaa.vinc17.net (135.197.67.86.rev.sfr.net [86.67.197.135])
	by joooj.vinc17.net (Postfix) with ESMTPSA id AC969328;
	Thu,  3 Jul 2025 04:34:52 +0200 (CEST)
Received: by qaa.vinc17.org (Postfix, from userid 1000)
	id 7400FCA016C; Thu, 03 Jul 2025 04:34:51 +0200 (CEST)
Date: Thu, 3 Jul 2025 04:34:51 +0200
From: Vincent Lefevre <vincent@vinc17.net>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/: Replaced reserved exp identifier
Message-ID: <20250703023451.GJ12583@qaa.vinc17.org>
References: <20250702092516.GA2328014@cventin.lip.ens-lyon.fr>
 <hg3uyynudxq2bm2cl2spcm6nshjewbcoaxoxjzamtuzevcwyyw@d2ituhdydzmw>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <hg3uyynudxq2bm2cl2spcm6nshjewbcoaxoxjzamtuzevcwyyw@d2ituhdydzmw>
X-Mailer-Info: https://www.vinc17.net/mutt/
User-Agent: Mutt/2.2.13+86 (bb2064ae) vl-169878 (2025-02-08)

On 2025-07-02 16:41:28 +0200, Alejandro Colomar wrote:
> On Wed, Jul 02, 2025 at 11:25:16AM +0200, Vincent Lefevre wrote:
[...]
> > --- a/man/man2/timerfd_create.2
> > +++ b/man/man2/timerfd_create.2
> > @@ -639,12 +639,12 @@ main(int argc, char *argv[])
> >  {
> >      int                fd;
> >      ssize_t            s;
> > -    uint64_t           exp, tot_exp, max_exp;
> > +    uint64_t           ex, tot_ex, max_ex;
> 
> How about using 'to' for timeout?  Do you think it makes sense?

As described by the man page, this is more a timer expiration
(many occurrences of words starting with "expir") than a timeout
(a single occurrence - shouldn't this be "expiration time"?).
So, for these 3 variables, instead of "exp", perhaps "te" for
"timer expiration"?

> >      struct timespec    now;
> >      struct itimerspec  new_value;
> >  \&
> >      if (argc != 2 && argc != 4) {
> > -        fprintf(stderr, "%s init\-secs [interval\-secs max\-exp]\[rs]n",
> > +        fprintf(stderr, "%s init\-secs [interval\-secs max\-ex]\[rs]n",
> 
> And here saying max\-timeout.

One could actually let max\-exp. Or say max\-timer\-exp (the line
would not be too large).

[...]
> > --- a/man/man3/frexp.3
> > +++ b/man/man3/frexp.3
> > @@ -14,9 +14,9 @@ Math library
> >  .nf
> >  .B #include <math.h>
> >  .P
> > -.BI "double frexp(double " x ", int *" exp );
> > -.BI "float frexpf(float " x ", int *" exp );
> > -.BI "long double frexpl(long double " x ", int *" exp );
> > +.BI "double frexp(double " x ", int *" p );
> > +.BI "float frexpf(float " x ", int *" p );
> > +.BI "long double frexpl(long double " x ", int *" p );
> 
> Here I think I'd use 'e' for exponent.  What do you think?

One could do that (this was more or less my initial idea,
and I'm wondering why the committee chose p).

BTW, for frexp, this is a pointer, while for ldexp, this is
an integer. So, should there be a difference (e.g. pe for
the pointer to the exponent, and e for the exponent)?

-- 
Vincent Lefèvre <vincent@vinc17.net> - Web: <https://www.vinc17.net/>
100% accessible validated (X)HTML - Blog: <https://www.vinc17.net/blog/>
Work: CR INRIA - computer arithmetic / Pascaline project (LIP, ENS-Lyon)

