Return-Path: <linux-man+bounces-4004-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 588B6BAAA7D
	for <lists+linux-man@lfdr.de>; Mon, 29 Sep 2025 23:38:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E0BA31644E2
	for <lists+linux-man@lfdr.de>; Mon, 29 Sep 2025 21:38:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46722242D63;
	Mon, 29 Sep 2025 21:38:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tZx+tV/W"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA34023D7E5
	for <linux-man@vger.kernel.org>; Mon, 29 Sep 2025 21:38:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759181927; cv=none; b=C9FlmLF5bwespAVdOWeI80rRfvm34qruhDrRXW/Dm7geh+2YjTh2appqvOS5yWnXgCVrFcQ3wvHLcbNsn/JRaPSMZYzKovo+mfpgRlSqcCjdiNkKiUjg85OpWpMN6QFO234VYSFt7/NVuW88r9pLgm5RfRUz44hB7aWx85yxo9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759181927; c=relaxed/simple;
	bh=LSG1lReMP1tkpgysLq9n0yevLh9CYcEyFO3QYgmBxqY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gSGfcHS9BANYaGn+9uG9zuCLrhtOLISoUqKSyyY6910q+1LzJ650uo7tZeyV5qCUpjVqi+WFh5O4sHv0xDqhHIAd0geSFU9OFOzEyPz969BfdblI0y9jPVeFD64lSD4lnzxTmqg07/mQm1/DaThN8zqeWZscDQ4zZU9CgUumtPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tZx+tV/W; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A3181C4CEF4;
	Mon, 29 Sep 2025 21:38:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759181926;
	bh=LSG1lReMP1tkpgysLq9n0yevLh9CYcEyFO3QYgmBxqY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tZx+tV/WPJEfUCKTN4FjJ//Ec3voh6Z88g0dZQRL0ZQksAEcIvi3hNBj2C0JVs22V
	 Xf+kDH1c0KguCEqgbBXk7BtH4/0dDvQ431CGtDNjWyY4pKBgFPiqQc7zb/pjuByirp
	 Qv/cPnaezYAE9cTR4gzyM/7+L7uxjaiW7/19KdhaFOcbyX57okFpOPTPJhA+QarmlM
	 nk92SN94ssODivvwwr4dMy5idxVMUzTukikOiqCuQe6jaHPmvpKnai7A1gpOkqDYDv
	 GO4kyBgm+n50r4EFSMhEnGISpvq4TJf2VL/fIT2fBRVqc2CcX/pgZsh9g0dGjQ1n0R
	 19Aq3p2k0xafQ==
Date: Mon, 29 Sep 2025 23:38:43 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Arsen =?utf-8?Q?Arsenovi=C4=87?= <arsen@aarsen.me>
Cc: coreutils@gnu.org, linux-man@vger.kernel.org
Subject: Re: Move GNU manual pages to the Linux man-pages project
Message-ID: <vu3go4ejyoo7xzmyceycuvntsd5revznjnz3spyfjryyc2lsub@nnrmq4jzob4g>
References: <wqfzoyixsh4l3wg7tkz3c4bjejy4wlski2s5g2pwoqiy2wg3ty@lkqy5semt757>
 <87jz1sm2t3.fsf@aarsen.me>
 <fziyxvozscytwasmhtrpjfqbmldxmggjkdm4pzo7cupxhby422@czrmkask4xsc>
 <87cy7e7hml.fsf@aarsen.me>
 <sdprfcwwtirbygpx4pqcavchf7hl3ichxjcxsr6kn6pl3f2ri6@7mshrxxpjhn3>
 <86frc5zj4i.fsf@aarsen.me>
 <avcjkfibgplayxdpe4nisfpmtmlwdaubesdo6oj5qj2sxfqpsr@iypkg4k2fauv>
 <861pnpymov.fsf@aarsen.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kvputz7yum55qsrj"
Content-Disposition: inline
In-Reply-To: <861pnpymov.fsf@aarsen.me>


--kvputz7yum55qsrj
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Arsen =?utf-8?Q?Arsenovi=C4=87?= <arsen@aarsen.me>
Cc: coreutils@gnu.org, linux-man@vger.kernel.org
Subject: Re: Move GNU manual pages to the Linux man-pages project
Message-ID: <vu3go4ejyoo7xzmyceycuvntsd5revznjnz3spyfjryyc2lsub@nnrmq4jzob4g>
References: <wqfzoyixsh4l3wg7tkz3c4bjejy4wlski2s5g2pwoqiy2wg3ty@lkqy5semt757>
 <87jz1sm2t3.fsf@aarsen.me>
 <fziyxvozscytwasmhtrpjfqbmldxmggjkdm4pzo7cupxhby422@czrmkask4xsc>
 <87cy7e7hml.fsf@aarsen.me>
 <sdprfcwwtirbygpx4pqcavchf7hl3ichxjcxsr6kn6pl3f2ri6@7mshrxxpjhn3>
 <86frc5zj4i.fsf@aarsen.me>
 <avcjkfibgplayxdpe4nisfpmtmlwdaubesdo6oj5qj2sxfqpsr@iypkg4k2fauv>
 <861pnpymov.fsf@aarsen.me>
MIME-Version: 1.0
In-Reply-To: <861pnpymov.fsf@aarsen.me>

On Mon, Sep 29, 2025 at 11:26:56PM +0200, Arsen Arsenovi=C4=87 wrote:
> Hi,

Hi Arsen,

> Alejandro Colomar <alx@kernel.org> writes:
>=20
> > I'll start by importing the GNU coreutils manual pages in a branch of
> > the Linux man-pages project, to be able to work on them from time to
> > time, and when I have them in good shape, I'll propose their inclusion
> > in GNU coreutils.git.  Does that sound good?
>=20
> That's up to P=C3=A1draig, really, not me.

Okay.

> I just ask that you don't publish them in the interim to avoid the issue
> with documentation being neglected.

Agreed; they won't be published.  They'll live in a branch in my home
cgit server, but won't publish them anywhere (not even a branch at
<kernel.org>).


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--kvputz7yum55qsrj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmja/FgACgkQ64mZXMKQ
wqktdA/9FU/67DP08dj2y46DQO34pER9/jXcNVc5PfbLgGioq7oZDl2XrSNQgL4F
ThRRao5C3raoACW0LqWgwOb6+965NuovP3IFWpvPG6IC+L6Ua8BZPlU+QOWTJrOS
KhinJmy2DWH9REycrgIIVKKLihPUwNWnzlsJbUv4CQtbTClNA8hEvOck10BMsrv/
QUsfupbcK+1gIJELNoY0bq5pe6ogDi3o4GhPSz7JZg7yfrEBvk5al5uvwGX9g/xJ
ALDAYd6R8CM/GAmILTtcstK14E9lDdwfqoU+rkIHl5k4ktuPs9KdviQbaQmGSkDu
bjktdQMRSZcmJAMeUJODH+veHDqhCi6Fz73FVHXhPDJw3qjI541HtC7knxeAfXB3
34cGil98dPpB3i4bvPuwdzfX6ASobGLCpGOGaolN4dWOjkly8JJOjZtl7bMTsIXD
wV2F3ORkpdqnxEj4MmzYyXv3qh6rIEOobgGuLh4VP4a8Mb2s0A70eaOa7sup1Gy7
vRP7bR1Q87mfvA4a0Y/q9Pz5G04IQuyYhaqLlTm37to/UvDQjt5QQvWMrlpfJ47+
JWB/rZBD49b85dH4yezcJ3KNf3+iH3lxBLY2W62L1xnR4kgIaMNl5nf+zd2se/z2
BGGInrUrSIm9Veq+Kd0Xz9QKvbEobCD/DieGpZ+Njro9bCq0+Yc=
=EVxD
-----END PGP SIGNATURE-----

--kvputz7yum55qsrj--

