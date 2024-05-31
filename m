Return-Path: <linux-man+bounces-1021-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D1198D6956
	for <lists+linux-man@lfdr.de>; Fri, 31 May 2024 21:01:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CE2D11C21DE2
	for <lists+linux-man@lfdr.de>; Fri, 31 May 2024 19:01:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D4534653C;
	Fri, 31 May 2024 19:01:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hr49Mj6P"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DF8F1E498
	for <linux-man@vger.kernel.org>; Fri, 31 May 2024 19:01:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717182079; cv=none; b=gDwS8X81aoqADRrVcDWFmalmKKtXfKmwaa36EA90BZv5jhIBrPMQgvuzJ51R5isBQi8E4oavyhClSTmBOgoGvyizL15H2l/pU8We+dVev0u1v6cEqEUaYIeiXiAPwqTSUwHZ0Bq0KSnvpW3TO+CH7iE1i5iYwZLvf4jD9cqECu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717182079; c=relaxed/simple;
	bh=9napHREPW3AN7m+hlE89M/6ywFqaUMuCYjUos0JMInE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CQy8ManGaMHfkFP6QuAHUk8zm4Eue/H5xvrdFgfdUO82B0T9LxpaoVD0YSeJWmPTEYFUBJeRF5nj056DGtjmaeTqCbr68xrwqVhozJYFEj7F127WoOvnzi1+mEOmUG02ejexl62w1yaxDAlqNYnCQkziH25xTIfZ3QLcO/XyxPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hr49Mj6P; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F2113C116B1;
	Fri, 31 May 2024 19:01:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717182078;
	bh=9napHREPW3AN7m+hlE89M/6ywFqaUMuCYjUos0JMInE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hr49Mj6PMLaBg1Xf+uQ4lHkVYL1Khm5cCvTxleNhPCmSCRHfdQ0m6Ha1GihvmvwLi
	 j/erZkqxZUJFry/zIajUnTSH4VvVfP+CUpgvtAyXS05qzFslhPVLniNaMQTztbRJF3
	 XlVOelye9hL8w4UkrHOY288BQd9vYRZ7XWZp9vkJEzoK7abOiS7dON5TxypHoyeoiC
	 homvST/ib+rENPMb89+BuWr2zGhX9yEV5soqaICRohF2J3ObE5bLtdrAhqFw11mWLM
	 kshovvW2tUF+WCjFn8nfy/3gXJqvC9UvxpIirfV9wes1bsYBRxZ2DlH8n2QodW6yIk
	 g+ONUGyPlldVA==
Date: Fri, 31 May 2024 21:00:45 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] ioctl_iflags.2: document FS_APPEND_FL ('a') on
 directories
Message-ID: <5xr5hdper2d5eacutyvctl3koufkct64nd3i3pdowfc5c6xvi4@cwn2oixf53me>
References: <vzoykfmkokepn2gq3nqb2vvlbim32vky3vnac2x2avmkyzcdez@tarta.nabijaczleweli.xyz>
 <6vlgyxzh5taukldnkp7ubdb2zfla3m7ebx67qayyyoyyx5wi52@gownac2gauj2>
 <mhtwgjppwoqpwcfbebwbt47yzcv62dstqbf2mwncbkutbfjvta@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dxswlpcxibeswkuf"
Content-Disposition: inline
In-Reply-To: <mhtwgjppwoqpwcfbebwbt47yzcv62dstqbf2mwncbkutbfjvta@tarta.nabijaczleweli.xyz>


--dxswlpcxibeswkuf
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] ioctl_iflags.2: document FS_APPEND_FL ('a') on
 directories
References: <vzoykfmkokepn2gq3nqb2vvlbim32vky3vnac2x2avmkyzcdez@tarta.nabijaczleweli.xyz>
 <6vlgyxzh5taukldnkp7ubdb2zfla3m7ebx67qayyyoyyx5wi52@gownac2gauj2>
 <mhtwgjppwoqpwcfbebwbt47yzcv62dstqbf2mwncbkutbfjvta@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
In-Reply-To: <mhtwgjppwoqpwcfbebwbt47yzcv62dstqbf2mwncbkutbfjvta@tarta.nabijaczleweli.xyz>

On Fri, May 31, 2024 at 08:49:50PM GMT, =D0=BD=D0=B0=D0=B1 wrote:
> Hi!

Hi,

> On Fri, May 31, 2024 at 08:44:21PM +0200, Alejandro Colomar wrote:
> > On Fri, May 31, 2024 at 08:11:17PM GMT, =D0=BD=D0=B0=D0=B1 wrote:
> > > For some reason, neither chattr(1) nor this page document it;
> > > ext4 supports this (tmpfs and ZFS don't, didn't test more).
> > By "supports this" do you mean FS_APPEND_FL at all, or its behavior with
> > dirs?
> I meant behaviour with directories specifically,
> but it looks like I tested wrong:
>=20
> all of ext4, tmpfs, and ZFS actually /do/ support FS_APPEND_FL
> on both files /and/ directories.

Nice; I was worried of having to document such exceptions.  :)

> Maybe reword as
> -- >8 --
> For some reason, neither chattr(1) nor this page document it;
> this is supported by all tested filesystems (ext4, tmpfs, ZFS).
> -- >8 --

LGTM.  I'll apply the patch in a moment.  Thanks.

Have a lovely day!
Alex

>=20
> Best,



--=20
<https://www.alejandro-colomar.es/>

--dxswlpcxibeswkuf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZaHl0ACgkQnowa+77/
2zLLKxAAiQto/nqeU/FW0r8JpuaLHnbwUtY7+qS9bhUFfnu4rkke53d+aQdHAFaA
GjPcIXB5VmQzx4HNccs3Jegx8Il9eICcwlND/U9AWSD6xVIoTr/S1sO+qWwscF97
MF8KgP52/7/DPIa6vx/PrA3U74OM2BC3VYWXAmS7DLTelM4BF9pQEqvqrMQto+sN
bS3zcdzv03bNJiT1GwI8Mbta4ckudy4jNNRU42dWukB96tU1RTF3a4P6G2rMQXSq
sU6VR8sXlyme7UhBHI/X1ssOnI4MdvlzBsjH/MRLtl2V1XJtTgHaLGsx8yFQjkfC
4dBx3/1JJz+x6JIC47fARDYTAUuHCNrhCtiHXx3aqJK+2bFYDcCRZ+W4oYT0PIKQ
DKWJkbb1gXqSWtZ6UuVXsNqiGlq3fp2uIZk1nmybnGmC0qzNY23tnK6cu+z+/JDS
G8HOt0J2zbL9QZ+F4lbuXqtAAEZyW4p2crwwwCo5vYpr1qT9Ztxy30PW+GjRY+3a
aF+POxep+bDGkUnGxA+3wxllQID85quhWiWYwPGNV4ahjCD4ek3vfYNiRydk8zxz
Xp10NxpZMVd18CvefWlGmGSKqQunHR+blDlL70Er6ItKSmEeMpY15QRD1o9Kj5V5
etYm/+NDrNSrKON4qzH33qdvyeKaSfOp3LIlyFBNnllttqKgD4I=
=viJK
-----END PGP SIGNATURE-----

--dxswlpcxibeswkuf--

