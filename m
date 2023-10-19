Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E4B8E7CF960
	for <lists+linux-man@lfdr.de>; Thu, 19 Oct 2023 14:51:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235319AbjJSMvL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 19 Oct 2023 08:51:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42550 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235364AbjJSMvK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 19 Oct 2023 08:51:10 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E29FAF7
        for <linux-man@vger.kernel.org>; Thu, 19 Oct 2023 05:51:07 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B1DBEC433C8;
        Thu, 19 Oct 2023 12:51:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1697719867;
        bh=ISG25fAQsirPMTdVc5798EW81AyJADrvSxe2djp78Pc=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=jeWMU+WcjdpKfT95XoKJHgjzaXLp45x8SfFPeW2JP2B5IWeqKUZaGKTP0JGpHbkFy
         cBSQjDHVN2x5wCZkhDGhTqy4KoZrcUlCmjX7HEmnHSqtb5+JaFRltpS4xkgpnqCIp+
         i9qQtHpSnnb5LarQkGzInHOqogILt+lq+sgQW2pf//qfpRcvifEVNfVwfZBZwgyTTe
         k8oJaMwY3LqVaNNMmH1yu7KNXKLnuGvoCrlS+UTyzjVprLWGo7o3++vsaQM06CGiz6
         34vDMWGhEXzL2kUhzoCt8zc5hKkbsNrU7W4bxWLICeRkkAsI8VWBASx7u70Es7PAtR
         +CVRsSgMRuhMg==
Date:   Thu, 19 Oct 2023 14:51:04 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     Muhammad Usama Anjum <usama.anjum@collabora.com>
Cc:     kernel@collabora.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 2/2] ioctl_pagemap_scan: add page for pagemap_scan IOCTL
Message-ID: <ZTEmONWZRiqCVRyx@debian>
References: <20231017150138.3406580-1-usama.anjum@collabora.com>
 <20231017150138.3406580-2-usama.anjum@collabora.com>
 <ZS7Ah-DnCOzxc1Yx@debian>
 <aae0ba48-7919-4656-8fe0-731ccd79ff95@collabora.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="CP6PHeVbIlZ17i9u"
Content-Disposition: inline
In-Reply-To: <aae0ba48-7919-4656-8fe0-731ccd79ff95@collabora.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--CP6PHeVbIlZ17i9u
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 19 Oct 2023 14:51:04 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Muhammad Usama Anjum <usama.anjum@collabora.com>
Cc: kernel@collabora.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 2/2] ioctl_pagemap_scan: add page for pagemap_scan IOCTL

Hi Muhammad,

On Thu, Oct 19, 2023 at 05:31:32PM +0500, Muhammad Usama Anjum wrote:
> Hi Alex,
>=20
> Thank you for taking time to review. I'll fix everything and run lint
> before sending next revision.

Thanks.

[...]

> >> +.SH DESCRIPTION
> >> +This
> >> +.BR ioctl (2)
> >> +is used to get and optionally clear some specific flags from page tab=
le entries.
> >> +
> >=20
> > Please use an empty roff(7) request instead of a empty input line.  That
> > is, use a line with just a '.', that is, s/^$/./

Another thing you can use is a comment:

=2E\"

This is more commonly found in other pages in this repository.

Cheers,
Alex

> >=20
> > 	$ make lint build check --debug=3Dprint
> > 	TROFF	.tmp/man/man2/ioctl_pagemap_scan.2.cat.set
> > 	! (troff -wbreak  -man  -Tutf8 -rLL=3D78n -rCHECKSTYLE=3D3 -ww  <.tmp/=
man/man2/ioctl_pagemap_scan.2.cat.troff 2>&1 >.tmp/man/man2/ioctl_pagemap_s=
can.2.cat.set \
> > 	   | grep -v -f './share/lint/groff/man.ignore.grep' \
> > 	   ||:; \
> > 	) \
> > 	| grep ^ >&2
> > 	an.tmac:man2/ioctl_pagemap_scan.2:25: style: blank line in input
> > 	...

--=20
<https://www.alejandro-colomar.es/>

--CP6PHeVbIlZ17i9u
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUxJjgACgkQnowa+77/
2zK6Qg/8D4mcfKgnrVt0lpubyFOVwCbIgucL/VTpmNcT3KRKT18DXMArpPZE0lqN
s22gsFrKUvSsy0Kcdfvb8oGJSa0niyqvL/BQqSVr6hdOX+k8tzJtbndSCtLJUGgi
5lSxTSJ8Ux4c+kNcqvfYFArU0rzgheoDosuDu0ss8WlsAGxwMAkDGETfLo1JP7zO
7PkwNL5fRSPQ2zTtQJH53n/Lv32ouvHByrNXgBkq6ZtFqmTguXCoswOYimuJDbh2
8rLqLfxHmCUIaGxv3RmmgmWUDfGWfm2XqCWMea6k+a2Q7qd3x08S4I2VXrBF2r34
sWyhPuegcO4+QXp/toph0qkTqqQVjQg4bebPvs5VF3Dni9vDE351YANkmTfk3UQE
PdBY+Vv8EG+7nDuuqIj+VlwzA7qUHNySpaOX7PeKb6pzQztAuHfBheEOIxKcoe4R
j5ksXwi5VHmSTp2q19+m+S91WUNPiB2/d8sVuw4ultJNRij5vTaqUZhILON3mjPF
Zu0QFJR8miBHOEoq7Od+LbpqDLxgnXLrFILfAGKA6CDz/5/BSJfK1FU6E8kPgOHe
u74xfJXodBhTVcCb30Nn/Crq396jgytUQGxokAS0eAzyuobEkwI8IH36hKCYW1+m
gVWk78MIYXzrUIdAv0nJlApb4Nl097Ropu1DrBgcFvSeQcvOIg0=
=Kiha
-----END PGP SIGNATURE-----

--CP6PHeVbIlZ17i9u--
