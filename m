Return-Path: <linux-man+bounces-3037-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D47C2AC4EFC
	for <lists+linux-man@lfdr.de>; Tue, 27 May 2025 14:57:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C9686189B84B
	for <lists+linux-man@lfdr.de>; Tue, 27 May 2025 12:57:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBA1726FD9F;
	Tue, 27 May 2025 12:57:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lnUcpYrj"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC27526F46F
	for <linux-man@vger.kernel.org>; Tue, 27 May 2025 12:57:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748350633; cv=none; b=PaUiCYBVTdQg/J95coRIojshXQiW5gaQ5XrsCp8387yJX1Sg7v68bHLy/Xcb9F7FkwFMIqxQfTUXzPbs9AJeKvxzxwJTZqgVLMiLAson4041aoO7af7A729JMSUd9i7RWfD/OMGzkIlkNYIaH92JL+fBVB5r+jieddNmZISv2jA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748350633; c=relaxed/simple;
	bh=x7yHjjSa8sjkc8N29zgx6xa5Ik0OsjH5y/n7vMmxq30=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=r8gYkJHrED+LINctINciALCNsKsgSe66qhlDQU0oxoxS29vf5AFVuBc0/CNpvBEPzl8Z8nY7HH8PbfiIZQU3Bv8Xdn2iMhjcUEWU9lPaRWYattM8DOxJKDBDPyeH5ZR6YYhSRBhpxOfRhedTNEVQYUjCUwx2Yfr4Zj1EPI0WhaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lnUcpYrj; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 77C23C4CEEB;
	Tue, 27 May 2025 12:57:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748350633;
	bh=x7yHjjSa8sjkc8N29zgx6xa5Ik0OsjH5y/n7vMmxq30=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lnUcpYrjQBJXoUyvJ+jZ8KPFUZYZzgGuQjKgdoDh6uPcq7Br6NEoBUXoCMaZAu99Q
	 zZVvIjTMAbSfrLVFf6upBFyNLwlAvP1ANyxS8hkYzrXMxGy9ccFYASHWRUAG5948AZ
	 7872WgoLGGXlRZvV9MEfyAzLGqJeyfoAaPLtOUVQC16AVboMB1RrlPNVaCOwhCC7yv
	 sTQnXNgrD7gB9Vjwrk86GJ4TrMM/H3PkwwPDB33MLWwgLEZADPDeT8LeNL5iENDdye
	 PS+RMcJOGcISgog5dE3WwWb8SE9HitRBAK8I6MjCONvoeETFmWtNMRwYG+pv0bqQkA
	 7qhmDog5ixkFQ==
Date: Tue, 27 May 2025 14:57:09 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: =?utf-8?B?SuKCkeKCmeKCmw==?= Gustedt <jens.gustedt@inria.fr>, 
	Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org, Ulrich Drepper <drepper@redhat.com>, 
	Ingo Molnar <mingo@kernel.org>, Todd Lewis <todd.lewis@gs.com>, 
	Alexandre Oliva <aoliva@redhat.com>
Subject: Re: bug in futex.2, FUTEX_CMP_REQUEUE
Message-ID: <h4lrlxfbnysqmqtqsqnhlbmehds4gx6c5ldpc4guoofshs2rma@wbouybsw2q7h>
References: <20250527115303.3304206e@inria.fr>
 <s5ec3atfffzxdetxbkjgkdiarnuk2yucnpi5j3h3ppqr72mxna@ml6zpucwnbz6>
 <7d4c29a5-6836-48bd-a6c8-009264be000c@redhat.com>
 <zrwfojd3ddditnyyppbyxwmzc5xoqp32gkitffxws4gxabnvm6@bpm6xy7f2l7w>
 <30b84225-8965-44a4-8856-3ab2169ba226@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yq2zuau7vo26cicf"
Content-Disposition: inline
In-Reply-To: <30b84225-8965-44a4-8856-3ab2169ba226@redhat.com>


--yq2zuau7vo26cicf
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: =?utf-8?B?SuKCkeKCmeKCmw==?= Gustedt <jens.gustedt@inria.fr>, 
	Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org, Ulrich Drepper <drepper@redhat.com>, 
	Ingo Molnar <mingo@kernel.org>, Todd Lewis <todd.lewis@gs.com>, 
	Alexandre Oliva <aoliva@redhat.com>
Subject: Re: bug in futex.2, FUTEX_CMP_REQUEUE
References: <20250527115303.3304206e@inria.fr>
 <s5ec3atfffzxdetxbkjgkdiarnuk2yucnpi5j3h3ppqr72mxna@ml6zpucwnbz6>
 <7d4c29a5-6836-48bd-a6c8-009264be000c@redhat.com>
 <zrwfojd3ddditnyyppbyxwmzc5xoqp32gkitffxws4gxabnvm6@bpm6xy7f2l7w>
 <30b84225-8965-44a4-8856-3ab2169ba226@redhat.com>
MIME-Version: 1.0
In-Reply-To: <30b84225-8965-44a4-8856-3ab2169ba226@redhat.com>

Hi Carlos,

On Tue, May 27, 2025 at 08:42:27AM -0400, Carlos O'Donell wrote:
>=20
> Suggest:
>=20
> (Specifying val as INT_MAX is not useful, because it would make the
>  FUTEX_CMP_REQUEUE  operation  equivalent  to  FUTEX_WAKE.)
>=20
> Suggest:
>=20
> (Specifying val2 as 0 is not useful, because it may make the
>  FUTEX_CMP_REQUEUE operation equivalent to FUTEX_WAKE depending
>  on val and val3.)
>=20
> What do you think?

The 'Specifying XXX as YYY' part looks good to me.  I'll apply a patch.
Thanks!

About the rest of the sentences (specifically the val3 part), I want to
see some more discussion first.


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--yq2zuau7vo26cicf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmg1tqQACgkQ64mZXMKQ
wqmQuw//ey6yIRNu14hB+DMudgzjVieSGPgYaG67lmJKWEIoTfmI7GLagqq1j9cP
b8Qa+JKUxXQHqr/S3+3gh4T1SwuV2z7jA75FU702NXVKN/hXr7cSuwhmfv1iwWTR
+2CNNvtsr2BfD7We5GTCUYZi2ctmls4HXenTHq0X7sduTvTm6iZAo188uR5t5yH0
Rhg3vzvzstkU80dtg+rKOY/4bOLZ2HRwQ3r7oGpsol1Fr++ciyk9mqm2o7QdDy/V
/GhUN+SRh75n3nef4m1lgfOzrj/Gl5om8VdQPHk1dwiojWS1cIS0mZk74plNINhX
hW6fwKbTSprYMkMgurHf/e9qEDwjws09PK5jHnq4ZpdwjS7jtfPvcvN73zYiqe+n
5YPAR+FMuZFgLdkU5/Pgr95kACF6ZS0MG9scxBc0fYjr1/HC2pOoV6OdadbS+xof
abpVmxxQd/4UhwERYYUwRiF7bTFcJzihgfh+ooimvF+R2wZSu6UvQvs++fa/6gYw
EAYIci3p6bn/2IklFMhuUmp9OPZEfytSbOm0TsHHLZHaORxa+bRFPcgGhz8+y70i
pVBDS9c2Qhuv666JCRSbw8KEBCkq7314T4lsxVi9ZMRSAFDSQo8tAmaGI3xpm1N6
fEbcpZ2DWdaKv17Wg060LiRYdeEaKOoIZmQbvQrIzQI5+pTDGPg=
=uyHg
-----END PGP SIGNATURE-----

--yq2zuau7vo26cicf--

