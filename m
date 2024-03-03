Return-Path: <linux-man+bounces-499-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 36AFE86F4A1
	for <lists+linux-man@lfdr.de>; Sun,  3 Mar 2024 12:48:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C3F37B21D38
	for <lists+linux-man@lfdr.de>; Sun,  3 Mar 2024 11:48:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F05DBA39;
	Sun,  3 Mar 2024 11:48:23 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from joooj.vinc17.net (joooj.vinc17.net [155.133.131.76])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BA2BB67F
	for <linux-man@vger.kernel.org>; Sun,  3 Mar 2024 11:48:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=155.133.131.76
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709466503; cv=none; b=nmgEiwWZ75HS+K3xYf57HnYEJ/XwUDgjD8DPj+pjp7yfXlPbk9pJLx9sLIomAhGrbJ2f1RfgW7xldfTNxmMLzloeEm5Grz9xoMl8DaIf9xCrRU4alOdCC9Ecteow/LzW0YIqFRAKoV/+aTIb42W79vWrhFF3ZIS9YgpYihRdktY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709466503; c=relaxed/simple;
	bh=u6GBSZAgBBZZ58AK5+Sw2GZacN7yhj3Xr+84aASzbAs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uFJbWqEHJVhXDa350oi8YpjDD78HSjhJewjOcJovg0I4rAQDWxS+bKDDKBA+TI3cR+aOTIj4VVlSgeCcyoGaiVbD85n8BsQC9gfHhDg+07GlMpuxIY5zhD7RB29Jj984/xvtqK7r5GoFdQ9kituQy1ehctFK00ooihRU9dVDwys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=vinc17.net; spf=pass smtp.mailfrom=vinc17.net; arc=none smtp.client-ip=155.133.131.76
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=vinc17.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vinc17.net
Received: from smtp-qaa.vinc17.net (135.197.67.86.rev.sfr.net [86.67.197.135])
	by joooj.vinc17.net (Postfix) with ESMTPSA id B47574F4;
	Sun,  3 Mar 2024 12:46:00 +0100 (CET)
Received: by qaa.vinc17.org (Postfix, from userid 1000)
	id 5B4D8CA00B2; Sun,  3 Mar 2024 12:46:00 +0100 (CET)
Date: Sun, 3 Mar 2024 12:46:00 +0100
From: Vincent Lefevre <vincent@vinc17.net>
To: Alejandro Colomar <alx@kernel.org>
Cc: Morten Welinder <mwelinder@gmail.com>, linux-man@vger.kernel.org,
	libc-alpha@sourceware.org, jsm-csl@polyomino.org.uk,
	newbie-02@gmx.de
Subject: Re: Man page issues: logb, significand, cbrt, log2, log10, exp10
Message-ID: <20240303114600.GA3653@qaa.vinc17.org>
Mail-Followup-To: Vincent Lefevre <vincent@vinc17.net>,
	Alejandro Colomar <alx@kernel.org>,
	Morten Welinder <mwelinder@gmail.com>, linux-man@vger.kernel.org,
	libc-alpha@sourceware.org, jsm-csl@polyomino.org.uk,
	newbie-02@gmx.de
References: <CANv4PNkVv_0eLgiSP3L_KfC-eZJaVLZ5AP1AGfD0GNrR5M4Hrg@mail.gmail.com>
 <ZeEnJB96mMC5bfBz@debian>
 <CANv4PNmMpiwfv5acr7U6VEVe7PE_AMTzkkpNoNN9jrtVzk_93Q@mail.gmail.com>
 <ZeOgFPCtzqY90kIR@debian>
 <CANv4PNm0xvB-GVb+z1yXPRVfeZYHU9533+VRTQfysjaycSbHBw@mail.gmail.com>
 <ZePerBa3QAvoFVSR@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZePerBa3QAvoFVSR@debian>
X-Mailer-Info: https://www.vinc17.net/mutt/
User-Agent: Mutt/2.2.12+69 (354c5b11) vl-149028 (2023-12-10)

On 2024-03-03 03:21:26 +0100, Alejandro Colomar wrote:
> Hi Morten,
> 
> On Sat, Mar 02, 2024 at 09:02:24PM -0500, Morten Welinder wrote:
> > Thanks.
> > 
> > There is (was?) already crlibm out there.
> > https://core-math.gitlabpages.inria.fr/  No particular need for wheel
> > reinvention here.
> 
> crlibm doesn't seem to exist anymore.

The sources are still available at more non-official mirror, but
it is no longer maintained.

> Maybe just add some headers to core-math, and package it as a
> standalone library.

The issue is that it is not portable yet.

> > FWIW, it appears that the author of the glibc exp10 implementation
> > agrees with me that the implementation is sub-standard:
> > 
> > https://codebrowser.dev/glibc/glibc/math/e_exp10.c.html
> > 
> > /* This is a very stupid and inprecise implementation. It'll get
> > replaced sometime (soon?). */
> > return __ieee754_exp (M_LN10 * arg);
> 
> Hmmm.  Still, it's simple.  If pow(10, x) is strictly better, maybe one
> can prove it and send a patch.  Or for something better, it'll take more
> work.

If by "strictly better", you mean that for each input, it returns a
result that is at least as accurate as the one returned by the above
expression, then, probably no. The reason is that the rounding errors
in the above expression may partly compensate on a random basis. So,
for some proportion of inputs, you'll actually get an accurate result.
And unless pow is designed to be almost correctly rounded, it will
probably be sometimes worse.

-- 
Vincent Lefèvre <vincent@vinc17.net> - Web: <https://www.vinc17.net/>
100% accessible validated (X)HTML - Blog: <https://www.vinc17.net/blog/>
Work: CR INRIA - computer arithmetic / AriC project (LIP, ENS-Lyon)

