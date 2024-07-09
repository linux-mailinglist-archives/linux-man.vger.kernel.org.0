Return-Path: <linux-man+bounces-1423-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D6E092C3DF
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 21:24:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 16141B21AC3
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 19:24:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50A2E2629D;
	Tue,  9 Jul 2024 19:23:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uOKUzFwn"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FB8C1B86C9
	for <linux-man@vger.kernel.org>; Tue,  9 Jul 2024 19:23:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720553036; cv=none; b=jnB5ait1xtEM+nc+LOpq2lxUNwKakw1gVAl64nkRiwbamWkGxNVdVGXkyu/gsn0JNm9T33V0zRytsiOwN0/RallQ96/PFMOv3VBrIHcKbxxiT5xKxh1TfedczrkjFXtI/rWje4sYjROWeCDEHY0SNqQipmPQYRse7RDjbVeBv6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720553036; c=relaxed/simple;
	bh=HEaxhBS2eV4d+d+KmuI0Y6kd4WAbUo4AM//GHAK6Bv0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oVGw/JD3Mj0fa/PZB1E8eae/Tx+iPhCzYueAp790P0iEyQnF6cFdgye59eu76FeDMcyTHqzAa2x2SrAucP8dgMCbhe9QrlcAVb4+3KQdteiaIV6l84hMtVqCcbhjff7jB5fJTnAPxQ+f0bF1A7zqzpSCZ3KaTnTQAdTemLeezUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uOKUzFwn; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 09DE3C3277B;
	Tue,  9 Jul 2024 19:23:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720553035;
	bh=HEaxhBS2eV4d+d+KmuI0Y6kd4WAbUo4AM//GHAK6Bv0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uOKUzFwnFtsxBS8Wm0qfIU+cz+k/rCPwjYyKpaIKmZiRiFClzaxiLzSiT69KD8eLr
	 tvhTm4Cr1aI5Q8fpOWPlvO99Je+A2TvVpueUKHoIrLDTCrS0kHMjBY+12eem2KZDj6
	 9Jq0nNzF4jIdg8FLSXZehaWUJCEEeo5pM90V4QarO+fdFn2FDuJ4ltokvc39d/0B9i
	 CI84AU2m9h4mKEWAkDxDpea02kskEL2l+v+HN2Slj1MJzpDSxakeLhhYyiNh1Gq0c2
	 sOAxmvkdW6ycXxu6/oMn7qe9WhpZxL+mPF7aSnTjTNqO+OxXt9ZAGTpST6KYB0POxW
	 EJJipv1E49P2w==
Date: Tue, 9 Jul 2024 21:23:52 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] printf.3: the overall syntax is "%argnum$...", not
 "%$..."
Message-ID: <ovkagffe7qrdqzxqdd3rserfqgh7rpav2tztsc6eky326ncpaf@khzpqf5tbgrm>
References: <atyx4os7275jhfsrnblyr6ykxwghjzdpdnvnrvxcskei7kbb6n@tarta.nabijaczleweli.xyz>
 <gbwgs4u4acvwtabte47aljprwnhhxsznh7il2yfafhwkwrysbm@ij353jrj34qu>
 <3k35hwsubawtgidt2tvhrw5vspejtfmukyysfaf5ak7bdluswy@tarta.nabijaczleweli.xyz>
 <3i7s3ym3wj2ya3aiuar27dnfj7xpf3mfj5knxznckeq4blmt3w@hzwf7bs2f6d6>
 <rmb7glxh25cblpk3ju7dme2s2rt77kak2qzcnmevc7da5v2cpl@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zamzc23rtnxmqbmm"
Content-Disposition: inline
In-Reply-To: <rmb7glxh25cblpk3ju7dme2s2rt77kak2qzcnmevc7da5v2cpl@tarta.nabijaczleweli.xyz>


--zamzc23rtnxmqbmm
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] printf.3: the overall syntax is "%argnum$...", not
 "%$..."
References: <atyx4os7275jhfsrnblyr6ykxwghjzdpdnvnrvxcskei7kbb6n@tarta.nabijaczleweli.xyz>
 <gbwgs4u4acvwtabte47aljprwnhhxsznh7il2yfafhwkwrysbm@ij353jrj34qu>
 <3k35hwsubawtgidt2tvhrw5vspejtfmukyysfaf5ak7bdluswy@tarta.nabijaczleweli.xyz>
 <3i7s3ym3wj2ya3aiuar27dnfj7xpf3mfj5knxznckeq4blmt3w@hzwf7bs2f6d6>
 <rmb7glxh25cblpk3ju7dme2s2rt77kak2qzcnmevc7da5v2cpl@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
In-Reply-To: <rmb7glxh25cblpk3ju7dme2s2rt77kak2qzcnmevc7da5v2cpl@tarta.nabijaczleweli.xyz>

Hi =D0=BD=D0=B0=D0=B1,

On Tue, Jul 09, 2024 at 08:44:26PM GMT, =D0=BD=D0=B0=D0=B1 wrote:
> On Tue, Jul 09, 2024 at 08:43:36PM +0200, Alejandro Colomar wrote:
> > On Tue, Jul 09, 2024 at 07:57:34PM GMT, =D0=BD=D0=B0=D0=B1 wrote:
> > > On Tue, Jul 09, 2024 at 06:57:29PM +0200, Alejandro Colomar wrote:
> > > > > -%[$][flags][width][.precision][length modifier]conversion
> > > > > +%[argument$][flags][width][.precision][length modifier]conversion
> > > > Maybe argnum is clearer?
> > > Considered it, but nothing else in this string is contracted.
> > > If it were=20
> > >   %[argnum$][flags][width][.prec][length]conv
> > > then sure.
> > >=20
> > > I don't think it matters, really, but "argument" reads better with the
> > > full words. If you like argnum better then feel free to editorialise =
to
> > > that.
> > How about [position$] ?
> Don't think so, argnum is better than position IMO

I've applied the original patch.  Thanks!

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--zamzc23rtnxmqbmm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaNjkgACgkQnowa+77/
2zI6pw//TI47NAxZfFgJbK9GXodqjYpyGF9mq9kEwVJOcl5F+5/eqCTwHBJuf3Hy
WVZ/90cQWSoOS5vwJ803tA1YEX9fa6v8D9MVP56kvsPxFSkI4qBa4P6P2FvpAZGl
2F2pLR2CJxGNak+Bo4EL+18drm/zVI7ax8lWCK21rZbKnQk+vypOlItjxVsCxs8C
1QLhCRg79QNYI21y5p9LUpod7kyv4Vmbla0f4XHPTCyGumg3hmt8mHFLSDnbnzer
Pj9K/M6i1U/uOFRixXJiio1Z/jvmeuyOBhchPTQNAhTOUJViUlTfffJ8UB2H3aS9
is1UQOBnOxmEAn1UvnDlyybgAZg1GGHME8gEGQZ0PxfAnge1iWvzP8VdAUCk9kZH
yfpQPjqY2g6mfmNkQ0bmHz6tgqbQMl72066p6+V7tlIwiaaIFRl9JrS63XPjucpe
JMD9QvU8a8/WZl8A5oiaPx6oLFc5n6bmC3Xh0C0ZZvNugSRra1YA70o7KUVeWFBL
noGBbqXDFvlOYqQXfgsTmznmsKB1zszvesHrjlVH5oPhej1Gq+XRXpsj2n2Qv4EZ
yPq29QWbU+kwcIE4uQDECrIFWjZozJMFBZY2sNNHluJYmjxzdvDp+mwoLzVt08vN
zqA6s/HX4Zds9OnMFFh8CTBRnHAMQfbiXGFlzEmW9CK8gSQTexc=
=9B+s
-----END PGP SIGNATURE-----

--zamzc23rtnxmqbmm--

