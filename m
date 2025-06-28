Return-Path: <linux-man+bounces-3226-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CB13AEC80A
	for <lists+linux-man@lfdr.de>; Sat, 28 Jun 2025 16:59:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 48EB017CFF4
	for <lists+linux-man@lfdr.de>; Sat, 28 Jun 2025 14:59:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8759A22FF35;
	Sat, 28 Jun 2025 14:59:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hSgYFXOW"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48AED2110
	for <linux-man@vger.kernel.org>; Sat, 28 Jun 2025 14:59:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751122745; cv=none; b=RIXC6faGQ+LaOLf6D3VeeW2QRzoSQxMzVY/sZkcKnT4+OAYr/KptD0o4iSAedEdpVrjww8J14dhDSYya+vGq19JEOO2fSowLRDfieGiJD4eiS8MRZLD85LU1oBrYEPSkUS036PwM++4depy1rTyj5bPzcjDaklDpkh7TTggDl70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751122745; c=relaxed/simple;
	bh=XK7W++AeZKWVaWbOVvpdVe/9/0f6O4yMWE53QK4eEcU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VAZ+RUEm3UhoQ2DMETlqdJuBXSkAaI2htdU9iFSCrADS9aRWJvS9Mt87rq2jPEGjbsJuwWkB/3VPBHAfGZoSw8sFBVAsvEZkDAd42D/6LIdthprGhkPDjk5HQWgmwcCLHmshN98o3KyrBIxNX+Cr+pXnum1gD7w8R++J9GdB5+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hSgYFXOW; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A2AA1C4CEEA;
	Sat, 28 Jun 2025 14:59:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751122744;
	bh=XK7W++AeZKWVaWbOVvpdVe/9/0f6O4yMWE53QK4eEcU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hSgYFXOWRwcrh+DvgFncTGPIv41qlULrDZVgSIyS+H++vhcQc0XLrjt9AVdYslsw3
	 zUhpyBdH2d/J7AG+iRM8rJR2pKXzVQlo7JQ8js3wRX14Y3KqGOLSQHFohWUVe1+00s
	 D1zK/rHLk2TH0a0sSEL2b04W1Zu8OBCifD6tw66C0y75xgKNQTi4nWPTGEedwQfOaM
	 kNXypTS/U1KfGOUOKmJ53UN+a39paUJWIJGsxNFFzLH3FW2U4Lykk//aqwrHb2G3tL
	 EVg7kkbRlgmdTs2KCmOqK2vYz8/6hYFKiE6zROGYCk7BH/Y8LK4+4IuNMJoq9TAmQl
	 BgsBf2Jr+Szsw==
Date: Sat, 28 Jun 2025 16:58:56 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Mark Naughton <mnaughto@redhat.com>
Cc: Mark Harris <mark.hsj@gmail.com>, linux-man@vger.kernel.org, 
	Joseph Myers <josmyers@redhat.com>
Subject: Re: Forward Deceleration Changes
Message-ID: <y3yu5sod6yietgrfyjiypid57ljoafrhfhhz4evqfxuwbyhvvx@g6oqdjarywgo>
References: <CACdZg2UAkDE2KZ=0tCN+pV+-mjupeY=qdGALYPshS3Q0BrHnzw@mail.gmail.com>
 <7zkvtkaafxycu2si3r4jl6qaynzfkedvphhh26rfjibq3kbxc7@56katuftwykv>
 <CACdZg2XOB9gmH0aJRLZVn4gfsd8xHyn78ohB7=wwo2ppzsXzig@mail.gmail.com>
 <kghzj5sfvb7dmkdg5iqtt2l25unqw4voxps3jcy6s7wcznr4gx@e2dn6h3geupq>
 <CAMdZqKFhcNgH-xWSUZa=N6X0kkpH=XqtZNxnBCmgoCT+XY=7Bg@mail.gmail.com>
 <CACdZg2W6+EuYn+GJYUAr+6OdU7M886GChn1+uMUC-iNxCsV7pA@mail.gmail.com>
 <6pl7yzeeeecjl6oifcynye5gkhc4hr3vnvt4xtqasgvjx2sndv@64rgybogzm3d>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="y66ey5npzfup77c2"
Content-Disposition: inline
In-Reply-To: <6pl7yzeeeecjl6oifcynye5gkhc4hr3vnvt4xtqasgvjx2sndv@64rgybogzm3d>


--y66ey5npzfup77c2
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Mark Naughton <mnaughto@redhat.com>
Cc: Mark Harris <mark.hsj@gmail.com>, linux-man@vger.kernel.org, 
	Joseph Myers <josmyers@redhat.com>
Subject: Re: Forward Deceleration Changes
References: <CACdZg2UAkDE2KZ=0tCN+pV+-mjupeY=qdGALYPshS3Q0BrHnzw@mail.gmail.com>
 <7zkvtkaafxycu2si3r4jl6qaynzfkedvphhh26rfjibq3kbxc7@56katuftwykv>
 <CACdZg2XOB9gmH0aJRLZVn4gfsd8xHyn78ohB7=wwo2ppzsXzig@mail.gmail.com>
 <kghzj5sfvb7dmkdg5iqtt2l25unqw4voxps3jcy6s7wcznr4gx@e2dn6h3geupq>
 <CAMdZqKFhcNgH-xWSUZa=N6X0kkpH=XqtZNxnBCmgoCT+XY=7Bg@mail.gmail.com>
 <CACdZg2W6+EuYn+GJYUAr+6OdU7M886GChn1+uMUC-iNxCsV7pA@mail.gmail.com>
 <6pl7yzeeeecjl6oifcynye5gkhc4hr3vnvt4xtqasgvjx2sndv@64rgybogzm3d>
MIME-Version: 1.0
In-Reply-To: <6pl7yzeeeecjl6oifcynye5gkhc4hr3vnvt4xtqasgvjx2sndv@64rgybogzm3d>

Hi Mark & Mark,

On Fri, Jun 06, 2025 at 03:05:20PM +0200, Alejandro Colomar wrote:
> I'm not going to release these changes soon, though.  They cause some
> minor temporary regressions, so I'm considering when I should do it.
> But eventually, these changes will be released.

I found a way to do this without a regression.  I've pushed the change
already to master.  Please check that you like the pages now.  I find
them much nicer.  I'll try to have a release soon.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--y66ey5npzfup77c2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmhgAzAACgkQ64mZXMKQ
wqmt6A/9FDZmsB+5q4PGLrtYzkecJjdWSkP137EEQY5auRVCh8QaegQZeyuZW+nb
Q7gmMHeTSRJHbnHOU/BXojADeCIdjrwJOn4GLEws7SdY5OAe8wXu3dMhASG1HOvy
4gRyarHe/BX5K9kp6NIYt+SSjAzZyCatfadjVKYlnV9RxFDWzLI/voq3okJkM+5k
GUJUHmPJ9Nh9yR9DnHZZw1xjdjIjEwEl54ZVrBUrIWBSmD2MtuQovWWABfg/Yht2
ElH+5n4fnPHu6JOyQFbRqyGRHIRZqokOH5YeEvfkaUA2ElSBjbcElaMs0SqLjh05
/e4G9f+zNaXKW1IryYEWCuuSj50Gax9u+uElbqeLv826p8SiRYgxMTDBx+q7m0ue
kZT+U8xyYiYp1rr9MdCVWnMqOcQDu1M97C2InxUUU0w3evHcoFo4GoybAOywbFJs
iYB9tAxHRl8xOq2LGmgNTNMdl/vdXogEhZGTSGSLCPoshB/AUjSnby65mGt5bKQM
90wAySGzyBAzXJ+P3k31+3hvS5zCTce8LZCYTlPBfgWzj00nhNGlK2Zeo1qJn2cc
agzX6Y7npqDRn4ISUD14eifdpLRO+0BEweRG520QX+KBF88WwAZB57Zdzuc7LhXC
hDScnWhE0FxbJGJTbKqn1M6Imh1aMX870rgacQiXVyjbdu7mT4c=
=ZPdh
-----END PGP SIGNATURE-----

--y66ey5npzfup77c2--

