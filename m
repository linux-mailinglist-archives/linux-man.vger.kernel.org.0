Return-Path: <linux-man+bounces-1419-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FDBD92C373
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 20:44:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CE06B28318A
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 18:44:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DF7718003E;
	Tue,  9 Jul 2024 18:44:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="Zi/Avhlc"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07A4D180046
	for <linux-man@vger.kernel.org>; Tue,  9 Jul 2024 18:44:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720550669; cv=none; b=IA4l9xOjypymC5PEcqMjuURZ3FgfFgIIPdVGVbfBRkxrYA/Mr7IQ2cSZHEtIK2lEGxqzWmlxFS2cvd8QQKVxBPokQJZ7FN8MgdLn6i3BYbehNRldEJnfUm+n3znO/INDJb7I6m4PFAnLDrlDV9ezzdCxiLKnx+mmrgN8JVChjO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720550669; c=relaxed/simple;
	bh=p8lz4L7Lcf6HNW6J3xnqNiCiY4f8j15JUeJZqGIKTPM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=S0L6L4xQ2rn/wGXHTf9Oh2mUOtdTkG8Bs4arY/XcutDjkxBjIf3guf569x/KwlfWq72mZDtim/VKci5cox2RYp/vD9NE262+vaiUXRi2a7RoP5RZNKbl3uUjKpxNIzm1qclYUZaU5P7BuE97OUkomZY+62gtEnQZSqgT3YnAMmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=Zi/Avhlc; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202405; t=1720550666;
	bh=p8lz4L7Lcf6HNW6J3xnqNiCiY4f8j15JUeJZqGIKTPM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Zi/AvhlcHxL/Nlg2+JyRSJClESmtr3aGaHSdtHtEOWcPRpQrNJ+UrQYawJpV2q3/p
	 Ntp/NnOPbO1DxOhe17nSXCvy+LSyQi4Ndt3U30LTITv258bOW6h7SIBArEgtraswTE
	 9OoM+WlgLnXz4bhOY7APaniW3iLmi46uttFn/jgyYU2fSz0MPLTuEoqLQAjhqXaYaA
	 0TF4BleeASzA/9zRBplVyoaJf8a59xyCvrFffa0k0m6FhyxI5FFzp6xNAQns4L1yw1
	 NOG2VnhHsJf+BqoYLcPSfmUDyGLuu/xE7UepRNglMDousYKZZEbmiH+dOERTcmFJfi
	 U0qauSdzyqXsQ==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 5A83D82E0;
	Tue,  9 Jul 2024 20:44:26 +0200 (CEST)
Date: Tue, 9 Jul 2024 20:44:26 +0200
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] printf.3: the overall syntax is "%argnum$...", not
 "%$..."
Message-ID: <rmb7glxh25cblpk3ju7dme2s2rt77kak2qzcnmevc7da5v2cpl@tarta.nabijaczleweli.xyz>
References: <atyx4os7275jhfsrnblyr6ykxwghjzdpdnvnrvxcskei7kbb6n@tarta.nabijaczleweli.xyz>
 <gbwgs4u4acvwtabte47aljprwnhhxsznh7il2yfafhwkwrysbm@ij353jrj34qu>
 <3k35hwsubawtgidt2tvhrw5vspejtfmukyysfaf5ak7bdluswy@tarta.nabijaczleweli.xyz>
 <3i7s3ym3wj2ya3aiuar27dnfj7xpf3mfj5knxznckeq4blmt3w@hzwf7bs2f6d6>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hkunfkflbuhf3bwj"
Content-Disposition: inline
In-Reply-To: <3i7s3ym3wj2ya3aiuar27dnfj7xpf3mfj5knxznckeq4blmt3w@hzwf7bs2f6d6>
User-Agent: NeoMutt/20231221-2-4202cf-dirty


--hkunfkflbuhf3bwj
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 09, 2024 at 08:43:36PM +0200, Alejandro Colomar wrote:
> On Tue, Jul 09, 2024 at 07:57:34PM GMT, =D0=BD=D0=B0=D0=B1 wrote:
> > On Tue, Jul 09, 2024 at 06:57:29PM +0200, Alejandro Colomar wrote:
> > > > -%[$][flags][width][.precision][length modifier]conversion
> > > > +%[argument$][flags][width][.precision][length modifier]conversion
> > > Maybe argnum is clearer?
> > Considered it, but nothing else in this string is contracted.
> > If it were=20
> >   %[argnum$][flags][width][.prec][length]conv
> > then sure.
> >=20
> > I don't think it matters, really, but "argument" reads better with the
> > full words. If you like argnum better then feel free to editorialise to
> > that.
> How about [position$] ?
Don't think so, argnum is better than position IMO

--hkunfkflbuhf3bwj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmaNhQkACgkQvP0LAY0m
WPFGDg//UWC8IldtIvWxFBck9ofGAFlSLTEgaFfSSKe4mnqotSkuCMMOzzMnlNED
S63FXqqwW5pvqHgwO/+l7d3vmaDn7L7ph4fpq71tCYBFezjyYfzn+y33PPy6H4wR
01UZkqF/g9B7bfM8fmzc3a6EVpZWE2UH1Vxr7hRmkOPhkgaQJj1DKgkJ1GqSB8Hm
LmOaDsuPyMtkpYMVrEwgAExDVMoedjuSjCcG+UXpZ6o37gyt824uPgHKsWHMR9PN
0KJnNQ/WYPQedUPE7YQLFyxLN8DCqobo/M1sO5lvzkKLpeAE/B3KoLpRqh9OKQ9y
oJXJ0mVFdt+8DNMrZ0zUGETh3ahWLBHrLQT619GgqHDo+EcDBk9ok7J5zj7om9yY
idLnaX6rHx8e+qOBo52A/vwq6Nr/4gDUPOljX/hZR8rRK0o7pze5r6bUg+143J1j
J+u/doFHAAgaOHg0LvRDOX23YzO1SxXVkoiT4ACmOmQ53GNN5wNEQTDe5eAcH9lr
Gxpj6SIT+Zx9ykYzszoF3HbfmEmcKABnBZ4jC8BOQL+3EzKERqDnesQ/thg12usp
Wk6at+RKYwsi/OLri74K3zu8HVc/hmD7OXMrHw3e0unCrtWlUcIpfYnQAZRs0u2l
QlvhhNzaf2OILETcx9gRVr9JCz8wXHIJ5NzBXw7DKr/MjwgMFyY=
=krni
-----END PGP SIGNATURE-----

--hkunfkflbuhf3bwj--

