Return-Path: <linux-man+bounces-1878-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B807F9BE4F0
	for <lists+linux-man@lfdr.de>; Wed,  6 Nov 2024 11:56:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E4ED71C20ECD
	for <lists+linux-man@lfdr.de>; Wed,  6 Nov 2024 10:56:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55DD91DE3D5;
	Wed,  6 Nov 2024 10:56:03 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from smtp1.bureaucracy.de (smtp1.bureaucracy.de [80.190.133.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6049A193094
	for <linux-man@vger.kernel.org>; Wed,  6 Nov 2024 10:56:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=80.190.133.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730890563; cv=none; b=t1TRu6dROBwFBikngdZs9Hzt8Yr2Ts3lUa43VIE2fx+8rB5XAwED6jjVvuw6jtUmdEd/wqStSowj4Fer9Lf2YDe6npjlOy1Z4jK0JUokmq2FnUpeWgUPXNEfZzTkTWTGE2Idmz9Dj0JQS6Z41euuRwka2+5eEs6+KgU1TCiSZ1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730890563; c=relaxed/simple;
	bh=Rd9i1KshA345JjYQODfp54lLQwOjokvPZDU0c9Bw1ro=;
	h=Message-ID:To:Cc:Subject:In-reply-to:References:MIME-Version:
	 Content-Type:Date:From; b=nV1vzVWjbWsRRN18z/iMIb/yTJf0HDTbbI1lTCR1qTDOSM+5yEtQvHYnb4+CEX4RSA2UybhhIBPxBizfVtbpPytlYZfhE6JRpRa8aSG6zdmK0ZqvXssWNw8HH7yERCNGvd45XXBtb36IpOZVmvEAF4POabgbDKmtQzvHIVLnYR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bureaucracy.de; spf=none smtp.mailfrom=bureaucracy.de; arc=none smtp.client-ip=80.190.133.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bureaucracy.de
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bureaucracy.de
Received: from localhost (<unknown> [2a02:8071:7111:c540:2d6f:92bc:3d9b:d766])
	by smtp1.bureaucracy.de (OpenSMTPD) with ESMTPSA id 00bf9eb8 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Wed, 6 Nov 2024 10:55:59 +0000 (UTC)
Message-ID: <ef69c2c2493d24f97b0d4938c62603ec.philipp@bureaucracy.de>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: bind EADDRNOTAVAIL at wrong postition
In-reply-to: <auseqaq5nrc3rndajqtapsticsomipqpihgasfcmlnp2sgkczu@amngtstagdta>
References: <67816c00225a0e945f73e22641d4f299.philipp@bureaucracy.de>
 <20241101124840.icu2zoyzbmfnzckd@devuan>
 <9010315d55e27a361142b67cd5816ba4.philipp@bureaucracy.de>
 <auseqaq5nrc3rndajqtapsticsomipqpihgasfcmlnp2sgkczu@amngtstagdta>
Comments: In-reply-to Alejandro Colomar <alx@kernel.org>
   message dated "Tue, 05 Nov 2024 23:34:16 +0100."
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <866860.1730890558.1@hell>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 06 Nov 2024 11:55:58 +0100
From: Philipp Takacs <philipp@bureaucracy.de>

Hi Alex,

[2024-11-05 23:34] Alejandro Colomar <alx@kernel.org>
> Hi Philipp.
>
> On Tue, Nov 05, 2024 at 03:54:36PM GMT, Philipp Takacs wrote:
> > Hi Alex
> > =

> > [2024-11-01 13:48] Alejandro Colomar <alx@kernel.org>
> > > Hi Philipp,
> > >
> > > On Sun, Oct 06, 2024 at 03:17:48AM +0200, Philipp Takacs wrote:
> > > > Hi
> > > > =

> > > > In bind(2) there are general errors and errors specific for AF_UNIX=
=2E The
> > > > EADDRNOTAVAIL error is sorted at the AF_UNIX specific errors. But i=
n
> > > > posix[0] EADDRNOTAVAIL is a normal error.
> > >
> > > Do you know any system under which it happens with a socket other tha=
n
> > > AF_UNIX?  It would be interesting to know if that's just a POSIX thin=
g,
> > > or if actual systems do have that.
> > =

> > I found this while debugging a bug[0] on in the OpenSMTPD package of
> > Debian. The problem was that the interface was not fully up but already
> > had IP(v6) addresses configured. So OpenSMTPD get the addresses from
> > the Interface and the bind failed with EADDRNOTAVAIL.
> > =

> > There are also some other places where the linux kernel returns
> > EADDRNOTAVAIL on non AF_UNIX sockets, for example in sctp[1].
>
> Hmmm, then it looks like a documentation bug.  Would you mind sending a
> patch?

Actualy I tried to avoid this, because I'm not a big fan of the
git-send-email workflow. But a patch is on the mailinglist.

Philipp

> Have a lovely night!
> Alex
>
> > =

> > Philipp
> > =

> > [0] https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D1059700
> > [1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/=
tree/net/sctp/socket.c#n399
> > =

> > >
> > > Have a lovely day!
> > > Alex
> > >
> > > > =

> > > > Philipp
> > > > =

> > > > [0] https://pubs.opengroup.org/onlinepubs/9699919799/functions/bind=
=2Ehtml
> > >
> > > -- =

> > > <https://www.alejandro-colomar.es/>
> > > part 2     application/pgp-signatur   833
>
> -- =

> <https://www.alejandro-colomar.es/>

