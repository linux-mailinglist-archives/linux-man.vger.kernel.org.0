Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 398323BAA3F
	for <lists+linux-man@lfdr.de>; Sat,  3 Jul 2021 22:35:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229561AbhGCUiB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Jul 2021 16:38:01 -0400
Received: from sender4-op-o14.zoho.com ([136.143.188.14]:17463 "EHLO
        sender4-op-o14.zoho.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229473AbhGCUiB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Jul 2021 16:38:01 -0400
ARC-Seal: i=1; a=rsa-sha256; t=1625344522; cv=none; 
        d=zohomail.com; s=zohoarc; 
        b=ksoOKPircRlyY72JKpJuLkI2MjRUBTnnGolKdI3TgtYtQIBVuj2dtVzfnOJyRaMfQWOB87+BiTFsb5FUGjXWzyvVgmUq96PYBwFHcGWtBSuFCGX2pFWdG0pQMoii6TeTzWtzXocmNrGMP20rJr5rS5AY49tEQzgLJ1yAJXE96pg=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
        t=1625344522; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To; 
        bh=/uQ8OrTPv5VBbqZsBw+KOTo3mQGg2pBRurJiqCklk2A=; 
        b=YT4r0b+pwqGQetOhYwu7o8hEbyhX0dLmXf1ZT3arfUxK26ZlaU8S0zRKq7464bktmf2ikflHQF9/o8xYvRmJLYMOaxibN0YaikEAaHx8nOTx2cFKvHWbUlnPgzCtk8w/t6IiByN4VdQIkeZIkq3dfeqfh+lkau4c29uc54cmYPM=
ARC-Authentication-Results: i=1; mx.zohomail.com;
        spf=pass  smtp.mailfrom=dan@dlrobertson.com;
        dmarc=pass header.from=<dan@dlrobertson.com>
Received: from dlrobertson.com (pool-108-51-207-71.washdc.fios.verizon.net [108.51.207.71]) by mx.zohomail.com
        with SMTPS id 1625344519373410.84710056011966; Sat, 3 Jul 2021 13:35:19 -0700 (PDT)
Date:   Sat, 3 Jul 2021 20:09:34 +0000
From:   Dan Robertson <dan@dlrobertson.com>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, mtk.manpages@gmail.com,
        "Darrick J. Wong" <djwong@kernel.org>
Subject: Re: [PATCH 1/1] man2/fallocate.2: tfix documentation of shared blocks
Message-ID: <YODD/v/bn6ILbIUO@dlrobertson.com>
References: <20210621004453.7437-1-dan@dlrobertson.com>
 <20210621004453.7437-2-dan@dlrobertson.com>
 <20210621042550.GG158232@locust>
 <342ad836-cb11-ed19-d867-51d2906b3b27@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="SFRPChXM0wiesE/1"
Content-Disposition: inline
In-Reply-To: <342ad836-cb11-ed19-d867-51d2906b3b27@gmail.com>
X-Zoho-Virus-Status: 1
X-ZohoMailClient: External
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--SFRPChXM0wiesE/1
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Jul 03, 2021 at 08:26:26PM +0200, Alejandro Colomar (man-pages) wro=
te:
> Hi Dan,
>=20
> > On Sun, Jun 20, 2021 at 08:44:53PM -0400, Dan Robertson wrote:
> >> Fix a typo in the documentation of using fallocate to allocate shared
> >> blocks. The flag FALLOC_FL_UNSHARE should instead be documented as
> >> FALLOC_FL_UNSHARE_RANGE.
> >>
> >> Fixes: 07c7a6a35497 ("man2/fallocate.2: Document behavior with shared =
blocks")
>=20
> BTW, I can't find that commit hash in git.  I have that commit as
> 63a599c657d8.
>=20
> However, git doesn't fail...  It's weird.  Could you confirm that?

Gah! You are correct. My bad. I used copied the commit hash for the commit =
in
the kernel that introduced the FALLOC_FL_UNSHARE_RANGE flag. My bad. I can
submit a second version of the patch with the correct commit hash if you'd =
like.

>=20
> Thanks,
>=20
> Alex
>=20
> --=20
> Alejandro Colomar
> Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
> http://www.alejandro-colomar.es/

--SFRPChXM0wiesE/1
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEF5dO2RaKc5C+SCJ9RcSmUsR+QqUFAmDgw/4ACgkQRcSmUsR+
QqX5+xAAn2F/R3pkM7XLAP1w5+41uyNcO4BoJKAQuB54jZ93XLxqzjrfXHjIO1z3
TbpTFmuPyYtsW0Ll5p1v0sOo8kPLHfp9iMsXgb/+p8P06j907/ErkecQ/K3fufnX
/UeEZuZVLNTr055eRd/bDYfhIh0v4U8MZ+Js+/1UDv046NVA9OHdAopwIbHomPx+
vp5d3IBq9JPLMd2TRRF9+lgKXxxD/i7VKNr2Zy+j97VKD2l35JY4eDMVQitGPtFH
qaZsi3tsuhd+6jc2bjxehXVEIysCTs7eRZP9HjTQvQdDeacmrAyalQHw3lNLKN+B
Ki6Slo425oB8ZtWaKtLbvP976WKsm9aoJ+/eAyfVJ3bl3mDh2pq1XZi85ZHALy85
b61jLNQ80qrzUY2jhAGuyJ24nqmcawOLFGaQh3Px35iKQ7qF4p0VF8zitucGp9ue
d7FEPl4r/M4viRYvh3ONqbneoLaq/MFPSZxaRZUF9Uer/NKuef9TSj/3XT3gMx3N
122gYP1Nr3OOlzqGUfE0Q0NDyI72L4yIEZP3Jbn/ibl8qHHVykAQmYO1b59O1QEe
wDASpOia/ju/PSaubliLadVXTpJAuN3z4dH+R3Fzmq111EdwWKmsa5urIdiYhAwh
bTMG8AqUHG99Ty1L6dnfp5o/Td6XCS+zsoof12lmWrWDG/YNajw=
=Wq9Y
-----END PGP SIGNATURE-----

--SFRPChXM0wiesE/1--
