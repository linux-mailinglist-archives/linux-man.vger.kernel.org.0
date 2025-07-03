Return-Path: <linux-man+bounces-3243-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A6053AF6C99
	for <lists+linux-man@lfdr.de>; Thu,  3 Jul 2025 10:17:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C32BD4A4488
	for <lists+linux-man@lfdr.de>; Thu,  3 Jul 2025 08:17:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A9C5298CBC;
	Thu,  3 Jul 2025 08:17:21 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from joooj.vinc17.net (joooj.vinc17.net [155.133.131.76])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F45A22069F
	for <linux-man@vger.kernel.org>; Thu,  3 Jul 2025 08:17:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=155.133.131.76
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751530641; cv=none; b=rPAfsQLaEoH8PCBFKimiksUTQzDqbt9rd54OJ03FJvqYGanCXAgXbcEBoNj0yhTkFwZAKb7f46nJ/3gqysNtJkzsMKetHJvunULf1ACuszfpbv2sDJ0eXHdt/tloH7Pl+PHcAC0ueqJq4/ezoLFjIEdQfl9zOtnmMejMwDdA6Z4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751530641; c=relaxed/simple;
	bh=Itd28zw9qX8UXkQI4Za9WQaBZrHcmHhXKSYWO3JyqtQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=R0L+7u/6nsjS0bcXdbDmFAlaxCc/QhYJ/U4uW89bVlR+WoR1lgl/B31WcYXjnimt7SgDl0lSRqoce42t8mQ+7yP98j6i1Iit7f70GKGi6MP5tDsqFQviqlhnK6JSykpOeegrNfUJdkOUwrqEV9szu3T05bMyKUx6bmEwNcgSWNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=vinc17.net; spf=pass smtp.mailfrom=vinc17.net; arc=none smtp.client-ip=155.133.131.76
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=vinc17.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vinc17.net
Received: from smtp-qaa.vinc17.net (135.197.67.86.rev.sfr.net [86.67.197.135])
	by joooj.vinc17.net (Postfix) with ESMTPSA id C4726328;
	Thu,  3 Jul 2025 10:17:17 +0200 (CEST)
Received: by qaa.vinc17.org (Postfix, from userid 1000)
	id 8928ECA016C; Thu, 03 Jul 2025 10:17:17 +0200 (CEST)
Date: Thu, 3 Jul 2025 10:17:17 +0200
From: Vincent Lefevre <vincent@vinc17.net>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/: Replaced reserved exp identifier
Message-ID: <20250703081717.GK12583@qaa.vinc17.org>
References: <20250702092516.GA2328014@cventin.lip.ens-lyon.fr>
 <hg3uyynudxq2bm2cl2spcm6nshjewbcoaxoxjzamtuzevcwyyw@d2ituhdydzmw>
 <20250703023451.GJ12583@qaa.vinc17.org>
 <awi6dk4jfrdbwizjn63c3j32ibll4exy2tdnqgimz64tdjsn3c@gstmeshesm4r>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <awi6dk4jfrdbwizjn63c3j32ibll4exy2tdnqgimz64tdjsn3c@gstmeshesm4r>
X-Mailer-Info: https://www.vinc17.net/mutt/
User-Agent: Mutt/2.2.13+86 (bb2064ae) vl-169878 (2025-02-08)

Hi Alejandro,

On 2025-07-03 04:58:03 +0200, Alejandro Colomar wrote:
> Hi Vincent,
> 
> On Thu, Jul 03, 2025 at 04:34:51AM +0200, Vincent Lefevre wrote:
> > On 2025-07-02 16:41:28 +0200, Alejandro Colomar wrote:
> > > On Wed, Jul 02, 2025 at 11:25:16AM +0200, Vincent Lefevre wrote:
> > [...]
> > > > --- a/man/man2/timerfd_create.2
> > > > +++ b/man/man2/timerfd_create.2
> > > > @@ -639,12 +639,12 @@ main(int argc, char *argv[])
> > > >  {
> > > >      int                fd;
> > > >      ssize_t            s;
> > > > -    uint64_t           exp, tot_exp, max_exp;
> > > > +    uint64_t           ex, tot_ex, max_ex;
> > > 
> > > How about using 'to' for timeout?  Do you think it makes sense?
> > 
> > As described by the man page, this is more a timer expiration
> > (many occurrences of words starting with "expir") than a timeout
> > (a single occurrence - shouldn't this be "expiration time"?).
> > So, for these 3 variables, instead of "exp", perhaps "te" for
> > "timer expiration"?
> 
> I still think to or te (or ex) are too unreadable (and I tend to prefer
> one-letter variables when it is clear from the context, to be clear).
> How about expir?

OK for expir (with the reformatting of a line that would become
too long as a consequence). That's even clearer than exp.

> > > >      struct timespec    now;
> > > >      struct itimerspec  new_value;
> > > >  \&
> > > >      if (argc != 2 && argc != 4) {
> > > > -        fprintf(stderr, "%s init\-secs [interval\-secs max\-exp]\[rs]n",
> > > > +        fprintf(stderr, "%s init\-secs [interval\-secs max\-ex]\[rs]n",
> > > 
> > > And here saying max\-timeout.
> > 
> > One could actually let max\-exp. Or say max\-timer\-exp (the line
> > would not be too large).
> 
> Or timer_exp and max\-timer\-exp as you propose here.  That sounds quite
> readable.

The use of "max" in the name is important as there are several
timer expirations and one gives here the maximum number of such
expirations. It could also be "max\-expir" or "max\-#expir"[*].
What do you think?

[*] https://academia.stackexchange.com/questions/90816/abbreviation-of-number-of-in-a-table-heading

> > [...]
> > > > --- a/man/man3/frexp.3
> > > > +++ b/man/man3/frexp.3
> > > > @@ -14,9 +14,9 @@ Math library
> > > >  .nf
> > > >  .B #include <math.h>
> > > >  .P
> > > > -.BI "double frexp(double " x ", int *" exp );
> > > > -.BI "float frexpf(float " x ", int *" exp );
> > > > -.BI "long double frexpl(long double " x ", int *" exp );
> > > > +.BI "double frexp(double " x ", int *" p );
> > > > +.BI "float frexpf(float " x ", int *" p );
> > > > +.BI "long double frexpl(long double " x ", int *" p );
> > > 
> > > Here I think I'd use 'e' for exponent.  What do you think?
> > 
> > One could do that (this was more or less my initial idea,
> > and I'm wondering why the committee chose p).
> 
> The committee has chosen many bad names.  Let's not follow them.
> Indeed, now that I'm member of the committee, I'm trying to fix that
> among other things.

Great. FYI, here's what I sent to the CFP list yesterday, as there
are also remaining "exp" in the standard:

────────────────────────────────────────────────────────────────────────
In ISO C23 and still in the N3550 C2y draft, B.11 (<math.h>)
and H.11.3p1:

_FloatN frexpfN(_FloatN value, int *exp);
_FloatNx frexpfNx(_FloatNx value, int *exp);
_DecimalN frexpdN(_DecimalN value, int *exp);
_DecimalNx frexpdNx(_DecimalNx value, int *exp);

and

_FloatN ldexpfN(_FloatN value, int exp);
_FloatNx ldexpfNx(_FloatNx value, int exp);
_DecimalN ldexpdN(_DecimalN value, int exp);
_DecimalNx ldexpdNx(_DecimalNx value, int exp);

and

_FloatN scalbnfN(_FloatN value, int exp);
_FloatNx scalbnfNx(_FloatNx value, int exp);
_DecimalN scalbndN(_DecimalN value, int exp);
_DecimalNx scalbndNx(_DecimalNx value, int exp);
_FloatN scalblnfN(_FloatN value, long int exp);
_FloatNx scalblnfNx(_FloatNx value, long int exp);
_DecimalN scalblndN(_DecimalN value, long int exp);
_DecimalNx scalblndNx(_DecimalNx value, long int exp);

However, exp is a standard library function, thus the exp identifier
is reserved for any use. So the above prototypes are incorrect.

Earlier, one has:

double frexp(double value, int *p);
float frexpf(float value, int *p);
long double frexpl(long double value, int *p);

double ldexp(double x, int p);
float ldexpf(float x, int p);
long double ldexpl(long double x, int p);

double scalbn(double x, int n);
float scalbnf(float x, int n);
long double scalbnl(long double x, int n);
double scalbln(double x, long int n);
float scalblnf(float x, long int n);
long double scalblnl(long double x, long int n);

So, for consistency, p and n could be used respectively,
instead of exp.

H.11.3p2 and H.11.3p3 would also need to be updated.

Also in F.10.4.9:

"On a binary system, ldexp(x, exp) is equivalent to scalbn(x, exp)."

BTW, there is a similar issue in 7.17.7.5p7, which contains the
following example:

  exp = atomic_load(&cur);
  do {
        des = function(exp);
  } while (!atomic_compare_exchange_weak(&cur, &exp, des));
────────────────────────────────────────────────────────────────────────

> > BTW, for frexp, this is a pointer, while for ldexp, this is
> > an integer. So, should there be a difference (e.g. pe for
> > the pointer to the exponent, and e for the exponent)?
> 
> Hmmmm, I think not.  From the context it should be obvious.

So, OK for "e".

Regards,

-- 
Vincent Lefèvre <vincent@vinc17.net> - Web: <https://www.vinc17.net/>
100% accessible validated (X)HTML - Blog: <https://www.vinc17.net/blog/>
Work: CR INRIA - computer arithmetic / Pascaline project (LIP, ENS-Lyon)

