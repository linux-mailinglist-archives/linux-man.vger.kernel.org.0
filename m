Return-Path: <linux-man+bounces-2837-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B9CFDAA6528
	for <lists+linux-man@lfdr.de>; Thu,  1 May 2025 23:14:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2DD4C175AFE
	for <lists+linux-man@lfdr.de>; Thu,  1 May 2025 21:14:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD84C2609E3;
	Thu,  1 May 2025 21:14:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J51kTDS+"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 999722609E1
	for <linux-man@vger.kernel.org>; Thu,  1 May 2025 21:14:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746134049; cv=none; b=VcT2kLlXu5vCJQ02+aWZiz70U32bA0NKJC3VLkjnkP+ajpDSBsj1pAxfsaa1tOvxn5uIpUcuMx1SVCu4VeCSliXpbiocrZCG+hlziXj8/qb5QYB5msy35gCn3iuXon2ugn+VjIe7eWy/8I6nWwI3G7hLV+xnZ1X03VUDnAT4iw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746134049; c=relaxed/simple;
	bh=Bhi7JNt3jxNEY9QHorHWjxMedmlVt3aQqKCJv246QwI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GIPOgGq3J1ALVMZgus8LEA0HyAs5BEu/PIUlURLOcI1DxAWAAX9I52aRixCLPYUF0WQctdYhTSGnyJI21MaZtK8ZSpG7XW+B98AoXCpt+vP7EGKs+EuP6QPIL+RhHvYcYfzcEEYl+oqDZHWS1/Ft7Klvu1/JqAIQNosJ4Cr9OEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J51kTDS+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5E3B5C4CEE3;
	Thu,  1 May 2025 21:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746134049;
	bh=Bhi7JNt3jxNEY9QHorHWjxMedmlVt3aQqKCJv246QwI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=J51kTDS+UMPeY66UaQvn60jn7hZWr9ixFJLcNtWMwoZL0osY8bgoyhZfEhXSft71Q
	 cGgvEycMqbHUsCTXuX+Sf/Hec6qGrYQjjeu7cYjeUaK/90JegQYjw0F27qDNodeutw
	 r4m865PFXctjPmcKgHCFz0EwWNkhDSUWp+RICrdRr45djtCg7OOfOFQd7HN16hi3Sv
	 0p7e10u3L9Wy6tnAcm090bYmVvoHwGpdE3ZW2VuJDQ3nwBqVbm9+nHFYpQYW0y0ZJU
	 mxCbW1D3F8ldB6klP6ywugQ//IRuQ4Us3VSBJZhEQdLNR3rUDhgPaQfJU8H90ZK6/B
	 gSOh5sWGhuTOA==
Date: Thu, 1 May 2025 23:14:05 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Quentin Armitage <quentin@armitage.org.uk>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/close_range.2: correct provided output of
 example program
Message-ID: <mkmhyivojlikksknaldh7qtejegee4jti7fewkm7team6adf25@7anklnf7c6sg>
References: <e8519ea77798c68944717bc6437052a1119a911f.camel@armitage.org.uk>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xqwttgjmu5taovys"
Content-Disposition: inline
In-Reply-To: <e8519ea77798c68944717bc6437052a1119a911f.camel@armitage.org.uk>


--xqwttgjmu5taovys
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Quentin Armitage <quentin@armitage.org.uk>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/close_range.2: correct provided output of
 example program
References: <e8519ea77798c68944717bc6437052a1119a911f.camel@armitage.org.uk>
MIME-Version: 1.0
In-Reply-To: <e8519ea77798c68944717bc6437052a1119a911f.camel@armitage.org.uk>

Hi Quentin,

On Mon, Apr 28, 2025 at 02:50:48PM +0100, Quentin Armitage wrote:
> The output shown for the example program listed /tmp/b twice; the second =
/tmp/b should be
> /tmp/c.
>=20
> Signed-off-by: Quentin Armitage <quentin@armitage.org.uk>

Thanks!  I've applied the patch.  I've amended to add a reference to the
commit that it fixes.
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D71a25207293288a5bf9e4d6e9570c6946dfdcbf1>


Have a lovely night!
Alex

> ---
>  man/man2/close_range.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man/man2/close_range.2 b/man/man2/close_range.2
> index c0ae95e2a..ea1a1d2ec 100644
> --- a/man/man2/close_range.2
> +++ b/man/man2/close_range.2
> @@ -185,7 +185,7 @@ The following example demonstrates the use of the pro=
gram:
>  /proc/self/fd/2 =3D=3D> /dev/pts/1
>  /proc/self/fd/3 =3D=3D> /tmp/a
>  /proc/self/fd/4 =3D=3D> /tmp/b
> -/proc/self/fd/5 =3D=3D> /tmp/b
> +/proc/self/fd/5 =3D=3D> /tmp/c
>  /proc/self/fd/6 =3D=3D> /proc/9005/fd
>  =3D=3D=3D=3D=3D=3D=3D=3D=3D About to call close_range() =3D=3D=3D=3D=3D=
=3D=3D
>  /proc/self/fd/0 =3D=3D> /dev/pts/1
> --=20
> 2.49.0
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--xqwttgjmu5taovys
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgT5B0ACgkQ64mZXMKQ
wqltghAAjWz7rzHdBghAnayjbZPBKrrxU0rw0GqHSRL/WfQ0Bb72kslkWT9EWiCg
RBkDE2ySCiBmVs2NZ10C0/yN0HmxDx+rlMEwAfJ1e4/d03iAajzA+mYlfhzeGJbq
SgNg0PvUcJyT+/qmbgb8nOk1ql9WB1GPAgCBLahuekka32Fho3QWhwtHZUGeTPxP
qP3NRmn18nqUD7mING029qJDIwjsh0cuoCVfeiu9gn2LjkSoYtJixfQyAIglekBe
I0MmQAQ5M79MJzzOL7EtqR42v2PL4WzH7SUFvDPVjrIxur2d/2+4ECf4exumGqO2
T2aa4AeBTRthrrqprsHltjXwQZJQOU1tcp2bvRs3aRpth/VEhBUz4KKeTJcgfDWz
bffKusEtmNsHO3Yr0p6lXgqFjoZ+Qrle/oVhCcnQfEKvRxkdQGETeAsKxqUMhAqA
X+6eunmaMRb1OHwBbPm59o9d1FAr9mu9Tw+dTjWzRwdFHFhjNfxyGmHStBhXKtrX
pur2WTEx4R33ggEGfpocT+48ibmUSa0SLDOdmclhgnlIhoIv8l0cIQ1DjBiQ3lCJ
BfsmguvCIuI3dcI2JSOy5t7M3JPcVHXreFVN5z9WbZEk5SkfebhsXhxcCYhHX5Wv
6ors/KrD6LhTXsXt0DMrgJ8jEjvzuqkVTW14pDEXyfnInhbWjp0=
=W8e2
-----END PGP SIGNATURE-----

--xqwttgjmu5taovys--

