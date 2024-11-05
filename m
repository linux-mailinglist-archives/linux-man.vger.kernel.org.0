Return-Path: <linux-man+bounces-1870-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AA3E9BCBEC
	for <lists+linux-man@lfdr.de>; Tue,  5 Nov 2024 12:33:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B35AB282C03
	for <lists+linux-man@lfdr.de>; Tue,  5 Nov 2024 11:33:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 616821D4141;
	Tue,  5 Nov 2024 11:33:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mWkj+Ear"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19D3A1D0942;
	Tue,  5 Nov 2024 11:33:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730806432; cv=none; b=hIUuBMEet9WOgGnmIkm71rqOvTff12YMTyhdFTdPaT2FguSEBK1HK6ZeUV7NW77NLzT2ZGN4mM49K6KZOCP7LaznRAyEmoOCwk0u0ZtDAxd3nlp38WM1FoGyRgeNXWtXlW7TP27hed0tg1HCYeGoTiSbAqg+Sr6LZ2NFBqtNDlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730806432; c=relaxed/simple;
	bh=MmclJz4UyShC1h8nuE+F5rCu7kA3oLt2elgJKfv5E+8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tD7W4x9RN+oMcuNRsJMemd6QaR69kBOgIxjbhAgKh2ZDnKqClIGb3vK9GOq8PDsJDrgwrdyxUxq+pKQTsgJi+KF8Bt11zBq3OybylP3SZLMDKlNg5zB1LOr5Q73c6KQXsDRYO4xy3/0sDSQFiRm2t8TxUr1uByFSSzEKSQfnnYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mWkj+Ear; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8592CC4CECF;
	Tue,  5 Nov 2024 11:33:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730806431;
	bh=MmclJz4UyShC1h8nuE+F5rCu7kA3oLt2elgJKfv5E+8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mWkj+Earbt812nXqz4s1/3aZ2NxEGOovb35sosjHUQFf6cBYojWK1DLFs5sez4Mjo
	 gAF6TzeBv/ICf8pTzBF8HXN7nnegqjhZ3qC6diaov1h7tH1jQlcmiRgajD8GdB9xSN
	 oEPIeQUmJkdplqXO/+3fXWgFk51lp81NvSRjUzibBMi60Ag5bzt/eCySuZT8Rz2wkq
	 04X0mBGdwE2S3XvPykYeLSOSNMFCGllEEapgWdCHvB5lX0RWydIFcEYCltzbAIAATT
	 qFt0oKwuy6fKsZA/jJ9w+O3Pb3+W89zODGOxVRbylsSaApNxDyuA+NLi1UbN6BxSOC
	 ys9vqqAszAgxw==
Date: Tue, 5 Nov 2024 12:33:48 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Kuniyuki Iwashima <kuniyu@amazon.com>, alexhenrie24@gmail.com, 
	branden@debian.org
Cc: linux-man@vger.kernel.org, netdev@vger.kernel.org
Subject: Re: [PATCH] rtnetlink.7: Document struct ifa_cacheinfo
Message-ID: <xfzcwmn6syhywvdcu6kn3mkuwqpo5usiwkssblvk6qrpoys5dp@hwgvspb43tdo>
References: <20241105041507.1292595-1-alexhenrie24@gmail.com>
 <20241105055338.61082-1-kuniyu@amazon.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6ormvscpczcmh3of"
Content-Disposition: inline
In-Reply-To: <20241105055338.61082-1-kuniyu@amazon.com>


--6ormvscpczcmh3of
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Kuniyuki Iwashima <kuniyu@amazon.com>, alexhenrie24@gmail.com, 
	branden@debian.org
Cc: linux-man@vger.kernel.org, netdev@vger.kernel.org
Subject: Re: [PATCH] rtnetlink.7: Document struct ifa_cacheinfo
References: <20241105041507.1292595-1-alexhenrie24@gmail.com>
 <20241105055338.61082-1-kuniyu@amazon.com>
MIME-Version: 1.0
In-Reply-To: <20241105055338.61082-1-kuniyu@amazon.com>

Hi Alex, Kuniyuki, Branden,

On Mon, Nov 04, 2024 at 09:53:38PM GMT, Kuniyuki Iwashima wrote:
> From: Alex Henrie <alexhenrie24@gmail.com>
> Date: Mon,  4 Nov 2024 21:14:20 -0700
> > struct ifa_cacheinfo contains the address's creation time, update time,
> > preferred lifetime, and valid lifetime. See

We use two spaces after period (the correct amount).  :)
(I'm thinking we probably want to document something about it in
 man-pages(7).  Branden, do you want to send a patch about it?  I want
 to include the references you showed to me, and you probably remember
 better those links.)

> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree=
/include/uapi/linux/if_addr.h?h=3Dv6.11#n60

Please use this format for links:

Link: <http://example.com>

> >=20
> > Signed-off-by: Alex Henrie <alexhenrie24@gmail.com>
> > ---
> >  man/man7/rtnetlink.7 | 10 +++++++++-
> >  1 file changed, 9 insertions(+), 1 deletion(-)
> >=20
> > diff --git a/man/man7/rtnetlink.7 b/man/man7/rtnetlink.7
> > index 86ed459bb..b05654315 100644
> > --- a/man/man7/rtnetlink.7
> > +++ b/man/man7/rtnetlink.7
> > @@ -176,7 +176,15 @@ IFA_BROADCAST:raw protocol address:broadcast addre=
ss
> >  IFA_ANYCAST:raw protocol address:anycast address
> >  IFA_CACHEINFO:struct ifa_cacheinfo:Address information
> >  .TE
> > -.\" FIXME Document struct ifa_cacheinfo
> > +.IP
> > +.EX

Which include provides the structure?

> > +struct ifa_cacheinfo {
> > +    __u32 ifa_prefered; /* Preferred lifetime in seconds, -1 =3D forev=
er */
> > +    __u32 ifa_valid;    /* Valid lifetime in seconds, -1 =3D forever */
>=20
> -1 should be rather 0xFFFFFFFF (INFINITY_LIFE_TIME) as it's unsigned.

I prefer UINT32_MAX over 0xF...F, which might be unclear how many Fs it
has.

> Also, it would be nice to mention that ifa_prefered must be less than
> or equal to ifa_valid (ifa_prefered <=3D ifa_valid) and 0 is invalid for
> ifa_valid.
>=20
>   0 <=3D ifa_prefered <=3D ifa_valid
>   0 < ifa_valid <=3D 0xFFFFFFFF

You may want to use interval notation, like we do in timespec(3type).

     struct timespec {
         time_t     tv_sec;   /* Seconds */
         /* ... */  tv_nsec;  /* Nanoseconds [0, 999'999'999] */
     };

It might also be interesting to add a separate manual page for the type,
and reference it here.  Otherwise, the page starts getting fatty.

Have a lovely day!
Alex

>=20
>=20
> > +    __u32 cstamp;       /* Creation timestamp in hundredths of seconds=
 */
> > +    __u32 tstamp;       /* Update timestamp in hundredths of seconds */
> > +};
>=20
> Maybe the explanation can follow the struct here as sentences.
>=20
>=20
> > +.EE
> >  .TP
> >  .B RTM_NEWROUTE
> >  .TQ
> > --=20
> > 2.47.0
>=20

--=20
<https://www.alejandro-colomar.es/>

--6ormvscpczcmh3of
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmcqApwACgkQnowa+77/
2zIaMBAApks8FzVk1P0UJ2oxTf2XNDx+OEJnxRDWteQrTX6Dq8oazBeuWw3TM9UG
ANNqbWxPM58d5vpO8XNxJCCaK2VL0OH0gcVdYnu/NvocswY9KnZMdtX2gCokRCce
n4EhJ52olRiHYPNzH2Fm4ANFkILAi7o6WynYmB8mmUgu3IJtdmIV5G8k5fniBIDv
yoVd6+sQSCpLtA5LZDujbFJDQmeJoRtrI/Mfl5WJYKND6MBMCrWVAFriEBZFXlLM
/dqw5Al0ac3h0AvR6vPgYcXOzorZpnafyhIMjWpbcpiD4fYCFuTUZzO0rmKsjovu
HziuoqVCcGQln4wcyeSq/9EklS/5+Mpiep39nfux8ptFIIsp6oeE2IiIO2km1Jxj
mcsDRWshRdASoV3Eu+Eg5X2BEehEKAQQy/pNMsRXKuZTym0Mb64lhNcgD3Guus/W
M2BD2rRFD05FzmK2yU+X8G7PwP+0Bp4yykTlGhJAORIRPoBbLNSAt9D5UdT0n2cI
Pi3sl8052nXjT3Hka/j3jPVirTPHhajc8BCXTnTM9am5SqUM5dF7buNFWbh9CT8Z
KVBx6PpXstSJlw/rpqYiwhpQ7tG04FACI+Lb1ibqkLmTkfTgpKz7sc8dllfCFoj/
YhZOwUKxC5oNSVPwO6RN0IYFuMCp4lTZuJYzCTLBmNfNgLfQgzQ=
=InfI
-----END PGP SIGNATURE-----

--6ormvscpczcmh3of--

