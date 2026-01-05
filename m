Return-Path: <linux-man+bounces-4634-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 38F80CF4FB7
	for <lists+linux-man@lfdr.de>; Mon, 05 Jan 2026 18:25:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C65433109EBC
	for <lists+linux-man@lfdr.de>; Mon,  5 Jan 2026 17:20:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8708F33ADA1;
	Mon,  5 Jan 2026 17:20:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NAU6HvsL"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A232C33B6F7
	for <linux-man@vger.kernel.org>; Mon,  5 Jan 2026 17:19:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767633598; cv=none; b=FBQognZ4ekMGAx/KgYznpG58fMqNFLdKaNmDKiIsuf6hXfZQwSE5ST4SRPu6YL2StVbL6xwoBVNnfBCdH+2CE+uE1gg21u/bmaXvqWrWszVSawWyNvcVL3G0zrp85tgmQT+WjQa8bhyPsL3cA1pzEOiDtWiA+QjirR4oOldJoe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767633598; c=relaxed/simple;
	bh=fxLpLlyHm42fokYzM8sZJ69jlzz9IZ+nnD5Hu/2952g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FhzreLdv9dA9V5Gv0FvhED7lKvhL7erbqQUQ674JcZyodo9JtI9ATlhOw7bvpGrGbX7tXl0m2GRE8sJYoiZwF+lhQJA3xuwz+muPlLvo6EmJtfyKMdBpQBxeAYBn1ATBHZk9vixwHjzcba5Ju5Fsn6ATfQ3Zf5B9RzcjcGwMHM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NAU6HvsL; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 47160C116D0;
	Mon,  5 Jan 2026 17:19:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767633598;
	bh=fxLpLlyHm42fokYzM8sZJ69jlzz9IZ+nnD5Hu/2952g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NAU6HvsLH5aaLyxYE8eyTq+APkhKwu7MQsVyKFG3ryJ+Bnf4yaPT5JsbctMTrSocg
	 NmwxmLWT7EJ3Re8KytB748OSP1vAGj9MNKYostK6lyerhpiVa/KdCHr1H3hJHXZDZx
	 AJywOAeAYRVhkxAGTiiYad59VryZeLoi0FZCZTLjfQWV8fVpQq9CdsvBw7vNAxkq1x
	 CNQ/WEk6OUul7+ANToCaclQI+ERtI3zazVZ9kIVHExjBC/yz29OvyU5YXzEMRYtf0V
	 +yovbO/44syk89tkFp8EtLjIC+reJHqZ3OaD9WvdtPPY3sSf65ALdrL4dRxUyNXIUO
	 iTB2/S3yyKWlQ==
Date: Mon, 5 Jan 2026 18:19:54 +0100
From: Alejandro Colomar <alx@kernel.org>
To: dg@treblig.org
Cc: linux-man@vger.kernel.org, "Dr. David Alan Gilbert" <dave@treblig.org>
Subject: Re: [PATCH] man/man5/gai.conf: Document glibc label additions
Message-ID: <aVvyTfS5CC6zadBG@devuan>
References: <20260105170001.209785-1-dg@treblig.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tkmkzbwvp2dgpe7h"
Content-Disposition: inline
In-Reply-To: <20260105170001.209785-1-dg@treblig.org>


--tkmkzbwvp2dgpe7h
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: dg@treblig.org
Cc: linux-man@vger.kernel.org, "Dr. David Alan Gilbert" <dave@treblig.org>
Subject: Re: [PATCH] man/man5/gai.conf: Document glibc label additions
Message-ID: <aVvyTfS5CC6zadBG@devuan>
References: <20260105170001.209785-1-dg@treblig.org>
MIME-Version: 1.0
In-Reply-To: <20260105170001.209785-1-dg@treblig.org>

Hi Dave,

On Mon, Jan 05, 2026 at 05:00:01PM +0000, dg@treblig.org wrote:
> From: "Dr. David Alan Gilbert" <dave@treblig.org>
>=20
> Glibc includes some extra entries in its default label table
> as listed in the gai.conf it distributes:
>    https://sourceware.org/git/?p=3Dglibc.git;a=3Dblob;f=3Dposix/gai.conf
>=20
> Update the EXAMPLES to include the spec default and the version glibc
> actually uses.
>=20
> Signed-off-by: Dr. David Alan Gilbert <dave@treblig.org>
> ---
>  man/man5/gai.conf.5 | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
>=20
> diff --git a/man/man5/gai.conf.5 b/man/man5/gai.conf.5
> index ef330995d..0d3c86842 100644
> --- a/man/man5/gai.conf.5
> +++ b/man/man5/gai.conf.5
> @@ -87,6 +87,20 @@ .SH EXAMPLES
>  precedence ::/96          20
>  precedence ::ffff:0:0/96  10
>  .EE

You forgot to close with '.in'.

> +.P
> +Glibc includes some extra rules in the label table for site-local addres=
ses,
> +ULA, and Teredo tunnels. Its default label table is:

Please use semantic newlines.  See man-pages(7):

$ MANWIDTH=3D72 man man-pages | sed -n '/Use semantic newlines/,/^$/p'
   Use semantic newlines
     In the source of a manual page, new sentences should be started on
     new lines, long sentences should be split  into  lines  at  clause
     breaks  (commas,  semicolons, colons, and so on), and long clauses
     should be split at phrase boundaries.  This convention,  sometimes
     known as "semantic newlines", makes it easier to see the effect of
     patches, which often operate at the level of individual sentences,
     clauses, or phrases.


Have a lovely night!
Alex

> +.in +4n
> +.EX
> +label ::1/128        0
> +label ::/0           1
> +label 2002::/16      2
> +label ::/96          3
> +label ::ffff:0:0/96  4
> +label fec0::/10      5
> +label fc00::/7       6
> +label 2001:0::/32    7
> +.EE
>  .in
>  .\" .SH AUTHOR
>  .\" Ulrich Drepper <drepper@redhat.com>
> --=20
> 2.52.0
>=20

--=20
<https://www.alejandro-colomar.es>

--tkmkzbwvp2dgpe7h
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlb8rQACgkQ64mZXMKQ
wqmdxw/+O+fxFMm3qR22BjgJrJVrDDtOGWrgRstZOz1SPvqYmuuFbcsrjB28CRdj
8iA8WoD7IN6rA2181x4eXl5r2HJe3z+0cty7P/AT6/agZTkvn9agwdaDzhnYbQ3n
4aTy1hZqHIWZHizYfXQsKa3w3466WTLXRBxLMUICORr/Eak1b+nqOBwFDGkdJcfl
Baa0fDq4WGw6h3VLBkD/ruPQpRjRpyvyM7v1jU2pEtIYh5sAak/x2Neh9dihH6AR
/XqQrTwWC04jnmnQQiYZspXzNvdQ2+iBOGHcKvanRGZ9R5P9tJhLN91RHJqGlduf
3epTBzKdzVuVUYWd/iPuR52GjtzC5WYGVPd0AdANRpw996NS1N2x6ryBSG6+xlSa
zcT2i9hHD9kUUId35TtZCucKi3EZj6IXvQYbVIb4AVUJLWWWsVosL6eUG1feZ8na
NFyxuLiAMyxlGqTJ/pG/dihosKmVq041ItZIR4CG/dYdkT5hfA00wbE71DspPI+s
6Ydry01/EC3vzKRHeeq9TdN2DY5MvjtjbHGNUUs9pV/+JnQl1wcIkliix2AAXhh3
I+Kd888HbVeTCkbzu/KzxtzohAizPOOg8TN/16kUfoVY5JuN+Yte9VG0xSGEVJfT
gZ2VCsKip8Taik07J2JJzqzuLudWnmuXlRw8ofZLzj4+R6C5JY8=
=KxKN
-----END PGP SIGNATURE-----

--tkmkzbwvp2dgpe7h--

