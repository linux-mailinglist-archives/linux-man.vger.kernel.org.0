Return-Path: <linux-man+bounces-429-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FB69850C5F
	for <lists+linux-man@lfdr.de>; Mon, 12 Feb 2024 00:49:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 023E0282332
	for <lists+linux-man@lfdr.de>; Sun, 11 Feb 2024 23:49:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 470A017558;
	Sun, 11 Feb 2024 23:49:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MFP0mdRp"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 059A65684
	for <linux-man@vger.kernel.org>; Sun, 11 Feb 2024 23:49:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707695376; cv=none; b=dZLQGsGcrCehJh5pT5wPnX/2FFSC/6jjkxJc08sRwDUROQJTiMID+K/JRkoMuJbuCygp3nFl/ESsHWWfxwGvV2CADpkkvxWA7Egg2ETvHABh+GPSyiAH5188eobgmXOqjbp2u6Cjf5M7Df3plWbkeYRsAVPhaColgFQM/4rtyl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707695376; c=relaxed/simple;
	bh=uDrvFDFk7BqTRoJ4f0HJaCnO5ajs5FTwdeC+uXmT08Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OUOFvfkm0T5MWSdSIbWj0SRVOZS+sjNfb+ZBTeu5m34+S+pkcC5u8SB0jzvhfTc2RCtsT9eqebPVtazdXtWnHiM/jPiqwoDtV4kuIDGyiOhtapqoOgKrRNuh0mYVXUchpBhSE0wLYAyJn1efJHslys41kGq4wYwYISzXb1a8XVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MFP0mdRp; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 988A2C433C7;
	Sun, 11 Feb 2024 23:49:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707695375;
	bh=uDrvFDFk7BqTRoJ4f0HJaCnO5ajs5FTwdeC+uXmT08Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MFP0mdRpUSyBV69MeWQFn125wzOvlTk/TD0+XwSEAXauxRXhhEnDMoZBJTZ3m3MML
	 hF60+5/DS/W83tLieEaeFza8rR1BBhSB/3pUfq2Kwi+3DibmmKjdGAwnDzdr6nV31X
	 oTAIhAfDfQcTkJkNrgPr/M6BZeSFpaoX6F5mVKmtglBqzkEKViAEP3GP+jZbaYBeE9
	 PmGTBXImPvVNnTmCOk1oH/VfcDLNPvre22Vxdv4Pnl5h6Ch1w31g3UK8/rP8r9zSTZ
	 GuBhsNPMsJrSrY1uYHGgdasBDaE9Oa516z+OAB/fn97EX5HRIC+KyqakTW82W03c74
	 I0kLWj0+9qiRg==
Date: Mon, 12 Feb 2024 00:49:32 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Mark Wielaard <mark@klomp.org>
Cc: linux-man@vger.kernel.org,
	Alexandra =?utf-8?B?SMOhamtvdsOh?= <ahajkova@redhat.com>
Subject: Re: [PATCH v2] close_range.2: Add _GNU_SOURCE and unistd.h to
 SYNOPSIS
Message-ID: <ZcldDOM_i6u742Pf@debian>
References: <20240211232903.1622396-1-mark@klomp.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ZZnfT15Db2AF9G8x"
Content-Disposition: inline
In-Reply-To: <20240211232903.1622396-1-mark@klomp.org>


--ZZnfT15Db2AF9G8x
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 12 Feb 2024 00:49:32 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Mark Wielaard <mark@klomp.org>
Cc: linux-man@vger.kernel.org,
	Alexandra =?utf-8?B?SMOhamtvdsOh?= <ahajkova@redhat.com>
Subject: Re: [PATCH v2] close_range.2: Add _GNU_SOURCE and unistd.h to
 SYNOPSIS

Hi Mark,

On Mon, Feb 12, 2024 at 12:29:03AM +0100, Mark Wielaard wrote:
> close_range is defined in unistd.h when _GNU_SOURCE is defined.
> The linux/close_range.h include file only defines the (linux specific)
> flags constants. The flags argument is an int, not an unsigned int, in
> the glibc wrapper. Use the close_range library call in the example code
> instead of syscall.
>=20
> Fixes: 71a62d6c3c56 ("close_range.2: Glibc added a wrapper recently")
> Fixes: c2356ba085ed ("close_range.2: Glibc 2.34 has added a close_range()=
 wrapper")
>=20
> Reported-by: Alexandra H=C3=A1jkov=C3=A1 <ahajkova@redhat.com>
> Signed-off-by: Mark Wielaard <mark@klomp.org>

Thanks!  LGTM, but please check a small comment below.

> ---
>  man2/close_range.2 | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
>=20
> diff --git a/man2/close_range.2 b/man2/close_range.2
> index 380a47365..62b728e96 100644
> --- a/man2/close_range.2
> +++ b/man2/close_range.2
> @@ -11,10 +11,13 @@ Standard C library
>  .RI ( libc ", " \-lc )
>  .SH SYNOPSIS
>  .nf
> -.B #include <linux/close_range.h>
> +.BR "#define _GNU_SOURCE" "         /* See feature_test_macros(7) */"
> +.B #include <unistd.h>
> +.P
> +.BR "#include <linux/close_range.h>" "  /* For the flags constants */"

Could you please format the comment like other pages that do the same
thing?  See for example membarrier(2).

Have a lovely night!
Alex

>  .P
>  .BI "int close_range(unsigned int " first ", unsigned int " last ,
> -.BI "                unsigned int " flags );
> +.BI "                int " flags );
>  .fi
>  .SH DESCRIPTION
>  The
> @@ -205,7 +208,6 @@ result from the calls to
>  #include <limits.h>
>  #include <stdio.h>
>  #include <stdlib.h>
> -#include <sys/syscall.h>
>  #include <unistd.h>
>  \&
>  /* Show the contents of the symbolic links in /proc/self/fd */
> @@ -259,7 +261,7 @@ main(int argc, char *argv[])
>  \&
>      printf("=3D=3D=3D=3D=3D=3D=3D=3D=3D About to call close_range() =3D=
=3D=3D=3D=3D=3D=3D\en");
>  \&
> -    if (syscall(SYS_close_range, 3, \[ti]0U, 0) =3D=3D \-1) {
> +    if (close_range(3, \[ti]0U, 0) =3D=3D \-1) {
>          perror("close_range");
>          exit(EXIT_FAILURE);
>      }
> --=20
> 2.39.3
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--ZZnfT15Db2AF9G8x
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXJXQwACgkQnowa+77/
2zJvPA//Xnq68H2IHxXZBgCHv1ZkF1EGw+sw3D4ucuL2pkq1paoUCvsB+bKFEPZK
gNtd2cStC+tpJqPkCrHtmJDn3RZUOXGCMeJgiC130ISsU5Nj8Au9UOHRowociwsi
zxHQs5ystUpHGyvDXvxHOo1/Bv49QKNFoPVvuJL0VarukSloiRQ3F03tAZH+SBZK
DNSihDmbYgYmud2iYF2kOvdEOZDCy13NMD7gPapgxMKKjHpxF0AfWahgc0ibWJIV
TLDO307riNWuZ8K5SPCv5AzV8Agt4VRaWpo2CzJ4nKvVVbQOEq+jlDHh+FrqY27t
ybuy83vaOcWYelV9lhxLgO2DUPGfVcLcjejNjmFj/MxfqYWsg6LQp/ef2Zwbu7B/
6wCBSOkCIMYeNgdSReJW3K+XdrBX8Hz2qOs4onbmZc126rzBzKdWVXvRGrOgXA6f
QgZkLVGa58k0nEgGfNoGs/+g1GjECDwRp5SiAn9VA/YNouEWsiaY7lJAigdIreI0
cqwqtFIcsjyVVUpN5PLMd1HJWfucDG61Tsyuo6BEOhIGjT7giJRhkBiCKoG+91wo
tk/eRvep7ge9kd47cu+SJBFMpMax9d+Y5H5QR2TqIVj1y5Lm+P0xIM5o5gcSSiFY
nGPSrsStwXp26q8CzxxD6yOAY1vcSBEROf03Ql5iMXzdUL2i3rc=
=cjJl
-----END PGP SIGNATURE-----

--ZZnfT15Db2AF9G8x--

