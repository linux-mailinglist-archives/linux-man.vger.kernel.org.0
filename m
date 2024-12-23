Return-Path: <linux-man+bounces-2176-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 913EB9FB564
	for <lists+linux-man@lfdr.de>; Mon, 23 Dec 2024 21:38:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C16A01880877
	for <lists+linux-man@lfdr.de>; Mon, 23 Dec 2024 20:38:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C144B1BBBE3;
	Mon, 23 Dec 2024 20:38:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iB++Y5cb"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E6A11AE01E
	for <linux-man@vger.kernel.org>; Mon, 23 Dec 2024 20:38:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734986284; cv=none; b=f0TQ6hectD1QXA58BDHTwKlbGCaULwmdjkpMPsWq/9svOtRkKpfEw4FXlMZjnddzaXLlBLlQJVpDUd+uFp3SaDW6Oz0fH8kU7hHl/VUn4qYxhI04Iy5B/ny85QtfI7veJaBPqEhjuNWrSNeL5Nin+1Y2dUESVwKdOaQORPNs5Sc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734986284; c=relaxed/simple;
	bh=orjMZ9FWSr3bZVu8cL98b0JVbJdxXLv8JBThb29V/Hk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=C2cRSV+RWqmtHmYDpa4gtW0g+3xVAnrK982E6/qkI1fY8rLeyqI8tZk/dmkpICEbxT6fZa+D8Z+7i/5nBb5QU5SkHeH4UOq64PuplWN9191GCeZDmM+yzMvLjNdhMKtjz175/BqEiBZ1EbRUtGIXSAaDLKQ1PTEeO9xZ8sUqG2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iB++Y5cb; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 62A56C4CED3;
	Mon, 23 Dec 2024 20:38:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734986284;
	bh=orjMZ9FWSr3bZVu8cL98b0JVbJdxXLv8JBThb29V/Hk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iB++Y5cbQ1A8GJT87B9OkoJn603bniaOfpAt2hencJbPKNxcpVElwZe46cVx+nS0B
	 Z1LZeqZyhcIk+uZm+h7mrcFl+tgaNlOhG4hE+6SQuOvXvw1m7h0pIjGHusV4z5su6C
	 JqYu2wqenlGfvv5WQrkDmFuKZCXHGQM1TMUPdoaMPiluiGRedQAS1s/pugsjJkWFKf
	 mg+VmrnEl5YRVAbxYJUbQfMyPoX7kLLFrreN2s2KUejWi3s8JBgKCu9cwvA6VQubfm
	 YpHzj+Lhru3yYt7Yey2hZrr4Zku5Cs86JzWPfHQrlJoHZ2v8B85Dkb4py9TjMHfHri
	 HXfewTAlWlClA==
Date: Mon, 23 Dec 2024 21:38:00 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
Cc: linux-man@vger.kernel.org, Suren Baghdasaryan <surenb@google.com>, 
	"Liam R . Howlett" <Liam.Howlett@oracle.com>, Matthew Wilcox <willy@infradead.org>, 
	Vlastimil Babka <vbabka@suse.cz>, Jann Horn <jannh@google.com>, linux-mm@kvack.org
Subject: Re: [PATCH man-pages v5] madvise.2: add MADV_GUARD_INSTALL,
 MADV_GUARD_REMOVE description
Message-ID: <nha5xqqku4ruuo4ufuduu2wqhouzs6fjwy2ligu3qef3l7dzik@3n3plrml7ijm>
References: <20241206113418.14327-1-lorenzo.stoakes@oracle.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dosriwtkowp7omk4"
Content-Disposition: inline
In-Reply-To: <20241206113418.14327-1-lorenzo.stoakes@oracle.com>


--dosriwtkowp7omk4
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
Cc: linux-man@vger.kernel.org, Suren Baghdasaryan <surenb@google.com>, 
	"Liam R . Howlett" <Liam.Howlett@oracle.com>, Matthew Wilcox <willy@infradead.org>, 
	Vlastimil Babka <vbabka@suse.cz>, Jann Horn <jannh@google.com>, linux-mm@kvack.org
Subject: Re: [PATCH man-pages v5] madvise.2: add MADV_GUARD_INSTALL,
 MADV_GUARD_REMOVE description
References: <20241206113418.14327-1-lorenzo.stoakes@oracle.com>
MIME-Version: 1.0
In-Reply-To: <20241206113418.14327-1-lorenzo.stoakes@oracle.com>

Hi Lorenzo,

On Fri, Dec 06, 2024 at 11:34:18AM GMT, Lorenzo Stoakes wrote:
> Lightweight guard region support has been added to Linux 6.13, which adds
> MADV_GUARD_INSTALL and MADV_GUARD_REMOVE flags to the madvise() system
> call. Therefore, update the manpage for madvise() and describe these
> operations.
>=20
> Reviewed-by: Jann Horn <jannh@google.com>
> Reviewed-by: Vlastimil Babka <vbabka@suse.cz>
> Signed-off-by: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>

Thanks for the updated patch.  I had already applied v4:
<https://lore.kernel.org/all/20241205104125.67518-1-lorenzo.stoakes@oracle.=
com/T/#m7a891296e1ade7025569e3c3595b4f288135a7a9>

> ---
> v5:
> * Prefer 'replaced' to 'cleared' when discussing existing mappings that h=
ave
>   MADV_GUARD_INSTALL applied to them, as suggested by Vlastimil.
> * Included small changes Alejandro applied to patch.

So I have now rebased v5 on top of the current tip of the branch, which
results in a small patch containing just the wording fix:
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D28c42e01fc175e50e38d>

Have a lovely night!
Alex

>=20
> v4:
> * Reference function chapters as per Alejandro.
> * Minor rewording as per Alejandro.
> https://lore.kernel.org/all/20241205104125.67518-1-lorenzo.stoakes@oracle=
=2Ecom
>=20
> v3:
> * Don't describe SIGSEGV as a fatal signal as per Jann.
> https://lore.kernel.org/all/20241202165829.72121-1-lorenzo.stoakes@oracle=
=2Ecom
>=20
> v2:
> * Updated to use semantic newlines as suggested by Alejandro.
> * Avoided emboldening parens as suggested by Alejandro.
> * One very minor grammatical fix.
> https://lore.kernel.org/all/20241129155943.85215-1-lorenzo.stoakes@oracle=
=2Ecom
>=20
> v1:
> https://lore.kernel.org/all/20241129093205.8664-1-lorenzo.stoakes@oracle.=
com
>=20
>  man/man2/madvise.2 | 103 +++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 103 insertions(+)
>=20
> diff --git a/man/man2/madvise.2 b/man/man2/madvise.2
> index 0dd481d21..c9b4722db 100644
> --- a/man/man2/madvise.2
> +++ b/man/man2/madvise.2
> @@ -676,6 +676,101 @@ or secret memory regions created using
>  Note that with
>  .BR MADV_POPULATE_WRITE ,
>  the process can be killed at any moment when the system runs out of memo=
ry.
> +.TP
> +.BR MADV_GUARD_INSTALL " (since Linux 6.13)"
> +Install a lightweight guard region
> +into the range specified by
> +.I addr
> +and
> +.IR size ,
> +causing any read or write in the range to result in a
> +.B SIGSEGV
> +signal being raised.
> +.IP
> +If the region maps memory pages
> +those mappings will be replaced
> +as part of the operation,
> +though if
> +.B MADV_GUARD_INSTALL
> +is applied to regions
> +containing pre-existing lightweight guard regions,
> +they are left in place.
> +.IP
> +This operation is supported
> +only for writable anonymous private mappings
> +which have not been mlock'd.
> +An
> +.B EINVAL
> +error is returned if it is attempted on any other kind of mapping.
> +.IP
> +This operation is more efficient than mapping a new region of memory
> +.BR PROT_NONE ,
> +as it does not require the establishment of new mappings.
> +Instead,
> +regions of an existing mapping
> +simply have their page tables
> +manipulated to establish the desired behavior.
> +No additional memory is used.
> +.IP
> +Lightweight guard regions remain on fork
> +(except for any parts which have had
> +.B MADV_WIPEONFORK
> +applied to them),
> +and are not removed by
> +.BR MADV_DONTNEED ,
> +.BR MADV_FREE ,
> +.BR MADV_PAGEOUT ,
> +or
> +.BR MADV_COLD .
> +.IP
> +Attempting to
> +.BR mlock (2)
> +lightweight guard regions will fail,
> +as will
> +.B MADV_POPULATE_READ
> +or
> +.BR MADV_POPULATE_WRITE .
> +.IP
> +If the mapping has its attributes changed,
> +or is split or partially unmapped,
> +any existing guard regions remain in place
> +(except if they are unmapped).
> +.IP
> +If a mapping is moved using
> +.BR mremap (2),
> +lightweight guard regions are moved with it.
> +.IP
> +Lightweight guard regions are removed when unmapped,
> +on process teardown,
> +or when the
> +.B MADV_GUARD_REMOVE
> +operation is applied to them.
> +.TP
> +.BR MADV_GUARD_REMOVE " (since Linux 6.13)"
> +Remove any lightweight guard regions
> +which exist in the range specified by
> +.I addr
> +and
> +.IR size .
> +.IP
> +All mappings in the range
> +other than lightweight guard regions
> +are left in place
> +(including mlock'd mappings).
> +The operation is,
> +however,
> +valid only for writable anonymous private mappings,
> +returning an
> +.B EINVAL
> +error otherwise.
> +.IP
> +When lightweight guard regions are removed,
> +they act as empty regions of the containing mapping.
> +Since only writable anonymous private mappings are supported,
> +they therefore become zero-fill-on-demand pages.
> +.IP
> +If any transparent huge pages are encountered in the operation,
> +they are left in place.
>  .SH RETURN VALUE
>  On success,
>  .BR madvise ()
> @@ -794,6 +889,14 @@ or
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
> --
> 2.47.1

--=20
<https://www.alejandro-colomar.es/>

--dosriwtkowp7omk4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmdpyigACgkQnowa+77/
2zLLrw/6A3ku+cLYHfP8Jeqb8QeHlAZPu6/p40sluCGJE9/TtZLTFzash5wP7WTx
QEu3Z/tuvxOIPdz6dRSMRB2K1eW99pDfrSxDcKzuaZN9W7MD0DZh0wl8pbCp7HWA
l/+3zrVzbUjEW5VZXNrxXISFX5mp01qZlNyu7CU+92SgMn3V1nL4JNz/QiA1xk5j
1hHoSQV35i2WHO0KyhGpy6zT3VWozSCYAag82eNzDyD3r83kLzLNHSmb0b5+9f8R
iOBdgi4JWcBQIG340ZCEjFIcY1NnbAt5xOMo+5S0W8jS93cAcs+QJrYjyE2PkVPd
1PyvNmWNjAYfTcnwAuLRfHjMVp/M1HgHonZPCEVggUQj8EO2P7c3hcZUVCnRGIWB
eCdLrWqtjXnR3jt8nZfTWkiE8/y9N/GW1W8QLyXqEUWVHb8zuEFyw63BshC0ZEWO
tX7WEmGLO50FwPYapuZGS9kQuZXsr6lyNDDlu/4c9xHFGApJ9yuo3Uc1ZiQXlG1H
0SmIZozcnmH+mlUJL5nNzJf5LujGDT3+Ben1xYrbVkY208iXDoL6Juj5sxLPxqin
XAap4oPenVXZNLbZhpJJV0NFCf/tmEME6QN8ZK8hmxg5lI8VtAaEDAX96bQwb+DL
t1q7KbldHNV8iDijgfdCN66MEcobINefSVRbi1Z960fZ0+jsq/8=
=QC3M
-----END PGP SIGNATURE-----

--dosriwtkowp7omk4--

