Return-Path: <linux-man+bounces-2265-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8644CA16B16
	for <lists+linux-man@lfdr.de>; Mon, 20 Jan 2025 11:56:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3DEDF188702F
	for <lists+linux-man@lfdr.de>; Mon, 20 Jan 2025 10:56:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 301B61B6CFD;
	Mon, 20 Jan 2025 10:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SiR9BnUJ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4912187872
	for <linux-man@vger.kernel.org>; Mon, 20 Jan 2025 10:56:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737370582; cv=none; b=uaZDC33PQXdMi2+TtWKdqhoFSX4xzOkMKUpFYesCpWgEBgP1Xxvjpx0+vwNhm37Q0uPYhjPjgQaFKv1xngoEy/TEohYbLd2ARoLc4f2oZ0+B8OhZ5fvdRlOKpvn4tentzlnoI6o/eS9kD3QNKzPTkyb0kjs8B8y2Wi+D6rWB0hU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737370582; c=relaxed/simple;
	bh=rdYeXwZhAqzeuOr46gsYyoP0AG71G8iTh68NYC4CT5Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KkTr3VCzdlAXgVnaQ13TeSFlh+V0OdWnv23GWAYMX5xEvM9Atx39NXDt2zzeklMX5/sujAqBXLILafHrtpgfP+u9Hon/wUxEGru5mH1YafV3EMqXTVzLKrWnNQT71yvlLrRzfbIUAdmLnLq04EPORDyDK3x6n6Rrfi6gTe19TtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SiR9BnUJ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0AB98C4CEE0;
	Mon, 20 Jan 2025 10:56:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737370582;
	bh=rdYeXwZhAqzeuOr46gsYyoP0AG71G8iTh68NYC4CT5Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SiR9BnUJ6RlU9KKihV8Q2KY7rACbgqZgVfPG6axZAf+Xo/7OUalI1AmPASdZGBRQ6
	 EflzCBQtYhvtwajePHb/RHtIIZR+pxg3dIFzlkYJTzHc+1UmMvIpzorydoheXhLLFc
	 Icuy4R0DSB00L89ta1TrEY5aB+3MDrJstHo107rsqeryqhvVRX90C5McQaOavlW5Vi
	 0fVPRPyGs0R6F2Gzm7Cqha6yc2jDt5m0Z7FBwAF532gjyscOQaZlD0PdaRyww56Y4m
	 zaFbHvLfDIBNx5ucPd/tE+xyJfaaKtotuD4VEb9yVmetgnvA1RugHNPQ6rMcKx//ff
	 52or2lqVzt5JQ==
Date: Mon, 20 Jan 2025 11:56:35 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Chen Linxuan <chenlinxuan@uniontech.com>
Cc: linux-man@vger.kernel.org
Subject: Re: Missing `munmap` in clone.2 example code
Message-ID: <amuuz7myresymfcsl6nmg7riwmmlzn42qadqmqbeck6lfmrpwl@jmeocxcpkynb>
References: <0FE174BEFC4B0385+2930538d0fd26e9b135e20d69c75590ea6237435.camel@uniontech.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5dvy4hkkem5rde3r"
Content-Disposition: inline
In-Reply-To: <0FE174BEFC4B0385+2930538d0fd26e9b135e20d69c75590ea6237435.camel@uniontech.com>


--5dvy4hkkem5rde3r
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Chen Linxuan <chenlinxuan@uniontech.com>
Cc: linux-man@vger.kernel.org
Subject: Re: Missing `munmap` in clone.2 example code
References: <0FE174BEFC4B0385+2930538d0fd26e9b135e20d69c75590ea6237435.camel@uniontech.com>
MIME-Version: 1.0
In-Reply-To: <0FE174BEFC4B0385+2930538d0fd26e9b135e20d69c75590ea6237435.camel@uniontech.com>

Hi Chen,

On Mon, Jan 20, 2025 at 05:20:54PM +0800, Chen Linxuan wrote:
> While reading `man clone.2`,
> I found that the parent process doesn't unmap the stack of child
> process.
> Should we unmap the memory in this example?

Would you mind sending a patch to discuss it?  Thanks!

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--5dvy4hkkem5rde3r
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmeOK9wACgkQnowa+77/
2zKmEw//QO/b14+nfL4AY4xtQ5HumDF2cRYkCp9qNScF9lUnig8PpUicEgm8EJpw
6OarA0LzZY+X2N/c5kQhjvgwqEWAKX7ELa1ptfqboHrjye5NYsDDxo2fHfgfXpBU
C10qgOMQqi7Mm9BXRfKtB5S3PiTP1fgxjgZkg0pyysjA3ijUj49k5x3Gj8O9UfFG
gSCBUVB/PA1s3upnXH1u+fYhfdNDY+TC8M9Y2+N41y75CcHhOXpq00axNKO2X0Kz
1urmQvm+TNwYOTerV7tj6xSAQcBm52LAr3KYVomX/wvVAUQEA/TYudUKlXE62IsR
wMCRdjH+0Zt0udOGYF3TqcSlSxC443YuWv8LfODy+mppMpF+nO3HyivYB5WSkMBK
Vf8/vnd/OtVKMb4LfIkbxLV1WX6FY7FK3b2Ma1ue64eRQ1wr2mjc6JN60MAgq5f8
BHw90hOF/NdLsCsbkM/Jb4PRJhEsGi6WLx1GKog2sdNV21UHpiOruR8liqccT00E
IhdTYemiLAdyfoTaNln2c0i94aptDiPfsXiyjz71gslRwYCn0TbQpDfTR30Kg66T
/mottHR5hAcNd/zLTTB/ArWHETECb56rN7u08eOgpXwnfJ34tBehj6pQKYdaOu8B
eku5AUqWfFR7gloU4uyo677mug0GaSv4X1T5Y1oWF5LjX7sm0o8=
=JoA6
-----END PGP SIGNATURE-----

--5dvy4hkkem5rde3r--

