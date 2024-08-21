Return-Path: <linux-man+bounces-1643-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 94B3E95A72E
	for <lists+linux-man@lfdr.de>; Wed, 21 Aug 2024 23:55:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 416C21F239B2
	for <lists+linux-man@lfdr.de>; Wed, 21 Aug 2024 21:55:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D6AC17BB0C;
	Wed, 21 Aug 2024 21:54:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FkHghwbj"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE25D17BB08
	for <linux-man@vger.kernel.org>; Wed, 21 Aug 2024 21:54:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724277290; cv=none; b=WficqBtvsbw2Yom/LZ0HkxxvMEhcghMFlPygfnTUJnYdiWiuH7ElO2yHsoG45mgnE6MXH5jfgGR5vivyOiph2QtLnWXkZCXenjoryLWTsAgA9VGrd70vX6LO/cAfJ9R9qyKzhxHlqcQxBaYdrxfIZlVU+hxoiyPCDhqRE3ydCdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724277290; c=relaxed/simple;
	bh=TCkF6N6IJJqibN5dBwYALBQfWZF8U/zEj0z9DNGcG6Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pwlPoGoA0N7gtT7Aeqp1U9FBB8J/J8SKr2mX4qZvdevNF0XxpK0lixduWPfZekSeUcADmnr12102pvVvelPMts3sNYClfO0Fkb7MpdyWf/1HWoQmp6XlDDX6RKJvMjtaStSsh5ZwGkGP0goSXl5F6EHAb6mCHAoAE1Oi8UrA3DI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FkHghwbj; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 25FD5C32782;
	Wed, 21 Aug 2024 21:54:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724277290;
	bh=TCkF6N6IJJqibN5dBwYALBQfWZF8U/zEj0z9DNGcG6Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FkHghwbjzEqSbPl2J4Nr9vXiQ1JVm2bRJOlnjnddfQqGkGwOABP5axyGB+8J86RQX
	 qy3Q/xNCCZYby6cfVj+geW+JNI5oA/XtkAFUnV3SiBE1HCAWxLx6UlebyE+GSuEth8
	 Gber+uhWXJo1KjpbrDN1jYZJj9LocqMDv4Lx+3zZEOjhWTWuy23cSOL91Z6GxaXS04
	 xSTDJkGZIM+1p45OnvaPy+QJJO4v5/HYYNSl6rEmLtHGR3oe6PG7PlwdEuXsl7tQV+
	 Dr6Gjtriii2Lp7b+RGuLeW5pmaVEIseyCIqyLDwzw46jOTaWhLjBnCglxI3+2ODuB/
	 fTgJz7jQgpDrQ==
Date: Wed, 21 Aug 2024 23:54:47 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "Konstantin Meskhidze (A)" <konstantin.meskhidze@huawei.com>
Cc: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>, 
	=?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, linux-man@vger.kernel.org, Artem Kuzin <artem.kuzin@huawei.com>
Subject: Re: [PATCH v3 1/2] landlock.7, landlock_*.2: Document Landlock ABI
 version 4
Message-ID: <vw755xl6gszlioyauluh4iusd4fvzlmotwvzxxrwa2m42q6hu5@fobtpva5l5pe>
References: <20240723101917.90918-1-gnoack@google.com>
 <20240723101917.90918-2-gnoack@google.com>
 <014330e9-ce68-335e-142f-533317e6afa0@huawei.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cieowws2iahjuewf"
Content-Disposition: inline
In-Reply-To: <014330e9-ce68-335e-142f-533317e6afa0@huawei.com>


--cieowws2iahjuewf
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "Konstantin Meskhidze (A)" <konstantin.meskhidze@huawei.com>
Cc: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>, 
	=?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, linux-man@vger.kernel.org, Artem Kuzin <artem.kuzin@huawei.com>
Subject: Re: [PATCH v3 1/2] landlock.7, landlock_*.2: Document Landlock ABI
 version 4
References: <20240723101917.90918-1-gnoack@google.com>
 <20240723101917.90918-2-gnoack@google.com>
 <014330e9-ce68-335e-142f-533317e6afa0@huawei.com>
MIME-Version: 1.0
In-Reply-To: <014330e9-ce68-335e-142f-533317e6afa0@huawei.com>

Hi G=C3=BCnther, Konstantin,

On Wed, Aug 21, 2024 at 06:30:09PM GMT, Konstantin Meskhidze (A) wrote:
> 7/23/2024 1:19 PM, G=C3=BCnther Noack wrote:
> > Landlock ABI 4 restricts bind(2) and connect(2) on TCP port numbers.
> >=20
> > The intent is to bring the man pages mostly in line with the kernel
> > documentation again.  I intentionally did not add networking support to=
 the
> > usage example in landlock.7 - I feel that in the long run, we would be =
better
> > advised to maintain longer example code in the kernel samples.
> >=20
> > Closes: <https://github.com/landlock-lsm/linux/issues/32>
> > Cc: Konstantin Meskhidze <konstantin.meskhidze@huawei.com>
> > Reviewed-by: Micka=C3=ABl Sala=C3=BCn <mic@digikod.net>
> > Signed-off-by: G=C3=BCnther Noack <gnoack@google.com>
> > ---
>=20
> Co-developed-by: Konstantin Meskhidze <konstantin.meskhidze@huawei.com>
> Signed-off-by: Konstantin Meskhidze <konstantin.meskhidze@huawei.com>

I've appended the tags, and pushed the changes to master.  Thanks!

Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--cieowws2iahjuewf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmbGYiYACgkQnowa+77/
2zLMyQ/+MesaOPOKwqYDt/FzuGW6itmUrH+gNHw280ac/SR7Hqw3NzEot6EvLki5
ctt9mOvFQNCpdfv6sZ6sk0GJYDddXRKWRYGWL4UxCEcKzaBkIWKICZRaBgQuE/xt
kz3PFDuJGLv3t81rgk2rRnCDvAaJa3AZTqeTmR6pHPxDG7tOC6YO04WONCrptTwH
1nHsiGIFXzm1X1PSb0JSAx+FInROQ4bpwaX70fR4+mXhGRaBhSMMI3ERS9jHPGVH
VFN+xeMYVhswKpYKrRvrmlh1Z8WNMP2/aTXDpSi1clNBkFiSoNimHaAnM5uN4xj2
wQgSEb0MhQkNETVJQsVjnAwyCJc0IehxQs2Mrw7Nf69tn1T0LF1hsocDPaxbcXrN
sMrr19e6NNMmJERJqVjUkaOxJ4yHyxCWqKjPRdepEP2YADLBOITZoRXof8kHekAM
yPcAuIEPC/uzb7fpJZ8UNy1Tk+3HjCADd5WVoqSjf0wHeqyqzJU7bAXPXA+/dBcN
R2LXS841UZr4VLENizA0ytSTZBWILl/y7mdF9mEgDr5KHzxuqKPOZXYZ1imrsr7i
QMQzv46K7DLo9xNeCguMFUMcgKB5Y2g9ePlpTcRSARQKSHnPioje2Epn8Qe11a5r
iKpkg4hFAW+yr9oS3yP/6OPJmhItEc4jrOmVY/zBOAYaULY5O8s=
=Perw
-----END PGP SIGNATURE-----

--cieowws2iahjuewf--

