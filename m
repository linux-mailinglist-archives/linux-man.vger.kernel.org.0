Return-Path: <linux-man+bounces-454-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id AE31A859712
	for <lists+linux-man@lfdr.de>; Sun, 18 Feb 2024 14:16:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B0918B20C7A
	for <lists+linux-man@lfdr.de>; Sun, 18 Feb 2024 13:16:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 993896BB4E;
	Sun, 18 Feb 2024 13:16:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YU9t/scP"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 578116A8B5
	for <linux-man@vger.kernel.org>; Sun, 18 Feb 2024 13:16:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708262163; cv=none; b=OXTXEI1br4B3BLuDG4iS5A44UoOBiW+D3VVkmZaoAUC8d/VcWCaUSU97ZRDcpPNvlbTAh5lxv4l9eRE/6Ew89BpvCJEYevOkXhD24EDSzjA8q9aTLrnZu+bz5IHxOJ2gVu5YnEDCmJZVagK7Zn5bHfCxhDdCdU1m44goKJiyQK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708262163; c=relaxed/simple;
	bh=b/L/MwzSxEyL07RS1Lolyn9DHs23qYsWpKjnP/idGsk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=spaJoyFYjrPGknO3ft3BqxMuS3j9od7+PYDt/fTu/VI9vpRnyvZ2e4dSQYyepwf0CMg062u7kLrlsI1nTpvGKZUpSW3PrH16YVFu6n09I9mmPTLi2rn8LQg3aS9WynixyKvU6xNppLegLxwLT02BwYa8aJfMWbVKIBoROBnq5L0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YU9t/scP; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E252BC433F1;
	Sun, 18 Feb 2024 13:16:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708262162;
	bh=b/L/MwzSxEyL07RS1Lolyn9DHs23qYsWpKjnP/idGsk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YU9t/scPhGDtETHt6zse0jD04KxymOv4rfGQy3TgAnvThORt3rtly6gjBlsV1Bemy
	 Prv23nMG+4PZz7UugVMy/y7TcWvJjn3QoQDaTlfCg0buO/OJ7bysDtuE6O4ct8fFmg
	 50EnL6Xz+Z6FIv9YN6465cq9yZJKQMTd0PT3KkwMPk52iiRxuriMTQx4Osa+mikNC8
	 8aQKaDLQjamCJCSkz1NbyaOyyr+9XgYOkqkr/xZG7EZBmzfc9brelhHJ3F32LgqW8i
	 +UskzIMzgLlzejc+sM8kTs7goqWTxh8ks4Ao1NsFZs6tgR2F+x28UmqCta6EWsn6Lv
	 tpmYvON+nb46A==
Date: Sun, 18 Feb 2024 14:15:59 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Mark Wielaard <mark@klomp.org>
Cc: linux-man@vger.kernel.org,
	Alexandra =?utf-8?B?SMOhamtvdsOh?= <ahajkova@redhat.com>
Subject: Re: [PATCH v3] close_range.2: Add _GNU_SOURCE and unistd.h to
 SYNOPSIS
Message-ID: <ZdIDDw_4Vd2lviE7@debian>
References: <20240212120704.1638500-1-mark@klomp.org>
 <ZdFY3PwhYhhIlUIg@debian>
 <20240218120035.GE16832@gnu.wildebeest.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sreqvleteW25Bo/W"
Content-Disposition: inline
In-Reply-To: <20240218120035.GE16832@gnu.wildebeest.org>


--sreqvleteW25Bo/W
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 18 Feb 2024 14:15:59 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Mark Wielaard <mark@klomp.org>
Cc: linux-man@vger.kernel.org,
	Alexandra =?utf-8?B?SMOhamtvdsOh?= <ahajkova@redhat.com>
Subject: Re: [PATCH v3] close_range.2: Add _GNU_SOURCE and unistd.h to
 SYNOPSIS

Hi Mark,

On Sun, Feb 18, 2024 at 01:00:35PM +0100, Mark Wielaard wrote:
> Note that there is now one line which is > 80 chars.
> You can fix that using this from the original fix,
> that splits and indents the comment on two lines:
>=20
> > > +.BR "#include <linux/close_range.h>" " /* Definition of " CLOSE_RANG=
E_* "
> > > +.BR "" "                                  constants */"

I've amended it with your original code, and also realized that we can
put the function prototype in a single line now:

<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D2fe73d74a661e7a9122482b840150e6ef867cdd6>

diff --git a/man2/close_range.2 b/man2/close_range.2
index bd5d10233..b0c9ef66e 100644
--- a/man2/close_range.2
+++ b/man2/close_range.2
@@ -14,11 +14,11 @@ .SH SYNOPSIS
 .BR "#define _GNU_SOURCE" "         /* See feature_test_macros(7) */"
 .B #include <unistd.h>
 .P
-.BR "#include <linux/close_range.h>" " /* Definition of " CLOSE_RANGE_* \
-" constants */"
+.BR "#include <linux/close_range.h>" " /* Definition of " CLOSE_RANGE_* "
+.BR "" "                                  constants */"
 .P
-.BI "int close_range(unsigned int " first ", unsigned int " last ,
-.BI "                int " flags );
+.BI "int close_range(unsigned int " first ", unsigned int " last \
+", int " flags );
 .fi
 .SH DESCRIPTION
 The


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--sreqvleteW25Bo/W
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXSAw8ACgkQnowa+77/
2zLx/BAAg4OeM0QaMlO4/21qsiljzNgMxvg4JRvMn0LtWyI+JzTu9AnAelQmZx2N
TkMK3C1WNCGalprmO5GppEDT5ZJCtalXw8jKCGdUQeXkXS86LGXAD/0q9jAD0za1
asA7KuGhfzwkpMCxo6YM3zq68RpYpD+dXx7l6WJCxGbokb+GuonqarUXF/8KJg0o
MkymoDIAFLPjQGdJGlNntjyhv4GxVEndYwlV4I4XP629Dv+8pUFNm/jW3KIIynqu
YDbpQFbpeFT/7+Nfrcvm1tahGfyISmgy4ACcvnv0RQYwA5NCFJymUEhlTCjrRNsH
Glrt0YKx4wMTxj2GsoOlDuT3LawGD+T4b6xG5RrZpvpjjiayaaJqjGY9p93n36Ue
4VadPOEqqWGEo7+hSuNWQo91fEzIt4eiYheDj7t8m8VbaHTfAAGIy0WVClHZ+gJk
QF1HF76dD+hN5K/MhS3iz0FJ7gsG9SCeIvRSTuzl/e4AsPKR+5UxS3zQI+X8XyKh
GOHxylQJcGlJK8t0MYPpH19rdAT3y5rfICWxpOEO0Ekww039MHr3kwluV2V6Ntfo
lZQtxOBqMR+DEcVMl0gikDCTrBTVGUvZy2xLdkjHUjpmPAEI5lzcL/CsXB0RXKE7
gQKZiYxYrqG6wCpDECE827uIsjkdngcjZOzbDgHv0RMPjv3YgWc=
=tTip
-----END PGP SIGNATURE-----

--sreqvleteW25Bo/W--

