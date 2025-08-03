Return-Path: <linux-man+bounces-3314-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C72AB194A5
	for <lists+linux-man@lfdr.de>; Sun,  3 Aug 2025 19:23:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9EE813B43D2
	for <lists+linux-man@lfdr.de>; Sun,  3 Aug 2025 17:23:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 816D819E83C;
	Sun,  3 Aug 2025 17:23:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kokaf9pD"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FFEFEEB2
	for <linux-man@vger.kernel.org>; Sun,  3 Aug 2025 17:23:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754241809; cv=none; b=WGnmPr7B0rOqROWuRY+p7upbO0cIcBLlJ/k31MJNoJkilSjijHU/Owv20ffKEcWRTs4A4wiTfqFKb7A7yJyx5jpqWxdf3VRwmtGDac7krLbFj40NDS8JoGpI2lt9P3EOoVgRCl9NZ0X0e6IyZ8f8vu684gkelNN3A6dOQBrJzSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754241809; c=relaxed/simple;
	bh=5qGoe7yG1iEbeVW/OIoJWl8D4sGZUPVMrGudv5+9QyU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GwzQT4rUHL48284gA0/0xCgbUZMID+A7apJh4endLQpnfI7Q7UwJTUPj2ZgF/Uf/Tiq6EjumW6g/ei1F1GuMMZcXNUeeZw1OI7icjXO67pSQ+rwtcNUlcnL9vFAqmpxtE7np8RpYWnyikso6c+KMSyvsdkSvMZyyi91/1ktJzPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kokaf9pD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3C3B2C4CEF7;
	Sun,  3 Aug 2025 17:23:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754241808;
	bh=5qGoe7yG1iEbeVW/OIoJWl8D4sGZUPVMrGudv5+9QyU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Kokaf9pDD65/3wFCRR9FKUc2GN+LENhs8SexOrwIVZVjRhRwPCjRrUlBgjJQp8iKg
	 6zoocB7f9R7qaEqwuXlRwNLd3NHqEIWgIJsfkxImAuGUwwYGslIfUrwQD7lp1lvD4C
	 Pilz6xtLFhdfihcjidPl8HcNqU67fhJw20cadGfdcrHrhuUZEjImBIqMwB8l8XK5+i
	 oGpsLbB1e3A9xGoQPBGtKAfFFvQuWR5YhWWcWKx0s6KZSa0ocijybUgihJ2E4UBd3G
	 5QEo8/QTVBGPOu4ADRFvj166UHJuYjW9NKJKEv9YAD/QIieqDa3ohxE0WspWzjNCGB
	 zM3NBlSriQTIQ==
Date: Sun, 3 Aug 2025 19:23:23 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0J3QuNC60L7Qu9CwINCa0L7QvdGB0YLQsNC90YLQuNC90L7QsiDQmtGA0LA=?=
	=?utf-8?B?0LvQtdCy?= <nkkralev@uni-sofia.bg>
Cc: linux-man@vger.kernel.org
Subject: Re: Bug report for the man page execve(2), the paragraph Interpreter
 scripts
Message-ID: <6ep522k46poyh5oheo54jsz3pn6ho2aam2te2sovbss4zwy6ki@mfekhivmqvph>
References: <1890739964.7471582.1754236249392.JavaMail.zimbra@uni-sofia.bg>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fr6d7y5mgivkm3og"
Content-Disposition: inline
In-Reply-To: <1890739964.7471582.1754236249392.JavaMail.zimbra@uni-sofia.bg>


--fr6d7y5mgivkm3og
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0J3QuNC60L7Qu9CwINCa0L7QvdGB0YLQsNC90YLQuNC90L7QsiDQmtGA0LA=?=
	=?utf-8?B?0LvQtdCy?= <nkkralev@uni-sofia.bg>
Cc: linux-man@vger.kernel.org
Subject: Re: Bug report for the man page execve(2), the paragraph Interpreter
 scripts
References: <1890739964.7471582.1754236249392.JavaMail.zimbra@uni-sofia.bg>
MIME-Version: 1.0
In-Reply-To: <1890739964.7471582.1754236249392.JavaMail.zimbra@uni-sofia.bg>

Hi Nikola,

On Sun, Aug 03, 2025 at 06:50:49PM +0300, =D0=9D=D0=B8=D0=BA=D0=BE=D0=BB=D0=
=B0 =D0=9A=D0=BE=D0=BD=D1=81=D1=82=D0=B0=D0=BD=D1=82=D0=B8=D0=BD=D0=BE=D0=
=B2 =D0=9A=D1=80=D0=B0=D0=BB=D0=B5=D0=B2 wrote:
> Hello,
>=20
> with some manual testing, when a large optional-arg is placed I can
> see that the byte count limit is not 255/127 characters (since/before
> Linux 5.1) after the first two bytes of the file being "#!" these, but
> the actual count limit is 255 characters starting at file offset zero.
> So, technically, the largest possible full path that can be placed as
> the interpreter is (255 - strlen("#!")) bytes long.

Would you mind showing a test that demonstrates this?

> Meaning that, the execve(2) man page https://www.man7.org/linux/man-pages=
/man2/execve.2.html should be corrected to something like:
>=20
> The kernel imposes a maximum length on the text that follows the
> "#!" characters at the start of a script; characters beyond the
> limit are ignored. Before Linux 5.1, the limit is 127 characters includin=
g the "#!" characters at the start.
> Since Linux 5.1, the limit is 255 characters including the "#!" character=
s at the start.

Sounds good.

> Should I manually send a pull request and edit the plaintext man page
> from its git repository? Or will the man page maintainers correct that?

Yes, you're welcome to send a patch!  Please have a look at
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRIBUT=
ING>
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRIBUT=
ING.d>


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--fr6d7y5mgivkm3og
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmiPmwQACgkQ64mZXMKQ
wqmXuBAAs4SME6xt1in+kdRCUQz61YGw3w0qsaleoInVocO01E8w7twQF+JSoCLU
yLYFGgz2iWKm1HDfiVK0CcRD4uRu+1yoE9xNLa5/ng9sGM3yZGwgn7juWCUU9WME
1ekU5ObMeV+PVaupSYz4RUWgGm98ZsaCJIsw+2kQSn4BwxPJu6McG1uHgqAax2Yg
ATSJgRjiwgphRYSu8rWH5Pt6vH/ba1k7G/PVv0vqbVxXD9m0tOqnExk163ZPfKIx
KwBg5EuHrfjWD4pjQ+RWSKYOCbYWtJX8pKQ8mkKjTgPuUHgkSCJew1ySOkQmGJld
ISoCll8wAi++ty8Y1DbJf+bwQzMhoPZteISfztJoBJS6Y6O/Uq3MaNL6Et3aG+Tj
nDy2SD0O3HWIg+nyEJrycbc3g7XRgA7YPRT9fyEqTzq0Ep+LAS3A95uR1X5x6Pex
zzR580Uw1nBjYKETZMwq6k9P9WfRFQw8HaVQnn1CdGgZiX7wP3ENVnQTIDD9axG6
aAUE55ACIZwjelibMrEdBqKm2+EWx9Z6l/V6W8wY40agFaKbXLHUNxU0IQVlpvvM
bW0s2iKpkhR11R9mIrDDu6N3tpUvOl4kecu/vFTg4XvIPU739kpRR938dcEfYmZu
3SMV9AWmhBULX3P9E18CBOWE5J9HttvMaowMoOE2SRMbMRkSN9Q=
=XXRi
-----END PGP SIGNATURE-----

--fr6d7y5mgivkm3og--

