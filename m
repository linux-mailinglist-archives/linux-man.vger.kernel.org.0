Return-Path: <linux-man+bounces-2386-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 065DEA30FB8
	for <lists+linux-man@lfdr.de>; Tue, 11 Feb 2025 16:27:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8A92E164E27
	for <lists+linux-man@lfdr.de>; Tue, 11 Feb 2025 15:26:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D3BE253320;
	Tue, 11 Feb 2025 15:26:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UdwpHjB9"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5C5B2512C2;
	Tue, 11 Feb 2025 15:26:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739287589; cv=none; b=c2o+HKhzUtjil/lxmXmq4O8INl/yyuEm47yoI6c9BjL6/qMV6TlTiNT4/feYJcYJAEqLIHaHjG62E38F5mtRqkaMv/LcERhVry0aIVTEDhQWwF5vL4+wLiom0DPW1ti5KiQxrwEXFrgxoVncfcZqOJHoVQhPVvlga725d0+9LMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739287589; c=relaxed/simple;
	bh=9dHIbEuiagw8VSBfnsLNcwG/ICtirlLJwV63HBgsg0U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aMF9NXnFcvQhjIjolxIXAVuwqpjZeqgxFCzH2/7mAaMkaJLrrBi6r9JffuA6SM562LU1lvNnDc+jClAPDzQisqscR2s839kpCHHEJU5gjHR7xLd7/KCst86RwJ/2BBW/YOldCNIFULJRrOPdYD8hdei9noi3kMT60c5CKtyV22k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UdwpHjB9; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 87190C4CEDD;
	Tue, 11 Feb 2025 15:26:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739287588;
	bh=9dHIbEuiagw8VSBfnsLNcwG/ICtirlLJwV63HBgsg0U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UdwpHjB9JKtsOnzWt5qxUR+msgo6LJvf9TxN8XK6HnwUgaL5cjatFWgehJXarbzWB
	 LJ5x0PZB7GCL8XcZabL+sjSFX3AvkIYVv/Hi5yjzX1w4V/2vdG04roq0f4BF1k2C3/
	 jH4JQdTciOBbzBZPPz4blVquJmkrql+xG15x8knMH8E6N4mpyStKHAi5f85KvHXTGX
	 6qyR+Ljq2huVE0LvR5YXTpQx4Kc1oxHR/VyWouskNy7js+f3Yxf351yUSRp/pM8o0+
	 yX35OugXW6d8fBCYuVQpMoX49jl4CMgSocHwtqBEWaUjuShobLmm+n7wNsFNfDevXi
	 v7HCICPz8yHxQ==
Date: Tue, 11 Feb 2025 16:27:04 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>
Cc: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>, 
	linux-security-module@vger.kernel.org, Tahera Fahimi <fahimitahera@gmail.com>, 
	Tanya Agarwal <tanyaagarwal25699@gmail.com>, Daniel Burgener <dburgener@linux.microsoft.com>, 
	tools@kernel.org, linux-doc@vger.kernel.org, linux-man@vger.kernel.org
Subject: Re: [PATCH 1/2] landlock: Minor typo and grammar fixes in IPC
 scoping documentation
Message-ID: <22olfm76rcgjfs4vrr3adtbznsnz47kaehlr3ljn6e5jkc6waq@ue7azstxlwfv>
References: <20250124154445.162841-1-gnoack@google.com>
 <20250211.Ree5bu6Eph2p@digikod.net>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ijlyahqt2r44jxfh"
Content-Disposition: inline
In-Reply-To: <20250211.Ree5bu6Eph2p@digikod.net>


--ijlyahqt2r44jxfh
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>
Cc: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>, 
	linux-security-module@vger.kernel.org, Tahera Fahimi <fahimitahera@gmail.com>, 
	Tanya Agarwal <tanyaagarwal25699@gmail.com>, Daniel Burgener <dburgener@linux.microsoft.com>, 
	tools@kernel.org, linux-doc@vger.kernel.org, linux-man@vger.kernel.org
Subject: Re: [PATCH 1/2] landlock: Minor typo and grammar fixes in IPC
 scoping documentation
References: <20250124154445.162841-1-gnoack@google.com>
 <20250211.Ree5bu6Eph2p@digikod.net>
MIME-Version: 1.0
In-Reply-To: <20250211.Ree5bu6Eph2p@digikod.net>

Hey Micka=C3=ABl!

On Tue, Feb 11, 2025 at 04:17:30PM +0100, Micka=C3=ABl Sala=C3=BCn wrote:
> On Fri, Jan 24, 2025 at 03:44:44PM +0000, G=C3=BCnther Noack wrote:
> > * Fix some whitespace, punctuation and minor grammar
> > * Add a missing sentence about the minimum ABI version,
> >   to stay in line with the section next to it
> >=20
> > Cc: Micka=C3=ABl Sala=C3=BCn <mic@digikod.net>
> > Cc: Tahera Fahimi <fahimitahera@gmail.com>
> > Cc: Tanya Agarwal <tanyaagarwal25699@gmail.com>
> > Signed-off-by: G=C3=BCnther Noack <gnoack@google.com>
>=20
> Looks good, thanks!
>=20
> I'm going to take this patch in my tree with the changes explained
> below. You can send a v2 with the second patch according to the reviews.
>=20
> As a side note, applying the patch series from this thread with b4
> doesn't work because they apply to different repositories.
>=20
> Dealing with duplicated doc in two repositories is not practical and
> adds work to everyone...  Could we move the non-libc syscall man pages
> to the kernel repository?

Let me suggest the opposite: Could we move the kernel docs to manual
pages in man9?  (As is the historic place for kernel docs.)
(You could keep man9 in the kernel tree if you want, or could handle it
 to the Linux man-pages project, if you want.)  That would help have a
more clear separation between the two sets of documentation, and prevent
duplication.

I personally don't like the idea of having man2 in the kernel tree.
Michael Kerrisk already mentioned several reasons for why it's a bad
idea in the past.  On top of them, I'd add that the build system of the
Linux man-pages project is quite more powerful than the kernel one, and
it would be an important regression to have to adapt to the kernel
Makefiles in the manual pages.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--ijlyahqt2r44jxfh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmerbEEACgkQnowa+77/
2zJ7Bw//YtFLrJQGLWoFihjiuAa2HR/151FlcQcVGXVJEKo9jRfn2oQ1I7hnc37c
yxYxXZHit6+q7g8/G6d7CLAnutUshr/vDlzrNtlvf0m1BEseWj1phnScArItZta+
2BplcVm0UhaibyY49QHhXaocPh17t5BaZM3QI3l9vCOCdvHLNle/RE8RtYHZ2rY+
dhB4TNooiJ1vcJM0iUZIZbbpMfdzcLadYq+3GwK36na2S+YDuAsC7QwnvbJQPoSU
F8ClifFzZ5niDUkYKH4aNeiJgXWj7OmbtPIyuT+JE8dfo2yiNkt1bLjeA3+Dg3qw
XRgejeehM8qlIPlmQeIN8j0Rly5WMhmI11WqNOWQ89B+kBwB4yOTUeLiX+7ZFZzW
7AOSSwEuTxdEKP3j0amv7SwnigOxFxs/BKXHkWa9zErHsq1h3xVDI0d0pWmqNE1l
vyPIaGQHsCsb56A5Vpy3vcVVEU6ZX1BfIha9dISNpy7wpYD2BM2VNZM3WptYG4bx
9kWdvKpDa1vNldlUJxbl5Bfe3nRhyaXaO+qs2yqulYThJtzCN6uT1GY/+S+ti8hO
fqG/e0/pyPGGPUnJV7jH2hJD+YT73mXgsxrPkKeAP4MLlJw3gMNRzGbdqfnKQugh
5ixXgQq4RvPhKDovHCT5zi7dBlv2799kFDUrwheUBPmA7pjKoDY=
=A/za
-----END PGP SIGNATURE-----

--ijlyahqt2r44jxfh--

