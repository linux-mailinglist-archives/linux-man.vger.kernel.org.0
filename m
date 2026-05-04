Return-Path: <linux-man+bounces-5461-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id JQMeCByZ+GkAxAIAu9opvQ
	(envelope-from <linux-man+bounces-5461-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 04 May 2026 15:03:24 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1634B4BD618
	for <lists+linux-man@lfdr.de>; Mon, 04 May 2026 15:03:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 42D313038C73
	for <lists+linux-man@lfdr.de>; Mon,  4 May 2026 13:01:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5070D3D8102;
	Mon,  4 May 2026 13:01:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ig0X5VqM"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04F583D5256
	for <linux-man@vger.kernel.org>; Mon,  4 May 2026 13:01:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777899663; cv=none; b=JWY0k6vFsP74Dnn/YW2qBLM9SH+R4wz3n5jJQaV45T0An/0gQbWjnw1Rq2t57XRv74FATVQbhyLDa5J9z8ANQESm6HTp0r67JzFbqFpaUzdP1yoiKkSGw5Am66oDP+Krt0r6WV0PWXn9fs2pxVjG1CHmbcmRCTHw4EQkPrxvaiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777899663; c=relaxed/simple;
	bh=0QFJwNyFGonzifioCC1y3p5VMVvFb3raw3cdV62NLe0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=b2FL4RnVZluPptDESExwhvQLWmI15jDjSXElvQGBdu+1R6FWCl+oMSYfo1hVn2fSX86dSSTxbdlVfEglLHCR69EdzBgTQyCPW0K59Be91D9NMpqxKVZEWAlzVvqPwQlR+30H58tHMweNhLgdLmOp8W5QaVcbLvxnm2swc57EpBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ig0X5VqM; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EDF5CC2BCB8;
	Mon,  4 May 2026 13:01:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777899662;
	bh=0QFJwNyFGonzifioCC1y3p5VMVvFb3raw3cdV62NLe0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ig0X5VqMWdwDlP+odv+9CJJALJE+VUT12t4dydd1Sok8RfbsZkw+KzoyrK/BVzC7D
	 zDI/AJZYLdFKgaxb7yyw9b3TMtovR34AkQBQWmFv81ttq7Ht5jLKe/3l98nPUjDFwT
	 nB2XnK/VKGBb1DJxQRBhpGZtugxA7/6mrtZIBs1wR6guMrfd0EMpNLuHlb3ZhmMnhS
	 /SjBfzoutMyzIyEpiL2ddktfxHEq3ZRQKSlaCa9uSWI57SDAgIVzoWAaNtMsfxnxE9
	 J6qiEmVo96PjUnBFpwAMfR3NrUkA/88kCh1pN+9QJfyAlmlTnHB4Lwt3K/9GWNAo1A
	 9cuL9bgnNg5SQ==
Date: Mon, 4 May 2026 15:00:57 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Ben Kallus <benjamin.p.kallus.gr@dartmouth.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/mmap.2: Document when MAP_GROWSDOWN
 does/doesn't trigger growth
Message-ID: <afiVz8xRiJ0jQzXZ@devuan>
References: <20260423164414.1952395-1-benjamin.p.kallus.gr@dartmouth.edu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="r3ckfbegg3ecmchh"
Content-Disposition: inline
In-Reply-To: <20260423164414.1952395-1-benjamin.p.kallus.gr@dartmouth.edu>
X-Rspamd-Queue-Id: 1634B4BD618
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5461-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,open-std.org:url,devuan:email]


--r3ckfbegg3ecmchh
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Ben Kallus <benjamin.p.kallus.gr@dartmouth.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/mmap.2: Document when MAP_GROWSDOWN
 does/doesn't trigger growth
Message-ID: <afiVz8xRiJ0jQzXZ@devuan>
References: <20260423164414.1952395-1-benjamin.p.kallus.gr@dartmouth.edu>
MIME-Version: 1.0
In-Reply-To: <20260423164414.1952395-1-benjamin.p.kallus.gr@dartmouth.edu>

Hi Ben,

On 2026-04-23T12:44:14-0400, Ben Kallus wrote:
> The man page states that MAP_GROWSDOWN can only cause a mapping to
> grow by a single page.  This is incorrect; mappings can grow by many
> pages at a time, until reaching either the stack size limit or growing
> too close to another mapping.
>=20
> To observe that mappings can grow by more than one page, and that they
> are limited by the stack size limit, run the following C program with a
> stack size limit of 0x800000 bytes, and then again with a stack size limit
> of 0x801000 bytes, and observe that it segfaults as the comments describe.

Would you mind pasting a shell session that runs it with both stack
limits?

>=20
> > struct page {
> >     char data[4096];
> > };
> > static_assert(sizeof(struct page) =3D=3D 4096);
> >
> > void *const BASE_ADDRESS =3D (void *)0xabcdef000;

I'd prefer upper-casing the hex value, to differentiate it visually
=66rom the 'x':

	0xABCDEF000;

If this seems too packed, C23 now allows using a digit separator:

	alx@devuan:~/tmp$ cat s.c=20
	void *const BASE_ADDRESS =3D (void *)0xA'BCDE'F000;
	alx@devuan:~/tmp$ gcc -Wall -Wextra -S s.c=20
	alx@devuan:~/tmp$=20

> >
> > int main(int const argc, char const * const * const argv) {

Unrelated, but you can define int main(void) without parameters.  That's
allowed by ISO C.  Here's a quote of C23, but this is allowed by any
version of ISO C:

	5.1.2.3.2 Program startup
	1	The function called at program startup is named main.
		The implementation declares no prototype for this function.
		It shall be defined with a return type of int
		and with no parameters:

			int main(void) { /* ... */ }

		or with two parameters
		(referred to here as argc and argv,
		though any names may be used,
		as they are local to the function in which they are declared):

			int main(int argc, char *argv[]) { /* ... */ }

		or equivalent;6)
		or in some other implementation-defined manner.

<https://www.open-std.org/jtc1/sc22/wg14/www/docs/n3220.pdf#paragraph.5.1.2=
=2E3.2>

> >     volatile struct page *p =3D mmap(
> >         BASE_ADDRESS,
> >         1,
> >         PROT_READ | PROT_WRITE,
> >         MAP_ANONYMOUS | MAP_PRIVATE | MAP_GROWSDOWN | MAP_FIXED_NOREPLA=
CE,
> >         -1,
> >         0
> >     );
> >                              // stack_limit=3D0x800000 // stack_limit=
=3D0x801000
> >     (p - 2047)->data[0] =3D 0; // no segfault          // no segfault
> >     (p - 2048)->data[0] =3D 0; // segfault             // no segfault
> >     (p - 2049)->data[0] =3D 0; // segfault             // segfault
> > }
>=20
> To observe that mappings stop growing when they get within 256 pages of
> the next lower mapping (instead of a single page, as the man page
> currently states), run the following program, and observe that it
> segfaults as the comments describe.

Would you mind running the program and pasting that here too?

>=20
> > struct page {
> >     char data[4096];
> > };
> > static_assert(sizeof(struct page) =3D=3D 4096);
> >
> > struct page *const BASE_ADDRESS =3D (void *)0xabcdef000;
> >
> > int main(int const argc, char const * const * const argv) {
> >     volatile struct page *p =3D mmap(
> >         BASE_ADDRESS,
> >         1,
> >         PROT_READ | PROT_WRITE,
> >         MAP_ANONYMOUS | MAP_PRIVATE | MAP_GROWSDOWN | MAP_FIXED_NOREPLA=
CE,
> >         -1,
> >         0
> >     );
> >
> >     struct page *p2 =3D mmap(
> >         BASE_ADDRESS - 258,
> >         1,
> >         PROT_READ | PROT_WRITE,
> >         MAP_ANONYMOUS | MAP_PRIVATE | MAP_FIXED_NOREPLACE,
> >         -1,
> >         0
> >     );
> >
> >     // no segfault (causes p to grow by a page)
> >     (p - 1)->data[0] =3D 0;
> >
> >     // unmap the test page
> >     munmap(p2, 1);
> >
> >     // unmap the new page from p growing
> >     munmap((struct page *)p - 1, 1);
> >
> >     struct page *p3 =3D mmap(
> >         BASE_ADDRESS - 257,
> >         1,
> >         PROT_READ | PROT_WRITE,
> >         MAP_ANONYMOUS | MAP_PRIVATE | MAP_FIXED_NOREPLACE,
> >         -1,
> >         0
> >     );
> >
> >     // segfault because p can't grow due to proximity to p3
> >     (p - 1)->data[0] =3D 0;
> > }
>=20
> Fixes: 176b1a76 (2016-11-21; "mmap.2: Add (much) more detail on MAP_GROWS=
DOWN")
> Signed-off-by: Ben Kallus <benjamin.p.kallus.gr@dartmouth.edu>
> ---
>  man/man2/mmap.2 | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>=20
> diff --git a/man/man2/mmap.2 b/man/man2/mmap.2
> index 20b94c243..925b18ffc 100644
> --- a/man/man2/mmap.2
> +++ b/man/man2/mmap.2
> @@ -276,11 +276,11 @@ should check the returned address against the reque=
sted address.
>  This flag is used for stacks.
>  It indicates to the kernel virtual memory system that the mapping
>  should extend downward in memory.
> -Touching an address in the "guard" page below the mapping will cause
> -the mapping to grow by a page.
> -This growth can be repeated until the mapping grows to within a
> -page of the high end of the next lower mapping,
> -at which point touching the "guard" page will result in a
> +Touching an address below the mapping will cause the mapping to grow to
> +accommodate the access.
> +This growth can be repeated until the mapping crosses the stack size lim=
it,
> +or grows to within 256 pages of the high end of the next lower mapping,
> +at which point accessing below the mapping will result in a

Thanks!  The diff seems reasonable.  Please adjust the commit message
and resend.


Have a lovely day!
Alex

>  .B SIGSEGV
>  signal.
>  .TP
> --=20
> 2.54.0
>=20

--=20
<https://www.alejandro-colomar.es>

--r3ckfbegg3ecmchh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmn4mIMACgkQ64mZXMKQ
wqkcHRAArzGMZv/VlYJfaF1ZLdF36GQHsDFxGQpXXlvL5iM4O7iGPm88nnhMoUAi
pMyn2DPP1yPHGREcJkgFvUB1K+4vNggzWzfW8YoA5AxE1NvLEmxGmtQkF3jrYJXN
9Pa/2BK7t27gEektOJypkfWUbnBhw4Tp91v4I9yjrLd7R/hax8+nqEVgENveSkoX
7Opq52EPt87l2cCaIkpAeTwPTBReT3IC5bPgWoej0hBEQfZrik76k1gTf41pKO2+
ba1K9MqEOfrNGthmlCnvIEqPnBTBW8Z68Y4BFeyr1EZOBO0ye8GYaATZzXXMyQVu
EdfBt/07emPo7A0Q9/82b3gY5kckjJJuqO2LKy8V4Nq8ORY2uTmgvSftN9SmOjCk
eEGZBQ+49XiYBnLQXbwWpyeDePCoDzYNJSKYLzGOpILmktDS2clRyTQwGgKdEDY1
02xF7EdBu8L1Ze6ToRdzM/A3qiXspVkiPr7YUbYYiSclXAycJuMl/KYnxW8ztCSq
HmszYIfm8537LulL3aO1dUaLP07yZy4MDff1bt0WkRgkSC7O409J4m60wZFpEmsE
mYrxt7W5XHaYDy9A/4a8D28UlD/vt3oIm3kNM7sfe+VblnGfJo8JZXZ+tWrPszvl
/w3JFCJvcNggQ5UndweLctP8D7wAc4MYvSvD97gRegGwjtTdPz4=
=H9ub
-----END PGP SIGNATURE-----

--r3ckfbegg3ecmchh--

