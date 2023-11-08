Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BEF407E605A
	for <lists+linux-man@lfdr.de>; Wed,  8 Nov 2023 23:12:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229565AbjKHWMF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Nov 2023 17:12:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51294 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229460AbjKHWMF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Nov 2023 17:12:05 -0500
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 326B7258A
        for <linux-man@vger.kernel.org>; Wed,  8 Nov 2023 14:12:03 -0800 (PST)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9C733C433C8;
        Wed,  8 Nov 2023 22:12:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1699481522;
        bh=a7pPW9JjY3KZGUjO0KYFtw0XuFqPCUb0VKr+ZHN6YxE=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=ODcBMqVTRGFboR0flz5W6j4uVO/uTgXrfbMgrD0tvB6SQEsJpBzXKFMRN1mTBTVTj
         aj0NK9e0CDg0HNFE4tl9cq7StAodq9CID62RPE2ZyKlZ+cpgb0OG3Z1qYDWJ9tywNu
         lvuSU22NbGE8TheW2Z7Egc5mXdHQGzfaZGm3coxgalZQ1H2POxWO1f3DFxIjRYjhTM
         7SwEyswh5LZoOMeHNpO80goy0el2aN/B+GgxZsYFzkFOkRlB9i+PwPFTGR6WKlcWxJ
         795jqJmVle+RhPADmfTR4Oe4FHi3w1ip+u3XstmI7KflsIugrRwVBPfbFSh6KPbtSC
         bFh8NveVmLJ3w==
Date:   Wed, 8 Nov 2023 23:11:59 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Carlos O'Donell <carlos@redhat.com>
Cc:     Zack Weinberg <zack@owlfolio.org>,
        GNU libc development <libc-alpha@sourceware.org>,
        Jonny Grant <jg@jguk.org>,
        'linux-man' <linux-man@vger.kernel.org>
Subject: Re: strncpy clarify result may not be null terminated
Message-ID: <ZUwHr2-l1WADR57b@debian>
References: <ZUgl2HPJvUge7XYN@debian>
 <d40fffcb-524d-44b6-a252-b55a8ddc9fee@jguk.org>
 <ZUo6btEFD_z_3NcF@devuan>
 <929865e3-17b4-49c4-8fa9-8383885e9904@jguk.org>
 <ZUpjI1AHNOMOjdFk@devuan>
 <ZUsoIbhrJar6ojux@dj3ntoo>
 <ZUtaH35V3koxTSL0@debian>
 <16cc15a4-cfc0-49f4-9ebf-ecf0901700ce@app.fastmail.com>
 <ZUukRqsFNr7v_2q7@debian>
 <d213e504-9b2a-1526-ded8-2d283a226b4d@redhat.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="pdD3to4i+y698yKj"
Content-Disposition: inline
In-Reply-To: <d213e504-9b2a-1526-ded8-2d283a226b4d@redhat.com>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--pdD3to4i+y698yKj
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 8 Nov 2023 23:11:59 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: Zack Weinberg <zack@owlfolio.org>,
	GNU libc development <libc-alpha@sourceware.org>,
	Jonny Grant <jg@jguk.org>, 'linux-man' <linux-man@vger.kernel.org>
Subject: Re: strncpy clarify result may not be null terminated

On Wed, Nov 08, 2023 at 04:35:12PM -0500, Carlos O'Donell wrote:
> On 11/8/23 10:07, Alejandro Colomar wrote:
> > So we had it in ISO C in C89 and C99, and only in C11 they realized it
> > had to be removed.  POSIX hasn't even removed it yet!  I won't hesitate
> > to kill a function just because of bureaucracy.
>=20
> Attempting to get consensus at an international level, across cultural bo=
undaries,
> use cases, workloads, and developer workflows is difficult and not intend=
ed to be
> bureaucracy for the sake of bureaucracy.

Hi Carlos!

I understand that, and respect ISO's work.  I just don't think we need,
as GNU or Linux projects, to be restricted to the decisions of ISO.  We
can realize that certain functions are bad, and mark them as deprecated
in our scope.  If others want to imitate (ISO might even take it as
"prior art"), then great.

Cheers,
Alex

>=20
> --=20
> Cheers,
> Carlos.
>=20

--=20
<https://www.alejandro-colomar.es/>

--pdD3to4i+y698yKj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVMB68ACgkQnowa+77/
2zKO5w//XxBdgF/pdJGBZiCDZSQDqRMVTB9lQMe2ADTTn8cpi/QLxcsCZ6O4L4Na
6yY8NHHe8UZ1X2Op1GseBRoOTWls7g0O3TPAuXS05Tcxy2brq0P9GOD656debNF5
6bSXAGV0M7QYeBQxdGpcanvCpd8/m99edzGrzXeLJhrEJd/IQcI4XhHtniolkPf+
EL41Fb0lFyKJ/l73j+KP8MAz989mvIbPoM5Yd89YnCtDEsVrzZyj3NvB/kRf5gzQ
xUZ+YrFYqgsTm7y2GBZN9IS7tlvaY0YcJEG3F9MZGmIZPuStIN2//awnpth1aBoe
ZAFvJ1tTcB2k4crqbNbql5iiEd5VFncqirMCQ7vIjJhDkhz/vzhDCZDtsxVIMGya
2a89APMB1T+RmmiXnVENPH1RvkLjpoB1Bv9wSp8wX9X04G+hDA2RAceJMltRdkJW
3JBuytYxOK7u6Y9sZBQ84VSyqYCl/4Xey/TPepT//lV1Pu6/zV/Wif2lK0KGlbsw
GZ7ArZxz9fQn/vEZkYJfm8SfbrSoL5Pm2l9UuH2pu1vURTbsoG1GUZJMTKzKz4Pt
B+G8t0yV0+lXB1asHuiS1hXI+TsjDhHJXoJdswMh7Jgjt0LqSs5J9B7tYG/ET1jF
JF1+rlyVLKl1sq3EZoa/cBoO9V6gpntUGGjyct/yjpDJKWn9YRM=
=Orry
-----END PGP SIGNATURE-----

--pdD3to4i+y698yKj--
