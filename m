Return-Path: <linux-man+bounces-1509-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B6099394F6
	for <lists+linux-man@lfdr.de>; Mon, 22 Jul 2024 22:49:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A7DA01F2192D
	for <lists+linux-man@lfdr.de>; Mon, 22 Jul 2024 20:49:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F14982868B;
	Mon, 22 Jul 2024 20:49:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JV05i0OR"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B25D31C6A8
	for <linux-man@vger.kernel.org>; Mon, 22 Jul 2024 20:49:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721681351; cv=none; b=Q6ihAJvQ9TxPh6hgwwSuuywJlw/jZCqC5yjFYK2uFwlunLyot5k0gFHMZzVBHrey+Hsx1gi0E5pYRQu0TxY0yZaiu3uvsmTkyVaWYJmHup6Ny4MuHi3mMdg1UxZfB3SjYtjLeNUyBBxf/6Logn5ydDxtMmyHrlQN+u2uUXxR5EE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721681351; c=relaxed/simple;
	bh=P9hcxCZ7QLuqpVQmur5VCuNB8X/RT4UhjWoU+QVgPkk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Uf/Y0/qYS6yvsC2wtR/+q1oDdurBAeDEwz5Hsn7/F9QTLunOpfaYWSW2Gs1KGQ01cUSJKXleRSV6sjC+y71Xrwf/EoNkfbw4uXX4XstwrNQ2Nfo6IeipEcQLdUbos65yymF08dEI3wK9DcwIE/SpEYuwDZqYF572aGT70CsK/bw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JV05i0OR; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 62665C116B1;
	Mon, 22 Jul 2024 20:49:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721681351;
	bh=P9hcxCZ7QLuqpVQmur5VCuNB8X/RT4UhjWoU+QVgPkk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JV05i0OROyYME28tVU+SGfoo1d2cmXO7kYLyng2UlfRtKRizLWq76MhEA5uuUIcgK
	 4kfbcEVan3GZoJnK01ROYCPsljN+iFUNkbzrv3sXNF5o5GX0U+EyvbhpviDY5MEaEb
	 N7a7S5vpMmIhB05oTvuIajJKhYwbn/XtBVjDpIiyqCPyv5hpniOxT4iKnNGUCzNvLF
	 zhJxDhneM27bL8U1DD9v32ocL9X3T02Ocq+oJtn7l3jlMS0ARGBVMcyTkigRGiZ8D/
	 Ygg4PmQ02r5b0e0h8+Ef2PjwkEPTxd97KvJWrLUdWeXxWD+Wm0BO2jwKTE90ShuZQK
	 Omrvml388Cxvg==
Date: Mon, 22 Jul 2024 22:49:08 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	Konstantin Meskhidze <konstantin.meskhidze@huawei.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH v2 2/5] landlock_create_ruleset.2: Update docs for
 landlock_ruleset_attr
Message-ID: <jpojosxj2tylrg76p4smygatlntexryimuufbtphjd6yoqpned@rqydpcnmazjs>
References: <20240719133801.3541732-2-gnoack@google.com>
 <20240719133801.3541732-4-gnoack@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="y4dzq457rqg5n5mc"
Content-Disposition: inline
In-Reply-To: <20240719133801.3541732-4-gnoack@google.com>


--y4dzq457rqg5n5mc
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	Konstantin Meskhidze <konstantin.meskhidze@huawei.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH v2 2/5] landlock_create_ruleset.2: Update docs for
 landlock_ruleset_attr
References: <20240719133801.3541732-2-gnoack@google.com>
 <20240719133801.3541732-4-gnoack@google.com>
MIME-Version: 1.0
In-Reply-To: <20240719133801.3541732-4-gnoack@google.com>

Hi G=C3=BCnther,

On Fri, Jul 19, 2024 at 01:37:59PM GMT, G=C3=BCnther Noack wrote:
> This updates the documentation for struct landlock_ruleset_attr
> in line with the changed kernel documentation (see link below).
>=20
> Cc: Alejandro Colomar <alx@kernel.org>
> Link: https://lore.kernel.org/all/20240711165456.2148590-2-gnoack@google.=
com/

I prefer links enclosed in <>, as recommended in uri(7).  (I've amended
the commit myself.)

> Reviewed-by: Micka=C3=ABl Sala=C3=BCn <mic@digikod.net>
> Signed-off-by: G=C3=BCnther Noack <gnoack@google.com>

Cheers,
Alex

> ---
>  man/man2/landlock_create_ruleset.2 | 34 ++++++++++++++++++++++++++++--
>  1 file changed, 32 insertions(+), 2 deletions(-)
>=20
> diff --git a/man/man2/landlock_create_ruleset.2 b/man/man2/landlock_creat=
e_ruleset.2
> index 871b91dcb..105e9b062 100644
> --- a/man/man2/landlock_create_ruleset.2
> +++ b/man/man2/landlock_create_ruleset.2
> @@ -51,8 +51,38 @@ is a bitmask of handled filesystem actions
>  .B Filesystem actions
>  in
>  .BR landlock (7)).
> -This enables simply restricting ambient rights
> -(e.g., global filesystem access) and is needed for compatibility reasons.
> +.IP
> +This structure defines a set of
> +.IR "handled access rights" ,
> +a set of actions on different object types,
> +which should be denied by default
> +when the ruleset is enacted.
> +Vice versa,
> +access rights that are not specifically listed here
> +are not going to be denied by this ruleset when it is enacted.
> +.IP
> +For historical reasons, the
> +.B LANDLOCK_ACCESS_FS_REFER
> +right is always denied by default,
> +even when its bit is not set in
> +.IR handled_access_fs .
> +In order to add new rules with this access right,
> +the bit must still be set explicitly
> +(see
> +.B Filesystem actions
> +in
> +.BR landlock (7)).
> +.IP
> +The explicit listing of
> +.I handled access rights
> +is required for backwards compatibility reasons.
> +In most use cases,
> +processes that use Landlock will
> +.I handle
> +a wide range or all access rights that they know about at build time
> +(and that they have tested with a kernel that supported them all).
> +.IP
> +This structure can grow in future Landlock versions.
>  .P
>  .I size
>  must be specified as
> --=20
> 2.45.2.1089.g2a221341d9-goog
>=20

--=20
<https://www.alejandro-colomar.es/>

--y4dzq457rqg5n5mc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaexcQACgkQnowa+77/
2zLg2g//Y3aDIjHlFNih6z49lmKgOQLmIRcXkbn5LkUEF+Ur0rqWssrs0jPUGrQe
xBAWnZ5/DxjxYWyXOV7qdmWmosjXA96o2qEDccmsN6Rm747bWxW5wfKCpOmqjbtN
yfh5P8T3SeUEPvSz9KwILGEFMnFkTw+bXORA/iEMOOQjvepTFZxJyNJITLdbkNb+
NXbhWlqP17IYKxkbd25fp96BAosKUrgeUZk51f34xQ+V1tiYsZlFyoq4O60IWpxQ
QJQzYqoZ/T+XIjYkHUKrFioYyz5NloaZ+y3Mmq/gm8qQ98aIYwxqmL3uFccPnOPa
sHxV3Iup0vh7rTlR+E6XtoGtN38+UteshM/SK5q8FCIkx5+IBjLWNRB3/4hzGYyk
dNpUCXXUj/Fkeb/+Hripr9sdLtfZAtOwSR4BahBrVsv2bveOqOhNlrcF2YCWkFK6
oRan0Y/3z7mQ+/MevoEvBDcej5H1JHigcdpmGGJWb5j6Xo+x+Gyd56JlKt/fVhKx
A1RXF7d7zKfcL5xg4LjJ0RalC3+QxXRSTY8Dc+YbFafcB3OtQ855/Mc6E9ILpMdk
SSALdvmHJzj/vbiApGzV61pcmW7H25t/6SQ2puE72s73LkUBCookGZnBrav0TETW
gNGlDNTQqEZqGMWn30jco/avfhYMCjYLTOjWZyuO5KnSDNVb4oQ=
=SHhU
-----END PGP SIGNATURE-----

--y4dzq457rqg5n5mc--

