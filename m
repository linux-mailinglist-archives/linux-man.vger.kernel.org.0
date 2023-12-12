Return-Path: <linux-man+bounces-250-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8027080EE80
	for <lists+linux-man@lfdr.de>; Tue, 12 Dec 2023 15:17:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2A5BB1F21661
	for <lists+linux-man@lfdr.de>; Tue, 12 Dec 2023 14:17:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBE8573176;
	Tue, 12 Dec 2023 14:17:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mqcNSqdS"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EE565812B
	for <linux-man@vger.kernel.org>; Tue, 12 Dec 2023 14:17:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1B436C433C8;
	Tue, 12 Dec 2023 14:17:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702390642;
	bh=M1unhVuKikbeXWksYkSanel+qKVFUl8C2rj1A8plI+A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mqcNSqdS9wruHWb919nv/LOasL9beBsHOTyA0gfqyi2bCjnZJgu68XnqeV2C97lcZ
	 u/bXkD5uV9LGyzdQzS2+64HGlISj+j5Pc3coCZRqOtwAEdTgaUx3hkg1csAgxaGUO0
	 VSKum3yM4qTV8BZWPcYgftQZtdXKm8cW7y9WkqKDgRO8AEdDPUSwGTiRepeXTc6rqo
	 cL9BMLbLJDfbpG2fNCAwttB2QpboGK0C/ECT0M/m0oKOWBFvgc9fOKnPZsZcWo6FDx
	 v8OFIoWrSlRls7izQi6MGXDGOJwVsJhkuVb4ewRi7QBDeuwCpQh0V18ngcA82bRKtE
	 7C8gm0l7Dx2cQ==
Date: Tue, 12 Dec 2023 15:17:11 +0100
From: Alejandro Colomar <alx@kernel.org>
To: ellie <el@horse64.org>
Cc: linux-man@vger.kernel.org, Petr Gajdos <pgajdos@suse.cz>
Subject: Re: Suggestion for clarifications on "man 5 proc" page regarding
 /proc/[pid]/self race conditions
Message-ID: <ZXhrblTGLBirUpki@debian>
References: <e170ffa6-986a-4e55-9d44-27d7d7520151@horse64.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wrLmdkYc42G8UeP3"
Content-Disposition: inline
In-Reply-To: <e170ffa6-986a-4e55-9d44-27d7d7520151@horse64.org>


--wrLmdkYc42G8UeP3
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 12 Dec 2023 15:17:11 +0100
From: Alejandro Colomar <alx@kernel.org>
To: ellie <el@horse64.org>
Cc: linux-man@vger.kernel.org, Petr Gajdos <pgajdos@suse.cz>
Subject: Re: Suggestion for clarifications on "man 5 proc" page regarding
 /proc/[pid]/self race conditions

Dear ellie, Petr,

On Tue, Dec 12, 2023 at 09:47:58AM +0100, ellie wrote:
> Dear Alejandro Colomar,
>=20
> I hope I'm emailing this to the correct place, I found this contact
> information on https://man7.org/mtk/contact.html regarding man page
> feedback:

Yep, this is the correct place.

Petr, Michael retired from maintaining the project a couple of years
ago.  As Michael says in <https://www.man7.org/mtk/contact.html>,
reports about the Linux man-pages should be reported to this mailing
list, following the ./CONTRIBUTING file
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRIBUT=
ING>.

>=20
> I'm suggesting that the "man 5 proc" page is expanded with a section

I've recently splitted the proc(5) page into many small pages, one for
each file or directory.  You may want to check the current manual pages.
You can do that by reading directly from the repository, or by reading
the PDF book (thanks to Deri James, from gropdf(1), for contributing the
scripts to produce the book).

To check the book as of the latest commit in git HEAD, you can check
<https://www.alejandro-colomar.es/share/dist/man-pages/git/HEAD/man-pages-H=
EAD.pdf>

You will probably want to check proc_self(5) --which is a link page; the
text is actually in proc_pid(5)--.  proc(5) still contains some small
mention of /proc/self, so you'll want to check that too.

> clarifying /proc/[pid]/self

You probably mean /proc/self/, or /proc/[pid]/.

> race conditions, I described details and even
> made a text suggestion here:
>=20
> https://bugzilla.suse.com/show_bug.cgi?id=3D1216352

After seeing the suggestion, you'll want to check proc_pid_exe(5):

<https://www.alejandro-colomar.es/share/dist/man-pages/git/HEAD/man-pages-H=
EAD.pdf#proc_pid_exe.5>

You could add a CAVEATS section in that page.  Please write also a test
program that reproduces the race condition, and another one which
demonstrates how your solution doesn't.  Those test programs will be
useful to include in the commit message.

> (The text suggestion might be wrong, however, since I don't actually know
> what the exact technical state of this is.)

It looks good.  With a small example program that demonstrates it,
you'll be able to answer your doubts.  ;-)

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--wrLmdkYc42G8UeP3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmV4a2cACgkQnowa+77/
2zK2ZA/9GjjwmnX9R6i1XzaHs7OmUuGm2cjBFBrGEdlyZK5WEl8txeP01haJcIXs
FN+nkCW7PyBgO3tY3TUpp8BlblKzQ/MG4k00oCyzsLe540M+jDs6VHipwE/g7Q1k
dPxh6YUK3WRN1QUq8ReTbHxLLz1yJA6npxSd1tN//u35vcHRSB35036kr7xsuqK7
xSOLtcslZ0gHCU3ESdcO56YY9xb6rp0EPszXWRh/ILU/ZAU0yIeMC5RcBNOuNvsK
vVoghPYepw5DaqznhRTGDJo4qif6fwuR4SbowbaHyOEQUPQzfPr0cWd2WwmjRs/l
3Q9PZ8MsOWUwvRpAxEkzovz1TooQflorthbZVpty0BGJ9YL9R8Lhm66G3YcbSUCr
2OWicNjD0R0DYu89HGcnyNuJGMju/TTwW+eiSXMRd4rxH09nFf6RQ9FxBsjHHtL1
U1k6rNTOhEJ459KSUId0Hoj9jTPLG9TngVd7PVcuoBqw7HRNCPlosIjwMUsPpNpK
LSUeqH5nMyHmnJIWvPnRMAe+IGlDIWCTCIfauip1EtRvBWZTgVBu0dkP3Mi/SB0m
S45FOZWu8ikdEptEpIOTeMLVZKxxTCX71FjaAmnV2tf1bJFM2AVJSwx3PzkqbMap
sEqc/F8ADiq67wDtlRDpyFqX0oxWv1KCW5wcp+cbmuGtzevPoXw=
=JKjD
-----END PGP SIGNATURE-----

--wrLmdkYc42G8UeP3--

