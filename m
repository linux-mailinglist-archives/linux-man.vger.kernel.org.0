Return-Path: <linux-man+bounces-2115-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AF1B99E54DE
	for <lists+linux-man@lfdr.de>; Thu,  5 Dec 2024 13:02:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 64A72280DA3
	for <lists+linux-man@lfdr.de>; Thu,  5 Dec 2024 12:02:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90379217737;
	Thu,  5 Dec 2024 12:02:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X+GkxeG+"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3455321772D
	for <linux-man@vger.kernel.org>; Thu,  5 Dec 2024 12:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733400144; cv=none; b=KeVnEdz9YDlbx/IT3L40MVYy/Xn7qszuL4/tcrpy1pJ/Lfa2aVZbVNTogjEI5PNo7vlmvX8I3Y4lddvxhBHDrcTsoA9S6lNAW2t+ONIMIKUD03HmF6D2tg4vPQi0Wlf/guj3z0cWbrFSclLndX9AJeXNArHR45H/nQn+MLTpa9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733400144; c=relaxed/simple;
	bh=pldVz6MNAsIroK0kN5gA53HCYgiIdN58SqsvYfjFE4E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fno9Z5nlleIF7nyMoEDSt1CsyvkaZ8Z3dcXGGaqrG4ey52ayw3OfVNjE+V5wlJ+83tfscim0bvur9b9MIXMXGeNV6Charsazj/3kzuBe6ccBwOLpaUJllByBwMAJCAUgrkllr50ttxz0i2VUuWh7WLsv+VRj6fX8Ww4jSrdT/NQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X+GkxeG+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 91AE8C4CED1;
	Thu,  5 Dec 2024 12:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733400143;
	bh=pldVz6MNAsIroK0kN5gA53HCYgiIdN58SqsvYfjFE4E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=X+GkxeG+2ywaJjpYzCZlOd+WnAC2bim1bckBHBqazr1SvNr0DX54vkaCWbwcA7GN8
	 w7u4xY34qP09Ec3CSeJCSUAa/vYp1MdJSfcwuws81hvHgqQxN7vfhy0KdNo85PL6jJ
	 5Oye6b3+mAcRDPrPV1HxaiRzM5FjPqGj5QarT64DYs8Pdfcdl3oqgheGYCt14XzW9Z
	 Z1yUP51Q2Hwu4ACWsnrCLZfNzhzYg6vXYbKrS/12ZpSzs3hPW0oyqnp/Q+GUe82Gzl
	 rz7wVC8XEZ/CK2pvjOkDBwvpZZdyaNPLJYZtMtZ+IGgmJ49v3ZBBkKpyH6sUCf+n5k
	 swSV5gksuvZgQ==
Date: Thu, 5 Dec 2024 13:02:20 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: John Garry <john.g.garry@oracle.com>, linux-man@vger.kernel.org,
	djwong@kernel.org, ritesh.list@gmail.com
Subject: Re: [PATCH] statx.2: Update STATX_WRITE_ATOMIC filesystem support
Message-ID: <20241205120220.ep5llyzobecmtnfm@devuan>
References: <20241203145359.2691972-1-john.g.garry@oracle.com>
 <20241204204553.j7e3nzcbkqzeikou@devuan>
 <430694cf-9e34-41d4-9839-9d11db8515fb@oracle.com>
 <20241205100210.vm6gmigeq3acuoen@devuan>
 <20241205103454.ihxar6bhxjcv2gzj@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zhcembqzsdr5jtqu"
Content-Disposition: inline
In-Reply-To: <20241205103454.ihxar6bhxjcv2gzj@illithid>


--zhcembqzsdr5jtqu
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] statx.2: Update STATX_WRITE_ATOMIC filesystem support
MIME-Version: 1.0

Hi Branden,

On Thu, Dec 05, 2024 at 04:34:54AM -0600, G. Branden Robinson wrote:
> [trimming the linux-fsdevel list from CC, reasoning that it cares little
> about typography]
>=20
> Hi Alex,
>=20
> At 2024-12-05T11:02:10+0100, Alejandro Colomar wrote:
> > No; the comma shouldn't be in italics.
> >=20
> > .B STATX_WRITE_ATOMIC
> > .RI ( stx_atomic_write_unit_min ,
> > .IR stx_atomic_write_unit_max ,
> > and
> > .IR stx_atomic_write_segments_max )
>=20
> Style authorities differ on this point.[1]  At least three factors are
> in tension:
>=20
> 1.  In traditional typography, one does in fact set the comma in italics
>     like the preceding word.  To some eyes, including mine, that looks
>     better.

I think this is in concordance with the other meh thing US typographers
do: put punctuation within quotes, misattributing them to the quotee.
I don't like that.

>=20
> 2.  It is true that the comma is not part of the named parameter, so
>     under rules analogous to those that govern quotation marks in the
>     U.K., for instance, one would _not_ put the comma in italics.

Indeed.  Similar rules apply in Spain, AFAIR.

And this isn't documented in man-pages(7) either.  We probaby should.

> 3.  It doesn't matter all that much because unlike with literals, like
>     STATX_WRITE_ATOMIC, precise copy-and-pasting doesn't buy you much.
>     A formal argument name frequently _lacks_ a corresponding symbol of
>     the same name in source code.  Users of memmem(3) need not name
>     their parameters "needle" or "haystack".  So almost no one needs to
>     precisely aim their pointer between the final letter of the
>     parameter name and the trailing punctuation.

In PDF output it doesn't matter much, but underscoring a comma (which
will happen in terminals) is quite more egregious than just a minor
oddity when the last letter overlaps the punctuation slightly in the
PDF.  So, I'd say it matters in our case.

>=20
> Given these factors, if you have a strong preference here, I think you
> should document it in man-pages(7).

I do.

>=20
> Regards,
> Branden
>=20
> [1] https://iconlogic.blogs.com/weblog/2011/04/writing-grammar-do-i-itali=
cize-the-comma-after-an-italic-word.html
>=20
>     https://english.stackexchange.com/questions/9878/should-punctuation-s=
urrounding-italicised-words-be-italicised
>=20
>     (The foregoing quotes the [in]famous Chicago Manual of Style, which
>     I generally like except for the malicious lies about historical
>     inter-sentence spacing practices promulgated by its editor, the
>     dreadful Russell Harper.[2])
>=20
>     https://style.mla.org/comma-after-italicized-element/

I like the advice in that link.  :)

>=20
> [2] https://web.archive.org/web/20171217060354/http://www.heracliteanrive=
r.com/?p=3D324

Thanks for the link!  I applied this commit now:
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Dbcf7d00fa4c7ce270f07d6e347c01b1f1e37580f>


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--zhcembqzsdr5jtqu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmdRlkYACgkQnowa+77/
2zKcahAApp25wj8liKuL/8ksYXm3BPQUe6UoW8YYtj/VEPn6oO4aRi7FJZN7XHcM
qeZ5k2Bt7ulW/l9Ao6oErCWa0P0eA/ysxIvIa99LXePq6ynmZ+wqqg17+m6aKq0u
8jJbLQt6Lg/WFgnxeDt4syDELwm1EnLQqB99RBEtwfic/zCe5Wpfgvh+BMPtJSxK
fOQEco0iQAR0vOyzM2qOfBR5C/8/UDIygY5Zf6kzwQ0t8TU8o0nqd4QlNgUCDvWR
tLAhBZNzXII3SZTenf9E3mVqvwmPoBkfxefdiKuRLFPSLvcD8eXphOM3tEMmkqce
nfqBtDI6KcrUAsRV+XkzUkIH1Z6Qd8g3I5p0oGM4XiBq27EuH5pU1cvfA33o8uOE
zlnTyxbLju6UNyr15XCJ6ueAqqgOkoXz9wELcJx7RSzmvKx9oltWVUYX/htfThGv
SnujgXxg+1WPLkNRu+7yzC4qRM+HqtBprP1kDSZEkYJYdcBIlYNq3mc1jymseOXv
YZ7lwchc+PmSkIFts9lo4dVi1JQpfXrux2Vqr9LDNGD2tpvcld4e3GzPO7UB+6Rq
3ULEp2Od9oaaUFFfeyumrZS6qFpQI4kTVllaL26E2Ogc5lPV06Xo1J+ul30p19K3
AIh4fJxfpacoX3z/Dzb6nMtBzDaMTKjiv9Uj75E6Vyd4Nu4TF5Q=
=SX4a
-----END PGP SIGNATURE-----

--zhcembqzsdr5jtqu--

