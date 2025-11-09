Return-Path: <linux-man+bounces-4262-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A4FBC43C3A
	for <lists+linux-man@lfdr.de>; Sun, 09 Nov 2025 12:00:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id DEE3E4E16F6
	for <lists+linux-man@lfdr.de>; Sun,  9 Nov 2025 11:00:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C66B423AE87;
	Sun,  9 Nov 2025 11:00:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CUunqBc+"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AFDA191
	for <linux-man@vger.kernel.org>; Sun,  9 Nov 2025 11:00:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762686046; cv=none; b=uhkdLNGTbGy82egDvwtGZgv+E8HP08Kx28gFAKwEp1wTTrR9H4YjW0TPr2SPlCyLEJf/aby9XtSDK8R1grDAs620fN5khNr7VM4OzTw0fMDyJ/fuVBBOP5EfOlOeTQQLJzlB5/Bf+8mj7Qg6tirBshHzMts2lo4U0eQFQ0b2UAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762686046; c=relaxed/simple;
	bh=Tt9FHnMldfNm8u20VDCdPJdoOFjTE9PeHNqvFnVLp6U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LwNkjJsXAIcXh+vRMd8M7s/+u+3EwK3GGjYxsScqWVUS7leVw+2f8L+X+O+QbEdiXn11LVGR27KKdngPc8JVUhg/LrxxemtiSYo10gvDtzfNLFHgqTOaiYNMTL1hdSFZA80OorHoYgSZ7+hePdA4QvVxfiL7EIwdwXHvCo4yJ3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CUunqBc+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E890C113D0;
	Sun,  9 Nov 2025 11:00:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762686046;
	bh=Tt9FHnMldfNm8u20VDCdPJdoOFjTE9PeHNqvFnVLp6U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CUunqBc+CjJn/DpTHEbVsuKc7nv988Dp/sGJi4gYdSFURdkclrghoAqhGlQDcNakk
	 KK9LMXCCSVUSQ6levtBw6r0vZCik8aZHFhiF5lG1nf4m+8PH6Vm5v2VydeQzchftM1
	 TvQEdmgdRlL3E6pYF+yJbFCt6daqIrhkw5/VRRo6MnMRzRwuWZvwl7/w98poS92/9D
	 zrVRTeL28F+0IgcUq29k1DnmXXzOUlERmNhC1X0w6rRvvkfO+huR54plMEh7fVaFFZ
	 6BN9HmUWVEkDG5qZiVUqNn7IsQRn5yKM7hwWct6TjLY5abd/h+MEMc4jaNReG7MmPf
	 3nyOtqDJO0TuA==
Date: Sun, 9 Nov 2025 12:00:42 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Mingye Wang <arthur200126@gmail.com>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH] man/man2/swapon2: describe SWAP_FLAG_DISCARD_{ONCE,PAGES}
Message-ID: <5z4d6w5uoljjji23k3dgjusdkcykkgqgvj7zravrd4jas7ltkj@n4wuwwx2cb46>
References: <20251109030322.13538-1-arthur200126@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="pvxt5asjf3enuqvm"
Content-Disposition: inline
In-Reply-To: <20251109030322.13538-1-arthur200126@gmail.com>


--pvxt5asjf3enuqvm
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Mingye Wang <arthur200126@gmail.com>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH] man/man2/swapon2: describe SWAP_FLAG_DISCARD_{ONCE,PAGES}
Message-ID: <5z4d6w5uoljjji23k3dgjusdkcykkgqgvj7zravrd4jas7ltkj@n4wuwwx2cb46>
References: <20251109030322.13538-1-arthur200126@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20251109030322.13538-1-arthur200126@gmail.com>

Hi Mingye,

On Sun, Nov 09, 2025 at 11:02:49AM +0800, Mingye Wang wrote:
> There has been a TODO to describe these two new flags for a long
> time now. This commit finishes it.

This commit should remove the TODO, right?

> ---
>  man/man2/swapon.2 | 26 ++++++++++++++++++++++++++
>  1 file changed, 26 insertions(+)
>=20
> diff --git a/man/man2/swapon.2 b/man/man2/swapon.2
> index df5e8d8..1d2db47 100644
> --- a/man/man2/swapon.2
> +++ b/man/man2/swapon.2
> @@ -53,6 +53,32 @@ argument, freed swap pages will be discarded before th=
ey are reused,
>  if the swap device supports the discard or trim operation.
>  (This may improve performance on some Solid State Devices,
>  but often it does not.)
> +.P
> +(Linux 3.11+) If either of the

Please use "Since Linux 3.11,", for consistency with other pages.

> +.B SWAP_FLAG_DISCARD_ONCE
> +or
> +.B SWAP_FLAG_DISCARD_PAGES
> +flags are specified in the
> +.BR swapon ()
> +.I swapflags
> +along with
> +.BR SWAP_FLAG_DISCARD ,
> +the discard of swap pages is controlled as follows:
> +.RS 4n
> +.IP SWAP_FLAG_DISCARD_ONCE 4n

This should use '.TP'.  See man-pages(7):

   Lists
     There are different kinds of lists:

     Tagged paragraphs
            These  are  used for a list of tags and their descriptions.
            When the tags are constants (either macros or numbers) they
            are in bold.  Use the .TP macro.

            An example is this "Tagged paragraphs"  subsection  is  it=E2=
=80=90
            self.

(You can look at the source code of man-pages(7) to see an example.)


Have a lovely day!
Alex

> +\- Discard only occurs when the swap area is first enabled
> +with
> +.BR swapon () .
> +Minimum overhead is incurred for subsequent swap page frees.
> +.IP SWAP_FLAG_DISCARD_PAGES 4n
> +\- Discard occurs on every swap page free, asynchronously.
> +This may incur significant overhead.
> +.RE
> +.P
> +Setting both flags results in the behavior of
> +.BR SWAP_FLAG_DISCARD_ONCE .
> +Setting neither results in both types of discard being performed.
> +.P
>  See also NOTES.
>  .P
>  These functions may be used only by a privileged process (one having the
> --=20
> 2.51.0
>=20
>=20

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--pvxt5asjf3enuqvm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmkQdFMACgkQ64mZXMKQ
wqmiKw//c2t7w14d4IkCTyhcstDsBnShd3jmI1pzolGFuhBzCQ8rfudU82pcGkrU
+eZejXvu4bGUoD6V0t7jF7Fqlr4zRJaKpoDbr1/ZQpm1WhuvROCVNEeHd/L0J5pN
yhfYDQ9OIx7MSoNgYoUg2e/oKirN6rC9jc8tx4diNPEhUPSJL7ONqKHNKx2Shsb0
CBA6q+3RbP/W9zCxnv5UTe/Hsl6QoUWXuPMG12xDsYM21LaHlikENdVGJDwOwz90
tH7QjYdoDE2OIY3DqvL9vRbiYTKYZPeVwbVoABrT3v3LnCuMuAEcURcsFghlnUGM
6ZkUyR0oN33i5BGMVpejX9s/UWKaBvQbkMrCBTS59nJNR9U270cmiRRSSLNCRFIW
xbsp1L/ZYBTw4lbHdrnevenMlLqMPRM/tYsgNXK/JO8qtlTX+o4BZ58HoeQuUiXF
meErYIkal6ueCV5rEdpnIfNG5o35/pvGY+gl1sooSSJrRhaIDvknHzBGZ0JonLSb
EjjWKvhrTZTwaWDXdhz25WkcTJ5jCuyNpmD1fYaXXHcURoaW0qwIJv3t6cEDysIk
ir3VfnOaic9KPaHO4G4UOvnq46zMqdOEUG2yjz8t0mwY4QvZ4F6DkA7b5XD9ttoL
RXmPjggw+Jg1iAG8Psl/3QOzIfL5pd+MKWJnMzXngiNbns9Z5nY=
=7/Xu
-----END PGP SIGNATURE-----

--pvxt5asjf3enuqvm--

