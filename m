Return-Path: <linux-man+bounces-599-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F24D687C168
	for <lists+linux-man@lfdr.de>; Thu, 14 Mar 2024 17:38:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AD4032839CE
	for <lists+linux-man@lfdr.de>; Thu, 14 Mar 2024 16:38:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFCAA73533;
	Thu, 14 Mar 2024 16:38:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BuZKNzoE"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70F4473526
	for <linux-man@vger.kernel.org>; Thu, 14 Mar 2024 16:38:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710434298; cv=none; b=Ah7gmdQjX1Ur/P+nMr816CQMRFDK1QiJlPULv7pIUarpRA6fb0D3TM5tRWkXS+M/nj2hK6dH/dAIyhxoGyx2EW5+18JIbfrtvH80cBI74KbbmK1t8onztl37DGFslglONHnJGZRUHPTolt0fzZw4t0euTxy97cSyg+mpZqWsh/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710434298; c=relaxed/simple;
	bh=QDX87gKJpKozVFDbaWT0J65SC46vGmb0e/nXtuA9GWk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CK4NkVafF2tacJt6twT7b8biW0bs4nUhBgU0kLULrdw2QUfPqMWivlKB+HoNRpP4wtJ9oMJmSIOjqJtegs37NmjYukzE+03PaB9H0Z+6Y8R/7Xlj5sx6iPFMODUuUALvCTfK635mfRO8FDFzYi9cHPEAfG1ZbzkK31wB2GVZ+IE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BuZKNzoE; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7F2C3C433C7;
	Thu, 14 Mar 2024 16:38:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710434298;
	bh=QDX87gKJpKozVFDbaWT0J65SC46vGmb0e/nXtuA9GWk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BuZKNzoEK9/3ZONKO0Ne2vHCG+jDQfNzPwJFsCIF/q15x1ovk1c+cE1uKRzoC8dR/
	 YQx0Y6csXJ1NMYsZT4cVcJbPiQzvpBW8Tzv5ilyp1jucrSQwovXJH5tJv8K+38UTVL
	 WPJGUHG1xrAw/emRgPUuRy+oDphbq62gqZsVoW+fP77u1nyGTNx4N0JgiK+ZxR073W
	 o125PeKnpc5MupDLrD9BZK9FWiTJJDQbIMxOiSuxhZ1/trI7PLgPIfdpnGKTL7DcAY
	 8Q2ubYV1FPozkXK5Ad/KhsP/Kgkzogw8PLnjzy+U91wclA2tnBDmFY5P6xghTcdCZ5
	 7GrwvrR4McHQw==
Date: Thu, 14 Mar 2024 17:38:15 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Samanta Navarro <ferivoz@riseup.net>
Cc: linux-man@vger.kernel.org
Subject: Re: [patch] printf.h.3head: tfix
Message-ID: <ZfMn93HnrrtYGoLt@debian>
References: <lor74cubqig2xpdblvkxgyh6chwveyrdepgydtxfrpo6psmgrg@hqlvktvd7yqa>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6Hl90wyjkeBbBFhu"
Content-Disposition: inline
In-Reply-To: <lor74cubqig2xpdblvkxgyh6chwveyrdepgydtxfrpo6psmgrg@hqlvktvd7yqa>


--6Hl90wyjkeBbBFhu
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 Mar 2024 17:38:15 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Samanta Navarro <ferivoz@riseup.net>
Cc: linux-man@vger.kernel.org
Subject: Re: [patch] printf.h.3head: tfix

Hi Samanta,

On Thu, Mar 14, 2024 at 12:21:50PM +0000, Samanta Navarro wrote:
> diff --git a/man3head/printf.h.3head b/man3head/printf.h.3head
> index a5c7d1c..8f647af 100644
> --- a/man3head/printf.h.3head
> +++ b/man3head/printf.h.3head
> @@ -231,7 +231,7 @@ and is now deprecated.
>  That function can't handle user-defined types.
>  .P
>  .BR \%register_printf_specifier ()
> -superseeds
> +supersedes

Patch applied.  I gotta eat less magic beans.  :)

Cheers,
Alex

>  .BR \%register_printf_function (3).
>  .SH EXAMPLES
>  The following example program registers the 'b' and 'B' specifiers

--=20
<https://www.alejandro-colomar.es/>

--6Hl90wyjkeBbBFhu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXzJ/cACgkQnowa+77/
2zJ3mw//YLccCHr8RVjxSMzGWhQkBdKYNjV6NDECLi74YdzYi+7y/o8AbbGIEqHH
bVrBqSpScFhfBSsoujq09n9o3yXxCLu1QiXs0huCGTebNyDsy7RPWi0ti/yjySME
GxemN3co6TmfxsFNScokSnkD1whlUd79QLJsKoank63P35FOrmKv2CjZmsLEPZF3
9VxRaJgveVq8mX8XzC9QIhbc4pC9frvmmgLdJdMUm5yO5DQdBvdOrQxSr1cA3Cvc
pcCMxrrAt/3eztrhZg6W5Ywks8upOy0jL4jTkgcnlyxNzanIxi4eYCrchE1YVkvl
/gob9nYbPGGenPANTHS2kQK0sqofeYCk1Oxfxnv1ozIjirenc+AVN1sicwlzRpqN
7jTfaUvP7chbHEkeusH76UldcPElS5ATeIzMWVObyGFRmOMh6mL2wwDvzQZvfwjx
AaiRckhabnX1ZfipsC9r7G4/tTnv/Ww3O1TFA+sH4AnqbD5EIGLJz/dofyqdD5F/
XqErRrwc1Auuvo18ftEhtN7k16bMz9B3Re2/1PHzlC4RzZRjqkua9cUwKkFVFpRK
c+93bdzPVL0KH33RTb1OVL+I153zBdAUXMiN5r0xeRZvAmCru4v8dEZAHhfl1wib
oByUZhwJ4inxOZqwwdbbh9BdFil3eFV8k78ZLQRu0JR+Rdai7NM=
=+PIq
-----END PGP SIGNATURE-----

--6Hl90wyjkeBbBFhu--

