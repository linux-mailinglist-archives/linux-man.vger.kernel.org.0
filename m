Return-Path: <linux-man+bounces-1739-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C1E2396733E
	for <lists+linux-man@lfdr.de>; Sat, 31 Aug 2024 22:48:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 69987280EE0
	for <lists+linux-man@lfdr.de>; Sat, 31 Aug 2024 20:48:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FA71152532;
	Sat, 31 Aug 2024 20:48:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z54t4CNa"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FCB6139D1B
	for <linux-man@vger.kernel.org>; Sat, 31 Aug 2024 20:48:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725137293; cv=none; b=EniHP/We7YP/tPDSXpC/+MmiZfsO7DvQ2KDy3y6O8h8yX2IbuDGt8x04EOvPoJwdM3iqYFP7mvrxk9cUM7AHUwj0j/U4c0Tw9TI/oQkr1TDCvtud/vlyMx/Oy4SN7zXnIWWCO4PNA3EeG8hxn2mGju1PTkG+7HQPe6ux2gJQ+So=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725137293; c=relaxed/simple;
	bh=gPHIWy/l310zVyQTJXA9pmQxwpPpUUqEznrDn+oH9KE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=roH5DnXvCYOnjRKc9O+n7wUy1Kw5g2RkP16yQ7IF5ZSYAtHzlgbDMn1uGAMgQLNxi7gN94PfiKrhtSMlbyrN2oeWs8q8EtUjDMYiSFFqpHY3pagGEqPALMz1/WJ616Eq7JqVWJLwjJh20r/XZgeNvGfreRc9KAMaajXp9gLCcE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z54t4CNa; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 21A8FC4CEC0;
	Sat, 31 Aug 2024 20:48:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725137292;
	bh=gPHIWy/l310zVyQTJXA9pmQxwpPpUUqEznrDn+oH9KE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Z54t4CNajqXFKcbYp/gumTeroOxR7qOQ7grY36RwOas6fFrlMK+TzLIOdI89UXwPo
	 QElF8qvu9apdq56foS5cNFM5yECIkqRTpdssC7b+D5Z0L3FdqIRAba5IKsfwpa6sBr
	 1fjX5dwLZAgKvsDtgEanTbz6xHRXHY5xmaMWaOkJsPiMESYzbXI5Eam5dS3h25LUUy
	 dbdcHLdCtOUaVGSoyoGFAgboGbuUONJMWNyVxfBM/829gYQ2Q/SRt8+GRSy0IiNaSD
	 0l8IjjpLUq8suGSskM7w6Ju1vsTgbsSLzaTJjSMoMch1rETIVv6dn4SQezorYg7ehO
	 RLNMr/2t1yKZQ==
Date: Sat, 31 Aug 2024 22:48:10 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 2/5] syscalls.2, signal-safety.7, namespaces.7: srcfix
Message-ID: <ncv4wczkcxldrdy3doqzae44vsouevafkwwszx5uh4pulwwlnr@v4keelsw2v7o>
References: <20240831182045.kvhjjxbztnhudjga@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7sqipsh7xhdlzln5"
Content-Disposition: inline
In-Reply-To: <20240831182045.kvhjjxbztnhudjga@illithid>


--7sqipsh7xhdlzln5
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 2/5] syscalls.2, signal-safety.7, namespaces.7: srcfix
References: <20240831182045.kvhjjxbztnhudjga@illithid>
MIME-Version: 1.0
In-Reply-To: <20240831182045.kvhjjxbztnhudjga@illithid>

Hi Branden,

On Sat, Aug 31, 2024 at 01:20:45PM GMT, G. Branden Robinson wrote:
> Explicitly set the width of certain table columns so that they don't
> change or cause "can't break line" warnings from troff(1) when the rows
> are converted to use text blocks.
>=20
> Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
> ---
>  man/man2/syscalls.2      | 4 ++--
>  man/man7/namespaces.7    | 4 ++--
>  man/man7/signal-safety.7 | 4 ++--
>  3 files changed, 6 insertions(+), 6 deletions(-)
>=20
> diff --git a/man/man2/syscalls.2 b/man/man2/syscalls.2
> index c259901e7..89c4e7f10 100644
> --- a/man/man2/syscalls.2
> +++ b/man/man2/syscalls.2
> @@ -139,8 +139,8 @@ .SS System call list
>  .\" instructive about x86 specifics.
>  .\"
>  .TS
> -Lb Lb Lb
> -L2 L  Lx.
> +Lb       Lb Lb
> +Lw(26n)2 L  Lx.

Ughh, I've applied it.

Cheers,
Alex

>  System call	Kernel	Notes
>  _
>  \fB_llseek\fP(2)	1.2
> diff --git a/man/man7/namespaces.7 b/man/man7/namespaces.7
> index 5cf054665..9f0fda553 100644
> --- a/man/man7/namespaces.7
> +++ b/man/man7/namespaces.7
> @@ -30,8 +30,8 @@ .SS Namespace types
>  The last column is a summary of the resources that are isolated by
>  the namespace type.
>  .TS
> -lB lB lB lB
> -l1 lB1 l1 l.
> +lB lB  lB       lB
> +l1 lB1 lw(21n)1 lx.
>  Namespace	Flag	Page	Isolates
>  Cgroup	CLONE_NEWCGROUP	\fBcgroup_namespaces\fP(7)	T{
>  Cgroup root directory
> diff --git a/man/man7/signal-safety.7 b/man/man7/signal-safety.7
> index 440894529..36cbf8d6e 100644
> --- a/man/man7/signal-safety.7
> +++ b/man/man7/signal-safety.7
> @@ -71,8 +71,8 @@ .SH DESCRIPTION
>  the table details changes in the subsequent standards.
>  .P
>  .TS
> -lb lb
> -l l.
> +lb      lb
> +lw(24n) l.
>  Function	Notes
>  \fBabort\fP(3)	Added in POSIX.1-2001 TC1
>  \fBaccept\fP(2)
> --=20
> 2.30.2
>=20



--=20
<https://www.alejandro-colomar.es/>

--7sqipsh7xhdlzln5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmbTgYkACgkQnowa+77/
2zIzyA//SC/Qmvf01zc05lALf20F5gra7DJ7SpTgPJPixrQdbVT6/60CydsIBSva
Oc4HQW+OVO7r7S5X7akPuzkg8ZmGcNesxWb4qEUQXdXpTFAh2RFJitiJHe4LXYCI
58dQdZ37RksWrx4XQbZrTXfjWyETO/kEsjW9Zd9pqChJ1R4vuHQBKMzwf/GoR5nZ
jeG+L58Fsl6136BnrlubwIl8HUffiTJwbRWYvhAzruX1MTxZlP5TVt4Z428M1s6k
L9YQT1ToXIfBqQrJflqvdzsCad3PDLECgyRxN5N2E1Lmhv+3G+cTBPtt6Sp+MDS6
2qZw0sylOluDgrJvHTGp1PjA0sbH5Z8MWfpoMvRiXUXooGTU52e0soXIBcdZGF8W
q1aMa5tuIl4LqeWIQbNuOON+Y/IrbJw+lYwYXGc6BhuqWdM2pkUSCAPpBt/ynISa
o77sFSiuE9oFdEed7dgNVYHoy3rFJ1NgfUAbi3ovVKs00suuVdmj5F6FMrIVrwjo
oyVHC3k34vGqNJOsPGcWvkl554ULlbrddZRQiF5yldpsy4ozTz/Y9LMpQXN4sRvB
bv9brFJCAqVpm7Pyhv3B7HNDdP+heF5uQ0px9ke8h2Wez6lAFulwquIOTelBBDgc
06AQmboT41G+L2rkIb8yBnIei3BYozBEaLvHmI9aJTdlhcWToVc=
=4OGo
-----END PGP SIGNATURE-----

--7sqipsh7xhdlzln5--

