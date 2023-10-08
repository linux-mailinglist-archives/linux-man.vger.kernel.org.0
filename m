Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A7D497BD0F9
	for <lists+linux-man@lfdr.de>; Mon,  9 Oct 2023 00:45:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344884AbjJHWpn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Oct 2023 18:45:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50564 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344437AbjJHWpm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 8 Oct 2023 18:45:42 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 78CC4A3
        for <linux-man@vger.kernel.org>; Sun,  8 Oct 2023 15:45:41 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 57F82C433C8;
        Sun,  8 Oct 2023 22:45:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1696805141;
        bh=yt3vWfO0f9XBoqZWmSknMskj8Nw1M6kDZHwlJBe27Xk=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=PphipAbNBvka4yh/lKAoowWBhcpbs5ct3R/WlqWt43cEisbSKyAjTHfmf2N/+a7WB
         Z86cmgc5CJn4tCgv7gd8IQiq597y3VLWQ+jkNjNZOBdSJs/+c7r/twHkhvlrQjH2gg
         qSv2F2tGYhCWuX3hUotzoX/eRmX+xEOqAxeBHTXgcKtqF95r7tYX6oMWCP6HKT2YXS
         md6RZdB4shC9NEUXhLQP82hvoHHCvkk1yuQASaCxNdb5QHQ+RAgWdMg16XOZeuf4g7
         1yyV2/0LG4zfI9kH9JtuXX9EGrtBpPxsB3ExvlifAZ4rEbxdY6qdhLZ8GxiS6aWdse
         TyBCnBNFb+62A==
Date:   Mon, 9 Oct 2023 00:45:37 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH] man2/userfaultfd.2: ffix
Message-ID: <ZSMxEqGwjmk1jDEz@debian>
References: <20231006064254.bsladknplzq5rurq@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="N7hQQVw7cxFpjO2f"
Content-Disposition: inline
In-Reply-To: <20231006064254.bsladknplzq5rurq@illithid>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--N7hQQVw7cxFpjO2f
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 9 Oct 2023 00:45:37 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man2/userfaultfd.2: ffix

Hi Branden,

On Fri, Oct 06, 2023 at 01:42:54AM -0500, G. Branden Robinson wrote:

Patch applied.  Should I amend with
`Signed-off-by: "G. Branden Robinson" <branden@debian.org>`?

Cheers,
Alex

> ---
>  man2/userfaultfd.2 | 9 ++++-----
>  1 file changed, 4 insertions(+), 5 deletions(-)
>=20
> diff --git a/man2/userfaultfd.2 b/man2/userfaultfd.2
> index b2b79f61d..97f13cce9 100644
> --- a/man2/userfaultfd.2
> +++ b/man2/userfaultfd.2
> @@ -222,12 +222,11 @@ .SS Userfaultfd operation
>  a page fault occurring in the requested memory range, and satisfying
>  the mode defined at the registration time, will be forwarded by the kern=
el to
>  the user-space application.
> -The application can then use various (e.g.
> -.B UFFDIO_COPY ,
> -.B UFFDIO_ZEROPAGE ,
> +The application can then use various (e.g.,
> +.BR UFFDIO_COPY ,
> +.BR UFFDIO_ZEROPAGE ,
>  or
> -.B UFFDIO_CONTINUE
> -)
> +.BR UFFDIO_CONTINUE )
>  .BR ioctl (2)
>  operations to resolve the page fault.
>  .PP
> --=20
> 2.30.2



--=20
<https://www.alejandro-colomar.es/>

--N7hQQVw7cxFpjO2f
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUjMREACgkQnowa+77/
2zITdA//aQ8UkpF5I493vqI0N4TICZHjHPgS+85werqkHNepu2TBKhIi10PkwaN0
eZaeIiRZPqFsdHz3ccZXSy0IlEKMaa5DXaS2SWSPbS5pg4EabFIV0c6zYb9nZber
13M0aL9C4+DI1rRoG47r4BVdKVsVa2wmBZS75+RxUJX3YTdjkiGIqRvQ2XpQqGXi
ejrf91r+6R2ogIgWHsFnGXr0rpJuxDyi6fui+89/k2viq/ET8c5t6UbvK0MDDQkn
Ks3us9jPL6XUFECiy4IsDUH9H0tN+2neaLANy2XOVGixeamnCN9uTP7igtoBKALV
qzChxVMIfmwqRTW4bS/BQlx75ZT1a9/Jp59pgqIEJlSLP/xXK2SlLbfPGlB1cuVf
EJ/FwRjq6C7SVva/zT0Boby7XlHDGuLl5iY64tunT0e/ouk/7vvj8pVodqHIPgA/
hfYO+WMkwefnUz0cMohNNO3Oowb9c+AFuyjrdnxr+SY/P8lVVGx6NlxCMwUXPcsS
bSMi+41Itt0hnhYMKbvvdejZgwsXZNkGzVG9McHYYONsGQkRxB74pXl5L/JMegoA
40ye/By734UXIyYse3m8qncPKr+PXGgBLWUC7NX+dQFOAhpmxlcASdwpT2rqzR+h
YjCW7jJtPFmthzdlzKldamvzd/1Qg9+nG6tl0zQvvZioJSFPapg=
=rcZQ
-----END PGP SIGNATURE-----

--N7hQQVw7cxFpjO2f--
