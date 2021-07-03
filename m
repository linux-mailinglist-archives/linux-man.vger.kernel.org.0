Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A40BB3BAA9F
	for <lists+linux-man@lfdr.de>; Sun,  4 Jul 2021 01:21:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229561AbhGCXYX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Jul 2021 19:24:23 -0400
Received: from sender4-op-o14.zoho.com ([136.143.188.14]:17440 "EHLO
        sender4-op-o14.zoho.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229557AbhGCXYX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Jul 2021 19:24:23 -0400
ARC-Seal: i=1; a=rsa-sha256; t=1625354501; cv=none; 
        d=zohomail.com; s=zohoarc; 
        b=Tsp999KX9UZYnVuEoc82oUXdZMgKvA766mb3qAqHEZ8khECRl4BilHC8IPX07uo05YU5oSGgeDvfm4PTf2UsOo/JYPBsXyEFjRn9PhtbJzQmh2A3o+19D502SVrsmTWhQSt6CsNP7oOBAqxAphEWLLcW4gOOOcn1sfF43Jd+8vM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
        t=1625354501; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To; 
        bh=bEzn21RSaxWb8/NHRvhxfOI7q+5JdH+JaBd0hFUfb34=; 
        b=PCcHKwL7F3LaLUa9E1+9sxDuGYhhM+h2RLWbgAX/WZdEzbfCenPEaBObcGSr6QgERV0raAHu3TmEKfVzzLDfGdj572NkQaWgO/VjHbmD1cuBebDmYOpm2JnEZh8fVMM2RrnsAKdqJnJrFzlG8jYYbzTMl835/XqZF1Vthm3Nn4U=
ARC-Authentication-Results: i=1; mx.zohomail.com;
        spf=pass  smtp.mailfrom=dan@dlrobertson.com;
        dmarc=pass header.from=<dan@dlrobertson.com>
Received: from dlrobertson.com (pool-108-51-207-71.washdc.fios.verizon.net [108.51.207.71]) by mx.zohomail.com
        with SMTPS id 162535449824865.62905376971321; Sat, 3 Jul 2021 16:21:38 -0700 (PDT)
Date:   Sat, 3 Jul 2021 22:55:53 +0000
From:   Dan Robertson <dan@dlrobertson.com>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, mtk.manpages@gmail.com,
        "Darrick J. Wong" <djwong@kernel.org>
Subject: Re: [PATCH 1/1] man2/fallocate.2: tfix documentation of shared blocks
Message-ID: <YODq+ZGxJLDxu5JY@dlrobertson.com>
References: <20210621004453.7437-1-dan@dlrobertson.com>
 <20210621004453.7437-2-dan@dlrobertson.com>
 <20210621042550.GG158232@locust>
 <342ad836-cb11-ed19-d867-51d2906b3b27@gmail.com>
 <YODD/v/bn6ILbIUO@dlrobertson.com>
 <91a46f14-2337-e39a-386b-120a7b4ceb99@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="F8SeJZTF3ZeluE1P"
Content-Disposition: inline
In-Reply-To: <91a46f14-2337-e39a-386b-120a7b4ceb99@gmail.com>
X-Zoho-Virus-Status: 1
X-ZohoMailClient: External
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--F8SeJZTF3ZeluE1P
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Alex,

On Sat, Jul 03, 2021 at 11:31:32PM +0200, Alejandro Colomar (man-pages) wro=
te:
> >>> On Sun, Jun 20, 2021 at 08:44:53PM -0400, Dan Robertson wrote:
> >>>> Fix a typo in the documentation of using fallocate to allocate shared
> >>>> blocks. The flag FALLOC_FL_UNSHARE should instead be documented as
> >>>> FALLOC_FL_UNSHARE_RANGE.
> >>>>
> >>>> Fixes: 07c7a6a35497 ("man2/fallocate.2: Document behavior with share=
d blocks")
> >>
> >> BTW, I can't find that commit hash in git.  I have that commit as
> >> 63a599c657d8.
> >>
> >> However, git doesn't fail...  It's weird.  Could you confirm that?
> >=20
> > Gah! You are correct. My bad. I used copied the commit hash for the com=
mit in
> > the kernel that introduced the FALLOC_FL_UNSHARE_RANGE flag. My bad.
>=20
> I thought so, but I couldn't find that commit in Linus' tree either :/
>=20
> [
> .../linux$ git log -1 07c7a6a35497
> fatal: ambiguous argument '07c7a6a35497': unknown revision or path not
> in the working tree.
> Use '--' to separate paths from revisions, like this:
> 'git <command> [<revision>...] -- [<file>...]'
> .../linux$ git log -1 07c7a6a35497 --
> fatal: bad revision '07c7a6a35497'
> .../linux$ cd ../man-pages/
> .../man-pages$ git log -1 07c7a6a35497
> .../man-pages$ git log -1 07c7a6a35497 --
> .../man-pages$
> ]
>=20
> I can't understand that.  It fails in the kernel tree, but not in the
> man-pages tree.  But it doesn't find it in either.
>=20
> It doesn't matter, but I'm curious...

Ah! Got it! 07c7a6a35497 is the tree hash for 63a599c657d8 in the man-pages
repo.

=2E../man-pages$ git rev-parse --short=3D12 63a599c657d8:
07c7a6a35497

I bet I copied the wrong hash from git blame in vim-fugitive when trying to
find the commit that first contained the typo.

>=20
> > I can
> > submit a second version of the patch with the correct commit hash if yo=
u'd like.
>=20
> No, don't worry; I fixed it.

Thanks!

 - Dan

--F8SeJZTF3ZeluE1P
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEF5dO2RaKc5C+SCJ9RcSmUsR+QqUFAmDg6vkACgkQRcSmUsR+
QqWq0xAAtWM3qGq2M4r6ogBsEowsHjtIcWUXhdMQ1VCxrt8DSLB1C4s3jrfbTRvi
0gMvaWsCNtf6KkNwupR7/miWnNElMMyiQj7ian6SluW5vPnYHNKtwMtLwMIGHZhX
ypuQHHxwd+auNgPYf5zHVR2nCSELdfh26r0O77YSACrLQ/hcltV8fAPFhxSpnqrM
tV76SyhXHXzu5OdPLvHsKL7kjo6nQrxnQZlgjBXV/mJ/G0PfhOtbO9+cHDrQE9Uq
P0Mryykf2uHOW23HPh+CYsOISY4TQFW6cfHTxTojqB4w7UW38G9VxifSz/ZbFIU3
+GzOE5QwdYNdJejqgS7JNe4dMsJHYWMxEZvaVLoFkC4FrQMJRngWDtXrb3BtotsF
/OkVYCIO8RGx+3+Z026+oHf2kzNmN3N3GVC9iso0k8PNuMvCMSN0uG3TsdeFSmDf
dQ+Ch/RGoJLmXVVlCTLM6hqLs6+1aMHIcDFBBLxsn7F6GlOr/lWCMm+v/uMp3hPe
wD3lQuttXyJZGfiIVlvF+b1Gce0bKd7Cq6Lxlb1+KMcgYA+qOLUOuTH0RdTnBSqb
5O+lVdDPvtM5jCydhRceldL1G9lvnw5OVWgt1FvGu92+yw6CrSYAfJNIjgZAMWZT
CBbfVPujIWxAPwF4WAhnwG9IghO6VeDn0YVGl+cw7Dm0xISJZr8=
=3qzx
-----END PGP SIGNATURE-----

--F8SeJZTF3ZeluE1P--
