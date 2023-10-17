Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4496F7CC5C2
	for <lists+linux-man@lfdr.de>; Tue, 17 Oct 2023 16:17:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344053AbjJQOR4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 17 Oct 2023 10:17:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60352 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343900AbjJQORz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 17 Oct 2023 10:17:55 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 701E9EA
        for <linux-man@vger.kernel.org>; Tue, 17 Oct 2023 07:17:54 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E6F48C433C8;
        Tue, 17 Oct 2023 14:17:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1697552274;
        bh=L5PJxmGS84PmG9hrxbeuObYDY02xM8BYLQkZoYa+G3s=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=tMWBhhBxMbVWgmaEK2eKWqkNTQQoOnEpL8sGe2eeFHddwhVs2xiZEhLvisiQhL+dt
         8sajq5qtL0hZv3jUO6ph1pvU1tCy4Oc4DDno6kdNL+X5NwxGXe7H+TGxWLZxHq0CDZ
         qpnE2vYd5UwBMaUHPjsQnqUVJjRckhvQOO8QSFCrPqnzs/fcCy7wgJ6h44jnD30x5T
         OTmXlHajfpTZoQP4CD/7udcUz1Yd4Kh2a2K8qAtUurWI0M2QM5L5CBxcbJF3rZnlsu
         6NVyX8CVJJB6IRxD/W6Se4FUEdZ6kqaXSdiXaKUvHJ4n4OJqWpK/+eBdRMo86SPj5R
         xX02SofpkhlwQ==
Date:   Tue, 17 Oct 2023 16:17:42 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     "Serge E. Hallyn" <serge@hallyn.com>
Cc:     Rituparna ghosh <ghosh.rituparna@gmail.com>,
        linux-man@vger.kernel.org, shadow <~hallyn/shadow@lists.sr.ht>,
        Iker Pedrosa <ipedrosa@redhat.com>
Subject: Re: man7 - useradd query
Message-ID: <ZS6XjjJO59pVMU8_@debian>
References: <CABP5-fx2YvLup4GFXicJapue=qpyZ61oHuRuBB82ne1Ka7uctw@mail.gmail.com>
 <ZSgiKU2TtlDgVkv2@debian>
 <20231017134408.GA181875@mail.hallyn.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="p8IFLGJhsK2Q8G6X"
Content-Disposition: inline
In-Reply-To: <20231017134408.GA181875@mail.hallyn.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--p8IFLGJhsK2Q8G6X
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 17 Oct 2023 16:17:42 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "Serge E. Hallyn" <serge@hallyn.com>
Cc: Rituparna ghosh <ghosh.rituparna@gmail.com>, linux-man@vger.kernel.org,
	shadow <~hallyn/shadow@lists.sr.ht>,
	Iker Pedrosa <ipedrosa@redhat.com>
Subject: Re: man7 - useradd query

Hi Iker,

On Tue, Oct 17, 2023 at 08:44:08AM -0500, Serge E. Hallyn wrote:
[...]

> > > The useradd command here is showing an option   -F which is shown as
> > > invalid in RH 8.8 or RH 9.
> > > Is this correct?
> >=20
> > From what I see in the source code of useradd.c in shadow, the feature
> > is compiled conditionally, #ifdef ENABLE_SUBIDS.  It may be that RHEL,
> > or your version, doesn't build with that option; I ignore it, I'm a
> > Debian user.
>=20
> Yeah - but the manpage should likewise should not show the option if
> it is not compiled in, I guess.

This sounds reasonable.

>  At the moment it looks like we
> conditionally complie some manpages, like newuidmap.1, but I don't
> see any sections compiled out in the man/*.xml files.

You mean that currently it's either the entire page or nothing at all,
right?  I don't see anything that compiles part of a page either.

I imagine that you could do something like that by wrapping the
conditional part in something like <ifdef id=3D"ENABLE_SUBIDS">...</ifdef>,
and write some script to handle it.

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--p8IFLGJhsK2Q8G6X
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUul4YACgkQnowa+77/
2zI+qhAAlTfKgVIvKOu7NIl6uG55rGPHqgLNpAgWv3hySGkmaGh6+0mkbEDQi/3f
4S6/QIcNOoXyCLh/0xQB6rctiR+aD7K8vgdyxsPtyWzI7Kff1PqnEde8feoB0jYS
g867MCaURJ7wdxK21F04a4rvM507ww0AfgGwQIPgy2yPG7rAzG1Q1DwD0dVKUHg3
UXKnRySYGAeKDCoGR/pWYGmBLQ5VxBDodogt5Y/c8vrHl38zPsK39dcdy7+HkVmD
wty0m20WSCZ8TFXB6hCkCVnDZ9vRb6RktTuWHafzqpcF49GH7d9RKu5lt1XHghL3
AdY8KonGLB7KTLUQbP9f7iGpwEh9HFLrfmQJVCqZEJZpGvLk2xeXNGkwrqak0Owq
ZQM9sWMqpJ8ldCOKKcqm2cTzcwRC8/KOvrkRZvL5jt8v7utxnh8r6u+eGusBzVEY
oMFZ9pdgaUWURfYqE9B66ndWtrc3YK+OroKXtrYnxZdgC1LGZOYDFid1WIaxdthU
pbu8e7WTInlRwXR140/6ToY2UGWzAYFoLR46vEQD0xvo97fYrBUD4DcA1ACO0Dm4
nPuiTVP/0Z1Rx2/dF8gELyj0SeqgewA/pcLKodGJ6k0OSCMNhPwE0OQcLhEgoL+S
Qp+hdeXROCBUS1tn/PNpP02KfNsYiIWzEHO11eWlSx4fjlaaw9s=
=ipcq
-----END PGP SIGNATURE-----

--p8IFLGJhsK2Q8G6X--
