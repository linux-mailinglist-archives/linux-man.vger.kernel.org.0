Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D3BB87DE4CB
	for <lists+linux-man@lfdr.de>; Wed,  1 Nov 2023 17:43:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232819AbjKAQn0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 1 Nov 2023 12:43:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45268 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231233AbjKAQnZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 1 Nov 2023 12:43:25 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 44FBFFD
        for <linux-man@vger.kernel.org>; Wed,  1 Nov 2023 09:43:20 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0C409C433C8;
        Wed,  1 Nov 2023 16:43:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698856999;
        bh=NxLg/PACGOh/TslTF40RyctNbL2XmNCq2ZrhKNvby5Q=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=cjHo0AOgiuH5xH9w0S2gY8fpvKcx0EhFLqU39QqcJ8Z3HY8JosrZ7sVUnim0lXzLc
         3jnYhuhyosudiWW9A2lH9bl8hVNnsXb9k1mtNZp5mdXIpx/fiTN0LK2pBNiS0B5Pm6
         fHRYVdWX0xd+o03G8877vnCn3hqbEBgMAeRF2hrhpHLllwajGE+HoNT1ttDSZhnvzD
         /pLQtUa98w0dkVS5hlih4jNHu2hMgb4yVgr4cRQVJ9YCj+0vRN1IgEsOD5ywcCXuE+
         P662W71rIBdDMDKvEEq6uM5OZtNptZqV4Hswg+kxpuMzirNnD4S+Sbj/2NX9VbWwOx
         oY7ZwO41EeBtQ==
Date:   Wed, 1 Nov 2023 17:43:16 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page catan.3
Message-ID: <ZUKAJCQWXHFvsp8m@debian>
References: <ZUJaZKJAbhWGdLrn@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="tVrL/Qal5lxfiGal"
Content-Disposition: inline
In-Reply-To: <ZUJaZKJAbhWGdLrn@meinfjell.helgefjelltest.de>
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--tVrL/Qal5lxfiGal
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 1 Nov 2023 17:43:16 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page catan.3

On Wed, Nov 01, 2023 at 02:02:12PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    y =E2=86=92 of I<y>

Fixed: <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.=
git/commit/?h=3Dcontrib&id=3Df284b08976e4a054f09a926157beca2e20303573>

Thanks,
Alex

>=20
> "These functions calculate the complex arc tangent of I<z>.  If "
> "I<y\\~=3D\\~catan(z)>, then I<z\\~=3D\\~ctan(y)>.  The real part of y is=
 chosen "
> "in the interval [-pi/2,pi/2]."

--=20
<https://www.alejandro-colomar.es/>

--tVrL/Qal5lxfiGal
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVCgCQACgkQnowa+77/
2zKydRAAmchKOHL2q/eV5a8vQPxZ6vgYrXAlqEd1uRrM7HnB7U8iwv2vMTdRK4Bt
fU4Z3Z6MNvnv6XeEkqgBte/bzaoczjOoUhcrVwAGNQawEwjmpTiNAQp5R/7fBnRO
6Eiy3LOIf9kpkZn2Qc9Ce7mZRvV8Aci+qqpyjVLwv+aOX3YctpUshQk8R5LJDGGh
yHUITtJANMNp1t/5EUwZPgVsJx+zDqUfPpccEf2r1O+FAhA7JV9oFJMc6G48sJsZ
T1V5BBQVcpnkerylxQ37zvbdMBI0QFoZ8EPMpmWDaRPcl6FhnXDg+FZigOmjPkDj
riQNmWTL79e0Chm9VIKFD9AxxcOnpo128TZ+hfY3OaprJwAUbOYlcwAxbb/tjkrh
QKv06OiJfY066Oah6RNFOIbIfaTfeIxYxYTHs+0zIYpgahPGo4kRszBQKbo/o0FM
3ABkXUWd05ZM2mkSNOaCa6E/guUoitVtm6ioSJRfav37GRb0HerFqbrTx/vQNqji
fyBpIEdT4GdaVjGuflgYhrTPsbkn03THys6kTXMP4LSyWFYkRrAd2JrFwW/amzXZ
BM4vLPyygBiJ4TPc9xvCu0j6ol9vgspGfWJhDtb21bKuaB2qqdNR5sl7zgBXBtXj
1eHzyn8u1t2HVBrVfzDcxlmfSQPMCEsWbiag/NUYzOJa82yMfsw=
=xW/e
-----END PGP SIGNATURE-----

--tVrL/Qal5lxfiGal--
