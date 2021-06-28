Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BCA8C3B5F34
	for <lists+linux-man@lfdr.de>; Mon, 28 Jun 2021 15:38:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230166AbhF1NlW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 28 Jun 2021 09:41:22 -0400
Received: from sender4-op-o14.zoho.com ([136.143.188.14]:17422 "EHLO
        sender4-op-o14.zoho.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231259AbhF1NlU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 28 Jun 2021 09:41:20 -0400
ARC-Seal: i=1; a=rsa-sha256; t=1624887531; cv=none; 
        d=zohomail.com; s=zohoarc; 
        b=MPrqZJhDNRBAqRpB3xutLbt0GQITyw1NkMJhnyCAB3d7HbWAQZWWouOEAzbxJhg96C0QTLC2l1jIHoUeyjVh8z89aXwz1wuHFwEG6JRWQAb0HAmjZkqkmrsSr2KTj7g3XlvtdAFqmKiSXSf/X5foJjiwxyleX5sxqzAtxyzr+sU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
        t=1624887531; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To; 
        bh=7qUo1kH/P4AO9ynZmlbXill090A8JQMnmx1pacQV9sI=; 
        b=UVYgz5UmHzXstKNBrkITNWawNoBkF6hGOxHISYdsvXiZUVDclatqU6ZHlgSxjO3u5JbMOFr9visn0Tjo5CYw4g/VLCsNfMY1Mu6wCep7fYY8+Fx7z7jxR2yVjSFUiNw7Y526BkZVFtixa8iPkoCwfyq5rDacSXT6N96BLWVpBVM=
ARC-Authentication-Results: i=1; mx.zohomail.com;
        spf=pass  smtp.mailfrom=dan@dlrobertson.com;
        dmarc=pass header.from=<dan@dlrobertson.com>
Received: from dlrobertson.com (pool-108-51-207-71.washdc.fios.verizon.net [108.51.207.71]) by mx.zohomail.com
        with SMTPS id 1624887528441593.376846587812; Mon, 28 Jun 2021 06:38:48 -0700 (PDT)
Date:   Mon, 28 Jun 2021 13:13:09 +0000
From:   Dan Robertson <dan@dlrobertson.com>
To:     "Darrick J. Wong" <djwong@kernel.org>
Cc:     linux-man@vger.kernel.org, alx.manpages@gmail.com,
        mtk.manpages@gmail.com
Subject: Re: [PATCH 1/1] man2/fallocate.2: tfix documentation of shared blocks
Message-ID: <YNnK5cuO7+RitEk5@dlrobertson.com>
References: <20210621004453.7437-1-dan@dlrobertson.com>
 <20210621004453.7437-2-dan@dlrobertson.com>
 <20210621042550.GG158232@locust>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="Zu6hRUHuDCKFgesu"
Content-Disposition: inline
In-Reply-To: <20210621042550.GG158232@locust>
X-Zoho-Virus-Status: 1
X-ZohoMailClient: External
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--Zu6hRUHuDCKFgesu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Jun 20, 2021 at 09:25:50PM -0700, Darrick J. Wong wrote:
> On Sun, Jun 20, 2021 at 08:44:53PM -0400, Dan Robertson wrote:
> > Fix a typo in the documentation of using fallocate to allocate shared
> > blocks. The flag FALLOC_FL_UNSHARE should instead be documented as
> > FALLOC_FL_UNSHARE_RANGE.
> >=20
> > Fixes: 07c7a6a35497 ("man2/fallocate.2: Document behavior with shared b=
locks")
> > Signed-off-by: Dan Robertson <dan@dlrobertson.com>
>=20
> Definitely an artifact of unshare being added and removed repeatedly
> during the development of XFS reflink.  Thanks for fixing this...

Yeah, that makes sense. Thanks for checking this!

 - Dan

--Zu6hRUHuDCKFgesu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEF5dO2RaKc5C+SCJ9RcSmUsR+QqUFAmDZyuUACgkQRcSmUsR+
QqVAHA//f5SDzpsaGjbS59R+lEOAs5OgaIu/YIhalzn1ryGT9dc/V31AhPI4hZWC
ht20CBaMmjmkrmB3l25QhCxN4GB/Upd+L7Lpq/8PZc/rxPQQHHx5gjvPPLbo+GCh
E8+LzPLFaU7eCzzVY+kH8/hzZKd4IdbO40TT8wLxM/5R/0odOlQbnSdzbyYwr+mz
C3NEWEwguLDv6chmyy6yuQngMrUP2tpFCuUXFsIwHsoYVABEMUlIpbEev9zjJ11R
qKCIRloYY7qZJXywHDhay/adHdNIyFE7RQy8cIHDe+pCfCA3E134B4m9uaG+mcJb
A0zixjTpX1/0N+I3aCr/Oc7vKOgaEjle+NNWDFitt/rA5bKDOMj4cx12EyqbWp4X
ZZPlbCI0JLlAXDal/Kj84LnRLUf7C4RDLF5Rxvs+uOcf+9DkQZHDJhfKjXqw1coi
h8Og7Ylfw1oQTC1lL8GsffJorZxMnHdv7/8CjbxhQjRMLOaRDv0ZmtxQQnItvKtK
7UmsMpqKLA4XoesTfu6b2t/NEzCB1H3XYcnhSO+e7Ta8swrHKjMEpBOlFsoHbdl5
zYuhn79wX1wD6v9s3wzS3SPJzQgishexumyNBh3p5h6sAC3sXw4GXd2l6H+8hPdZ
XI61wuUXz132TwpV6L1uPzFBcZENaaua3Ex4Cq1l4xtZfjiVyKo=
=5F+l
-----END PGP SIGNATURE-----

--Zu6hRUHuDCKFgesu--
