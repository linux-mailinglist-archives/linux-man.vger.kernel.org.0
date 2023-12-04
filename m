Return-Path: <linux-man+bounces-210-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E7F688032A0
	for <lists+linux-man@lfdr.de>; Mon,  4 Dec 2023 13:29:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 91A791F20F9E
	for <lists+linux-man@lfdr.de>; Mon,  4 Dec 2023 12:29:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 889622377E;
	Mon,  4 Dec 2023 12:29:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gb4ZWJ43"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B3BA22EEE
	for <linux-man@vger.kernel.org>; Mon,  4 Dec 2023 12:29:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 32F2FC433C8;
	Mon,  4 Dec 2023 12:29:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701692969;
	bh=qDUYqmx6JGiuOkaZ2hTEGhfcO2GbtzsCWJw8V5o1L9o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gb4ZWJ43/+ypD7K3S4ylcXYlqoBm9iqmFfk88jkipGBvRJ9StflCjUIjzkVusoU59
	 0Sah5OxbQYL3HdIhprOriNsjyoIpqd7/kS4r7Vs+5q4VQ0Za8hDzf6qbPidP+a6Aku
	 rtrfnzeLD6HpEO7SqDz7DlwUaannmANBzGLDtntkNBk6XpPAc3S00PR62twwrsIBTu
	 SzllOxX6xLium343w4ApaYj7Pq7BUu5hKLfVQ+SLFeXCL5z50y+EQCoeovh3MJd8bi
	 S0mn5DOdpeNRou6k8WLiSID5BB57/3ggF3/sa7o/DwCDe1ODcROf1OD3lZ61Fto9sb
	 6gQKfyNEq5i3Q==
Date: Mon, 4 Dec 2023 13:29:26 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Yang Xu <xuyang2018.jy@fujitsu.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 1/2] swapon.2: Adjust decreased value under
 CONFIG_MIGRATION
Message-ID: <ZW3GJg_gmSkIVfQL@debian>
References: <20231204122431.68106-1-xuyang2018.jy@fujitsu.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="RiNLUvfMdIAt2aX0"
Content-Disposition: inline
In-Reply-To: <20231204122431.68106-1-xuyang2018.jy@fujitsu.com>


--RiNLUvfMdIAt2aX0
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 4 Dec 2023 13:29:26 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Yang Xu <xuyang2018.jy@fujitsu.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 1/2] swapon.2: Adjust decreased value under
 CONFIG_MIGRATION

Hi Yang,

On Mon, Dec 04, 2023 at 07:24:30AM -0500, Yang Xu wrote:
> After kernel 5.19[1], the limit is decreased by 3.
>=20
> [1]https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/com=
mit/include/linux/swap.h?id=3D6c287605f
>=20
> Signed-off-by: Yang Xu <xuyang2018.jy@fujitsu.com>
> ---
>  man2/swapon.2 | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>=20
> diff --git a/man2/swapon.2 b/man2/swapon.2
> index c0e61cbc6..ee270cea1 100644
> --- a/man2/swapon.2
> +++ b/man2/swapon.2
> @@ -164,7 +164,8 @@ Before Linux 2.4.10,
>  .B MAX_SWAPFILES
>  has the value 8;
>  since Linux 2.4.10, it has the value 32.
> -Since Linux 2.6.18, the limit is decreased by 2 (thus: 30)
> +Since Linux 2.6.18, the limit is decreased by 2 (Since Linux 5.19.0,
> +the limit is decreased by 3)
>  if the kernel is built with the
>  .B CONFIG_MIGRATION
>  option
> @@ -172,6 +173,7 @@ option
>  .BR mbind (2)
>  and
>  .BR migrate_pages (2)).
> +

There should be no blank lines in man(7) source.  That would trigger a
warning.  See man-pages(7):

   Formatting conventions (general)
     Paragraphs  should  be separated by suitable markers (usually ei=E2=80=
=90
     ther .P or .IP).  Do not separate paragraphs using  blank  lines,
     as this results in poor rendering in some output formats (such as
     PostScript and PDF).

Thanks,
Alex

>  Since Linux 2.6.32, the limit is further decreased by 1
>  if the kernel is built with the
>  .B CONFIG_MEMORY_FAILURE
> --=20
> 2.27.0
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--RiNLUvfMdIAt2aX0
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVtxiYACgkQnowa+77/
2zLmkxAAmQdw17NuCVsPalxx25ZIPG6OuTCf9JHHBxGwJIcRkUmRQkDmhWi7WiGq
P7invCGFB9+cLi9j6kfwmSfWbGzENzbGphXEVrjH4Tn4YXwS7stA3ZTz/8IsUCcN
17+Nwsd48Ym6DsfN/ZjOk7qIw/MrYVBb4NqqTvW6Yfob8bMvXcYdxZMEvuOGaBGI
BqorNCwaCfAoJYGSDzFZ1J8ssaZSb62j6+lZMXt15uAfPrfxHjg5hkVmqQSmHRZI
sz+Hkpj+2CVF/upjDzAVPEGb9e8v+We/XmfaSaxmyMz/rMfadyWaIrxRXG/UvldB
iDbJEQPMPjNBj/YTI10LkK2jjsc4Z9kD3Rg4jQG1L1s/A/8Ko5zYfrh1nDKylyyE
1BFcRU04/NOwFTCgj8OQof/pG8X0rThwhKctoLIkNkcRgUusKa5sIqg4vCzn7gG6
UdGqSZDv3VVvR1MF+JPhprVqKoy0JubaaMaFFZNkKz6K11owqxe6JzGgsoFRJD4b
brOXu8IOYew1QmbniVwVTz7PSgEhD1MnMTAUHv/8mDPhTwR1dbeoKnNj1mkPQc+k
WzVqG0iq/Hkciz06yaIBwRaPTLaNMOP5Z7ho78XfNZSICMkV/ynyvoO+wx/HwVh/
lw6vwiUnMz5CsFRR/0sryWOBR89hMJcI/VbUJMHRC9K72fx6RDk=
=nXig
-----END PGP SIGNATURE-----

--RiNLUvfMdIAt2aX0--

