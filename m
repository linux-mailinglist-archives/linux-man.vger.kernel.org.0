Return-Path: <linux-man+bounces-1696-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 14E4495E2D8
	for <lists+linux-man@lfdr.de>; Sun, 25 Aug 2024 11:08:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BC03D281D31
	for <lists+linux-man@lfdr.de>; Sun, 25 Aug 2024 09:08:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEAB459164;
	Sun, 25 Aug 2024 09:08:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BKurNrRi"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACCDA2F3E
	for <linux-man@vger.kernel.org>; Sun, 25 Aug 2024 09:08:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724576888; cv=none; b=PIJqOPzRQq9Z3Et1ZMdjnfaSmzQ2+jmh2zUngHJLUxVY4LRXQAsPNv6CloJpRkyN51fgky7Uu7uGVFkPH1MdRWBAIMh5iF6aJCRnjkubnv3WSJMUMCWwUS6fiBR8mGxY9/OzZ3paJ/EniJSZIkgJFCL3BDO/jDyrR1EgRNGbXKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724576888; c=relaxed/simple;
	bh=EOOUrj/EfQ9sa8yDbsmAJeTOFGZelAV3VUtvDTYEVDQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=A6gjkIc32clV0niW4sAkLx/aBQLWiIUgX8ggU4L0Srk9TyI+TPjcBeTIacCvaBP2eu3Xkn5zgUhPpPKiPX181ZaxJyXiHMIOqJpmrjWPpa20JIud50mEJfm58lNuF8xOkzGtAO5cfep9A7I2JNY1+VqNXeZvsE3tPuhZRtPugCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BKurNrRi; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9D71BC32782;
	Sun, 25 Aug 2024 09:08:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724576888;
	bh=EOOUrj/EfQ9sa8yDbsmAJeTOFGZelAV3VUtvDTYEVDQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BKurNrRiO0fvqHL8Q+ey3ew/ngd+O8P3UEAgwAVlAsE4eihPyHuja8WvrutcGrxLf
	 960CrSYFOxUndNBByTR03hpQo85luyuLikeVzgkltXopkgCjpSPAWYR3LjCm7lhKAy
	 yiwyl/RtOYBxvk6uUdL5tN3EGAAECRSI++m0++Ye7is94OL1VdbyPYorRZtXU3YWEt
	 4xA+rqToiyOSQP6iwwpq+L1B+ESK3n2NjoyIgbnOBMUMJgDOzlGvq+mfQSvf+mfh5N
	 +4j6+7vJWS98kV5eI2iApJYnOfpiPiLjCHiHInGkeaLI55o+sx/DBhqNQdADgZ6w9u
	 i+ThyOxAUx9ig==
Date: Sun, 25 Aug 2024 11:08:05 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Absee Seeab <doesnt.look.like.temp.mail@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: Missing crucial information in splice(2) manpage
Message-ID: <utbcwylyt4dsx7ikfhv2vwbqedxmxlfivjih6nxtm424zba7de@5ctrj6xvegxb>
References: <CAHeAhPS-Z1zV_2TX3T-FPcgW9H8DLafas9-GGUpr-pk-5zEzXA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rvjlf6iay3exhkk5"
Content-Disposition: inline
In-Reply-To: <CAHeAhPS-Z1zV_2TX3T-FPcgW9H8DLafas9-GGUpr-pk-5zEzXA@mail.gmail.com>


--rvjlf6iay3exhkk5
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Absee Seeab <doesnt.look.like.temp.mail@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: Missing crucial information in splice(2) manpage
References: <CAHeAhPS-Z1zV_2TX3T-FPcgW9H8DLafas9-GGUpr-pk-5zEzXA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAHeAhPS-Z1zV_2TX3T-FPcgW9H8DLafas9-GGUpr-pk-5zEzXA@mail.gmail.com>

Hello Absee,

On Sun, Aug 25, 2024 at 07:22:43AM GMT, Absee Seeab wrote:
> Hello,
>=20
> The splice(2) manpage (at least the version at man7.org) does not
> specify that off_in/off_out are written to after the operation.
>=20
> This, however, is done by the kernel (observed both by behaviour and
> source code).
>=20
> Plus I see similar functions (like copy_file_range and send_file) do
> document this fact, but splice does not, so it seems like a
> documentation omission.
>=20
> (This caused me a bit of a debugging headache today)

Would you mind adding an example program to that page, and also some
paragraph that documents that?

Cheers,
Alex

>=20
> Thanks
>=20

--=20
<https://www.alejandro-colomar.es/>

--rvjlf6iay3exhkk5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmbK9HUACgkQnowa+77/
2zLBuA//UsZXyeqPq253jZgiYyIXkyonD9fkR5bcE2U8B/M5Xh4WaWpX0volCZhE
ssYc98YUWdG8CG1OkxFMTOnRghfbtRcoj5K/UmdMZW1HE0uJFiLEQ0N9c31oQfA3
glhYozOxyndwGUJKUzzPDMuKAG/qAs5VLYCoAokwQOgiMwEYBmLKS18R9Bbf4l1H
ZlBhsH8dO/1l+6avXWiRwpszYWVEoqInYvhuICjweHQZKanOAG1DMDN36q7oIvP8
X5DbBBRx1hhThJW8PdHI10a6Mp7aVR3jxdzbg39p4B8y5UqnKP0wqioIIlGrCl56
tHgBPRXMR3e2jtECla69j+ew+U51/LDdu0ME8nS2Sj90auUY8/dnxnDtN8jpsXBv
7S8s65i1lJzr/Zesl2nmyrm+D2Wj34ZDkYqKee2X6tTsz9TzxeX5mnolDFHFqvZy
oHxnPYYVk0/aXNBvCg6lXY/nKfOncRXs+HF1+TvmLp5PbVOzolZSpf4xr6V8aozP
XXQRK752pfHE3D7+nCZhGB2MuboBe8CbELDpb2kZ/tbi4yZvUUNoLGON13EjVWM7
l1h1xoZXSMxx8BJLtkX7XH/uuc7WatLV2s9mm/tIVRpFJSNMt3BKm/RQrQ+D/srh
W6YJadtxpABV663vL9KmrUj7LNs5OepR3yNTAs+PsebC01XqyNY=
=On2y
-----END PGP SIGNATURE-----

--rvjlf6iay3exhkk5--

