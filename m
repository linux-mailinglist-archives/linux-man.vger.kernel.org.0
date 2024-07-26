Return-Path: <linux-man+bounces-1534-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B542193DAAC
	for <lists+linux-man@lfdr.de>; Sat, 27 Jul 2024 00:26:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E91971C229E1
	for <lists+linux-man@lfdr.de>; Fri, 26 Jul 2024 22:26:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1674814B064;
	Fri, 26 Jul 2024 22:26:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="urMD3B7E"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C99E938396
	for <linux-man@vger.kernel.org>; Fri, 26 Jul 2024 22:26:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722032770; cv=none; b=KFBMM3s2WEWQQl/pxN2/aAj6qNsuAOJ2uUdTN6LMHBnolX7AKqvrN15zQ1nQOojY76VIjhmxeMi82cdhQxhNvZKz3JgYdjSxkUEpna+tZoTZdFRSBNXirxLLfvmQUByxCJ5jAzXm3Vixg5Tf2xybs3ynDGI6aLPJMpe3nstSwpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722032770; c=relaxed/simple;
	bh=JVO5dSx9/XW1AHbbkL62PD2JNrZeGBNCCO2uqB0b++8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=D8rwEZk0uyno0teapM3zVxn3VEGDCBK3Ohl/bKfUFQtYsEd7BtwCenDEolEfZnKWIY9rTYDOaOfq+gqfvVjqZqUSZB7tg/mHkaeMMX7vN9ybF9558CFLi86AXXzp4gjSyIBSn2QPdq79K+tsAaUm0XR+Kuw+JRm8IAJQfvfL684=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=urMD3B7E; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ABE41C32782;
	Fri, 26 Jul 2024 22:26:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722032770;
	bh=JVO5dSx9/XW1AHbbkL62PD2JNrZeGBNCCO2uqB0b++8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=urMD3B7E3AY5MuQIa6BQvaBVN/7xyd+biWf7PdRDAoVQ4d8d0jy4Mhzhk7TkU/4yx
	 V6tqvWfcau6FJzISXHEVb6tLs5E6RHtghpqUOC1DdQUnNOHPtWp6hF0ZNpTWeWUv7L
	 zFUFO/GVVHdNEKBzOk9d95EdaMWrEk7NQtJMLGnCok59vRVamLwziHVxT9SlbbTLkz
	 OjCCxIKemj766kDiEeQU8S5gwoMftgURrzEyLNtBqB3voiCs7blkJGXeLRFFLS26VD
	 Aaeh+22nc7WHRZYUQ+du/LMGL0Ncet4t0YXAoJHh0J7LNgTF9GWfQj1NuxjJla02Qj
	 gskFnsKtrJF3g==
Date: Sat, 27 Jul 2024 00:26:05 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Martin Uecker <muecker@gwdg.de>
Cc: Joseph Myers <josmyers@redhat.com>, libc-alpha@sourceware.org, 
	gcc@gcc.gnu.org, Paul Eggert <eggert@cs.ucla.edu>, linux-man@vger.kernel.org, 
	xry111@xry111.site, jakub@redhat.com, lh_mouse@126.com, jwakely.gcc@gmail.com, 
	Richard.Earnshaw@arm.com, sam@gentoo.org, ben.boeckel@kitware.com, 
	heiko.eissfeldt@siemens.com, dmalcolm@redhat.com
Subject: Re: n3294 - The restrict function attribute as a replacement of the
 restrict qualifier
Message-ID: <rep4dolvep7xx77tirmdknhci5ogliqj44ufngop5b3xjjacoc@2azllzbk3lpw>
References: <20240705130249.14116-2-alx@kernel.org>
 <xjoazfkcloggmceefxusjusbksfslgpdpoph4ixdtp4kbu4kua@vdh73ba7k2zq>
 <2zazxwbvnjd5vqqqz66fpqdpzqnwjujwxeltz5rhu7camgsdmg@vvbalwgwmek3>
 <ca2e8de-b5e5-45f1-8184-7d67c6e4cb8@redhat.com>
 <dcmpclh7v3m263hsynbpjvroi4ldbiv6ig4tuug6ieyovcgv7n@vxojhbpm4bst>
 <48bf010-43ec-6761-13b1-55864296a90@redhat.com>
 <amyvxtyogghmybjpyqa26reuztb7ilvwxbzv4w3npehcstpzeu@j5pt4pwpqnjn>
 <b7d6847e-9028-cc8d-62c4-89bb83f52c8@redhat.com>
 <td4gjpccgfoszwnya4be7qrx5ahayohw2jhtc3v6kvuiy5dgpo@7idffrvo4hrh>
 <e3c35a4013c804aab50b453d90c178ec9eea70e5.camel@gwdg.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4dkimbgd623qnyie"
Content-Disposition: inline
In-Reply-To: <e3c35a4013c804aab50b453d90c178ec9eea70e5.camel@gwdg.de>


--4dkimbgd623qnyie
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Martin Uecker <muecker@gwdg.de>
Cc: Joseph Myers <josmyers@redhat.com>, libc-alpha@sourceware.org, 
	gcc@gcc.gnu.org, Paul Eggert <eggert@cs.ucla.edu>, linux-man@vger.kernel.org, 
	xry111@xry111.site, jakub@redhat.com, lh_mouse@126.com, jwakely.gcc@gmail.com, 
	Richard.Earnshaw@arm.com, sam@gentoo.org, ben.boeckel@kitware.com, 
	heiko.eissfeldt@siemens.com, dmalcolm@redhat.com
Subject: Re: n3294 - The restrict function attribute as a replacement of the
 restrict qualifier
References: <20240705130249.14116-2-alx@kernel.org>
 <xjoazfkcloggmceefxusjusbksfslgpdpoph4ixdtp4kbu4kua@vdh73ba7k2zq>
 <2zazxwbvnjd5vqqqz66fpqdpzqnwjujwxeltz5rhu7camgsdmg@vvbalwgwmek3>
 <ca2e8de-b5e5-45f1-8184-7d67c6e4cb8@redhat.com>
 <dcmpclh7v3m263hsynbpjvroi4ldbiv6ig4tuug6ieyovcgv7n@vxojhbpm4bst>
 <48bf010-43ec-6761-13b1-55864296a90@redhat.com>
 <amyvxtyogghmybjpyqa26reuztb7ilvwxbzv4w3npehcstpzeu@j5pt4pwpqnjn>
 <b7d6847e-9028-cc8d-62c4-89bb83f52c8@redhat.com>
 <td4gjpccgfoszwnya4be7qrx5ahayohw2jhtc3v6kvuiy5dgpo@7idffrvo4hrh>
 <e3c35a4013c804aab50b453d90c178ec9eea70e5.camel@gwdg.de>
MIME-Version: 1.0
In-Reply-To: <e3c35a4013c804aab50b453d90c178ec9eea70e5.camel@gwdg.de>

On Sat, Jul 27, 2024 at 12:03:20AM GMT, Martin Uecker wrote:
> > Maybe if GNU C compilers (GCC and Clang) add it first as an extension,
> > adding diagnostics, it would help.
>=20
> Both GCC and Clang already have such diagnostics and/or run-time checks:
>=20
> https://godbolt.org/z/MPnxqb9h7

Hi Martin,

I guess that's prior art enough to make this UB in ISO C.  Is there any
paper for this already?  Does any of your paper cover that?  Should I
prepare one?

Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--4dkimbgd623qnyie
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmakIn0ACgkQnowa+77/
2zI33hAAgCJMIcX+rUhElLbtlGGsj542iBA8UvKND+qvy9o8NZZRBouiBoWWzdVR
GPosiijk4F+BIFigJA3u7zFjjOvZUBRqsl+dNx1Dx1anSgMkr0mWOpDd5f7xHZOA
7Lj52r7+/o8SNQT3dRCZofMMPtLV8d7oAV8Twj1lTnYVN1VeKzqk8kYN3w9wxqPk
eqvu1RivxcMHJ4pCOQZ9oPewHbCyLuubwtuyf/NgYio9AT4mOZagHiwWUoxjX2oO
kpxQENp2+laemwjJmTqD+jjU53FWKPjHqHm/tHcisqwg+exo/px/l39Z8S4vGU83
z1TuIIMUaqsgb3BTfA0sAQYyU3FVd91fr12/L0TkyYC/fa8h52gw8j6Ivyqa3zlb
/3yn8F1dWJ9IfqWaTUqCl6exHh8maSXIDvnimvTBSDkY+9SyQpm7T1Ji2s/SNyex
Qo7hSJbnC/2Nvxy1kR1RF293q5drDzIjR5KYrtxFdTxIanUg8LduxlXvW9g4zUzF
V74DrT6tnnBj+ViyEAGvqOSw1AfW9hDAljqYHaP87qFyJNT5IuHeUwbqJ89ULy0i
1/9DdO/L2F+qdldTpURF0erQ03ODQ3Tiji5hJ5ocqW2aIobN9RLCxJfCaFbQrp8O
90msxGhwwhLzXjB8TtvTnnYJCdcoantWRbtGjVUosU+xWOt65Qc=
=cL4+
-----END PGP SIGNATURE-----

--4dkimbgd623qnyie--

