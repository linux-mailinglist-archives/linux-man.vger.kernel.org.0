Return-Path: <linux-man+bounces-1982-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 362D99D0351
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 12:45:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F067F283694
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 11:45:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0C7717DE2D;
	Sun, 17 Nov 2024 11:45:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="quEDul2T"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 929F317A58F
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 11:45:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731843944; cv=none; b=MIdWV0FEFRAAxJDZ24mHssdHwyrThsGDNFZDq/qqhCvMnUDQcRbQsXnn8d2YwS2WXCRCZK60z9Z5U//qtBh2Nr2eOghm5N0ZpUnzM4iTOtXKLib41ZGa1AZQ6kvhgxyGOb/jMto9onOsnymT/ji5Fzd+S0n2YGt3fRGv5Zvw+wo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731843944; c=relaxed/simple;
	bh=gTA8leefnY2+c2iFgLGDu4N/bkLpHtUipmTflIjXFO4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WWuLVzJRSUH25/mD5EpZJh0aJCsdRfV39VxpP5mFU0K+NKDk9eP6FmfO7UG7HdE4HDWT+3M6c4v7XG8ApNmJAuxp4RkXIfZuArifpdYIuJMSWgKXTrlFudXBnXHSIxGc13IVZSk2cSuRlV/2KyVgeZrio/GbZpLPBvgKik9rl6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=quEDul2T; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5BF07C4CECD;
	Sun, 17 Nov 2024 11:45:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731843944;
	bh=gTA8leefnY2+c2iFgLGDu4N/bkLpHtUipmTflIjXFO4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=quEDul2Tm7aIfQskVUupcp3qIXS6CYnVr3WogIw7Jw4KVGt+04th+3SQPoOz8AviZ
	 jnUEx57VOJQe64bXNfZ/Vd6btqzVxAFnGUU3hAwTbDT2F84363ZsY2G58KRIb400rF
	 dwKNY+qTwiEiuYLDgvPsmN7M18z6SRw9BJ0eSffHGVB/LTfzJrSOW6MFgkSqgZizSz
	 oP9FXvg79rZ/QLcMXIBgrlQKIKrf2ZuXo6iAwWuEp/KkzYWXWikuOS4AGm1MuXRN9y
	 EB0aFTrqQs8vqZsW2LKgJnCptJmCdgRYKa45h7ysazWuhOASWgAJPd3zJ4LaXxtAp6
	 Gyo7CNms1Frwg==
Date: Sun, 17 Nov 2024 12:45:41 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page sscanf.3
Message-ID: <5ptvzcccsoidj44iy2lqmun33vd723wzs722maqp2lmyxaubvp@uy35df6uxmgq>
References: <ZznJf8X73k2a4ms7@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ez4p6mj6vlbya6lv"
Content-Disposition: inline
In-Reply-To: <ZznJf8X73k2a4ms7@meinfjell.helgefjelltest.de>


--ez4p6mj6vlbya6lv
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page sscanf.3
References: <ZznJf8X73k2a4ms7@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <ZznJf8X73k2a4ms7@meinfjell.helgefjelltest.de>

Hi Helge,

On Sun, Nov 17, 2024 at 10:46:23AM GMT, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    Why is "Undefined Behaviour" capitalized?
>=20
> "Use of the numeric conversion specifiers produces Undefined Behavior for=
 "
> "invalid input.  See E<.UR https://port70.net/\\:%7Ensz/\\:c/\\:c11/\\:n1=
570."
> "html\\:#7.21.6.2p10> C11 7.21.6.2/10 E<.UE .> This is a bug in the ISO C=
 "
> "standard, and not an inherent design issue with the API.  However, curre=
nt "
> "implementations are not safe from that bug, so it is not recommended to =
use "
> "them.  Instead, programs should use functions such as B<strtol>(3)  to p=
arse "
> "numeric input.  Alternatively, mitigate it by specifying a maximum field=
 "
> "width."

Fixed.  Thanks!

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--ez4p6mj6vlbya6lv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmc512UACgkQnowa+77/
2zL2ahAAjZuVCiTlQT0i4oEwge2U335HrOYats5lkxAiJS1sMQOYeCBUeOv4i0h4
rehVY+o8GfJ7ROUzJmBEbFYwPxjMWeRB64kOT0P1xK1GZYZuwEBheP4ofXZ4W1Yi
JrQyKi2op6HTUL0Q0MCe64fyzavwJZB5G3pmujjRD/ApaB7Tt0QhUCzNWzBdy+X+
cfb4bP00pcFknItmz1bvrHLdVa95MdaXfq1UNfo7kF1Xq1OPqKjdklSnfd2hSJhU
y2g74ajUy9tvoeVnJ9Fke5WSEFuiZ8Jzy7y5MOzN1eEH0cvGI5IG2R79IBWiQD3v
JpcUv5nHa0edMkycLV7sYaG5vDtVKXv0pfZw3JvO/wGEed3ozqN9ctT1lHFPgTsr
MaAwDqaKHEVWwsBtzPRCEOzZ0U0KxYDsEV9vyDYPSE8sKESm2HfT9eY4Ia7MmEhs
/DT3tJGV1th2k/XxPwdp+sJWs5fbariP5P5S73lFrPDYfSjnQy9H/68XJazk7IOU
yoPlku11pTLNLYqlJDB+PQYQfXQEF/iSO9NhLTDA9i11ZmwfsOnciZ8scD+rEXBf
DgOsstjQlyZLXTIWIhWOdYl/O5dXwwZG+hSAj+R4yhhsR4Vi1CZX2vl396OiZG1I
RSFFknD8jStflGEV51HxCi4paO0OMSU4Tm16qAaPB4XfWLn63BE=
=0eZU
-----END PGP SIGNATURE-----

--ez4p6mj6vlbya6lv--

