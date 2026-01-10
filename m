Return-Path: <linux-man+bounces-4787-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 98BD1D0D587
	for <lists+linux-man@lfdr.de>; Sat, 10 Jan 2026 12:50:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 194AD300EDCE
	for <lists+linux-man@lfdr.de>; Sat, 10 Jan 2026 11:50:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 489D233F8B4;
	Sat, 10 Jan 2026 11:50:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bU9GyCsC"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A46B733F368
	for <linux-man@vger.kernel.org>; Sat, 10 Jan 2026 11:50:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768045813; cv=none; b=nu06GzJwqQv8HiR84lwB63Z6M73OReod71dvoe083BOfm1+odiIDYscPrcUtIcNY/LMvX4b76bN9p7jzs+WX9sRKgpBOGlBoHc1fpiXs+uISu734TUvV05Cg9Bq+OdLWTASvVibb+kGuAGof2toyqA3NcEe6Yzv6IAKL06z9XXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768045813; c=relaxed/simple;
	bh=feBe9CFg8SgP5WokYTCvoB+Pp8JXtHEn+uywDFHIf2g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XjaU09kdz+p1/1SKTmfIG4re1IyNVnouRBtYdwCQTpBglLGoungMi7OOCpWZA1Rk7Pex1mpyvlx35fhSk9mZ11UOR4eK9K5pl1rx3JWd4e3JTZ2PGXe5JMKRg0BlQQWr4srkHwLyJmRpO1sR7t1AHP/hYEMQBjDCkHf9lyfKA5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bU9GyCsC; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EEF19C4CEF1;
	Sat, 10 Jan 2026 11:50:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768045812;
	bh=feBe9CFg8SgP5WokYTCvoB+Pp8JXtHEn+uywDFHIf2g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bU9GyCsCq2hpIlmvCaqf9wFvnSHVqQ/TfKmbOrwbz0J0oR7Bt7gyEVZCEorXdyYbH
	 CD3rlGuRggrE56T0Az01Fc2GrM/1SOVVwKi8apfycRFmxUEVQzLg7bGDbBFi5rdlEK
	 FGWF6rJSFd3pFPZJ+y2etApypWAaCFG4EsJeNNEopNJdBovHXqKz0WBZ6eJx88oxXw
	 UqkZuKQcOM9jySdSKu8BQkrzzdzpZamcsNcdBog0RJQVvBNGQOVQpZmpFSqZkAa/L8
	 HLZ0S15LzIWDNk3vxznsiFHoz/+EEjiRgYJn0JhqdL1ivIp20179w3CFYBw8hupGY8
	 zBtVHySGPJ7fg==
Date: Sat, 10 Jan 2026 12:50:09 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v3 0/3] man/man3type/*: Update simple history of types
Message-ID: <aWI8UNPTAUcAL3Ce@devuan>
References: <cover.1767931376.git.sethmcmail@pm.me>
 <cover.1768025095.git.sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xdg773zv54waoyyy"
Content-Disposition: inline
In-Reply-To: <cover.1768025095.git.sethmcmail@pm.me>


--xdg773zv54waoyyy
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v3 0/3] man/man3type/*: Update simple history of types
Message-ID: <aWI8UNPTAUcAL3Ce@devuan>
References: <cover.1767931376.git.sethmcmail@pm.me>
 <cover.1768025095.git.sethmcmail@pm.me>
MIME-Version: 1.0
In-Reply-To: <cover.1768025095.git.sethmcmail@pm.me>

Hi!

On Sat, Jan 10, 2026 at 04:15:17PM +1000, Seth McDonald wrote:
> Hello,
>=20
> This v3 should be almost identical to v2 (sans a reworded commit msg),
> except it should (hopefully) work.  I think the reason v2 didn't apply
> may be because I just resent all patches, even those already pushed,
> rather than only sending the non-pushed patches and using the --base
> option for git-format-patch (which I now know about after rereading its
> doc).
>=20
> But regardless, I've tested applying these patches onto origin in my own
> worktree after fetching and it seemed to work.
>=20
> Seth McDonald (3):
>   man/man3type/stat.3type: HISTORY: Split stat(3type) from
>     st_{rdev,blksize,blocks}
>   man/man3type/stat.3type: HISTORY: Update first POSIX appearance of
>     st_{rdev,blksize,blocks}
>   man/man3type/stat.3type: HISTORY: Specify initial datatypes of
>     st_{blksize,blocks}

Thanks!  I've applied all three patches.


Cheers,
Alex

>=20
>  man/man3type/stat.3type | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
>=20
> Range-diff against v2:
>  1:  48b823b1a965 <  -:  ------------ man/man3type/itimerspec.3type: HIST=
ORY: Update first POSIX appearance of itimerspec(3type)
>  2:  90f54d80c479 <  -:  ------------ man/man3type/mode_t.3type: HISTORY:=
 Update first POSIX appearance of mode_t(3type)
>  3:  c1498253ab68 <  -:  ------------ man/man3type/off_t.3type: Change VE=
RSIONS to HISTORY
>  4:  6b062b0d6afa <  -:  ------------ man/man3type/off_t.3type: HISTORY: =
Update first POSIX appearance of off_t(3type)
>  5:  6919cafeb4e3 <  -:  ------------ man/man3type/sigevent.3type: HISTOR=
Y: Update first POSIX appearance of sig{event,val}(3type)
>  6:  84a9e467d506 <  -:  ------------ man/man3type/stat.3type: SYNOPSIS: =
wfix
>  7:  0611f62eeedb <  -:  ------------ man/man3type/stat.3type: HISTORY: U=
pdate first POSIX appearance of stat(3type)
>  8:  623290de35e6 =3D  1:  f09dc86eb395 man/man3type/stat.3type: HISTORY:=
 Split stat(3type) from st_{rdev,blksize,blocks}
>  9:  a33e91f7c1b7 !  2:  e4503345e46f man/man3type/stat.3type: HISTORY: S=
pecify first POSIX appearance of st_{rdev,blksize,blocks}
>     @@ Metadata
>      Author: Seth McDonald <sethmcmail@pm.me>
>     =20
>       ## Commit message ##
>     -    man/man3type/stat.3type: HISTORY: Specify first POSIX appearance=
 of
>     +    man/man3type/stat.3type: HISTORY: Update first POSIX appearance =
of
>          st_{rdev,blksize,blocks}
>     =20
>          The st_rdev, st_blksize, and st_blocks fields of the stat(3type)
> 10:  3ffb01f7c196 =3D  3:  5f6bf068bb5f man/man3type/stat.3type: HISTORY:=
 Specify initial datatypes of st_{blksize,blocks}
> 11:  d6fc0ff67155 <  -:  ------------ man/man3type/timer_t.3type: HISTORY=
: Update first POSIX appearance of timer_t(3type)
> 12:  9b6fedfdc71e <  -:  ------------ man/man3type/timespec.3type: HISTOR=
Y: Update first POSIX appearance of timespec(3type)
>=20
> base-commit: 753ac20a01007417aa993e70d290f51840e2f477
> --=20
> 2.47.3
>=20

--=20
<https://www.alejandro-colomar.es>

--xdg773zv54waoyyy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmliPPEACgkQ64mZXMKQ
wqmEPg/+P19hpkzn4v/EiN/djC61lX8htDcApR2yu9cmQQxysn4CU0aAp2qhduR+
ta4ISVAYjlCy0KwZY+zQvInUYffW42a8FG3zoPNiRedLAWAyz06sOanBbktQUh6b
Rxgh8bNCxCG+LTKAELF6KS1iYft9AOOKW8URJBFtF5vjjw0gp87OMDQvSblyOS3E
oOcskR9uPP9bNs3uxu9OzyybpuOCffDY+nmliaT5nRgnMmmLtwlhN7cYdp4bQz3M
NRp93XY0szk0mnGAnKC1eUYQjbP7oVPwYRIT/K+s/cL1Fwv5RyiS4wv7fbLF8Ne2
mcYL9u9Q5E5soPxmQi07BZA6Qkdr1+hoXI4DC2r2CDvu8ZXcTWP67ak0Lod+2HCF
/ugKZj3hwyin2g7C1Ij34cHHK/8Gd+ggmARXn21WgGSoFjGqSzdYO5IC+wcSpibj
OHv+UZ4+HY74+zs1Beyfk/Ayq33x9FZ3grjyKhks0VO4NIqE2a9H+JY5WsIuK0zH
RP5kkX4TDeRrn93Dxbsvc+B2MVDtwtXt1D0DyD70QUTsYPxmG/NwDjWLoFhM1GVe
55wQoGVPePwQBzKttosMWOgBZRxz44TNCDcU2eNYvXDhi8q5Kybra57fhmWqTBqV
/5ZK/LH4nkxOXur8wSOamA0VdTXo9baFZSanReU230fjBQBRm64=
=H6TE
-----END PGP SIGNATURE-----

--xdg773zv54waoyyy--

