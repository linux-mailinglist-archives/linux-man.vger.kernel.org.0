Return-Path: <linux-man+bounces-4006-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 69CA8BAAC05
	for <lists+linux-man@lfdr.de>; Tue, 30 Sep 2025 01:28:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C673A3A39ED
	for <lists+linux-man@lfdr.de>; Mon, 29 Sep 2025 23:27:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 384A72475D0;
	Mon, 29 Sep 2025 23:27:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IfJhySmR"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E84B4EEA6
	for <linux-man@vger.kernel.org>; Mon, 29 Sep 2025 23:27:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759188473; cv=none; b=EstHmJWPAKZMvvaGfao5J/VVbLbNvvLwZheAuxgc/0zvXi7d5p29uNZCUpnE0ECIofNSKqYB4xIlT6Cs0Q5TpJgnmlINHj3HkDAb8SaIv8PFaMpMXzdsWpjY0cUuzJBWnMBoeIHW18p02+h0EY2vVcTkpDI35NHARsJpTx5p3xc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759188473; c=relaxed/simple;
	bh=QqOsSk1J1SDFsCL7s+Q+3f7vnlGALImC6W0jIJf2qbg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SaK7f8VLUlLTcOCEz5Ej9yFgn0E9h17E7gWwExNzABqydkYmw19OJ6d/36hB0Pk6u33NeNEP/KGjN8kX8TWfOsQFQlCaLenBVkvasEioT3eBBpIGRie1jWKG+D07N+jnJ7qXdeklcMPVQnomZIuuAAJrcpFKz5uSJHnWRikKJiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IfJhySmR; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 77DCBC4CEF4;
	Mon, 29 Sep 2025 23:27:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759188472;
	bh=QqOsSk1J1SDFsCL7s+Q+3f7vnlGALImC6W0jIJf2qbg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IfJhySmRcMZd2pUBQNTFRCG0ZGGdAA5QdFz/9wozTZ5hXlgfDPDIcyB9SZFgAfTCU
	 159xYwrkwCx4/lgZGWZWyzOH1Xm6aVdrHGggB6FeejRFaL5oYD/m2UxN3RPW5Nn721
	 4v0htM+eHoOXa31sOa07yY618azEhRf8Ff/lMia+kJMPwrftAzDqtH5Ggfebi2LrcG
	 gjH/+1lYkR/EEKpF5KklCycZg2b8zmpNqrAexl+RFsCU1lBWe5wJxnc/iHA2y65jMp
	 oNa0owMbEnS53nQZh4jggicbegUpBdk/FiXBciAAB/GAmTGBMm5ppk8JCNHpHplSuL
	 g1O83l+85p5EA==
Date: Tue, 30 Sep 2025 01:27:48 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?P=C3=A1draig?= Brady <P@draigbrady.com>
Cc: Arsen =?utf-8?Q?Arsenovi=C4=87?= <arsen@aarsen.me>, coreutils@gnu.org, 
	linux-man@vger.kernel.org
Subject: Re: Move GNU manual pages to the Linux man-pages project
Message-ID: <m52fukfcpbd5gsloz3wiabytzebckrowm2xbjr5grgavsl5brd@qtm7gw3sekwo>
References: <wqfzoyixsh4l3wg7tkz3c4bjejy4wlski2s5g2pwoqiy2wg3ty@lkqy5semt757>
 <87jz1sm2t3.fsf@aarsen.me>
 <fziyxvozscytwasmhtrpjfqbmldxmggjkdm4pzo7cupxhby422@czrmkask4xsc>
 <87cy7e7hml.fsf@aarsen.me>
 <sdprfcwwtirbygpx4pqcavchf7hl3ichxjcxsr6kn6pl3f2ri6@7mshrxxpjhn3>
 <86frc5zj4i.fsf@aarsen.me>
 <avcjkfibgplayxdpe4nisfpmtmlwdaubesdo6oj5qj2sxfqpsr@iypkg4k2fauv>
 <530c7a63-22ac-4d4b-a67d-09b21086207f@draigBrady.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jywjshmc463kausz"
Content-Disposition: inline
In-Reply-To: <530c7a63-22ac-4d4b-a67d-09b21086207f@draigBrady.com>


--jywjshmc463kausz
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?P=C3=A1draig?= Brady <P@draigbrady.com>
Cc: Arsen =?utf-8?Q?Arsenovi=C4=87?= <arsen@aarsen.me>, coreutils@gnu.org, 
	linux-man@vger.kernel.org
Subject: Re: Move GNU manual pages to the Linux man-pages project
Message-ID: <m52fukfcpbd5gsloz3wiabytzebckrowm2xbjr5grgavsl5brd@qtm7gw3sekwo>
References: <wqfzoyixsh4l3wg7tkz3c4bjejy4wlski2s5g2pwoqiy2wg3ty@lkqy5semt757>
 <87jz1sm2t3.fsf@aarsen.me>
 <fziyxvozscytwasmhtrpjfqbmldxmggjkdm4pzo7cupxhby422@czrmkask4xsc>
 <87cy7e7hml.fsf@aarsen.me>
 <sdprfcwwtirbygpx4pqcavchf7hl3ichxjcxsr6kn6pl3f2ri6@7mshrxxpjhn3>
 <86frc5zj4i.fsf@aarsen.me>
 <avcjkfibgplayxdpe4nisfpmtmlwdaubesdo6oj5qj2sxfqpsr@iypkg4k2fauv>
 <530c7a63-22ac-4d4b-a67d-09b21086207f@draigBrady.com>
MIME-Version: 1.0
In-Reply-To: <530c7a63-22ac-4d4b-a67d-09b21086207f@draigBrady.com>

Hi P=C3=A1draig,

On Mon, Sep 29, 2025 at 10:41:56PM +0100, P=C3=A1draig Brady wrote:
> man pages are not currently in git, only distributed in release tarballs
> (for cases where one can't generate man pages on the build host).

I know.  I've copied them from what Debian installs, for the moment, for
working on them.

> So any changes would need to be merge back into the utilities themselves,
> so that their --help would be consistent. This issue would be multiplied
> with translations. So I'm wary of a separate man page repo TBH.

My idea is to have them under source control in the coreutils.git repo,
not a separate repo.

> Perhaps we could have a 3 tier setup with --help showing very summarized =
info,
> man pages for more complete discussions, and info/html for the full docs.

Yup, this is what I have in mind.

> I'm not convinced of the need for that though.

I'll work anyway on that, as some people have come to me in private
asking for it, and suggesting me to fork and improve.  I'll fork,
indeed, but without intention to publish.  Once I have decent manual
pages, I'll offer them to be incorporated into coreutils.git.


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--jywjshmc463kausz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjbFe4ACgkQ64mZXMKQ
wqnegxAAiYvJX5HTTFKNrNxOHypJXdzpMtJ8QLnVUszgFj50UR8Hjhr7QsXTIxxx
1ZYh893sHe+K4VXAxrr4PVqvx0lp/C8ttfgHPYaFev77d5ztc7a9UhS84260ihPE
Kh3rKM1a3gfpb4/sAyubjaaEWZj69XqHRYY+VqE7Jpnin5KA1HsQAGLIQ6kL9mSt
NuaH4y4QwA3AzQUf4VdYiv/OQ29QSVTTuTObRAcpjK60YPACAaFeJTMbV/VdBVXD
4k3K869sC44UDb3MhIRdkL+ftuvcKurgEEldj+2BXrL4swQVAairOyWNNG8Is6UK
XCc6e3HkIySLoJoZC0fc27KCvxeUcdLtQhgo15vEbNVOHlfKoJ3wedv6xbTpSyel
v21dORq5/RC2bNacdu/5vYIl3VD7R2EIF8Gvx9AgNshdSeReySxGGAeUA0YRirsZ
Vu7sO3j/Cy6ViRZFnHFvioN5Pk7QT2er/VuFPPe0FNHV8NRuvOyAtp611S/7EHMS
Wm+O9maNdYnz4wDCfM9R8e8UeKUmzUAawARvWTgxk3Pof03QUEqFJ1lbGEiaHqK1
4bd7buYxdEypW0HMQyjvmhKgJ+Wx82tA5Tdc67LPFBvLN1X96usxPp5J3CDw+HUs
s4vKRGFYbtq3cMdlyNV9vVx7rOsw8YRjtqRP8quYPZS8XfeltIA=
=syjQ
-----END PGP SIGNATURE-----

--jywjshmc463kausz--

