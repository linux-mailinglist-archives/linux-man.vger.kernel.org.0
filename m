Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 574337D9603
	for <lists+linux-man@lfdr.de>; Fri, 27 Oct 2023 13:09:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231302AbjJ0LJO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 27 Oct 2023 07:09:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53708 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229633AbjJ0LJO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 27 Oct 2023 07:09:14 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 35E779C
        for <linux-man@vger.kernel.org>; Fri, 27 Oct 2023 04:09:12 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 09571C433C7;
        Fri, 27 Oct 2023 11:09:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698404951;
        bh=jxrxdDoTWYnpIsh/ASt4NhdncHxYAUqU1slBtJ9W3kI=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=XOySn87+VVgqsJDlyNW5XQfk9XCCFpJbP8+2UZIXT/U9iR6RKwJA7T7ra80D+JDg3
         W3Pp7lgFobclcJBJ4it49RekKKDYXYjDDzsNgpa7soVbHBfvzKWJgA5aVEYzgjuRVe
         Gw1pRj4kA+AEXnwR9C8+AgiVmK94+c1Q8/UEwWJ6T6NsAfddLY0oBeiTOUWniURZt1
         BUkumeOexuZtOYHjL1qxvAl25qgneuicVs+YK749LcExc/4XprUgd/lnS0M3LJpFL+
         E6AroLeNRcryUSb8cqUL4AYxf/3JojnOhB9ZRRHUg0oED85vmWNBrkPQYbz86/uuHI
         Ol+EoK+/BNH7g==
Date:   Fri, 27 Oct 2023 13:09:08 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     Stefan Puiu <stefan.puiu@gmail.com>
Cc:     Adhemerval Zanella <adhemerval.zanella@linaro.org>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH v4] ld.so.8: Describe glibc Hardware capabilities
Message-ID: <ZTuaVJySWJq5GPIv@debian>
References: <20231026182802.2194109-1-adhemerval.zanella@linaro.org>
 <CACKs7VAV4aamaYe3b-6XDdxwUrbp8xTrJYCQB4bj+QET7MK0tA@mail.gmail.com>
 <ZTuGVYV0qMGL9PqJ@debian>
 <CACKs7VC=9WbMMZLv7Ou+7hfOaTihXCX_RSjBMLBGa+UBXy_iGQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="L2/IrHZabLUacwXq"
Content-Disposition: inline
In-Reply-To: <CACKs7VC=9WbMMZLv7Ou+7hfOaTihXCX_RSjBMLBGa+UBXy_iGQ@mail.gmail.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--L2/IrHZabLUacwXq
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Fri, 27 Oct 2023 13:09:08 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Stefan Puiu <stefan.puiu@gmail.com>
Cc: Adhemerval Zanella <adhemerval.zanella@linaro.org>,
	linux-man@vger.kernel.org
Subject: Re: [PATCH v4] ld.so.8: Describe glibc Hardware capabilities

Hi Stefan,

On Fri, Oct 27, 2023 at 01:37:42PM +0300, Stefan Puiu wrote:
> Hi again Alex,
>=20
> (hopefully this time without HTML)

Yup; there's no HTML this time.

>=20
> On Fri, Oct 27, 2023 at 12:43=E2=80=AFPM Alejandro Colomar <alx@kernel.or=
g> wrote:
> >
> > Hi Stefan,
> >
> > On Fri, Oct 27, 2023 at 11:57:51AM +0300, Stefan Puiu wrote:
> > > LGTM, thanks!
> >
> > Should I count that as an acked-by?
> Yes. Didn't know the procedure for saying that with tags.

Thanks!
Alex

--=20
<https://www.alejandro-colomar.es/>

--L2/IrHZabLUacwXq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmU7mlQACgkQnowa+77/
2zK6fxAAgQ5u1iBOqR9jLuzqlWA0ByMd3C0oK8lSr979jbdYqNWxGmojibCRbbts
Hlnw3mkZltXee9ARwC/KBDRLYUKc9TPDXW+O08kYP/295MDeWeD60cZtixNkvmTN
+7PGd/yyrfLncJn2bJsC2LjRq3ksLyH0Mfw32h7EEP9sKkzESfUsdquGh1mc4b7Y
R/XDX9Y/rj1vBlDTrwd8sNMYrvpfjVX0JPQDSc52+yh7/pzFLx5RCCrUaKOemU2Y
xkmqj15syiOUT0DmhUW2xaY51ZUH8AG7lvhw5/6CbO/fbW5pOFKFsd3G4qV6oKOZ
A3WzvzQJrFahK7y/Gmp4t/dxudVY//iwfBoatxJXDbW5G+utC9A6Uhk7Au4tUux9
slKh1LKVLAyELIye0Mu+x/VNftQ2u5gyhvJGrdJe+Ge6heZ+WZvcnZZ/4DDKqSxy
m2pXMIoFXGVvZOFozbXjSpL9Jie3uhR6ZqVD/kfKde1ylrlEEzOPj1SE1bkV2F9j
bRb5ALwYddWoOHTJjh9Aw1EJr82s9wt0y6Ovglm+zDiYAKvbQGNPO9BYaMNhEQOT
yN8EoLCVeVVtaz13P++/WFxQkfkfojOxBjc7HwcX3RnvMcLDw62LHkAaZhpI4gAg
GC0SxP+Nmvo4wogasanUcb4LbRQo/9eE1AfJDn/xsGXWqNh1RRc=
=oAEu
-----END PGP SIGNATURE-----

--L2/IrHZabLUacwXq--
