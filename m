Return-Path: <linux-man+bounces-4322-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CD611C81E30
	for <lists+linux-man@lfdr.de>; Mon, 24 Nov 2025 18:26:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8C3323A318E
	for <lists+linux-man@lfdr.de>; Mon, 24 Nov 2025 17:26:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7AD2A2343C0;
	Mon, 24 Nov 2025 17:26:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SG9+fMpk"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38FCD22B5A5
	for <linux-man@vger.kernel.org>; Mon, 24 Nov 2025 17:26:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764005205; cv=none; b=Da9rHBsATL6eM9F1v/8hMVS3iw3c/nqwk6UljXG5uNIrRLqeKZWOQQPMXEuSM1FCtcw3SE/xWoFijhAOTPFKpreLgNF7UrB4mM7p82WAj2lER/MgChR5mf27olFjSvowxdEKCb3mDYIqPNImTiXUHwP7TsOkw4AT/VnIn69Oldg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764005205; c=relaxed/simple;
	bh=bjzkIvCKKAc7vFoLOubdeim+5MQje9lbi/t4vaKZt/8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=e24+ov9uThOC5EA3O7jfBakuVmRLu416IxRYcKoNuKxDmxf5XQ6rT075MLB0+bgHH7d2QQLyAMSE4yw1SXcKKkF5rHzyfDVVuXPqEGo3hzRPLIuIqBCcVzX1WV7IXNP/GL7fiuElC2uqdkYPPz/vBbPmt8PkxGEVx2rDL57+osM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SG9+fMpk; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D03C6C4CEF1;
	Mon, 24 Nov 2025 17:26:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764005205;
	bh=bjzkIvCKKAc7vFoLOubdeim+5MQje9lbi/t4vaKZt/8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SG9+fMpkTKNF8l9kKUvW8g8CC/qZpyLPRP0bNGH2bBrrxbhX79naWrGb+T40753L9
	 lVS73Ipqzvsqbmi28UZnxc0FRCVl/DUgFWaGvFzdU2SySbHXNKETEXmDxEo+HJvg3j
	 0q3tWlpk3Gu54eXRAbfAix+2MVC23G22vU4AanXixwSJAlNvBRd53CE7xfPWe+9KaR
	 fyv9rxSm+n7CN5pj4h4lx27R6s2aCwcJm1m/7j9KPgjyCDFexE/2F7Abj6LZGoLedI
	 nTmIxtzhuwCDvLZWsFFkvA5QR4djxZd2c81OaXMjSsQFz5+imIniQVqErbSJdHtS4Q
	 2aYWPcw/XgXIw==
Date: Mon, 24 Nov 2025 18:26:41 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Florian Weimer <fweimer@redhat.com>
Cc: Mark Naughton <mnaughto@redhat.com>, Mark Harris <mark.hsj@gmail.com>, 
	linux-man@vger.kernel.org, Joseph Myers <josmyers@redhat.com>
Subject: Re: strncmp(3) in the SYNOPSIS
Message-ID: <5jrxq3yr63xlimg3ohs7dnttk76ovag5igwnpa3uionhyez4nl@oyum2thxolke>
References: <7zkvtkaafxycu2si3r4jl6qaynzfkedvphhh26rfjibq3kbxc7@56katuftwykv>
 <CACdZg2XOB9gmH0aJRLZVn4gfsd8xHyn78ohB7=wwo2ppzsXzig@mail.gmail.com>
 <kghzj5sfvb7dmkdg5iqtt2l25unqw4voxps3jcy6s7wcznr4gx@e2dn6h3geupq>
 <CAMdZqKFhcNgH-xWSUZa=N6X0kkpH=XqtZNxnBCmgoCT+XY=7Bg@mail.gmail.com>
 <CACdZg2W6+EuYn+GJYUAr+6OdU7M886GChn1+uMUC-iNxCsV7pA@mail.gmail.com>
 <movtjbigtmqu5qwwijxng7pc62bvfxhqf5fhf36rd5wq67c4yy@wnpjvmfuti2i>
 <87a56mxmsx.fsf@oldenburg.str.redhat.com>
 <hkyvvyqkhbseev7cyqkdjvknur6tghu6xt7ekjfhjsfyicwsm2@awrjajnvugz5>
 <874iwuxl60.fsf@oldenburg.str.redhat.com>
 <5mfvvwtthfzgjb3m7d4bzwcn3vc4jmpsktk43vjcfjg5vkeyug@7aqiiz5fwgfn>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lj5ulogxr5k7j6ci"
Content-Disposition: inline
In-Reply-To: <5mfvvwtthfzgjb3m7d4bzwcn3vc4jmpsktk43vjcfjg5vkeyug@7aqiiz5fwgfn>


--lj5ulogxr5k7j6ci
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Florian Weimer <fweimer@redhat.com>
Cc: Mark Naughton <mnaughto@redhat.com>, Mark Harris <mark.hsj@gmail.com>, 
	linux-man@vger.kernel.org, Joseph Myers <josmyers@redhat.com>
Subject: Re: strncmp(3) in the SYNOPSIS
Message-ID: <5jrxq3yr63xlimg3ohs7dnttk76ovag5igwnpa3uionhyez4nl@oyum2thxolke>
References: <7zkvtkaafxycu2si3r4jl6qaynzfkedvphhh26rfjibq3kbxc7@56katuftwykv>
 <CACdZg2XOB9gmH0aJRLZVn4gfsd8xHyn78ohB7=wwo2ppzsXzig@mail.gmail.com>
 <kghzj5sfvb7dmkdg5iqtt2l25unqw4voxps3jcy6s7wcznr4gx@e2dn6h3geupq>
 <CAMdZqKFhcNgH-xWSUZa=N6X0kkpH=XqtZNxnBCmgoCT+XY=7Bg@mail.gmail.com>
 <CACdZg2W6+EuYn+GJYUAr+6OdU7M886GChn1+uMUC-iNxCsV7pA@mail.gmail.com>
 <movtjbigtmqu5qwwijxng7pc62bvfxhqf5fhf36rd5wq67c4yy@wnpjvmfuti2i>
 <87a56mxmsx.fsf@oldenburg.str.redhat.com>
 <hkyvvyqkhbseev7cyqkdjvknur6tghu6xt7ekjfhjsfyicwsm2@awrjajnvugz5>
 <874iwuxl60.fsf@oldenburg.str.redhat.com>
 <5mfvvwtthfzgjb3m7d4bzwcn3vc4jmpsktk43vjcfjg5vkeyug@7aqiiz5fwgfn>
MIME-Version: 1.0
In-Reply-To: <5mfvvwtthfzgjb3m7d4bzwcn3vc4jmpsktk43vjcfjg5vkeyug@7aqiiz5fwgfn>

Hi Florian,

On Thu, Jun 05, 2025 at 05:33:31PM +0200, Alejandro Colomar wrote:
> Hi Florian,
>=20
> On Thu, Jun 05, 2025 at 05:28:23PM +0200, Florian Weimer wrote:
> > My point is that *if* it is a string, it can be arbitrary long.  It does
> > not have to contain at least five characters, it can be shorter.  These
> > two choices are valid:
> >=20
> >   subject is a string
> >   subject is an array that is at least six bytes long
> >=20
> > They overlap, but both options are needed.  For example, "?" is not an
> > array that is at least six bytes long.
>=20
> Yep, that's correct.  Hmmm, I don't know; maybe for consistency I could
> remove those [n] and just use [].  We'll see.  Please remind me in a
> month or so; possibly with a patch, if you want.

I've applied a patch fixing this misuse of [n].  Thanks!
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3De11a82a6f7098b94bcd00fb767a1db269e3a83db>
(use port 80).


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--lj5ulogxr5k7j6ci
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmkklVEACgkQ64mZXMKQ
wqkhzw//WhtVDY+tPhxduEckSkM3jiPwRmBpk51a+ns+G6EnMDGFOfkIDzno/cL+
Xb586vjWqB4cjhCf9dtWC2ogHReDdUjs9rkaY1PbTGF8eL1cnjhUqyASW2BBwRFo
TeyQhlEIOnU1cm5zt/Ek24p0ddGiZvtm+wVuv/jWV+ERvotMhEBcAsNb0ZtdXASR
0oQrE5C5j/vd3gR7HFpvF6Kltf2fI31tZLcQXNTzdzS864VGCBhw98KVhkuQ7AFg
KwPDBQqynwsXySGVLTrECcyAzUPqzptlyjXMWIo6mVl+4V28glLgMJqwaf7uxo5T
0wyJZWnkyplVFcEOj6qcGAsaqUmIh3PJ51fNL+bqF9PD4rzcArAXNDDtrdAbAgmS
LF6v8TZlVN5a/fJweGJhswzYO38S/nssqr+kb2MYOR62FdsPzsYBUbzWwttkylK2
FeBYcliBEWmpZa4whBzpAoGMrcusyg6pVtSMtWKKW2+NodjNusjZrnWH0qkTEhRU
wVxknVyq9zowGoXLAOlvCxYDlpsjnq96fiOtndeCKSb/nfFgyD2FPuo+4MJfiHIL
Of8Uw9bJ/ENEQAYibvXBkpgJtw+U1OWK0o6R8JdT7dkJIWBY2vnYE7B0S1xzP1UU
cDg5u80CUFaV4BQB4mnrRpVeu1KpgWPrPWfJl/bvaHiqX/jsN48=
=ssTi
-----END PGP SIGNATURE-----

--lj5ulogxr5k7j6ci--

