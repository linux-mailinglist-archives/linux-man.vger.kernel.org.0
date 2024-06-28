Return-Path: <linux-man+bounces-1294-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AB83D91BD4E
	for <lists+linux-man@lfdr.de>; Fri, 28 Jun 2024 13:23:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D98DE1C215D0
	for <lists+linux-man@lfdr.de>; Fri, 28 Jun 2024 11:23:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FC0D155C9A;
	Fri, 28 Jun 2024 11:23:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DulgG3fL"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D15E4481D7
	for <linux-man@vger.kernel.org>; Fri, 28 Jun 2024 11:23:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719573827; cv=none; b=TFGn5kCdlRNChc1DSQoysyKLkIIxFxBh0dRSfTnDxCx8KREy+z203ZrOYC2RHAHGC+LycMsd0lfjkTQlAuVkoYL26NJxP77N4LyjMbzlj8N98Key5GL/37R1g/dgF2UgX4/eAIXb6dQSSf2TNYcePtjmMka0bhcun+y8PC6ViWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719573827; c=relaxed/simple;
	bh=fCaNG2hYYT/5H2XMrORbhKITzbHPMpQdO+BbBzK5iNk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VRQhxdAi6koZ+cjBS5RWNPwFIJPBsCr5f+KVf08ttj/y3YsivLEKN/IIkRZVKdqA3nYbwiWqYtc5R4t2Cl6wvVX40LQDKdcqEcTzNbySK2N6UKhcPfbwAdmlVpohM4tQ/EX5Z4FOALgxB6NHzRFw/6YXniijabryTdIpNRulgcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DulgG3fL; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7E2A3C116B1;
	Fri, 28 Jun 2024 11:23:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719573827;
	bh=fCaNG2hYYT/5H2XMrORbhKITzbHPMpQdO+BbBzK5iNk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DulgG3fLurpL3jJBDUHvZOhwXdPu3CrbBtPmFTCpnqSl3HzFDKF687OJqo0TcdZ+9
	 HPlG23+qEdZzpAt7WX0rDkiUa3nzxKNvNxTiwdMXjEL5/PzXzRD3F7aD6xXTfrfs9y
	 Iyn9nYfGivPDDIVPahyQq78kEWSFtoulsK2PhWRkAxnAS2nFwJFzc/vcsp28/ge5JC
	 5Tw+RvB83nq+OlnLWOHsRKWu1tZsysq0CPfTUeTB5PUwgzO9t0ZWSGvBfvNJY1rjR2
	 4UVSr4zMtvsu6ciUj63AUDZ6rC2BvniBWc8mM6G+eLv5IyJZjcGQDMQyJq2qgyIl7g
	 g23UL1UfnNb0g==
Date: Fri, 28 Jun 2024 13:23:44 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Charlie Jenkins <charlie@rivosinc.com>
Cc: Alexandre Ghiti <alexghiti@rivosinc.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH v2] prctl.2: Add PR_RISCV_SET_ICACHE_FLUSH_CTX
Message-ID: <xsma4ago4umlvz2fnopwg5qyfd7tg376g2ddumfj3yf4nqsesv@rkmsudvmzvl3>
References: <20240212-fencei_prctl-v2-1-32d940981b05@rivosinc.com>
 <ZdFaStMt83D-i8yH@debian>
 <ZnyHEiYs/V/zwJXq@ghost>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xejnpiy24iq47rif"
Content-Disposition: inline
In-Reply-To: <ZnyHEiYs/V/zwJXq@ghost>


--xejnpiy24iq47rif
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Charlie Jenkins <charlie@rivosinc.com>
Cc: Alexandre Ghiti <alexghiti@rivosinc.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH v2] prctl.2: Add PR_RISCV_SET_ICACHE_FLUSH_CTX
References: <20240212-fencei_prctl-v2-1-32d940981b05@rivosinc.com>
 <ZdFaStMt83D-i8yH@debian>
 <ZnyHEiYs/V/zwJXq@ghost>
MIME-Version: 1.0
In-Reply-To: <ZnyHEiYs/V/zwJXq@ghost>

Hi Charlie,

On Wed, Jun 26, 2024 at 02:24:34PM GMT, Charlie Jenkins wrote:
> On Sun, Feb 18, 2024 at 02:15:53AM +0100, Alejandro Colomar wrote:
> > Hi Charlie,
> >=20
> > On Mon, Feb 12, 2024 at 09:19:21PM -0500, Charlie Jenkins wrote:
> > > I have proposed and documented the PR_RISCV_SET_ICACHE_FLUSH_CTX flag
> > > for prctl(2) to LKML. It has been reviewed and is expected to land
> > > during the Linux version 6.9 merge window. This adds the relevant
> > > documentation from that patch.
> > >=20
> > > Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
> > > ---
> > > I have proposed and documented the PR_RISCV_SET_ICACHE_FLUSH_CTX
> > > flag for prctl(2) to LKML. It has been reviewed and is expected to la=
nd
> > > during the Linux version 6.9 merge window.
> >=20
> > Can you please ping when that happens?  The below LGTM.
>=20
> This patch ended up missing a merge window but it is now in the release
> candidates for 6.10. The hash is 6b9391b581fd ("riscv: Include
> riscv_set_icache_flush_ctx prctl").

Thanks for the ping!  Would you mind resending the patch if it's easy
for you?  I don't have it locally.

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--xejnpiy24iq47rif
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZ+nUAACgkQnowa+77/
2zL94w//TnvFXJBYnHAwf0RxaczHwC0vtXY/sV+OGrxEDA0N3ko3ydO9eLfUDl/g
CiptJzZ0q8wxF3FVbUZGje7bLO/DWkPC8AoaGmJsniI6QBBFoVIfYZKfMTH5GYRw
8jpkc/VMb2zZLyZ59Edz9PQEfR5dB0mTjt7uRCrluCDcLU8oSl5Z2o8RchMwsZpO
6KEtdFwEwEj7mGJjE0YbjBVoebKL0dhrqCd4LYt1ZGg0VkafK1lEC4SuDwi3odMG
RgAbH9pQKlbdTvIWqyNQWaXYl5bat3kI1FxdQj61rFWWw0ZljrQK+NHP+sHw7Y/l
w1JwOrnDZB7vWFVBcaugzavsjkivk+nJQzRNCPSJ+q8LfOxspv4z8t/DqzKzBhxV
kULZT4XUutjVF0NsI1Wd6kCPiUqCrFZmoJpz2Kxovbno89eBcNu1JQFy1n6bc44U
jsXdD81zDWQ2XjVSKLpfN3m8DgEb6G8M42tbFcgF2z8UZQsep34Vf+DxmbjZ4jAo
qDBUVKB+E3V1kq4eKLg4RJ2Lvep2AiZBbGxhHMpCJfDJi9BTv39vjHLw30cpboDI
l7XEKcoiu2psZUoWi4rsLI7gsmt/Ma8LHgQzEfG6uu+YNTyUbtVOHY0QTgYoTHO0
qpR2OTVe1Vf8mYEiwl2bjadGGxQryLoAkHXmJFrFEyNUym3iVwE=
=F3yv
-----END PGP SIGNATURE-----

--xejnpiy24iq47rif--

