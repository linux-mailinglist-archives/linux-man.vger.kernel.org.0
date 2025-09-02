Return-Path: <linux-man+bounces-3828-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A696B4062D
	for <lists+linux-man@lfdr.de>; Tue,  2 Sep 2025 16:08:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CF6B818954DE
	for <lists+linux-man@lfdr.de>; Tue,  2 Sep 2025 14:03:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F1AF2D239A;
	Tue,  2 Sep 2025 14:03:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=alejandro-colomar.es header.i=@alejandro-colomar.es header.b="BBR8jKDM"
X-Original-To: linux-man@vger.kernel.org
Received: from out-188.mta1.migadu.com (out-188.mta1.migadu.com [95.215.58.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FD202882DC
	for <linux-man@vger.kernel.org>; Tue,  2 Sep 2025 14:03:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.188
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756821805; cv=none; b=h93Kiuyf5mhRqwPjy36z15Cmz4+0iq3lvY4s9bhaG3YwYBKbOtIIf8WZeUEVINwjBjmodYUhivcVtowCd6eZp6CIONbozkhTWuBxh0SQGkbBH6dnJWTKjA6DGbAg7XV95bLWDmLaYPeCzvXih8N+GzUiRYjIUyW1aN5ElRFeE7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756821805; c=relaxed/simple;
	bh=o7mGKYMOGzvZ0+GqcXoq2OET7FkCq+q8s+a2Qoq7/nM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=L24TZS78reTA10O9d7DcCq6qtTk8Rs8cD8XmtGnLKpUgWVI2qd9fdDmDRsYDHOo0sx3QZJ9sK42skBSl5wXoO+DRSWF7xWvYi/BSNQ4ncibyXpjTl2wry0MrOPYXAdlEBteY8nuCRNiY0e4qmcBypzIXhK2ZLR42vf0nFp+43as=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alejandro-colomar.es; spf=pass smtp.mailfrom=alejandro-colomar.es; dkim=pass (2048-bit key) header.d=alejandro-colomar.es header.i=@alejandro-colomar.es header.b=BBR8jKDM; arc=none smtp.client-ip=95.215.58.188
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alejandro-colomar.es
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=alejandro-colomar.es
Date: Tue, 2 Sep 2025 16:03:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alejandro-colomar.es;
	s=key1; t=1756821795;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=hCF9XorWiTJC2qT5/BWDU6GmXVWav7kKOk0VxvgkYHs=;
	b=BBR8jKDMtX9/VaX0qli2+gTsAyjE50KoNxJg3EnohG1VPwYeV69BI0pNwX+qVW/ppf/EQW
	BjArKiJXD2X1LRPdulw8F/7YY3yocpH6bdERzeBvhn2glL6ngVahzK4W1hYaDH2at6Rcnv
	deEsLxxph0tj+79GZBG5wqTwFtfGu7zz56+LaGlR19XQn66MdpQNftorOeZSU4UYjgclV5
	3hfA/X50IQLCflHIwFMuEetDs3K0mc2E7Qr4nY/GHGLOTcBpTBmZOBBxedE6tlIb32FzJY
	LUREC2ULznFmurAbddktA4RAz866/c5PRHgna2GFEtO5xjwnye2wg40TB5IHeQ==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Alejandro Colomar <une+c@alejandro-colomar.es>
To: Joseph Myers <josmyers@redhat.com>, 
	JeanHeyd Meneide <phdofthehouse@gmail.com>
Cc: C Committee <sc22wg14@open-std.org>, 
	Vincent Lefevre <vincent@vinc17.net>, linux-man@vger.kernel.org, alx@kernel.org
Subject: Re: [SC22WG14.32341] alx-0051r0 - don't misuse reserved identifier
 'exp'
Message-ID: <uiwm2fze7v6oe6x3m5viywmgewbmmy42ahtyz2d2wigjgkbv7z@cabk7xlg5dwr>
References: <20250714222434.4D926356820@www.open-std.org>
 <dddf118f-942d-328a-6a0c-e8e67a9f5c17@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wmuzmoccw7leih3r"
Content-Disposition: inline
In-Reply-To: <dddf118f-942d-328a-6a0c-e8e67a9f5c17@redhat.com>
X-Migadu-Flow: FLOW_OUT


--wmuzmoccw7leih3r
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <une+c@alejandro-colomar.es>
To: Joseph Myers <josmyers@redhat.com>, 
	JeanHeyd Meneide <phdofthehouse@gmail.com>
Cc: C Committee <sc22wg14@open-std.org>, 
	Vincent Lefevre <vincent@vinc17.net>, linux-man@vger.kernel.org, alx@kernel.org
Subject: Re: [SC22WG14.32341] alx-0051r0 - don't misuse reserved identifier
 'exp'
References: <20250714222434.4D926356820@www.open-std.org>
 <dddf118f-942d-328a-6a0c-e8e67a9f5c17@redhat.com>
MIME-Version: 1.0
In-Reply-To: <dddf118f-942d-328a-6a0c-e8e67a9f5c17@redhat.com>

Hi Joseph, Jens,

On Thu, Jul 24, 2025 at 06:33:47PM +0000, Joseph Myers wrote:
> On Tue, 15 Jul 2025, Alejandro Colomar wrote:
>=20
> > Rationale
> > 	Since 'exp' is a library function, it is a reserved identifier,
> > 	which should not be used as a variable / parameter name.
>=20
> It's only reserved with external linkage and file scope, and as a macro=
=20
> name.  (It might still be less confusing to avoid usage in these other=20
> contexts.)

Can we please still apply it editorially, even if just for avoiding
confusion?


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--wmuzmoccw7leih3r
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmi2+RQACgkQ64mZXMKQ
wqkgCQ/9GaKeGVwKSjxbmOq4OFd2DK2bQqhwidyi2OlNUQvOw1RFFlIaZBhwj8vh
ilB2dxRZr2Gkq3fvd8SYaut9zDtbtPgo2569XL/LMy1JLM9vv+hGCU23tpbIRcke
tFTYlm4yXIjZlDoST2viL8xArL0EbRfp0stoutqK8Xc8R7CaN9jzzYI234OAz8kB
DgYgTvt/V83vWztYIlXIskXlZIpqB3E5Kdy7YxwSwJth2d1uwCelDW9p5TY/o7K2
pD7RjgAJRxGu4UPxcIQG6CjOqj/pdUZXAQjKfCZXqFsANs6uZLXjvAFdJuv2GXHV
/BbUZc/rqArUSjKEqCjn6uZrl0w3QVyKwzCOxisZru5oYyIG0hqVL7TixPzfND0q
reo7Xw3bhcuIbV8rslqx6qYXhHECRZY5QLnuESefIaNV9ZjoJHGpujC+LTg7wneR
I1pn3EOG7cbu1XuhrtM1QGt3joVoPcOwo5VI4vNmVBoUybtqSgIj9pMi0Ht6sAaF
Wr72zoIHtefEiddVhESt3yCKtrcOSBWaZgU6yVbqNQ0X+GMe9S121/eRDAVi8kFg
zrMiWz2XfOYFLLEIx1nVtofBK1nhp1J8xDecnKjwSUMlETOhOWThj4gs46XaZ5bC
GflTT/LfMXE1z0FmRVeg5rWgABuHqSFZvGWHl3DUPIhPJvVjp+g=
=wfAe
-----END PGP SIGNATURE-----

--wmuzmoccw7leih3r--

