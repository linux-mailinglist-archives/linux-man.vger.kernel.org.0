Return-Path: <linux-man+bounces-3897-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 57F56B8CD74
	for <lists+linux-man@lfdr.de>; Sat, 20 Sep 2025 18:50:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 145E0564CBA
	for <lists+linux-man@lfdr.de>; Sat, 20 Sep 2025 16:50:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B202221FAC;
	Sat, 20 Sep 2025 16:50:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lOpXp1ig"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF18D80C02
	for <linux-man@vger.kernel.org>; Sat, 20 Sep 2025 16:50:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758387016; cv=none; b=cneWF9rA/1eEXIoRCYREeYYUEsWV3LLeCdT6mYZhbNamtQCICdtFbhWhPCSAmp6ubsiNMD9jzedDpEwPcxKaDN8S48hmR2RIsU3NSDqcEwLbTCxmBOQZG/vpv39ge2M2mkP9MTzoRE0ZaZVgbveplFtrQ/2V660Ltgu+I1srDo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758387016; c=relaxed/simple;
	bh=Xpgcg34HwN5GjZy9DwH7AlqPGlO2/bRo3p+zCjtunAE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IK9u3gnqmUy87qu7D7RQ8mgOYhc2mHTNTC/N7IKdU6tvGg7+vWkpd2AzI3cADA2s/Iilq0mbKXxeiGU6d+Vj+1CbLLQhj5+c7fLa567WzMoi6RGl4lcC8t4N5u4i84VNGkvo8mnczd+WFABpQg60n3Ml9EHxJHFxmU5R9eDSqrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lOpXp1ig; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CCBF9C4CEEB;
	Sat, 20 Sep 2025 16:50:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758387015;
	bh=Xpgcg34HwN5GjZy9DwH7AlqPGlO2/bRo3p+zCjtunAE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lOpXp1ig8n5iZtr2dDZ4Kl2VCvFS+9dOwX+j3z7njvxKYavrHJDMdjTTFH9XOsV8S
	 9Rc6CKe03xK6wOE6CS4TWa49ax/TNhPnmhF7pYIeMH6kASuf1PMLnZCeomj7SHMZEc
	 4uW7g5wephaQpDiFfQsdTE1Nt0w6ra+LHUpKabS5e5k/tMj3dknRzOr/6E8LlaP4Ni
	 LHUsZG3fLLja28bNWqQ2g0CzKh+fO82nJKnIAIw1rdmc/CZ6y/9AAS3woxUukQFvjC
	 h878BzDaMkBXKZeYR7Z+HFrC5xao51h6pYHETeM9Yk6moGYILoWGL5Af/n40YGxBmb
	 yIwnvwtgVAFgA==
Date: Sat, 20 Sep 2025 18:50:10 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Sam James <sam@gentoo.org>
Cc: coreutils@gnu.org, linux-man@vger.kernel.org
Subject: Re: Move GNU manual pages to the Linux man-pages project
Message-ID: <ebesmesxcxa5pl63aekoohxreec5o2dter2wok5np5kvmquuro@y6fqznhcyywd>
References: <wqfzoyixsh4l3wg7tkz3c4bjejy4wlski2s5g2pwoqiy2wg3ty@lkqy5semt757>
 <87zfap144a.fsf@gentoo.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="b2nym5xjeaiyykab"
Content-Disposition: inline
In-Reply-To: <87zfap144a.fsf@gentoo.org>


--b2nym5xjeaiyykab
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Sam James <sam@gentoo.org>
Cc: coreutils@gnu.org, linux-man@vger.kernel.org
Subject: Re: Move GNU manual pages to the Linux man-pages project
Message-ID: <ebesmesxcxa5pl63aekoohxreec5o2dter2wok5np5kvmquuro@y6fqznhcyywd>
References: <wqfzoyixsh4l3wg7tkz3c4bjejy4wlski2s5g2pwoqiy2wg3ty@lkqy5semt757>
 <87zfap144a.fsf@gentoo.org>
MIME-Version: 1.0
In-Reply-To: <87zfap144a.fsf@gentoo.org>

Hi Sam,

On Sat, Sep 20, 2025 at 05:27:17PM +0100, Sam James wrote:
> Alejandro Colomar <alx@kernel.org> writes:
>=20
> > Hi!
> >
> > GNU coreutils manual pages are to some degree incomplete.  I was told
> > today that "tsort(1) is a bad joke".  I wonder if you'd be interested in
> > moving the maintenance of the manual pages of GNU coreutils to the Linux
> > man-pages project, where I could take care of them, and improve their
> > contents.
> >
> > I understand GNU's stance on manual pages, and that you might not be
> > interested in improving them much, but maybe you're open to them being
> > improved elsewhere.
> >
> > The Linux man-pages project already documents the GNU C library, so it
> > wouldn't be extraneous to also take ownership of the coreutils manual
> > pages.
>=20
> But GNU coreutils isn't Linux specific.

Hmmm, true.  You can install the man1/ pages with `make install-man1`,
though, so it's not a big deal.

I see the packaging complication, though, by having the package split
into two upstream packages.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--b2nym5xjeaiyykab
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjO2zwACgkQ64mZXMKQ
wqlc2hAAgEH3Doyeyoo3QqHgA0ugWo0HGd7Lr0KbY6ksHyeoIn+9sYHxi/y3RybQ
Dbi3TXazlymfn+OKjY4+wkgmhyCDwxOd5NT7WtM7wzmrg5bi6WEm4mNspUlc3xnZ
pDdxZJQZubLUuK1+YC7x2NbCe5OwGux1+FiGfTcBCcQvno5yGsVC9WxgE6apgUQ8
GdXq6iq5+yAbKiZK+3An3oIrn5+Mn+yJfbsIgA+sA8lNJ9kkD6fe6nqwcMdEO+Al
BLk18kEkUKrgLU64sdcDX6ZU1AoVwrqwP05QKpL16OWkBR7LmvxSxcSiFl+ELl2g
aL5ZAVcR093ksd/EEsYoi0Pt7mvHNfAbDmDQTLVyX+85N1fXJ7eCPYs1sX1qsiIn
4R+GV61xj3Hhosz4L9kcNMoe+F6pk9S4M4WduuwsIPWFT2UL/kvkObwQY7LWyqyy
QZTfY1aQeVcHDN2UliSfgAIhIb0HPvzYVvfTXBUPlB8aYwM4Y9Oabok24d0HPSzw
2zUzHdoWxsa2YNsX8dfVcQSdeCduUd4pGhFTmlJYElk8ZCPfPRZPlaCJfrDMoZ3T
y1Yz/ME+5MFesM/cqPvO1OwgWHdNk/7EESZJ5MUam5kr6wAWk3b01DrefAaPRueQ
VXcZp5FJxHKfnKykDoiCbniLABPxNNcp/07jppg5xXqAOXe/V7U=
=Mcml
-----END PGP SIGNATURE-----

--b2nym5xjeaiyykab--

