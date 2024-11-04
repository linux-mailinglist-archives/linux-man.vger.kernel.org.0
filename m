Return-Path: <linux-man+bounces-1866-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AF8A39BC157
	for <lists+linux-man@lfdr.de>; Tue,  5 Nov 2024 00:20:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BE9891C219B9
	for <lists+linux-man@lfdr.de>; Mon,  4 Nov 2024 23:20:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F5DD1B392D;
	Mon,  4 Nov 2024 23:20:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="khw2iqY2"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7A4F3C6BA
	for <linux-man@vger.kernel.org>; Mon,  4 Nov 2024 23:20:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730762444; cv=none; b=H1M7GA88YGl6oHjg4G5/ZhiXmvcU+GOZ+R2qItTbR2qezCq6Se52SHIT0jGwz5DfCjgI0lqjkEyUSgiPLTd0Z0GFFIZWbrkbv4UZChLks5JlbN00Nj2AK1QLaFmRVXOOg5Ru3iRqbHCVnKq7BH+irH79wGYqBy+oKobQaqMKGz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730762444; c=relaxed/simple;
	bh=jVlqNQ+Rp4xFDq85okbjZB8IlI0Zv3fdzqWNXMjuVrQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cfoO2RyfLzX5q/Bz8RApTca3CnwPab7s487XQLua64hJK+gWdOZduE37gy4r4hsg2XnLLbpWoUUa7g/7u3A+QWEWsuhi+Hyxrhd+QNvcD6UPPRDy6XZqYWZKGbL54DJW9hxhqu0Mh4e1rVE1jAG0Q+6uLvHVNfN+Ol2ulRkx5nY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=khw2iqY2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A7136C4CECE;
	Mon,  4 Nov 2024 23:20:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730762444;
	bh=jVlqNQ+Rp4xFDq85okbjZB8IlI0Zv3fdzqWNXMjuVrQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=khw2iqY2S/+aDITjznpQAUNJn7X1Tv0hso+NTPYNSedQXEDvW1kESwPMgH1B656Rf
	 qX91jqpf0vScYXlm1+nBe9wOOWi9Tfd7B5yzF8JIdSzQgjV+k5hwG+3oa5r4UAcqRW
	 /UQaGoaVy2lIZq7D3+rV99fqGZ+S0gMF1EayCwAntadsyOLgytgPOO2kPZU3HnJwaS
	 +TCByVAinWEaZV3ugNh+tdPl5WSBN2t4ZjUxT0yQpkqinbRN26ijOeTY9jjeapTYlu
	 Fx6wy9uJVUvsTfMhl+1oo3g1xi6/G/Hu2COZyvgCnYzl4UlCno/CBEDmJQRikfzy31
	 EH3okH0NO0r2w==
Date: Tue, 5 Nov 2024 00:20:41 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jona Christopher Sahnwaldt <jcsahnwaldt@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: Typo in man3/pthread_cancel.3
Message-ID: <ej7fodybzzvigjeoximducvc3dujxrlbppnpo2owc2s3bqy5ht@vgny7uwn2ppl>
References: <CAEQewprcZmJBcMcbnoxX_5TqOibKMByC71TQymecRVpnMtJCrQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dtj2qxqutyca52xs"
Content-Disposition: inline
In-Reply-To: <CAEQewprcZmJBcMcbnoxX_5TqOibKMByC71TQymecRVpnMtJCrQ@mail.gmail.com>


--dtj2qxqutyca52xs
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Jona Christopher Sahnwaldt <jcsahnwaldt@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: Typo in man3/pthread_cancel.3
References: <CAEQewprcZmJBcMcbnoxX_5TqOibKMByC71TQymecRVpnMtJCrQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAEQewprcZmJBcMcbnoxX_5TqOibKMByC71TQymecRVpnMtJCrQ@mail.gmail.com>

Hi Jona,

On Tue, Nov 05, 2024 at 12:07:56AM GMT, Jona Christopher Sahnwaldt wrote:
> "cancelation requested" should be "cancelation request"
>=20
> https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/man/man3=
/pthread_cancel.3#n60
>=20
> (I hope it's OK that I'm not sending a patch, but since it's just two
> characters...)

Thanks!  I've fixed it now.
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Db3de1ca93732dd48c4828a37bc6ee3b002f18c6c>

Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--dtj2qxqutyca52xs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmcpVskACgkQnowa+77/
2zJpYA/+Kl3LOI5LtHbiAgzbp+tGwaO/dYkNIt2hqU7+UgOWTw848/PmDU5VsMny
6b06I5QcnLfYgNm4ayvzk8Y6wac7Ye/3ctzbyrXWFIQTCAvO6KzqpvGtLtDYx9gy
9dA1kPjH0iB/rlR6IwEtehmZpEIvBn6pPVCmZ7Xz0qB+EVVwy7lXKgrH7YPlCiuE
zm096EQFz4aQwZTUxDTG7fxNf6dscO3EOa8QwJ4T/+8rH8yguRKwYhfEy8QEh98l
vATweBiG4DYMPQY/UhncnZHNKSx3awo5vDfgV1ojnmENsghchRFspUBQE7CkO63Q
etM6MDPXN/oFKV6A7MMxciDgmdjQJQzVkjQhO4LBARXg3yxQ6Pp3aKmqSTh8fZfd
bV8Hxf+/ZppCOjbGCRyEthZfbByB8diCuumepbPZMezEqIFm3oarY3NWZtm36MIe
cWkZ7SuT9LhN317oGuC3hBdwG3X3erKAp4fHBBSfR9GyPX+fwhFthtPmn6I/k+Pb
Gx/uDwWTHWg5PmuJZj9jj0ve3Fdr63TkStlyY251OAVYohFNFSXFkZruof480zwM
lZIePPbLXTuTYBiwySaUDunaNsZ7SJvHid0Z4qnIa9xyfXmGeFx5f+12jip6lx0o
qOHNfuKqdscIevsanfGP0HCYyEWlawyZiQiqTXhse1iLnqaMsX8=
=u/nw
-----END PGP SIGNATURE-----

--dtj2qxqutyca52xs--

