Return-Path: <linux-man+bounces-2116-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E5DCC9E5544
	for <lists+linux-man@lfdr.de>; Thu,  5 Dec 2024 13:20:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6C9211884042
	for <lists+linux-man@lfdr.de>; Thu,  5 Dec 2024 12:20:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE9D7217F41;
	Thu,  5 Dec 2024 12:20:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DWDe/r8m"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C23E214A73
	for <linux-man@vger.kernel.org>; Thu,  5 Dec 2024 12:20:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733401241; cv=none; b=fQ4PbZdWd3J2FGCJV7Lh6IkE/cYPbVHtXL1TEhd8zchdYeDvIqqdjv2hJckZV62Imj9sWbSjqs9zYUfz2RlGGoCJy1QXaASPYRrEBL7KWaFuemv/mTjjrxZHb61kwrPn5D3PHHNxlu8ini1qNcRsvCg9ofaw6YSQn+GYn/a3riA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733401241; c=relaxed/simple;
	bh=y34b6wYkBZZ5f99sqZ7IgaZjYWtssYY5QToz/7RxTao=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=N/p5o0NAfOerRv9UE1uDmDOnFTv7j4FZ71YnyYrUZNs/7pd6wihkp4CXisPFQEf+xnG9nt9aLVuSs04iRSS1TUgmz8QuFqHtSN7sArA7R/wyNEmxmZHSEMhR5I6VRcj4exK9D7NxiuYcaql0Yi1BoJs3l5ZTCJ/8j8hK6cExDIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DWDe/r8m; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4F432C4CEDC;
	Thu,  5 Dec 2024 12:20:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733401241;
	bh=y34b6wYkBZZ5f99sqZ7IgaZjYWtssYY5QToz/7RxTao=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DWDe/r8mQPxAnIDvWBLLtGrT6TTRxaMeXtDKcHHaC3kSyBISSosGTqN9F7Z67RJ1e
	 DjLxEBzFcxK6dyTVMX/UJMyDybVrnzzaWels88O/979GkPonvNl/Bs5DsBZ+CQTkO8
	 gFaz06M1atrds5PmMArmnWfUmM6nTd8S5Er5jOyDJnj997wW7101zloOEuz6NpmxKh
	 9Gnrys8Ds4h02eYW/gnQp0hGtL426JVQa8NCzQV3RDBIpbiMOE0IIaGiOVUZhUIsO0
	 Sq0wujSN8P7ZtaeqSKmnJCKC9O6gRQfxQG6Dh90IBhCR+hwzp/opYprp3aOmMxW7xI
	 ZjZbbZ9TX1nEA==
Date: Thu, 5 Dec 2024 13:20:37 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
Cc: linux-man@vger.kernel.org, Suren Baghdasaryan <surenb@google.com>,
	"Liam R . Howlett" <Liam.Howlett@oracle.com>,
	Matthew Wilcox <willy@infradead.org>,
	Vlastimil Babka <vbabka@suse.cz>, Jann Horn <jannh@google.com>,
	linux-mm@kvack.org
Subject: Re: [PATCH man-pages v4] madvise.2: add MADV_GUARD_INSTALL,
 MADV_GUARD_REMOVE description
Message-ID: <20241205122037.7u2lbjix6mawoepr@devuan>
References: <20241205104125.67518-1-lorenzo.stoakes@oracle.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wxud6xyyvr3usroj"
Content-Disposition: inline
In-Reply-To: <20241205104125.67518-1-lorenzo.stoakes@oracle.com>


--wxud6xyyvr3usroj
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH man-pages v4] madvise.2: add MADV_GUARD_INSTALL,
 MADV_GUARD_REMOVE description
MIME-Version: 1.0

Hi Lorenzo, Jann,

> Subject: Re: [PATCH man-pages v4] madvise.2: add MADV_GUARD_INSTALL, MADV=
_GUARD_REMOVE description

We use uppercase after the prefix, so s/add/Add/.

On Thu, Dec 05, 2024 at 10:41:25AM +0000, Lorenzo Stoakes wrote:
> Lightweight guard region support has been added to Linux 6.13, which adds
> MADV_GUARD_INSTALL and MADV_GUARD_REMOVE flags to the madvise() system
> call. Therefore, update the manpage for madvise() and describe these

The right amount of inter-sentence space is two.  See this:
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/CONTRIB=
UTING.d/patches/description?id=3Dbcf7d00fa4c7ce270f07d6e347c01b1f1e37580f>
<https://web.archive.org/web/20171217060354/http://www.heracliteanriver.com=
/?p=3D324>

> operations.
>=20
> Reviewed-by: Jann Horn <jannh@google.com>

Thanks for the review!

> Signed-off-by: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>

Thanks for the patch!  I've applied it, with some minor tweaks.  See
comments below.
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Dbb405ee3f6039226267fb1c6d2cb1fbb18d835bf>

Here's the diff that I applied when amending your patch:

diff --git i/man/man2/madvise.2 w/man/man2/madvise.2
index adb372424..fa24f6bf6 100644
--- i/man/man2/madvise.2
+++ w/man/man2/madvise.2
@@ -678,7 +678,8 @@ .SS Linux-specific advice values
 the process can be killed at any moment when the system runs out of memory.
 .TP
 .BR MADV_GUARD_INSTALL " (since Linux 6.13)"
-Install a lightweight guard region into the range specified by
+Install a lightweight guard region
+into the range specified by
 .I addr
 and
 .IR size ,
@@ -686,22 +687,27 @@ .SS Linux-specific advice values
 .B SIGSEGV
 signal being raised.
 .IP
-If the region maps memory pages they will be cleared as part of the operat=
ion,
+If the region maps memory pages
+they will be cleared as part of the operation,
 though if
 .B MADV_GUARD_INSTALL
-is applied to regions containing pre-existing lightweight guard regions,
+is applied to regions
+containing pre-existing lightweight guard regions,
 they are left in place.
 .IP
-This operation is only supported for writable anonymous private mappings w=
hich
-have not been mlock'd.
+This operation is supported
+only for writable anonymous private mappings
+which have not been mlock'd.
 An
 .B EINVAL
 error is returned if it is attempted on any other kind of mapping.
 .IP
 This operation is more efficient than mapping a new region of memory
 .BR PROT_NONE ,
-as it does not require the establishment of new mappings,
-instead regions of an existing mapping simply have their page tables
+as it does not require the establishment of new mappings.
+Instead,
+regions of an existing mapping
+simply have their page tables
 manipulated to establish the desired behavior.
 No additional memory is used.
 .IP
@@ -740,12 +746,15 @@ .SS Linux-specific advice values
 operation is applied to them.
 .TP
 .BR MADV_GUARD_REMOVE " (since Linux 6.13)"
-Remove any lightweight guard regions which exist in the range specified by
+Remove any lightweight guard regions
+which exist in the range specified by
 .I addr
 and
 .IR size .
 .IP
-All mappings in the range other than lightweight guard regions are left in=
 place
+All mappings in the range
+other than lightweight guard regions
+are left in place
 (including mlock'd mappings).
 The operation is,
 however,

> ---
> v4:
> * Reference function chapters as per Alejandro.
> * Minor rewording as per Alejandro.
>=20
> v3:
> * Don't describe SIGSEGV as a fatal signal as per Jann.
> https://lore.kernel.org/all/20241202165829.72121-1-lorenzo.stoakes@oracle=
=2Ecom
>=20
> v2:
> * Updated to use semantic newlines as suggested by Alejandro.

I've broken lines a little bit more, even though they were correct, just
for having shorter lines.

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
> index 4f2210ee2..7d682fa40 100644
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

I missed this before.  It was the same misplacement of only.  :)

Have a lovely day!
Alex


--=20
<https://www.alejandro-colomar.es/>

--wxud6xyyvr3usroj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmdRmpQACgkQnowa+77/
2zJY+xAAieljvP/aSshuj1XcPWP/V8ZMZNaHtrGNpA+kruAcE74fkTOyTOwSgneA
oQNL6J17uUjvaIKrWl0UYCBkBKGRbyDaCi53Npo4QGo0ZPdyVUAZWAXr6rz18iYu
dY0XMvojnuvqyxYJ8qDcMNLcU4F3Xhi6zYM2npEDdR3/9gZ4/B7AcxJLo7QmZM1q
oafNRJxYvORcBxENz0iEl30Zp1afIvYPcDZ8MrP+yLcSIrmz0GroE1HwMYfd3+ki
9xdXEB1pmZhy/3BXWmy73qOjOAUET68p7VQVBVQ5tXc1VVtNL66klL8bY8nyqvvI
jKaT4CYtM/ZCWtiHNigbQXIhq5pXavlW0avqGydVwzbcDBTXxJAauRooVSBpMED0
Ic0LYVRMcgon2Wmg2A782e8NLibR4XtCUJM4KJzhF8CkT4psoGJ1iktcS4HipzsS
EVFma7VWdSuMVreKzwxeWdHE3txRTxfQzHV7/S8alutSXHaJ+tovkw/ILSVfFNxO
J89YyqNt8qp8Ez9LBb/Nu2l+dcYxNsZi6szKsIgBF8/+xB5Of18H9AIRORmF1Tus
3Ul5/LwG5N/MQXxYDYw4xUr59/oOwqDNbLMBiRZ+RSgsTDR1Ps0UVy5190lc9rFT
cW7P8T2o5uyYUc8uhlRC1/hv3l+fotaWxFBB6gkJ1XgWyLyWiCM=
=cPIw
-----END PGP SIGNATURE-----

--wxud6xyyvr3usroj--

