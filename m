Return-Path: <linux-man+bounces-1581-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F699948D4A
	for <lists+linux-man@lfdr.de>; Tue,  6 Aug 2024 12:56:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 412171C236B0
	for <lists+linux-man@lfdr.de>; Tue,  6 Aug 2024 10:56:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79AF61BF331;
	Tue,  6 Aug 2024 10:56:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fi.muni.cz header.i=@fi.muni.cz header.b="tkJiO0KC"
X-Original-To: linux-man@vger.kernel.org
Received: from anxur.fi.muni.cz (anxur.fi.muni.cz [147.251.48.3])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E21351C0DCC
	for <linux-man@vger.kernel.org>; Tue,  6 Aug 2024 10:56:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=147.251.48.3
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722941778; cv=none; b=lcfJZ80GEGE6cSEYXzChY7EzZeDnqpRpp4zmDESXROS8drKl5PURZ+2ITxooiBluxqK0O/YLT0Vl2ghLLsLbb9Bt3ley6x6w+zbgcghHyj2EYMxZJdRt3Q6LBkB5Z/NOABlEdoGDrs9UUK1wdvRB1HbDfXnKA3GvClcAzocMMdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722941778; c=relaxed/simple;
	bh=pxpm+nSqU80KoRNu8c6MS74WRyxwuSA0UMuebi+sUD4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FP3jehANfvO+c3s/djBBHOex6Xm5gt5+Y0pfBes4oHc7YKY8IJNJIGP32dC+hSUpBKPCrxP2k72oU2maZLSRSjigIN1+n8QNutUe6LGkkEXNaIO7ZJWTbZy8ctX3jVtczzIlr0veKhm6c307azQ7Fr282u105HAJNOtJ1kElNo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fi.muni.cz; spf=pass smtp.mailfrom=fi.muni.cz; dkim=pass (2048-bit key) header.d=fi.muni.cz header.i=@fi.muni.cz header.b=tkJiO0KC; arc=none smtp.client-ip=147.251.48.3
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fi.muni.cz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fi.muni.cz
Received: by anxur.fi.muni.cz (Postfix, from userid 11561)
	id F335260A2E; Tue,  6 Aug 2024 12:56:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fi.muni.cz;
	s=20230215; t=1722941772;
	bh=SEGoEmPhqbyffomoZYS3UCFAdbHwsknvkfJoUI+HyAk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tkJiO0KCwgGG0V/EfC99dctvRl+ApHLUvJ+73NY3yurOzouvV+jCuluYVemtBt39Y
	 bprp8li63URzZxxr3PL/s9RxrjFzh0mSvGuAArqDX8x29nASZ8337NPFvfsA7JumXw
	 IpE9CBFP4Ob1ssYT/qw8lBKQP8UlBAGAcK2rbhzvfeh0sFYuqF0nXXU2QW3zlwZF5b
	 Ip512IuIZshFsk1Grs5suF3do54ny02pzL5cwL5DnSyudeJ28IrqOTKyL6fw0igwCW
	 CsHu+8s3ftYYv7Yr2SvYTYGiZZLiFpd+lJ+sa5KNJi5dC3VtawCYfFVyPXv4AfIweM
	 X7FNRyjNLkn/A==
Date: Tue, 6 Aug 2024 12:56:11 +0200
From: "Jan \"Yenya\" Kasprzak" <kas@fi.muni.cz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] wfix: accept4(2) SOCK_NONBLOCK flag
Message-ID: <20240806105611.GO14471@fi.muni.cz>
References: <20240806091932.GL14471@fi.muni.cz>
 <fkp5fm23qsghofpdm2rjlghmhnvjetxsr7hwhjoa3wypg2epxj@pcbr3qhxiomd>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <fkp5fm23qsghofpdm2rjlghmhnvjetxsr7hwhjoa3wypg2epxj@pcbr3qhxiomd>
X-Clacks-Overhead: GNU Terry Pratchett
User-Agent: Mutt/1.5.21 (2010-09-15)

	Hello, Alejandro,

I was unaware of "struct file" being called "open file description".
Sorry for the noise then.

Regards,

-Yenya

Alejandro Colomar wrote:
> Hello Jan,
> 
> On Tue, Aug 06, 2024 at 11:19:32AM GMT, Jan "Yenya" Kasprzak wrote:
> > The description of SOCK_NONBLOCK is a bit confusing:
> > "description" versus "descriptor", "open file" instead of "new file".
> 
> The "open file description" is a very specific thing.  See
> <https://biriukov.dev/docs/fd-pipe-session-terminal/1-file-descriptor-and-open-file-description/>
> 
> Have a lovely day!
> Alex
> 
> > 
> > Signed-off-by: Jan "Yenya" Kasprzak <kas@fi.muni.cz>
> > ---
> >  man/man2/accept.2 | 13 +++++++------
> >  1 file changed, 7 insertions(+), 6 deletions(-)
> > 
> > diff --git a/man/man2/accept.2 b/man/man2/accept.2
> > index afc04603c..65a56e37f 100644
> > --- a/man/man2/accept.2
> > +++ b/man/man2/accept.2
> > @@ -124,12 +124,13 @@ The following values can be bitwise ORed in
> >  to obtain different behavior:
> >  .TP 16
> >  .B SOCK_NONBLOCK
> > -Set the
> > -.B O_NONBLOCK
> > -file status flag on the open file description (see
> > -.BR open (2))
> > -referred to by the new file descriptor.
> > -Using this flag saves extra calls to
> > +Set the non-blocking
> > +.B ( O_NONBLOCK )
> > +file status flag on the new file descriptor.
> > +See the description of this flag in
> > +.BR open (2)
> > +for details.
> > +Using this flag saves an extra call to
> >  .BR fcntl (2)
> >  to achieve the same result.
> >  .TP
> > -- 
> > 2.45.2
> > 
> > -- 
> > | Jan "Yenya" Kasprzak <kas at {fi.muni.cz - work | yenya.net - private}> |
> > | https://www.fi.muni.cz/~kas/                        GPG: 4096R/A45477D5 |
> >     We all agree on the necessity of compromise. We just can't agree on
> >     when it's necessary to compromise.                     --Larry Wall
> 
> -- 
> <https://www.alejandro-colomar.es/>



-- 
| Jan "Yenya" Kasprzak <kas at {fi.muni.cz - work | yenya.net - private}> |
| https://www.fi.muni.cz/~kas/                        GPG: 4096R/A45477D5 |
    We all agree on the necessity of compromise. We just can't agree on
    when it's necessary to compromise.                     --Larry Wall

