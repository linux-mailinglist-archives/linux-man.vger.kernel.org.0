Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0D7457E59B5
	for <lists+linux-man@lfdr.de>; Wed,  8 Nov 2023 16:09:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231981AbjKHPJv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Nov 2023 10:09:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42862 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229640AbjKHPJv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Nov 2023 10:09:51 -0500
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 19D2B1BE5
        for <linux-man@vger.kernel.org>; Wed,  8 Nov 2023 07:09:49 -0800 (PST)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9FBD8C433C8;
        Wed,  8 Nov 2023 15:09:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1699456188;
        bh=thp3tBuOnRM3qxLtHI2C2JBxE+jyH8OSCyXseJ0ezzw=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=pf2EbDBNcC7tZQQZeMEEyLr8vR/2TYpg+jByqR8MC6vsB+AX4tANAVSpHQ71rAxBQ
         gfP3ShgtTBLvYsVOBobK21iYeuFO/FS1wgWMX0VHWGVmNnvhjN1IGiBJA5rBT5A7Ed
         4ewzQBQlXaVrK2I1N7Uh4/q8SO7gbYisF6Cx3TlC1aBptDRp1RDnng4qaN7KitmTm2
         anVNi6QdR9wrvCf7ow7cYJYYNLys7q0TNRgBOFpVyCPZJ1RXlQAK12cxCVcfFkLo4B
         fb5XS7anpMNHoGLYmzjFl1k495ExdQCw41ztapFbU4UVCNCOwC5/Gsw2Z0A9gMuanZ
         FQPOhc4esafmg==
Date:   Wed, 8 Nov 2023 16:09:45 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Thorsten Kukuk <kukuk@suse.com>
Cc:     libc-alpha@sourceware.org, Jonny Grant <jg@jguk.org>,
        linux-man <linux-man@vger.kernel.org>
Subject: Re: strncpy clarify result may not be null terminated
Message-ID: <ZUukudUW_KzdBK-w@debian>
References: <ZUacobMq0l_O8gjg@debian>
 <aeb55af5-1017-4ffd-9824-30b43d5748e3@jguk.org>
 <ZUgl2HPJvUge7XYN@debian>
 <d40fffcb-524d-44b6-a252-b55a8ddc9fee@jguk.org>
 <ZUo6btEFD_z_3NcF@devuan>
 <929865e3-17b4-49c4-8fa9-8383885e9904@jguk.org>
 <ZUpjI1AHNOMOjdFk@devuan>
 <ZUsoIbhrJar6ojux@dj3ntoo>
 <ZUtaH35V3koxTSL0@debian>
 <20231108095910.GA9216@suse.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="cj7lfw3lZKURXEEi"
Content-Disposition: inline
In-Reply-To: <20231108095910.GA9216@suse.com>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--cj7lfw3lZKURXEEi
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 8 Nov 2023 16:09:45 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Thorsten Kukuk <kukuk@suse.com>
Cc: libc-alpha@sourceware.org, Jonny Grant <jg@jguk.org>,
	linux-man <linux-man@vger.kernel.org>
Subject: Re: strncpy clarify result may not be null terminated

On Wed, Nov 08, 2023 at 09:59:11AM +0000, Thorsten Kukuk wrote:
> On Wed, Nov 08, Alejandro Colomar wrote:
>=20
> > strncpy(3) is useful to write to fixed-width buffers like `struct utmp`
> > and `struct utmpx`.  Is there any other libc API that needs strncpy(3)?
> > Of those two APIs (utmp and utmpx) and any other that need strncpy(3),
> > are those deprecated, or is any such API still good for new code?
>=20

Hi Thorsten!

> Everything around utmp/utmpx/wtmp/lastlog is deprecated.

Is this a Linux-specific thing?  Do you know if the BSDs also deprecated
utmpx?

Thanks,
Alex

>=20
> openSUSE Tumbleweed and MicroOS are no longer using nor supporting them
> and fresh installations don't have that files anymore.
> So new code should not use utmp/utmp/wtmp/lastlog anymore. Alternatives
> are e.g. systemd-logind/wtmpdb/lastlog2.

--=20
<https://www.alejandro-colomar.es/>

--cj7lfw3lZKURXEEi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVLpLkACgkQnowa+77/
2zLvUQ/9Fr0s66/7E2E7m7xHTux4okeeZsChJNHK9aEjQP1dNyEyPOADIgvGm2ei
estQNoar0pravbTqD3myG1il/GPeSYPcNlnhVOkYvZO7GsVX6i6S192BQ/uHALly
9nR1DYfMmBuUDbPARRjtzXzZtywzFGDO3cNTXF1w84Pfrgh4stR9Y/1j7DMQCsNS
DfOu7lHUKksCJp/FjgSUdO+M+hmOsaDh2lKoY2Rppuo5kvEVDQ5kgzCiPVtVYPlq
suHUxsitKpSQlHDaWjPzcZMeEZ37qRtP5m3CNQasZy7oZ0KpQxHp1SizOXXwydKH
sVgvXtlnh0mwBGi3j1Uq9vAycPY0S6UVgLT2ySwMFMM5cnPt4yiPBM9NRU8W6HRM
TTFeuF+RzEHfDdp4s5i7VFTWC1n+PWeTkS+SkzEguN24UY8rAAIvh5NCJK6hekaC
dP00OzCtik9JlFLhCrM39vMdkVLaSciQ/llBY8UfVdNXwdhoXlyzyOK+jDoaUchp
vzF8mPYUyiestyclDrqBzetlx1w9z4HTusFGms7Xhc8CPdfLUYPGdkDp06rAJIhL
opAZVcl5RCg1x9drFc+pBC4Iu48DyX1Aogp1lfCYqwfHQXshqbQrEocAFtu4FOY+
Cp7OzjwNfKM3+BSm1J1E/A02RwT5bPdBhe68Pc0Pgt2/jTuE2mo=
=+7QL
-----END PGP SIGNATURE-----

--cj7lfw3lZKURXEEi--
