Return-Path: <linux-man+bounces-1579-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D6A4948CBB
	for <lists+linux-man@lfdr.de>; Tue,  6 Aug 2024 12:22:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 28B6DB21D52
	for <lists+linux-man@lfdr.de>; Tue,  6 Aug 2024 10:22:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E08BA1BDAB9;
	Tue,  6 Aug 2024 10:22:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KOszXZP+"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A07D81BD501
	for <linux-man@vger.kernel.org>; Tue,  6 Aug 2024 10:22:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722939725; cv=none; b=A1lSlz1X68gjc3iF5ViBeFSOVqkSnIoQEPeWFcQxN7aj/pkV1dmSjXz/AV5BM9YB71P6TAXWLcp6TlwsybGDvpMTUWbVfvsG3Tu9NbhBXCdQzyDl6/wHMPFS+CIGGi42m5J+LxrfY+ms7KRAi2FlGlYeSw1A5a+t5HpttdBSxys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722939725; c=relaxed/simple;
	bh=0G6XJDl3MObYsvJrA56Wgu8X/m6cRulARwo8P82F1Ik=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NoiDM7i9Q9YIOtU7ORq9zyrqmbUsDXAER6C6gLvAWZpgCWHR1QABfSSf/NbXinA+Wk2DL/U7Aukqu9LHe17Ci5ULB+iIUvuc0lLFosEprawSUyT3XQB7fd9dgYCoXIFeBnpoo9VscKZExx6b3/U3MsYiQZP+181B9ssZcrAbX+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KOszXZP+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D7728C32786;
	Tue,  6 Aug 2024 10:22:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722939725;
	bh=0G6XJDl3MObYsvJrA56Wgu8X/m6cRulARwo8P82F1Ik=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KOszXZP+G5VnpOeYoYOxCWWdlgPIE3Wkzvb3l0FZuYf1/DhaJi3skb8apN0MqpNrf
	 tM1yaZ6bPdAigi415pe/wOzJ6/5ByLB8nvFhPbk8vxwGIkVKSPmEtZcoUlb4rql8qP
	 W3MHdKzDrNMHmbEWYar3NWTDLIRGmBCbU5Vtdb5QsPdPito5sZ6FSEhjMitg9kQ3wR
	 w6GoXvvMtCQaU0UDvUE065qIYy/b63erFxsPua2z6YimDPGWpk+a/MNDVZRYF6j+oA
	 iAS0VDjMjGOdkzQ65V4QcF2EqoTaJn+ba2JqefdLddB8FXfkToxIzVyne1ADUrLnSQ
	 nOUf2cnaoBjTg==
Date: Tue, 6 Aug 2024 12:22:02 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "Jan \"Yenya\" Kasprzak" <kas@fi.muni.cz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] wfix: accept4(2) SOCK_NONBLOCK flag
Message-ID: <fkp5fm23qsghofpdm2rjlghmhnvjetxsr7hwhjoa3wypg2epxj@pcbr3qhxiomd>
References: <20240806091932.GL14471@fi.muni.cz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wji3tnen4etadrkc"
Content-Disposition: inline
In-Reply-To: <20240806091932.GL14471@fi.muni.cz>


--wji3tnen4etadrkc
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "Jan \"Yenya\" Kasprzak" <kas@fi.muni.cz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] wfix: accept4(2) SOCK_NONBLOCK flag
References: <20240806091932.GL14471@fi.muni.cz>
MIME-Version: 1.0
In-Reply-To: <20240806091932.GL14471@fi.muni.cz>

Hello Jan,

On Tue, Aug 06, 2024 at 11:19:32AM GMT, Jan "Yenya" Kasprzak wrote:
> The description of SOCK_NONBLOCK is a bit confusing:
> "description" versus "descriptor", "open file" instead of "new file".

The "open file description" is a very specific thing.  See
<https://biriukov.dev/docs/fd-pipe-session-terminal/1-file-descriptor-and-o=
pen-file-description/>

Have a lovely day!
Alex

>=20
> Signed-off-by: Jan "Yenya" Kasprzak <kas@fi.muni.cz>
> ---
>  man/man2/accept.2 | 13 +++++++------
>  1 file changed, 7 insertions(+), 6 deletions(-)
>=20
> diff --git a/man/man2/accept.2 b/man/man2/accept.2
> index afc04603c..65a56e37f 100644
> --- a/man/man2/accept.2
> +++ b/man/man2/accept.2
> @@ -124,12 +124,13 @@ The following values can be bitwise ORed in
>  to obtain different behavior:
>  .TP 16
>  .B SOCK_NONBLOCK
> -Set the
> -.B O_NONBLOCK
> -file status flag on the open file description (see
> -.BR open (2))
> -referred to by the new file descriptor.
> -Using this flag saves extra calls to
> +Set the non-blocking
> +.B ( O_NONBLOCK )
> +file status flag on the new file descriptor.
> +See the description of this flag in
> +.BR open (2)
> +for details.
> +Using this flag saves an extra call to
>  .BR fcntl (2)
>  to achieve the same result.
>  .TP
> --=20
> 2.45.2
>=20
> --=20
> | Jan "Yenya" Kasprzak <kas at {fi.muni.cz - work | yenya.net - private}>=
 |
> | https://www.fi.muni.cz/~kas/                        GPG: 4096R/A45477D5=
 |
>     We all agree on the necessity of compromise. We just can't agree on
>     when it's necessary to compromise.                     --Larry Wall

--=20
<https://www.alejandro-colomar.es/>

--wji3tnen4etadrkc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmax+UoACgkQnowa+77/
2zKFKw//bCtL6zRX0dumaXBBXQzytdY5ewgVwMqNI/m5x2SCVrmIZ7+EJ8Ozyklo
aRWustFcQ4zLQr4hRTl+4jMWgyQUFoLIxm92SHfOOweNtx0z0tGE1AZKoY+SE8oW
WmSAbATOmJgnBY9L4ZyuAaSyzyuUbzFRpIGMfeLEz4mHe8xjQcNNHpUIQvVRdvy2
nRGnlTdCEz7IIVgcRxhOtkgsY+ik4L7+gcS1KJlHv38MMYkeaO492EQ282PF1qif
/DeJVQwOj7L1Nc19F2z5tQTqpqC1FX5gao0guW+VNF0m3FofPmXDQGuHajO3miKu
ErtRb6Nu21OMLca6dtfW3FHd4rqULXHnhgp5OjmLZTb1No8ydy7hFFeIoE82NGCK
A8CH8S/eef0uv+xnoJl+15Uyd+0PkBoS4HEcp4OAigAoQ/ggulxwQfKct3ZWb0qA
bR/zv7K32ZjZj8iZpOkfF/w5EesoXCguRDYA/GWtE3td3tZ5MiPuGILVhu8Efbxb
yeXHaO5hwzfhlG2yq8Ibcv8e3LbhlyLic3HejiOuVO3+h1IaMyZfBxgdRTDg1cPq
Ank7gKgOcLrzHCr4H4cgFWakKyQxViRB7dzci9xByT1/Dq2Vtuk0Imu1OIkqV10f
66Tu2GS3L1r2N0ZGJWrJE/u3qibJVUTUXcxmBKAWQPBICU767vY=
=ulmb
-----END PGP SIGNATURE-----

--wji3tnen4etadrkc--

