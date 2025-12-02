Return-Path: <linux-man+bounces-4357-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FD51C99A99
	for <lists+linux-man@lfdr.de>; Tue, 02 Dec 2025 01:38:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 4A20F3448B8
	for <lists+linux-man@lfdr.de>; Tue,  2 Dec 2025 00:38:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECF507DA66;
	Tue,  2 Dec 2025 00:38:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a5hB4LEH"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9731156678
	for <linux-man@vger.kernel.org>; Tue,  2 Dec 2025 00:38:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764635928; cv=none; b=r65Cr2zQm79WG9CIh5ryGI6Yc+zIPCIPPa2PmcXDVXxktfI9ph5ejbLjmd2feL40RimsN+Z8xjV7nzcuVORMyA+p33EVkei+WKelqdCmG7ILPJboGg1W5R1/d03WYaj/EdF5ZJpVkqYRW85wBLMUERbJPmT67xowa0P2sT7T6H8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764635928; c=relaxed/simple;
	bh=TixMs6c/L/VCp3dbEN9JPAE8tWGrIDlqM2Nt5qC2y30=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fpSvQR+/Og03vT34x5dHEBiMoqubF/gbaqU46CLN+ekQsQvyWeoc/INVLquTo859cGoIEG7llybyT6EOI53xow93R61KaVA8UXJSQ48HFtbI/vlHZNEAyJ2nBGEytJ5bD2CzWNTcPTJIJlm591sqj258fd2ZrCsOedVqOdpRMhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a5hB4LEH; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D8A2CC4CEF1;
	Tue,  2 Dec 2025 00:38:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764635928;
	bh=TixMs6c/L/VCp3dbEN9JPAE8tWGrIDlqM2Nt5qC2y30=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=a5hB4LEHxehEHHL3LKa7QCxMvnIFfLjFydie0xCr0Xw2LSeZyfZAcSkOB2SDwahtW
	 ugBfZ19AbaeCW/WWZ6Fk5KYg/lRitQ45obQYZelKJorn3hrbUoV+u8PnW35eVuLDAN
	 NYokVoBvAUHybSczGk2ir4L+jqJdKwC/sIhYVLoTUy/qarQHqVi1fEbEagm9rhvl2k
	 kk/Xi35oYiCHXDcE0i56nupeHHTx4/vVQHgKibypnVjMiWq24P7K8kwbmD4aTXaJwx
	 VUOB0j5LMXQYLNjqVSjD3yKPm+Rb3MQjK/c0z7YgGOmoEUYpzzDKyRzZiA/r5LnCTM
	 mKVtR9E4aO5oA==
Date: Tue, 2 Dec 2025 01:38:45 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: Downstream Fedora user request for additional see-also in "man 5
 proc"
Message-ID: <s2sgnfnfprsp5af2cpbfccujey63ayt5p3juac4m3ukwoga2fe@w2wdg36g4tns>
References: <b28be8a6-0026-4911-80ea-e39d56cf2234@redhat.com>
 <7bxe6tliic2ofagysxqjoezrf5lbhnvmm2boqlzcp5ct7bmc4v@hwykucnbxeqe>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="z44wgwaepcgs5ih6"
Content-Disposition: inline
In-Reply-To: <7bxe6tliic2ofagysxqjoezrf5lbhnvmm2boqlzcp5ct7bmc4v@hwykucnbxeqe>


--z44wgwaepcgs5ih6
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: Downstream Fedora user request for additional see-also in "man 5
 proc"
Message-ID: <s2sgnfnfprsp5af2cpbfccujey63ayt5p3juac4m3ukwoga2fe@w2wdg36g4tns>
References: <b28be8a6-0026-4911-80ea-e39d56cf2234@redhat.com>
 <7bxe6tliic2ofagysxqjoezrf5lbhnvmm2boqlzcp5ct7bmc4v@hwykucnbxeqe>
MIME-Version: 1.0
In-Reply-To: <7bxe6tliic2ofagysxqjoezrf5lbhnvmm2boqlzcp5ct7bmc4v@hwykucnbxeqe>

On Tue, Dec 02, 2025 at 12:51:17AM +0100, Alejandro Colomar wrote:
> Hi Carlos,
>=20
> On Mon, Dec 01, 2025 at 06:40:57PM -0500, Carlos O'Donell wrote:
> > Alejandro,
> >=20
> > Forwarding here for discussion.
> >=20
> > After the split-up of the proc information into various pages
> > we fielded a downstream Fedora question about where the
> > information went.
> >=20
> > You can see the request here:
> > https://bugzilla.redhat.com/show_bug.cgi?id=3D2405343
> >=20
> > The request for enhancement is basically that the "see also"
> > should reference all the pages that were split and moved.
>=20
> Hmm, thanks for mentioning this.  Michael had asked me about this too,
> but I had forgotten about which page it was about.
>=20
> >=20
> > Thoughts?
>=20
> I have plans to do this, although I won't put it in the SEE ALSO.
> Instead, I'll put the links in the DESCRIPTION, in a more organized way.
>=20
> I'll do this when I finish splitting ipv6(7) (maybe in a few days or
> a week).

Actually, it was easier than I thought.  I've already done it.


Cheers,
Alex

>=20
>=20
> Have a lovely night!
> Alex
>=20
> >=20
> > --=20
> > Cheers,
> > Carlos.
> >=20
>=20
> --=20
> <https://www.alejandro-colomar.es>



--=20
<https://www.alejandro-colomar.es>

--z44wgwaepcgs5ih6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmkuNRUACgkQ64mZXMKQ
wqmG5xAAlDRDfn6qOHszAKY6p+qn53HXcLUAPZM2L/8gLnH9jYMWgEMKl9XiZfc4
YSy3n0uXeTImEKr6tfCrKFuKxe2iuQFqt1gnvsQxku15WBJkZY07bcKmusCWXgZ/
fp00d2I+r+ZGy41Y38qV+xcST30xOng0xvpUjK5FxnAcPO3Z35RC6BfrAZ2G7gYV
0oexFJPkqhv9kK9+v/Uug4+3T/VorO8FjBAfmldLDy0diPYSSdyK9oT4+5nSW33V
Hh2NStSLdIzH8YqEZHHXrZg8Cn8laP544L2mEstI3CIDmB1J+JLN60VXFHseIWFT
GqZm01bhao0toNk7aLGE/yqW0SKyw6nwAHgxTPOEKqrcaREoXQb12GW38PXsKsyx
B/iCqJ8YOOlw4V1xC2eZwlUtyc8QqdS3JaHLznQjdJA/geIViISNvexF0ZuXf6Tq
Ip0aqV4NUv27CRgggbtr2fyDkus0K+kmX9wXwXWKm7cZEVqrYNBtm1R2tGlaO2tW
HNnWcHgYnlcKeRAJtpTsIqez/xzdmPXFFZjQCAv4HauG0tmUuQ2oo7zHTsKVDQo3
VTafwsxBdZkKjCfDRY4OP0xFakPPbkmHUqt2wBm8RYVOz4w24jrMNCj8KCE/gSD6
j6/DXV2f6WrQwbiCffr9RDIbizWm8uL+NCNdM/cV/+CPHHucn68=
=uXsQ
-----END PGP SIGNATURE-----

--z44wgwaepcgs5ih6--

