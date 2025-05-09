Return-Path: <linux-man+bounces-2897-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CA6BAB1D2D
	for <lists+linux-man@lfdr.de>; Fri,  9 May 2025 21:11:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 37FA0988959
	for <lists+linux-man@lfdr.de>; Fri,  9 May 2025 19:11:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B742254AEA;
	Fri,  9 May 2025 19:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vx2m1xsE"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B48E24466B
	for <linux-man@vger.kernel.org>; Fri,  9 May 2025 19:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746817914; cv=none; b=EuZLx+uARMtfq0hL2kiMPQ9sYwsPCzeJifBpLUU7bt7Iw3njTWCeZ02npIRX7y8844M1fpQw1eZAe3QkBWy1jJ0KmzS6c36ZQkjc1HWTs/lODnl/KEZnZF/RBJg5NT/tOzCTlCVGP5RKAcToFBKsJDIOkhQw/tubLUMie6DYb18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746817914; c=relaxed/simple;
	bh=/H4vwKxHVvuJ/ZHXwkKELmpDm96c1E/MEtnH72SIFdA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nf+0s2xeHCMqrsU3Z1NKyPax+xNNm8O/JLBhUb9gD/KBiP8ekAgnMtODxaLJAkXleGVcVy+zViv7L8/Q1qP3O8tJptuzXcZ9woB25EzsQVI3a4W/DxfVfeECwYptOCwJ8+V7eMH4EMM+8W+LMIcxhElx+bP1Tll2C5/6Vc9T0+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vx2m1xsE; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 86457C4CEE9;
	Fri,  9 May 2025 19:11:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746817913;
	bh=/H4vwKxHVvuJ/ZHXwkKELmpDm96c1E/MEtnH72SIFdA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Vx2m1xsEjKDAHajXycjvNWLuek6GFjjbdNdHoRBWeg3n+WuiW73cee0fFtGijcx4D
	 oT3fp43N77mpP1lxzRUkmr8LHAHVKx52fM8Lun5mLQf/vsPiuwbn/iuc68QUzJwnGA
	 YxQM/kzonBW5Ms3jrhviZYwxA/Y5JiQg6UmNU2z/3/yQem+gVYizy54noHnBDG4Lxc
	 ldakZO5kY0kyUDloMBI3Z9i7qy/uZdvrrIJXByZRvif3izCR8cXl4rn/0VLrjRMDG4
	 BYMtqYC7R3SOQtNWrMk7882Z5t57twPd/obxdwX37zA8HBP60oOhcsIknVkEGRn6oE
	 cStqeG2hcMYPQ==
Date: Fri, 9 May 2025 21:11:50 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "Christoph Lameter (Ampere)" <cl@gentwo.org>, 
	Andrew Morton <akpm@linux-foundation.org>
Cc: linux-man@vger.kernel.org, Carlos O'Donell <carlos@redhat.com>, 
	"G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: Re: Removing in-source contribution records contributer
Message-ID: <ui7qbdaamsaptb7jrmiich42mxyc3ldhjv4smk6njjaii3p7uo@46ypgbczz5qw>
References: <c45f3d934ec20ec5fc813400a4a56079c2241ed1.1739389071.git.amitpinhass@gmail.com>
 <wwjzzwjpbh2ayydhorwgs4jhycjgwhxfzlk5tfym7dxx4w7kll@yaspehl62eik>
 <20250212230210.3kkixsk7bi3cdc4d@illithid>
 <lvhwk4czikqmx4acydi5t5q3nshvgdipedz6xkt7auvz5mnmwp@auuzri4hvsrn>
 <gatqfsr5gvyy5iuq7gmlpibawerkcmbg4dl4ahzswbe5bgbec6@xyfht7yewjfv>
 <20250408124238.2gbis6jq5pdz7yoi@illithid>
 <7a09c8a5-6329-412e-be41-9950a758e55e@redhat.com>
 <nfwircxzu43boe5tme6loarzsq2rcecazpuox6eujeqjj6a7rv@nhzkijkx4lix>
 <2tmwbk6ennuamcvjdqnialvh4ez3zen666qatcklevasimlihu@n7o5hp6aejqp>
 <a146ff17-ed1b-24d4-6c8f-2b544d9c888d@gentwo.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sqgxk46mclhvmmdz"
Content-Disposition: inline
In-Reply-To: <a146ff17-ed1b-24d4-6c8f-2b544d9c888d@gentwo.org>


--sqgxk46mclhvmmdz
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "Christoph Lameter (Ampere)" <cl@gentwo.org>, 
	Andrew Morton <akpm@linux-foundation.org>
Cc: linux-man@vger.kernel.org, Carlos O'Donell <carlos@redhat.com>, 
	"G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: Re: Removing in-source contribution records contributer
References: <c45f3d934ec20ec5fc813400a4a56079c2241ed1.1739389071.git.amitpinhass@gmail.com>
 <wwjzzwjpbh2ayydhorwgs4jhycjgwhxfzlk5tfym7dxx4w7kll@yaspehl62eik>
 <20250212230210.3kkixsk7bi3cdc4d@illithid>
 <lvhwk4czikqmx4acydi5t5q3nshvgdipedz6xkt7auvz5mnmwp@auuzri4hvsrn>
 <gatqfsr5gvyy5iuq7gmlpibawerkcmbg4dl4ahzswbe5bgbec6@xyfht7yewjfv>
 <20250408124238.2gbis6jq5pdz7yoi@illithid>
 <7a09c8a5-6329-412e-be41-9950a758e55e@redhat.com>
 <nfwircxzu43boe5tme6loarzsq2rcecazpuox6eujeqjj6a7rv@nhzkijkx4lix>
 <2tmwbk6ennuamcvjdqnialvh4ez3zen666qatcklevasimlihu@n7o5hp6aejqp>
 <a146ff17-ed1b-24d4-6c8f-2b544d9c888d@gentwo.org>
MIME-Version: 1.0
In-Reply-To: <a146ff17-ed1b-24d4-6c8f-2b544d9c888d@gentwo.org>

On Fri, May 09, 2025 at 11:31:58AM -0700, Christoph Lameter (Ampere) wrote:
>=20
> Also regarding Andrew Morton's email address: I dont think osdl.org is
> still valid. He uses linuxfoundation.org these days.
> But you better ask him yourself.

Hi Christoph, Andrew,

Thanks!  I've bounced the original mail to him.  Andrew, I guess I
should use your LF address for the AUTHORS file, right?


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--sqgxk46mclhvmmdz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgeU3YACgkQ64mZXMKQ
wqkyrw/9F2oCnBI3MV5KRkCDIyXRY6SslpSwqNjdh1k3c6RvYlYhAGlx8gwUYlT0
fcpPox4MVLJiHq6Ya+CXtJYrTI+EcahlyaJpOwUb9ZWSbqDBukHTAlxEb/ENnnH5
G4SL1h4DtwhVWyYrEk7WCXFO2aFASs8041dCv5LUzAONP1Fw2q1S5Ayfq92T5d4m
OBkT5J8z51/+0f/Gv4S9poHTHpK+Co1hA0ODccD9verupOygIwMy/pwpFf+XY23f
pDNSI/5ANIWauIIv5SSVPBeamwfCKZnf43kYH95FTKwZ8zkH45tpONTMBQaZUB5D
Zhd5qpy/snzjulOU/gxgF+9v9W58xrrek21+4e/DbEvlg89Frnh3Xk4fst9Wb84Q
oI0o8UqXbJdFAsjVcD0btbeZ77yiTspZp+pGCaLBJY8nbLR8IykVKUPa1vzur+RG
QheunJR9Cu6MsXChWNIgbnxTKCmyGnmGquqPqNViDpcyb2nn1jc8fkGX8s5BWt3z
NKsmvQxvDH0mZUjwyUqnmI8vfCNXzwxRkB6RV7ZfOy4uH7F2bs905oFb0GNthjpV
hYaVoAnFRIjHGB+JhtwrUNKTfZqoBGOxIvBPQfo5YZ7MhNIxB83rtEPfvYuIBiLv
JDcF+2kDjiX/50rJEzeuvd9dtJcGooTsi4gKTTkN97yPIxfkVxI=
=4SbH
-----END PGP SIGNATURE-----

--sqgxk46mclhvmmdz--

