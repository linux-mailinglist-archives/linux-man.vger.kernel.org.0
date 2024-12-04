Return-Path: <linux-man+bounces-2103-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 677DC9E4656
	for <lists+linux-man@lfdr.de>; Wed,  4 Dec 2024 22:13:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 22DBDB2C7AA
	for <lists+linux-man@lfdr.de>; Wed,  4 Dec 2024 20:43:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A188018F2EA;
	Wed,  4 Dec 2024 20:43:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t32uNqOF"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E8AE18F2DD
	for <linux-man@vger.kernel.org>; Wed,  4 Dec 2024 20:43:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733345009; cv=none; b=iYVP55DwXPBtNKaSA0n+6zayJ6CBq2oOczJ/cPQNgcDdips8I7nwLQo5BDTgV9rSv5JI+Gk1KO+9ZY7QiKlDICAeK6wQiSE+5vgQ6dj74Nt8YKbsbXOmvFBoVylF4fB797qh0bF1nWgZRD7J0pykOWG8qQuaGi+KwWzIV2Y8KhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733345009; c=relaxed/simple;
	bh=XR5muXRsoiKL66/IaC2dfHb2T6zawUsttrsyRerIvSY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CjyCurlBbrc4+VcOd9uyqQnOje2MA8IU35S25RvKy3mF2o9YXK6OTonMhi9sHR8gXsaILmtbCC5NG4fScJ8laQhgXtBNWhJfxCJNj+iF7idul4hHKJ15JF4WwnmKykxevBBLhw2Ex22q/u8qXODDCBL7lWFHQ4P+mUrPJ5e32ck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t32uNqOF; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3C9E3C4CECD;
	Wed,  4 Dec 2024 20:43:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733345008;
	bh=XR5muXRsoiKL66/IaC2dfHb2T6zawUsttrsyRerIvSY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=t32uNqOFTtw6qocbjbN8Pxuw5DAuxok0WzkUp6HusWphwdmMPE8wtr8F53WDc6DUe
	 Iihafoeom05n6Ycm8fuAyVMJq3QV6WoHwcsBuisrujWyGdcEk5leALVzE2+YTO3xMq
	 tKSRByVuJbWgmk+vBHVqSSUpuYSQvQRSBGxJIc/WlpvzAhS+FmBY48Ffwjliv5EjgA
	 WDDLw0rmyM/82zpAn5WEmpkqO1oMO/uAs6thx7ZyjzvUlsiSV00fGatgHCqy0wcX3T
	 3/EcfpknCihRPexV6Jyy0hUx6Vd+Vf9RFY2IFV4QG6mVXZ2dFu/xNwedmcLcq6msiv
	 8PSp/sl9UKHoQ==
Date: Wed, 4 Dec 2024 21:43:25 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
Cc: linux-man@vger.kernel.org, Suren Baghdasaryan <surenb@google.com>,
	"Liam R . Howlett" <Liam.Howlett@oracle.com>,
	Matthew Wilcox <willy@infradead.org>,
	Vlastimil Babka <vbabka@suse.cz>, Jann Horn <jannh@google.com>,
	linux-mm@kvack.org
Subject: Re: [PATCH man-pages v3] madvise.2: add MADV_GUARD_INSTALL,
 MADV_GUARD_REMOVE description
Message-ID: <20241204204325.duakx2b2x6d5ci7s@devuan>
References: <20241202165829.72121-1-lorenzo.stoakes@oracle.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yjqig6nxssy37vh4"
Content-Disposition: inline
In-Reply-To: <20241202165829.72121-1-lorenzo.stoakes@oracle.com>


--yjqig6nxssy37vh4
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH man-pages v3] madvise.2: add MADV_GUARD_INSTALL,
 MADV_GUARD_REMOVE description
MIME-Version: 1.0

Hi Lorenzo,

On Mon, Dec 02, 2024 at 04:58:29PM +0000, Lorenzo Stoakes wrote:
> Lightweight guard region support has been added to Linux 6.13, which adds
> MADV_GUARD_INSTALL and MADV_GUARD_REMOVE flags to the madvise() system
> call. Therefore, update the manpage for madvise() and describe these
> operations.
>=20
> Signed-off-by: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>

Thanks for the patch!  A few minor comments below.

> ---
> v3:
> * Don't describe SIGSEGV as a fatal signal as per Jann.
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
>  man/man2/madvise.2 | 93 ++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 93 insertions(+)
>=20
> diff --git a/man/man2/madvise.2 b/man/man2/madvise.2
> index 4f2210ee2..4cb5e7302 100644
> --- a/man/man2/madvise.2
> +++ b/man/man2/madvise.2
> @@ -676,6 +676,91 @@ or secret memory regions created using
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
> +causing any read or write in the range to result in a
> +.B SIGSEGV
> +signal being raised.
> +.IP
> +If the region maps memory pages they will be cleared as part of the oper=
ation,
> +though if
> +.B MADV_GUARD_INSTALL
> +is applied to regions containing pre-existing lightweight guard regions,
> +they are left in place.
> +.IP
> +This operation is only supported for writable anonymous private mappings=
 which
> +have not been mlock'd.
> +An
> +.B EINVAL
> +error is returned if it is attempted on any other kind of mapping.
> +.IP
> +This operation is more efficient than mapping a new region of memory
> +.BR PROT_NONE ,
> +as it does not require the establishment of new mappings,
> +instead regions of an existing mapping simply have their page tables
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
> +.BR mlock ()

We should specify the chapter in the manual: (2)

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
> +.BR mremap (),

Same here.

> +lightweight guard regions are moved with it.
> +.IP
> +Lightweight guard regions are removed when unmapped,
> +on process teardown,
> +or when the
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
> +(including mlock'd mappings).
> +The operation is,
> +however,
> +only valid for writable anonymous private mappings,

Wouldn't it be better to say "valid only" instead of "only valid"?

(Non-native speaker here, though.)

Have a lovely night!
Alex

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
> @@ -787,6 +872,14 @@ or
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

--yjqig6nxssy37vh4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmdQvuwACgkQnowa+77/
2zKLSA/9G2cUNwzbArc7HOxWxnsWYMFZfEa3noxMAksVsAtuBIywCVNNAeBj2QBh
ohmFPRFGnV6jJflvuCOVCupAmRK5WxucKkQHJGyQfGy+OaQ33kTYzjijqyBZSTqX
dX7GXgOIiYHC/oxXy1fsNE+PWDl8wsTiSlXNMJ56xedzEPLFkuAI//1I9lkPYaB+
gRGkFOD9+TB/6/g5FjmfQAmEeeIMtVl+TviJKBCvzHiKm9EymVRU/FxORWBJzPvS
+BRlTe7A461tdIA4fCgKkQu7Q/uZgLmXS6Mgu31RiOee5ENSA9OR6AoPxZhXqiKo
h9BEBRRuc3k0+H3sf0T22ZU4QF5accxBgH+s+T+/kdFglg81KXYnnoIW5Cy28wcT
SfP8IAksdJhhnlH6XyTPAXBaNs6GtZ4MKsSieN/JKyyR+UeW6mW5tg9/k70TNbpg
fVEYAHw1WFzMWWZtNZrZB503QI0rIyYXu/xQ8mklLs/2Oc9IQPKU9VNhYGCEo99D
RIST5ulO8iM4lGltbvXFQkO4pxy75KKu2kzl//7nQ+B0KQf7FSTGw+zk6Ev25Gf6
iNfgrhOzCQHdWw0TrU46YE8lhX+yjL7soW8NGzW+ZEOevaiRMIv7IfqBQ01eoo01
kByhZACWwqzcS8hPn4lbkoS3bEpIWuzZLG3S9PzaJR2wUmG9Yhk=
=bpqb
-----END PGP SIGNATURE-----

--yjqig6nxssy37vh4--

