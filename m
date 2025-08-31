Return-Path: <linux-man+bounces-3769-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C38FB3D27B
	for <lists+linux-man@lfdr.de>; Sun, 31 Aug 2025 13:31:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7AF8A7A9C66
	for <lists+linux-man@lfdr.de>; Sun, 31 Aug 2025 11:30:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A95542376FD;
	Sun, 31 Aug 2025 11:31:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s+ioyb2b"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 618A7155C88
	for <linux-man@vger.kernel.org>; Sun, 31 Aug 2025 11:31:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756639901; cv=none; b=ffZkU6o3s3yRAQej0C6e13i7GPuwR15enwHWoZdmYvrBK6hGt366Hl9uoCP90uqeYx461VLX53QUrN8A7motnCq/me1FfUOvEP9hmjZkkxyZSRHfV50nQcpH+5tevAbJlLMUjNP9FzeGv+74OE3IIldLqwEAOHSykJe3XTFSzsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756639901; c=relaxed/simple;
	bh=LsMTHop7T0zcbZCFIgQaZBtDbKGY36bHxwPE2OH47hw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oHZMfSoE9Z5bzRgNy8QIsQDNjc07c1yNird2W9UnD7GqIZuSDAylpZmf39rRsH90koKfkCF4SC3L4RQOLos1HxxlMDVMCWZimYle/RNU1rWjQZYHsHGZuSxjoEiT5wVUJb36+7b2JyOHMn1cH/qH5gAmO566eUg6epBD9QAsDmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s+ioyb2b; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 40C5CC4CEED;
	Sun, 31 Aug 2025 11:31:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756639900;
	bh=LsMTHop7T0zcbZCFIgQaZBtDbKGY36bHxwPE2OH47hw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=s+ioyb2bgv9HcS7EjtS9dPsA2raQlmlPTrc8Ml2IdHtm94TEVMxqfFoo6IqQZtGO1
	 rYfI6fA0kGgBUaM1ftKwQ2Cc+5ssRNbjLJBvUh1mf+Vng0+Sss4ysOFKDB8OAnWCVf
	 Rjs1LX6QS1QYCe2Ai5Rdq+HbaDKWmckrM322CutLUM8izWb1d0Tt4tUMcz8mqJcou1
	 9UI4MyoVyoPQKCd7FZqk0654+EQi2QK5SL9eOCgFDBUVfAmfqtDxPS58UuYXeBrJTY
	 t7qrsIb2/7EI60K/pXR6K27uwSHQ/JlfCjzEwtt2sWcOClYyI1bd+laU/Xdj+NMfLV
	 XjmpEp+Mj9vrQ==
Date: Sun, 31 Aug 2025 13:31:35 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page PR_GET_ENDIAN.2const
Message-ID: <5rfoy32g3wljsgj2nlr3lhwfb3fdd6rv7y57j7zjd6n2on2d5i@k3wwykpeevp7>
References: <aKsmT-lJBqSQAr8f@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="pvuzbmzo7czeirgn"
Content-Disposition: inline
In-Reply-To: <aKsmT-lJBqSQAr8f@meinfjell.helgefjelltest.de>


--pvuzbmzo7czeirgn
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page PR_GET_ENDIAN.2const
References: <aKsmT-lJBqSQAr8f@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aKsmT-lJBqSQAr8f@meinfjell.helgefjelltest.de>

Hi Helge,

On Sun, Aug 24, 2025 at 02:48:47PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    endian-ness =E2=86=92 endianness
>=20
> "PR_GET_ENDIAN - get the endian-ness of the calling process"
>=20
> "Return the endian-ness of the calling process, in the location pointed t=
o by "
> "I<endianness>."

Thanks!  I've appplied a patch.
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D534069b193a5cf91bf2892fd0966d17d38d5e26b>
(use port 80.)


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--pvuzbmzo7czeirgn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmi0MpYACgkQ64mZXMKQ
wqn0Dg//Z8MME5tgckSlNRgl/rws3eXvPHimXNs4Tw2gmUy4mabeP263KOjicXmr
ISHr8YJpGJFLDLef4Kv03XX4FeMREv8Jn1MdXVDdljkcFczLDg+Hd2mV+2/G6l/B
KnoJZagOuTOnnPatiz3Umex0BajuU/oCR1CgM190kLmPNQXsto5Rkzd+5f5RX3dj
Go9+SagkdTXBaYDUOWFC1y8rOM2KF416NwMdZ+FSeX1E2a9Bikw+36i1sgSKPwu8
3aB5FtQC09vKj8PSVcQ4fppGYx3SPb2b9BliigpfHXd4Os/u9LzUX3kpALPhsCRp
6MQobVYtIB+RfBbhA/TgY/CfA+NZMfjTbX9vhvLtlJ4hhyJtzzVZd/GGXxzkmSb5
GkwX+H5yzj+SFSJTC3b/Am6G/JBHB3akSkvOmqdFzU5lkE/FSnyad/rUnDvAorWG
WYr2T1lKzu/6XD3aAwduOXmNlV9Q/U7VQdpBy4XLRRIiCH11clz8g1nEFyWsbaVF
c/dXvJOREXt773GNd6+U3ke5YI/pPKKvnUQdqwckgX7NBlbz1gIDcgdL7T91HVDD
pimNqNxkCgLJb35m4R1HNo3yti4Ha0rG7MC2Fuf601dbxm8XOAlsGoEy8xHMNFCQ
XyyCd1w3PQqhdgIdln8fTSrdbs8IwECBZwjjIA7BGRbxa/I3UJU=
=ulDy
-----END PGP SIGNATURE-----

--pvuzbmzo7czeirgn--

