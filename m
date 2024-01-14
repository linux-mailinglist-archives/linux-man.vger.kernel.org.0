Return-Path: <linux-man+bounces-362-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EBF4E82D1C9
	for <lists+linux-man@lfdr.de>; Sun, 14 Jan 2024 18:43:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7D10F1C20D40
	for <lists+linux-man@lfdr.de>; Sun, 14 Jan 2024 17:43:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30B7CEAED;
	Sun, 14 Jan 2024 17:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JdnhtUZk"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F192F14F86
	for <linux-man@vger.kernel.org>; Sun, 14 Jan 2024 17:43:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 50A07C433F1;
	Sun, 14 Jan 2024 17:43:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705254202;
	bh=yApUr+cMJmz773MbqBY6KnLyeS9RlE71eUO7bZTzn/s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JdnhtUZkx6JQthjxSzMEgZNmL4Xqt+EWUMY0FfrGXo7oXULBtB3btV4CaLudv/7co
	 zYXg3nWoLbF4FGGY4zu96nnhomOQ5KtTh4o1Pj4ZtIKGR+PycXEKT0X7Fax466NjaE
	 JQ8SZvHvxKdWmgC5Xi+jDl7FJBgI3EHeVssslqKfNYjVRZTP5GpK1Uv0nYyHTvvN7X
	 jDxoZHcaW9GeLBjaPTAoPdVs2/lzZ8lPegl4KVXkFvPPnF8CGKiXKcTxq2hegC79Ps
	 nxLYtrU/vefIm5t7I0GnggQwYVwbaupdp3ToRYhErHDxRX6RtCr75B6VnoqdjNxNpA
	 Tm5JC5YPqAKrw==
Date: Sun, 14 Jan 2024 18:43:18 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man5/locale.5: Fix typo.
Message-ID: <ZaQdNtFuFdv-ac71@debian>
References: <20240114150016.axiqkaym77gmqjy2@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ZDHbNIhfHekmMWOV"
Content-Disposition: inline
In-Reply-To: <20240114150016.axiqkaym77gmqjy2@illithid>


--ZDHbNIhfHekmMWOV
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 14 Jan 2024 18:43:18 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man5/locale.5: Fix typo.

Hey Branden!

On Sun, Jan 14, 2024 at 09:00:16AM -0600, G. Branden Robinson wrote:
> ...that proved surprisingly tough to troubleshoot.
>=20
> I got the following output from my working copy.
>=20
> grotty:...:(man5/locale.5):32291: error: output above first line discarded
> grotty:...:(man5/locale.5):32291: error: output above first line discarded
> grotty:...:(man5/locale.5):32291: error: output above first line discarded
> grotty:...:(man5/locale.5):32291: error: output above first line discarded
> grotty:...:(man5/locale.5):32291: error: output above first line discarded
> grotty:...:(man5/locale.5):32291: error: output above first line discarded
> grotty:...:(man5/locale.5):32291: error: output above first line discarded
> grotty:...:(man5/locale.5):32291: error: output above first line discarded
> grotty:...:(man5/locale.5):32291: error: output above first line discarded
> grotty:...:(man5/locale.5):32292: error: output above first line discarded
> grotty:...:(man5/locale.5):32294: error: output above first line discarded
> grotty:...:(man5/locale.5):32294: error: output above first line discarded
> grotty:...:(man5/locale.5):32294: error: output above first line discarded
> grotty:...:(man5/locale.5):32294: error: output above first line discarded
> grotty:...:(man5/locale.5):32294: error: output above first line discarded
>=20
> `\r` is a perfectly legal *roff escape sequence, but one generally never
> sees it in man pages.  In the case, the input line in question was at
> the top of the "page" in continuous rendering mode, and so the attempt
> at a reverse vertical motion did indeed put the drawing position above
> the top of the page.
>=20
> grepping reveals no other occurrences of '\r' in the man-pages corpus.
>=20
> Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>

Patch applied.
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D4e5ba6c1c1b07eaf2324e7a3aaf7255b10dca878>

It's nice to read from you again.  ;-)

Have a lovely day,
Alex

> ---
>  man5/locale.5 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man5/locale.5 b/man5/locale.5
> index f7ecce7dc..fa2491eee 100644
> --- a/man5/locale.5
> +++ b/man5/locale.5
> @@ -506,7 +506,7 @@ .SS LC_COLLATE
>  .I reorder\-end
>  marks the end of the redefinition of a collation rule.
>  .TP
> -.I reorde\r-sections\-after
> +.I reorder\-sections\-after
>  followed by a script name to reorder listed scripts after.
>  .TP
>  .I reorder\-sections\-end
> --=20
> 2.30.2



--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--ZDHbNIhfHekmMWOV
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmWkHTYACgkQnowa+77/
2zIofA//atRfaC6ofBjZJun26stLVfxEWQ1CgTfykNM9Q1j7RyfDWZx/DnbAi1NC
eFoYLDLwvkurDFKPNA8IuGkkXJbQvfMocxvQKYkszwC1MzoWzxVoxGepqGFRpyID
xzfWwFW94jmGdmFicsEbraUTIlheBfZpXVkY27Of9aHq6fhxPU+Z4vtxrLU5Mfnq
/DIvG7wGpTvDhwxb+LsYbthIS8VCTk0FQ2miTkWoVyHA+UtqdtqkJbUkz4ARAf0z
3qsED0hI0jW7wjAyRNoFfZ5+m/KDzpR2rnfa58BBMhCgH3aNpErOvDxnt29sx8s8
f1l3gx3/eG8sIRWrACv6uNJmJDFpQJlIQn4rWT7SvZbhcNI3BKDvLcn/FaC28nvT
H9JpPGnXkgCYAbvPJkQdPy5ZihXyTpFaOgTmaitIV3L7cWbYkTuFr5flhYLj4iV8
YfgllOu9zEOG0iPOKCY4vRIlrsDntAAv/WT9I978kbX2HN0lCNn6R1ryWPTpxCTa
8U0+AKnwUedIqKVdDfXH3tjMTOWupRCWF1ENh7f3rODTtUEZRrybg2urrHLFThoo
bagxox4eQ3I2VkxYgJQ7PYE5ZzTmPC+kSxG/Hk3N+QIDXYp01pt74K0HjLwAtTkr
H0e7XIe6cE8UEcx9505qPBi0xTqI4lB3FqyqY8WH30EM8goGJxM=
=fs6P
-----END PGP SIGNATURE-----

--ZDHbNIhfHekmMWOV--

