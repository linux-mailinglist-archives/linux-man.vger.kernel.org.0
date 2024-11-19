Return-Path: <linux-man+bounces-2046-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C8B6B9D25B0
	for <lists+linux-man@lfdr.de>; Tue, 19 Nov 2024 13:24:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8E93D287953
	for <lists+linux-man@lfdr.de>; Tue, 19 Nov 2024 12:24:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EB891CDFBD;
	Tue, 19 Nov 2024 12:21:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dfGNMMHa"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D033F1CDFB6
	for <linux-man@vger.kernel.org>; Tue, 19 Nov 2024 12:21:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732018877; cv=none; b=FJANiQ2gqVq5bpYVcu9Yq6uNFJY+TelMZBn3NO2xnVwpx71v5SZNUUTriZ7TEsncfVn3l2NkI4v80C495py2nVSNQiMBFk2euWCak5fJ17906WbI12utjE8H4v1jM9Y91MIeyB8DzVMQxtpJM2I+8k/5WmSUvlelMmhm9ZOUtB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732018877; c=relaxed/simple;
	bh=LoWhwxfKZKb4Edys/OjtcIjZiX7+FmC4akPjVD13LDs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=g5zLo4zUcrbuGsfHdfKSQ2x4ACq9PraN6TRjWex+cojw0ZBxC28iieH2dbJWgAbsia0xFnpOqIyPIlCGXPPuQlE/BQoF/3PEbNIX90RoHRHt8gfHtZR9mZMt0Ed57/H4QgH/SxN9vdqDzRLPOZuBK919xSP8rJD4iN1WK9FYTPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dfGNMMHa; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A0B2FC4CECF;
	Tue, 19 Nov 2024 12:21:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732018877;
	bh=LoWhwxfKZKb4Edys/OjtcIjZiX7+FmC4akPjVD13LDs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dfGNMMHaedth31Io327uvPrdiIOasK1kJVULETbJa+K0KIhH7lNx2PtUNmdvPX6LA
	 wMm+8qdObiXVU/jGg9mO8ZT+7xXfggG5VgYQUwMcA3dTR4uqxKjb+c/V0gmr/KbPkW
	 bk0Ny/69TJx1zoEjtKPp4J6v06/Q6nCWWHPLsfUemq1kB9owGAC/IhoHuZwiuyyJ9k
	 ul97zsiuBBXNeVTu5ytvxwu7G63RteWXIH8Emd6OYFf+urPU7JYvDRCj7FMenodjk8
	 GSitQE7WHyhVcK6dYXiDZ5XDlKJG3xDybXKodFGdTlFYnWqM6T6GyB3q9+ec6+NbqO
	 wCxdvjL6B0rwA==
Date: Tue, 19 Nov 2024 13:21:14 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
Cc: Alejandro Colomar <alx.manpages@gmail.com>, linux-man@vger.kernel.org
Subject: Re: Improving alloca() manpage
Message-ID: <20241119122114.6ymh45rvviny3nmk@devuan>
References: <20241119115502.ayz7gpdgxdof2ebp@pali>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="isqlxevzelsnthfe"
Content-Disposition: inline
In-Reply-To: <20241119115502.ayz7gpdgxdof2ebp@pali>


--isqlxevzelsnthfe
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: Improving alloca() manpage
MIME-Version: 1.0

[CC +=3D linux-man@]

Hi Pali,

On Tue, Nov 19, 2024 at 12:55:02PM +0100, Pali Roh=C3=A1r wrote:
> Hello Alex,
>=20
> In alloca() manpage https://man7.org/linux/man-pages/man3/alloca.3.html
> is following information in NOTES section:
>=20
>        Because the space allocated by alloca() is allocated within the
>        stack frame, that space is automatically freed if the function
>        return is jumped over by a call to longjmp(3) or siglongjmp(3).
>=20
>        The space allocated by alloca() is not automatically deallocated
>        if the pointer that refers to it simply goes out of scope.
>=20
> One developer contacted me about this section as he was saying to me
> that he alloca() function (thanks to above information) does not release
> the allocated space just by returning from the function. And it is
> required to do long-jump to release memory allocated by the alloca().
> Developer was referring to the second sentence (something like end of
> the function is also end of the scope, and second sentence says that it
> is NOT automatically deallocated) and then to the first sentence that
> longjmp() is needed to call.
>=20
> I think that this interpretation is just a nonsense as alloca() function
> always allocates on the stack and all stack usage is released at the end
> of the function.
>=20
> But... I was reading those two sentences isolated and I must admit that
> as they are quite confusing. And somebody who first see alloca()
> function (and has no idea how it works), can be confused.

Agree.

> What about improving those two sentences, to prevent misunderstanding?
>=20
> For example:
>=20
>        The space allocated by alloca() is not automatically deallocated
>        if the pointer that refers to it simply goes out of scope (unless
>        end of the scope is also end of the function).

I've applied a slightly different wording, but yeah, LGTM.

<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib>
	commit a6e8435b161a513576ce39f524f4fbd3eb621fe7 (HEAD -> contrib, alx/cont=
rib)
	Author: Alejandro Colomar <alx@kernel.org>
	Date:   Tue Nov 19 13:17:27 2024 +0100

	    alloca.3: Clarify that alloca(3)ted space is deallocated when the func=
tion returns
	   =20
	    Reported-by: Pali Roh=C3=A1r <pali@kernel.org>
	    Signed-off-by: Alejandro Colomar <alx@kernel.org>

	diff --git a/man/man3/alloca.3 b/man/man3/alloca.3
	index 0d079ac1d..0baf8f1ce 100644
	--- a/man/man3/alloca.3
	+++ b/man/man3/alloca.3
	@@ -87,7 +87,8 @@ .SH NOTES
	 is
	 .I not
	 automatically deallocated if the pointer that refers to it
	-simply goes out of scope.
	+simply goes out of scope;
	+it is automatically deallocated when the function returns.
	 .P
	 Do not attempt to
	 .BR free (3)

Thanks for the report!

Have a lovely day!
Alex

P.S.:  Please use <alx@kernel.org>.  I'm deprecating my google accounts.

P.S.2:  Please remember to CC linux-man@.

>=20
>=20
> Pali

--=20
<https://www.alejandro-colomar.es/>

--isqlxevzelsnthfe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmc8groACgkQnowa+77/
2zIXHw//ShNOsOjiZLhz7CueEA3HEhFsZg5PfhMTU5F/3pih91sQFenodF1BLeJr
HNmY+m2ZpWxkFhYqC+kJ1f18bbhQdoQ2UTPa56l4TD42hPmac1ZAa0evYW2fVe9c
etzsy0jo0Eo6dQzysUEo1JTmZnXGgk6cCtgeQzseFsAcNzzter6AcwM2av++oAom
UUcjlJjYBfW8/r/6lUzKX1tCIlWHtLfZF6hMqnxot8QpopMR84UhuwMY9BRax+Wx
DFU7vjaBKlKPCEtPVXuugJSzSCM+8svPtO3p8qS9yeggk0+gHWNf10Lr0UJmOsYq
xIpLk0tjewEsZRtLf0Vz6IVYfGBb6JxoXz97JWclva8Itf3JqLfkWLBXT2mu7UN4
PUNNc448EHCfRx8zgaoLfDjm47FsakzzSx+2ofJ7IBhrx+0oCX0U9kMZQ9ZZr6My
Z33ZG4hAu+9oSB3Xe0MpjzWacmWWLrAmy4McT4hQ4llGI4qcG3jF7dSFEyEX1+IJ
HNlKyT5nRO6+7fd5lYIA28++TnbfgTcbmT4Wb+RGp75Z4O0l53QpTtsw6TX95U64
WUVOBTQfq4kYsp4PNrvJkrqtbBJkl0VDNjP2XhEVB3rpY9Nh58FTEuk/a/KMs8yO
1qkwypQxFmKKl8tkNMWnkO3sCe1CXf45NwjIR2nPDZ91RStVkZc=
=tZBj
-----END PGP SIGNATURE-----

--isqlxevzelsnthfe--

