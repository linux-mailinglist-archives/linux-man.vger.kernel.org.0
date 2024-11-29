Return-Path: <linux-man+bounces-2081-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 920A29DE686
	for <lists+linux-man@lfdr.de>; Fri, 29 Nov 2024 13:35:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 368FE16388F
	for <lists+linux-man@lfdr.de>; Fri, 29 Nov 2024 12:35:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D87715B0E2;
	Fri, 29 Nov 2024 12:35:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YR+V2nnc"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF58B153598
	for <linux-man@vger.kernel.org>; Fri, 29 Nov 2024 12:35:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732883705; cv=none; b=GWoq9rE6ovtXWbeQvhDbqvIvTw6kf7e9XkBVQY+6E9JyH6jLm33TvtJwJX9u+cWaoJ6tUSC8SHDKdarmpajZkvL8x62OUioTfa0gvVrwFgNMCnaEc15FyfModOWVrkxX+emdfitDPnTMy0MOK5xmcF+1Kt22eiAlW4PIAyGpEXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732883705; c=relaxed/simple;
	bh=XNE0oksd1acGuTlw3D8v1/YWaH6Tn3mMvwHi0ZtORf8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fgd8P6/9F5uSawAx74vX2kCBAevaI2q+LA3v8oI6oH02DXZHHi8Fx5kNr1yjuHA8zJWmSmJxit3Wig/f0dJ68yI4kyKKVVwSEj/uBfKBFV89+KVfJkZSz6qT0ZejOtvi0Lqko3mxZF/YzwxWr5mrzkF2e4+GvX5bxzbvoVNBwHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YR+V2nnc; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A9ECAC4CECF;
	Fri, 29 Nov 2024 12:35:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732883705;
	bh=XNE0oksd1acGuTlw3D8v1/YWaH6Tn3mMvwHi0ZtORf8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YR+V2nncD41i5MMoWMXI8FA0PvOu9wdl3jXSrK0RVzoJnyNsk7SxedyVCVGsjkgJW
	 YouTu7MgwIMgXJbnQc0E7rUmiO1NOXl+euYIEpHlCQm/rnLPMNhYjp8d6gu7HRut04
	 p9sdOGTRqxL5RdEIIaOZUOdykX1jN8vt5sd2YKOTsc+c7FSFtS6XYW75bt6R9uNW8N
	 v61CEA728izmkzLjSJRXdsGgHQHxSf6duqendm/aemZlP1Q+TYnp8XA2VaZMA1MZ8u
	 0VjnNLtPGd1WAnxaaXSMPYWbcbehm86KmkHXxZ+B090l67TeuXOmbtgroyFsT8HZfe
	 kfZyOp2PTvQ2Q==
Date: Fri, 29 Nov 2024 13:35:01 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
Cc: linux-man@vger.kernel.org, Suren Baghdasaryan <surenb@google.com>,
	"Liam R . Howlett" <Liam.Howlett@oracle.com>,
	Matthew Wilcox <willy@infradead.org>,
	Vlastimil Babka <vbabka@suse.cz>, Jann Horn <jannh@google.com>,
	linux-mm@kvack.org
Subject: Re: [PATCH man-pages] madvise.2: add MADV_GUARD_INSTALL,
 MADV_GUARD_REMOVE description
Message-ID: <20241129123501.hvw6cij4trdao4do@devuan>
References: <20241129093205.8664-1-lorenzo.stoakes@oracle.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="erqfvu75ahekda4q"
Content-Disposition: inline
In-Reply-To: <20241129093205.8664-1-lorenzo.stoakes@oracle.com>


--erqfvu75ahekda4q
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH man-pages] madvise.2: add MADV_GUARD_INSTALL,
 MADV_GUARD_REMOVE description
MIME-Version: 1.0

Hi Lorenzo,

On Fri, Nov 29, 2024 at 09:32:05AM +0000, Lorenzo Stoakes wrote:
> Lightweight guard region support has been added to Linux 6.13, which adds
> MADV_GUARD_INSTALL and MADV_GUARD_REMOVE flags to the madvise() system
> call. Therefore, update the manpage for madvise() and describe these
> operations.
>=20
> Signed-off-by: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>

Thanks for the patch.  Please see some comments below.

Have a lovely day!
Alex

> ---
>  man/man2/madvise.2 | 81 ++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 81 insertions(+)
>=20
> diff --git a/man/man2/madvise.2 b/man/man2/madvise.2
> index 4f2210ee2..e539fefe4 100644
> --- a/man/man2/madvise.2
> +++ b/man/man2/madvise.2
> @@ -676,6 +676,79 @@ or secret memory regions created using
>  Note that with
>  .BR MADV_POPULATE_WRITE ,
>  the process can be killed at any moment when the system runs out of memo=
ry.
> +.TP
> +.BR MADV_GUARD_INSTALL " (since Linux 6.13)"
> +Install a lightweight guard region into the range specified by
> +.I addr
> +and
> +.IR size ,
> +causing any read or write in the range to result in a fatal
> +.B SIGSEGV
> +signal being raised.
> +.IP
> +If the region maps memory pages they will be cleared as part of the oper=
ation,
> +though if
> +.B MADV_GUARD_INSTALL
> +is applied to regions containing pre-existing lightweight guard regions,=
 they
> +are left in place.

Please use semantic newlines.  See man-pages(7):

$ MANWIDTH=3D72 man man-pages | sed -n '/Use semantic newlines/,/^$/p';
   Use semantic newlines
       In the source of a manual page, new sentences should be started
       on new lines, long sentences should  be  split  into  lines  at
       clause breaks (commas, semicolons, colons, and so on), and long
       clauses should be split at phrase boundaries.  This convention,
       sometimes  known as "semantic newlines", makes it easier to see
       the effect of patches, which often operate at the level of  in=E2=80=
=90
       dividual sentences, clauses, or phrases.


> +.IP
> +This operation is only supported for writable anonymous private mappings=
 which
> +have not been mlock'd. An
> +.B EINVAL
> +error is returned if it is attempted on any other kind of mapping.
> +.IP
> +This operation is more efficient than mapping a new region of memory
> +.BR PROT_NONE ,
> +as it does not require the establishment of new mappings, instead region=
s of an
> +existing mapping simply have their page tables manipulated to establish =
the
> +desired behavior. No additional memory is used.
> +.IP
> +Lightweight guard regions remain on fork (except for any parts which hav=
e had
> +.B MADV_WIPEONFORK
> +applied to them), and are not removed by
> +.BR MADV_DONTNEED ,
> +.BR MADV_FREE ,
> +.BR MADV_PAGEOUT ,
> +or
> +.BR MADV_COLD .
> +.IP
> +Attempting to
> +.B mlock()
> +lightweight guard regions will fail, as will
> +.B MADV_POPULATE_READ
> +or
> +.BR MADV_POPULATE_WRITE .
> +.IP
> +If the mapping has its attributes changed, or is split or partially unma=
pped,
> +any existing guard regions remain in place (except if any are unmapped).
> +.IP
> +If a mapping is moved using
> +.BR mremap() ,

The "()" should not be bold.  They should go with the ','.

> +lightweight guard regions are moved with it.
> +.IP
> +Lightweight guard regions are removed when unmapped, on process teardown=
, or
> +when the
> +.B MADV_GUARD_REMOVE
> +operation is applied to them.
> +.TP
> +.BR MADV_GUARD_REMOVE " (since Linux 6.13)"
> +Remove any lightweight guard regions which exist in the range specified =
by
> +.I addr
> +and
> +.IR size .
> +.IP
> +All mappings in the range other than lightweight guard regions are left =
in place
> +(including mlock'd mappings). The operation is, however, only valid for =
writable
> +anonymous private mappings, returning an
> +.B EINVAL
> +error otherwise.
> +.IP
> +When lightweight guard regions are removed, they act as empty regions of=
 the
> +containing mapping. Since only writable anonymous private mappings are
> +supported, they therefore become zero-fill-on-demand pages.
> +.IP
> +If any transparent huge pages are encountered in the operation, they are=
 left in
> +place.
>  .SH RETURN VALUE
>  On success,
>  .BR madvise ()
> @@ -787,6 +860,14 @@ or
>  or secret memory regions created using
>  .BR memfd_secret(2) .
>  .TP
> +.B EINVAL
> +.I advice
> +is
> +.B MADV_GUARD_INSTALL
> +or
> +.BR MADV_GUARD_REMOVE ,
> +but the specified address range contains an unsupported mapping.
> +.TP
>  .B EIO
>  (for
>  .BR MADV_WILLNEED )
> --=20
> 2.47.1
>=20

--=20
<https://www.alejandro-colomar.es/>

--erqfvu75ahekda4q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmdJtPUACgkQnowa+77/
2zIndQ/9ErjqhU38T69q7CVv+39FbZnEcAWNjq52JQKJReaeYtSLOSXn7QLn70Wd
qCey/7mUZzG1NmZMJwziFcIBnRdjESb1bOa3tHI2J44nQ6mTuvd2IwJQtDBnNtee
O80QvlV8BaCdUqKSENEnMVUfCtykWjAkuINZ5CPw7fbLlpW8/qWAIe1LoWoOLX7b
PgrmDt6MaO28B2vxnsp7nb5CzKJG1svdDJy1a/YSpbiEvDbKMbNv0gA1A0db5bnF
C+wQbJ8VO+SLaieJP3t5d0bQGS6Lqwq4xWT435KMOLWjqkLZMYfvg4y/AA1oeADh
R7r/SV77Pi15YBlu5dlJYdEgxhCNdZPqG0rr5NtyPi+fJeX6+m0i8MDEb+D8oQuz
C9BhG1bmK/Z/Wca7nSr8gveHNefAdYhoabLdwbU5zvBRqGNBZdh01l4/Z/UfCpRe
ehE8+p8OQuM0ksyz7SSBj8xhRAtSazIut1vZ/XkQ89M6oOnWJ8i8csLA0q5zSdWe
e0nWdpgimBjpM9Bz4bglCIcN78pcMQzmqoNfUsUPorGqQ0wgHhdMRv5U2NXOJmcY
HxLkg6y8to/HUWAqLs1wkHMgeoIWcvppVB/MsGwVDhLff37CpRco97ds6C1XhIze
iQQoXnJlqdh6E+TXStwsHFviO+RlHXWXJzSFvCTObnhl8/X8iIM=
=DnBM
-----END PGP SIGNATURE-----

--erqfvu75ahekda4q--

