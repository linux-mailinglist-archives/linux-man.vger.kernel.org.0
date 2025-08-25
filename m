Return-Path: <linux-man+bounces-3727-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 58C75B34B3C
	for <lists+linux-man@lfdr.de>; Mon, 25 Aug 2025 21:57:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DC4357B574A
	for <lists+linux-man@lfdr.de>; Mon, 25 Aug 2025 19:55:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8B20288522;
	Mon, 25 Aug 2025 19:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BBXM/Ezf"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A512F28689B
	for <linux-man@vger.kernel.org>; Mon, 25 Aug 2025 19:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756151733; cv=none; b=uQ/DyrgPHjoRyqqdLHUHqZ8NVK1lY1MC03gHu1jFMdQzyis2MXt8BBaT62PMOoL9/uS9y9nlKuboUH0ipSA1Dz7vHpJFw7fZoa/LDkwb/n5sa22VwjJk/DM1+utlEMOsXeofD7yBZy7eSFESItEvsOuFk3JAmE/BSCDvtln51fA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756151733; c=relaxed/simple;
	bh=NsobcZ+3YUKq/ckTiJl0KXSbICWKUk3As6pUpxCdDq4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=b+FPMqpqyJu+GGgeKYknaBy5zFeBMIxiRq1DLn2fbdDu9hsq0IBxECeYpEwHX1wOfW7FLSZVnf7BAQRrh2CS2HXcErjueRmLnuEniI7cAHV4knY/yOQjFDLQpWY9hFwLsWCLJMl61qTNUVNophlUZAeLXnxl1qhWN2NGJVJfMdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BBXM/Ezf; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 49CD8C4CEED;
	Mon, 25 Aug 2025 19:55:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756151733;
	bh=NsobcZ+3YUKq/ckTiJl0KXSbICWKUk3As6pUpxCdDq4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BBXM/EzfLz4Q3EA2GgmBJGR3hpWrFVmxEdITi5Pkl29k2PaOgVauLN3aPbHO+YySZ
	 uPenXcwZAN3W18hcLUKXZ7wUc/SdEmaTJZKnyQ9n42Fd2N+26VlWPT0s+BEEAqjK8D
	 kICu60BUqoUTQIv0E1CvAXONUsZ7PgInCi2Vk5s+CGi0bu7E91uF6P6jCja3DmBUN7
	 wiTqdfuG6SxoIt0zUHEKT9ZBR6LQP1bXMh1kZNW8K0ZwiBNAVP5xs4KCFYLeZKjvVu
	 OB42T6wV36cgUL0ahzz5jPVLXuuH3O+CdLP65ROQC96v9YJV2dFXGZSPQDR2+exMst
	 hIu+LnJfIWwoA==
Date: Mon, 25 Aug 2025 21:55:28 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org, groff@gnu.org, 
	branden@debian.org
Subject: Re: Issue in man page pathname.7
Message-ID: <3vzgdnoegfdc7lflbincypzzjl3hitatj3oan5maejqng75kb3@e3enbnrxo4lx>
References: <aKsmTuVSFb93ocPm@meinfjell.helgefjelltest.de>
 <aj3eqcdmjd5rjcs7ng74prcysoumnpaooxxhwklglwyrpvpp3t@vm3rqullggpi>
 <aKyMnL1N6wwD77X7@meinfjell.helgefjelltest.de>
 <67todkk4wpqgskfy3s75uy7cbtahfpcaxymdse7pjzrjk72r7w@25dwgnvj5imm>
 <aKy3oVSyXS8_Xj5l@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="uilprvmmjdbhyklb"
Content-Disposition: inline
In-Reply-To: <aKy3oVSyXS8_Xj5l@meinfjell.helgefjelltest.de>


--uilprvmmjdbhyklb
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org, groff@gnu.org, 
	branden@debian.org
Subject: Re: Issue in man page pathname.7
References: <aKsmTuVSFb93ocPm@meinfjell.helgefjelltest.de>
 <aj3eqcdmjd5rjcs7ng74prcysoumnpaooxxhwklglwyrpvpp3t@vm3rqullggpi>
 <aKyMnL1N6wwD77X7@meinfjell.helgefjelltest.de>
 <67todkk4wpqgskfy3s75uy7cbtahfpcaxymdse7pjzrjk72r7w@25dwgnvj5imm>
 <aKy3oVSyXS8_Xj5l@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aKy3oVSyXS8_Xj5l@meinfjell.helgefjelltest.de>

Hi Helge, Branden,

On Mon, Aug 25, 2025 at 07:21:05PM +0000, Helge Kreutzmann wrote:
> Am Mon, Aug 25, 2025 at 08:57:22PM +0200 schrieb Alejandro Colomar:
> > On Mon, Aug 25, 2025 at 04:17:32PM +0000, Helge Kreutzmann wrote:
> > > Am Sun, Aug 24, 2025 at 10:04:04PM +0200 schrieb Alejandro Colomar:
> > > > On Sun, Aug 24, 2025 at 02:48:46PM +0000, Helge Kreutzmann wrote:
> > > > > Without further ado, the following was found:
> > > > >=20
> > > > > Issue:    The URL is invalid
> > > > >=20
> > > > > "For maximum interoperability, programs and users should also lim=
it the "
> > > > > "characters that they use for their own pathnames to characters i=
n the POSIX "
> > > > > "E<.UR https://pubs.opengroup.org/\\:onlinepubs/\\:9799919799/\\:=
basedefs/"
> > > > > "\\:V1_chap03.html#tag_03_265> Portable Filename Character Set E<=
=2EUE .>"
> > > >=20
> > > > Hi Helge,
> > > >=20
> > > > That URI has '\\:' in it, which is correct in roff(7) (and in man(7=
))
> > > > source code.  That is removed by troff(1) when formatting the page.
> > > > If you read the formatted page that's not there.
> > >=20
> > > Yes, then no URL is there :))
> >=20
> > Hmmm, that depends on your terminal.  If there's no URL or hyperlink,
> > this might be an issue in either the terminal or groff(1).
>=20
> I use the Linux console.

I can confirm.  Branden, is this a bug?  I think the Linux console
should print the URI as in the old days.


Cheers,
Alex


--=20
<https://www.alejandro-colomar.es/>

--uilprvmmjdbhyklb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmisv6kACgkQ64mZXMKQ
wqnrFg/9FWJebEc+TqhAcAHjhEI6kDJ/FjE7IB5cDEYQbHly4ChQ9+RrNS1Oxqbf
n/MyDZKfGqaQkPQWXwveaT+7xWBIqpkkFiGQBu1Dyy+u2gI5nf/Ivgz4Z2kVy+a/
5wGHcCedXvJKJltj75wKSuNSQJD/OBsfkF9eXGVSN2qEnjrHqBRY9s5bDztRnEsj
x854Lml6mQymQUDqWHdtYtJ4WKhhDL/wfE1xBO5Hv/kbZDHIus8RjaENLrXO9eEP
sJPDb2Z6uJ1adW9fzQxHCYmheUsKTT6MBAawz+CFhtl5cdeSOvOF6HfJN+XRARlw
f/OKii5njP+cfNHXi7hcfqHjE+gWU+QW5qN/c0qEPGgS5aCtu20k0wSZXcA0sY5E
+mErrGklNIT5rvo7iLTlzr4pKsrZTFJUK8foVFnPAwiizZwE1QzqqneMo2fkie4S
1HVRr8Szwo1nMSCbY23kyYBjfyvHIr0z9/yHULfQJEKAnNSKTxd0GbU9M6Daj227
3uvsmTkgKVMxtCKebfFbOSzGCVcKrlCgyNdAkmHlTzVHrc+DlgjsV85t04w4BFNh
1GnHMap2jRszFyagI80HLFj5xqSyfh3nw+K8GEqdAcPVOrLoyTbo1HhFsfvxQl0Z
8XD2uMHlgjtpEVWf8qp2JSBOlyHFDVpDi40FikA1BZgDpcdjn68=
=pQB0
-----END PGP SIGNATURE-----

--uilprvmmjdbhyklb--

