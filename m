Return-Path: <linux-man+bounces-2343-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 372A5A25F8F
	for <lists+linux-man@lfdr.de>; Mon,  3 Feb 2025 17:13:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DD013164F54
	for <lists+linux-man@lfdr.de>; Mon,  3 Feb 2025 16:13:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0775120ADDC;
	Mon,  3 Feb 2025 16:13:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=uniontech.com header.i=@uniontech.com header.b="hhbKETAH"
X-Original-To: linux-man@vger.kernel.org
Received: from smtpbgau2.qq.com (smtpbgau2.qq.com [54.206.34.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BD6514F12D
	for <linux-man@vger.kernel.org>; Mon,  3 Feb 2025 16:13:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.206.34.216
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738599219; cv=none; b=K2YsCkS6qyd/aiwPZxiDpy3p5KiR21OEhG4cA6U2AWRX7Kk59WeUABXKnn6Z5zsC6NzGMUE3aXU+TO4zLil3jvwWCejBhuqXFhUzHo7S+jtIlIIyFdsxs8Y7+rqjcoLjwB1EDttsN6AHNTDKMzOkAmrGNGED1SIH46i9XyhLu/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738599219; c=relaxed/simple;
	bh=++20W6MnMLKLJ8kPZbWWKGlhW1bFdX9U8kn/QQg9v2E=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=Y7VYCMtnRwmWg8pBmvBJxb0C77lp4h+9rmOdQnBLy/D9VXU/yjISOlkZmgACcVcPXmfEqhy3gvZo6N/445oHfFydtG1ok7YZ9g0e3G+N7N0tajP0iDSS0zQehrL/s+h9ndpSamM3+ibvlCJT4YlGdJxf+ANfzpOxJBgCOcY/cvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=uniontech.com; spf=none smtp.mailfrom=uniontech.com; dkim=pass (1024-bit key) header.d=uniontech.com header.i=@uniontech.com header.b=hhbKETAH; arc=none smtp.client-ip=54.206.34.216
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=uniontech.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=uniontech.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uniontech.com;
	s=onoh2408; t=1738599189;
	bh=XDhwEiE1fi4UeKHszRTy1WX7xEzFgdvWHYjg7iwO/wM=;
	h=Message-ID:Subject:From:To:Date:MIME-Version;
	b=hhbKETAHRVO2VFjro2+ijukowlAvePubPkiH7/gY4t8baVxQndEsaO1fJd4NXIzWm
	 GUXPCvWY7yVpPit2M+Gr1IgY2t1oiLqp1F9N5eveZmfok53WQnkpSQGP1mrgJ15S+z
	 Pu62WMeTPPL2TDdxxl2AtAXQoF04FUC6oisynH58=
X-QQ-mid: bizesmtp81t1738599184tp6gl07u
X-QQ-Originating-IP: Lps2kW2zJTEH7Owuljm679MRdTmwCHodTMLXd20uwJY=
Received: from [192.168.3.11] ( [220.250.46.165])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 04 Feb 2025 00:13:03 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 1
X-BIZMAIL-ID: 14399455012434826620
Message-ID: <10536DCF452BDFA7+78a925684e5575b2e1577c874fdfbeb902d2ce58.camel@uniontech.com>
Subject: Re: [PATCH v2] man/man2/clone.2: Use munmap() to free child stack
From: Chen Linxuan <chenlinxuan@uniontech.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, "Eric W . Biederman" <ebiederm@xmission.com>
Date: Tue, 04 Feb 2025 00:13:02 +0800
In-Reply-To: <kqygul7gjkbgwwx7hror3hwqrfirndwp2epklmulalua3w7nnc@tjxq6jlocia2>
References: 
	<A6B3C875B683B1DD+20250203153004.70234-2-chenlinxuan@uniontech.com>
	 <kqygul7gjkbgwwx7hror3hwqrfirndwp2epklmulalua3w7nnc@tjxq6jlocia2>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.3-0ubuntu1 
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:uniontech.com:qybglogicsvrgz:qybglogicsvrgz5a-1
X-QQ-XMAILINFO: MBlb9jzPUvXQQtU8GUK79MObB+mX10cutdhLvqbZ9w88jRUQTtACDQXJ
	x45mNuEzQqj1EkcoL4HzBacF4is+P7gHdC8VPO2GCxDaymNw+wvQDJONhwSZgQ/rII6vArY
	ywTMaqTJ3MpbiJD2qGo90RKn/OvvqtZPQD9YY1mz+39+7583tXiZRoUBUPj0gzAMCsyE0sx
	ZvD7hXD8fKDmJvcV9xsgHoQnq+0NbWPv6ifXaUBtkGtt2kkClocd3AtqVfEjIi69YRvNQZ0
	1YDkxHJiVnnw5YIJFqV6MiykdSasy9JVJmcP5LTVE3MsUR2WF5UdiXuJulFbfzazg5HIwvD
	eStcopvXGAkf5SwmtAVQ/vt0ksu2eDmTjFqPv3uqEV4xijXdyTbjCkir08qI+ZOF/M0+0yf
	v8NI0InUk/aDqQlASKWA6S/SYC58mjDb4tyQGOKrMc3W+Yz42djNX6s8LvTzyKgZ9sNUlub
	9MHmORIT0FvBInZxoJKccnkCbzyU2B0RgvfP+rpJMqfisQNhwM6JNlZ41lWJJpYfOJTFyis
	pLKY2Xqhd01W6qJElg5CvgvWn2Ixlx1/ezSvttZ5pdvs4LO3swM47rkEI+6zYej0dneLD9c
	rwQWuhR1c/PPUzyGBMPITLJd8gIzifHxI2YkYy6xYI7c9hdWSl1Fxm2XvjgNBm2hkXViMjS
	oc3kI8s6jGTMLFCZKVfO8EVjvlWzrWTIzdlahXTJiXBlMq+4LyrW7BlE5yEO6vRXpFnuFue
	ISV387EvPQ1gQmdILXzVKSR9YphGjDb8fdiffUTrUu6xe//huktV1YWSQe0JEFllqLGYvtf
	HpCliXxRnwNxd0Hpzm+fyRpnMRjCxjTJgsahpvQHkOevis76rBid/y36gTvxzl6vCwaw+qi
	De7NwthaEAk7GZwn9HBITnimzDZYK+8FOEs5Rn58ydWXjUIfcgNF+FBQp03BMwbtDWp6Ppa
	Vr2xorQVgxSf7kgSuuR8jPE2uLEXPFt8SbHxC6jqP42df3KYvcn+egSPfNwn6rDufrBnl2D
	rCU3RB8A==
X-QQ-XMRINFO: NyFYKkN4Ny6FSmKK/uo/jdU=
X-QQ-RECHKSPAM: 0

On Mon, 2025-02-03 at 16:56 +0100, Alejandro Colomar wrote:
> Hi Chen,
>=20
> On Mon, Feb 03, 2025 at 11:30:05PM +0800, Chen Linxuan wrote:
> > ---
> >  man/man2/clone.2 | 13 ++++++++++++-
> >  1 file changed, 12 insertions(+), 1 deletion(-)
> >=20
> > diff --git a/man/man2/clone.2 b/man/man2/clone.2
> > index 3ffe8e7b8..cd63fe0b1 100644
> > --- a/man/man2/clone.2
> > +++ b/man/man2/clone.2
> > @@ -1891,6 +1891,7 @@ main(int argc, char *argv[])
> >      char            *stackTop;      /* End of stack buffer */
> >      pid_t           pid;
> >      struct utsname  uts;
> > +    int savedErrno;
> >  \&
> >      if (argc < 2) {
> >          fprintf(stderr, "Usage: %s <child\-hostname>\[rs]n", argv[0]);
> > @@ -1910,8 +1911,18 @@ main(int argc, char *argv[])
> >         child commences execution in childFunc(). */
> >  \&
> >      pid =3D clone(childFunc, stackTop, CLONE_NEWUTS | SIGCHLD, argv[1]=
);
> > -    if (pid =3D=3D \-1)
> > +\&
> > +    /* Free child stack, as it is not used by the parent. */
> > +\&
> > +    savedErrno =3D errno;
> > +    if (munmap(stack, STACK_SIZE)) {
> > +        warn("munmap");
> > +    }
> > +    errno =3D savedErrno;
> > +\&
> > +    if (pid =3D=3D \-1) {
> >          err(EXIT_FAILURE, "clone");
> > +    }
>=20
> This is too complex for an example program.  A goto alternative might be
> easier.

I am agree, but I couldn't figure out a simple way to implement this.
Do you have any suggestion?

>=20
>=20
> Cheers,
> Alex
>=20
> >      printf("clone() returned %jd\[rs]n", (intmax_t) pid);
> >  \&
> >      /* Parent falls through to here */
> > --=20
> > 2.43.0
> >=20
>=20


