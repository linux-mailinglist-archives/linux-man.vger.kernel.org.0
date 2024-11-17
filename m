Return-Path: <linux-man+bounces-1981-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5762A9D034E
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 12:41:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id F359AB23AD2
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 11:41:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A51CD149C4F;
	Sun, 17 Nov 2024 11:40:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gE57xfX6"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6667F7DA81
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 11:40:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731843659; cv=none; b=Cb2IFc7Ro8j/O/1x6AgE6R+Q/AKxv2RjTGZoZtM79a9y/eE9NWksbaoZDn5LB3Tedo98yPjr8LVUuvpsBo5ACaxLyHTG66ydbfZXoWOJGdYsaoR5HNvttdFp8rFNx62HVVeqV0xKLeXF7cGEVmg7IU9fByGpwO9Nai7OOBMsIeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731843659; c=relaxed/simple;
	bh=WAgwtzu8FgoH0FnAP9105TEKHd4oGI2NAJAgyJZJPZY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=b4AK+sXOtKQf0KA4Er1n8SJSVYk52iQ45dY6Lg73UnfSlfpkDNmMa+Ir6mxksbbwT616o/1M/Mp/zC0DNa5Z4r4CLEnscpDzAJKY5dTqGZOeeGXPUvn8rq1ylPHj3YILeKWpx6ktioP7RABaIfekieySjUHLtcs5XK0817cy7rs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gE57xfX6; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 63259C4CECD;
	Sun, 17 Nov 2024 11:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731843659;
	bh=WAgwtzu8FgoH0FnAP9105TEKHd4oGI2NAJAgyJZJPZY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gE57xfX6HrS66BBPdze2uFYWxDuMfTZ4Y6wKuuhzwEK/ZGDaYia2CZAcITz/30F1Y
	 LT1GANl73Mr1mT+XmYUMyHb96GbfGl4tN6ohX4GBN5AEgeXpj9Zi+AHf03o7OIdA6y
	 6p8q7o3whqWFnBT/tgYcIgqvaURPJyEN4JqnmPU0vG5QFCaPFL2m6IhrIJDpIFN2sL
	 5l0sqCo2yVeq3YBdgQ8CZkn4nLzYCnjpi8x+Ep8rHTC+EYON3dp3PF0baMLoWKDpLV
	 xz4O5tb7yimPc/5QpxSP2k7+UiIj0Xh58xeQBKrlTYWdc08Y09DFaKz7fFH7o3n4/o
	 03ke3cXCw2SoQ==
Date: Sun, 17 Nov 2024 12:40:56 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page s390_pci_mmio_write.2
Message-ID: <6rqjtj6ggaiedbp7vjmtrwx3pydetbtl4cfr5ts6tmeo4sgxft@to2wpimwhwsl>
References: <ZznJfzz4dlbC_-ao@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zxehn5f6noumcz5k"
Content-Disposition: inline
In-Reply-To: <ZznJfzz4dlbC_-ao@meinfjell.helgefjelltest.de>


--zxehn5f6noumcz5k
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page s390_pci_mmio_write.2
References: <ZznJfzz4dlbC_-ao@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <ZznJfzz4dlbC_-ao@meinfjell.helgefjelltest.de>

Hi Helge,

On Sun, Nov 17, 2024 at 10:46:23AM GMT, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    to the user-space buffer I<user_buffer> =E2=86=92 and writes th=
em to the user-space buffer I<user_buffer>
>=20
> "The B<s390_pci_mmio_write>()  system call writes I<length> bytes of data=
 "
> "from the user-space buffer I<user_buffer> to the PCI MMIO memory locatio=
n "
> "specified by I<mmio_addr>.  The B<s390_pci_mmio_read>()  system call rea=
ds "
> "I<length> bytes of data from the PCI MMIO memory location specified by "
> "I<mmio_addr> to the user-space buffer I<user_buffer>."

While your wording is more correct, I prefer the current wording, for
mnemotechnic reasons (associating read and write with the system-call
name).

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--zxehn5f6noumcz5k
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmc51kgACgkQnowa+77/
2zLnqRAAoPbfu/dZbFnVQxtfamF0VIr1JexPtMzRQlmlsPbDzcpwUS32ekfSmUF+
9amfLqPmlyqJc87UeLZGho9cx1dzLwjYN3ZzZksB5aMl1/nGsvZmWi90Y8Rge8r1
SbjTrFlCfbWbxyYRhj5HBhoL1gFv8paYggihh8maAwxCUWOrOGE4/gzcA1VlhqRA
H5RivyMSslBcPG9n9nr4kJB6/fr0LMuBWxMEdYW2udmCN4kyXb5hKJ+IYg8bYlN3
dtK3KMxRn/u3781CH1Vfk8kn1qjabeYp2BSjhycJ0KGIWsyfI+jwYa3f5mGIifWt
VdvF37gyUIjIRo8B5IhGbWX+JMPwHiMb8eesfEoVoCwcp1Ott1kPpK1GqRh9UDvi
QfiODQ+DXRi2AB6NqiopE2If/bme0USge/Ee6kQXMq/Xtr5OixvyZVcM/3FCs7Y/
N2RHb/tprwAOVNKcUYvTHB+9okFJYCtS95jEDD0jzYkKR6Si618GswUonJo8gGmd
jF94aT+58EPKwvMofZ4xv9Yj2rGkH2RcTa1DZjzW3nNUfr/+Kop7Ntc2zAbp98q9
jmMrjppUT9dvtlDR8zGPVh2xQFmlRh+KlZFrbj/Yarf/V4EB0jhUYoqWVTmJdJL/
VvwJd80MCpg37zCX/DC/9q+rQ7IOAeDDAisci+LtPStSSlqa2u0=
=lELQ
-----END PGP SIGNATURE-----

--zxehn5f6noumcz5k--

