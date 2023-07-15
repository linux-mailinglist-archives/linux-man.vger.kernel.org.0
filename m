Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0F1817548E2
	for <lists+linux-man@lfdr.de>; Sat, 15 Jul 2023 15:50:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229584AbjGONuP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 15 Jul 2023 09:50:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35944 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229472AbjGONuO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 15 Jul 2023 09:50:14 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9EEBCE6
        for <linux-man@vger.kernel.org>; Sat, 15 Jul 2023 06:50:13 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 253F960B90
        for <linux-man@vger.kernel.org>; Sat, 15 Jul 2023 13:50:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E923EC433C7;
        Sat, 15 Jul 2023 13:50:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689429010;
        bh=XhbVUv2QvlLmUDxFdGy7dL6UkEgd+9dTgAuOePwfMcY=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=IGCgsIBqwYVsXbK+JIq2oOkHxGk5KtYUP/YpHdNzZQ3YWsypzuuQOqdpoCD5cZvGE
         uieQhAUjCj8bVgzQ9+yPh9XSE25q6BlIdtPdH/hTKFjlVkXY9bqjdzrYkzch3ujL3N
         2Psp2kWayJzJUhyTEj7WpF17UFnYBcfXCN8bwopVZhq8uFxnESUXKciJ9oRnrPjxJ9
         AnvmTQPt3GfmUieFHti7zlJgTohwJJ07+2WP0A3Rz8OKOFn4Jjqel4DGuPp1g/UWZF
         caZFVIUoWyS4LvFSLTpPc53U9/nRAaZ9PKEl7K0TeMmPkKq/w6+4GGnUZ8Xhk1T1o2
         WkeUXiUkMb7wA==
Message-ID: <abcc8ad5-8d4e-ce7c-d7d2-1d5ad599c4a8@kernel.org>
Date:   Sat, 15 Jul 2023 15:50:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: SPDX license review requests
Content-Language: en-US
To:     Joey Schulze <joey@infodrom.org>
Cc:     linux-man@vger.kernel.org
References: <CADeQ=2-ZsaSCEPfTHUO6AAZ_+H8ob4LJ5x5MuGaX=jdOVpdCog@mail.gmail.com>
 <bd1a81d0-456a-bc19-7df0-fdbcc2a51395@gmail.com>
 <a7ed2025-b896-bbce-f36b-0a681f38c542@gmail.com>
 <ca053426-bd13-055a-88ab-9a4873f13f7e@gmail.com> <ZHXweLNKqHKoybXM@tassilo>
 <eda85fda-6182-fc13-3943-9084b187433e@gmail.com>
 <CAK719L2PjTr=-c_AEi89TVrJV7DHwyfBJjH6z6Bozc0Rk+rOfQ@mail.gmail.com>
 <b164d81c-225f-f450-c28a-f4aa9f219448@os.amperecomputing.com>
 <e8f9685b-ef42-6d0f-c18e-861a26922f6e@Shaw.ca>
 <978e3f22-8017-eb91-0737-9a043c335122@gmail.com>
 <ZKnDqEF+RFVUyW+Y@finlandia.home.infodrom.org>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <ZKnDqEF+RFVUyW+Y@finlandia.home.infodrom.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------0EXTU0ehf94HEDZbpRlNNgHJ"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------0EXTU0ehf94HEDZbpRlNNgHJ
Content-Type: multipart/mixed; boundary="------------nEij7rN0GkHWIgymSQgYC0C2";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Joey Schulze <joey@infodrom.org>
Cc: linux-man@vger.kernel.org
Message-ID: <abcc8ad5-8d4e-ce7c-d7d2-1d5ad599c4a8@kernel.org>
Subject: Re: SPDX license review requests
References: <CADeQ=2-ZsaSCEPfTHUO6AAZ_+H8ob4LJ5x5MuGaX=jdOVpdCog@mail.gmail.com>
 <bd1a81d0-456a-bc19-7df0-fdbcc2a51395@gmail.com>
 <a7ed2025-b896-bbce-f36b-0a681f38c542@gmail.com>
 <ca053426-bd13-055a-88ab-9a4873f13f7e@gmail.com> <ZHXweLNKqHKoybXM@tassilo>
 <eda85fda-6182-fc13-3943-9084b187433e@gmail.com>
 <CAK719L2PjTr=-c_AEi89TVrJV7DHwyfBJjH6z6Bozc0Rk+rOfQ@mail.gmail.com>
 <b164d81c-225f-f450-c28a-f4aa9f219448@os.amperecomputing.com>
 <e8f9685b-ef42-6d0f-c18e-861a26922f6e@Shaw.ca>
 <978e3f22-8017-eb91-0737-9a043c335122@gmail.com>
 <ZKnDqEF+RFVUyW+Y@finlandia.home.infodrom.org>
In-Reply-To: <ZKnDqEF+RFVUyW+Y@finlandia.home.infodrom.org>

--------------nEij7rN0GkHWIgymSQgYC0C2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Joey,

On 2023-07-08 22:14, Joey Schulze wrote:
> Hi Michael and others!
>=20

[...]

>=20
> For the record,
>=20
> I would like to re-license dir_colors(5) under the GPLv2+

Thanks for the very explicit statement, including the entire header
below!

>=20
> Please adjust the manpage source accordingly.
>=20
> .\" Copyright (c) 2001 Martin Schulze <joey@infodrom.org>
> .\"
> .\" This is free documentation; you can redistribute it and/or
> .\" modify it under the terms of the GNU General Public License as
> .\" published by the Free Software Foundation; either version 2 of
> .\" the License, or (at your option) any later version.
> .\"
> .\" The GNU General Public License's references to "object code"
> .\" and "executables" are to be interpreted as the output of any
> .\" document formatting or typesetting system, including
> .\" intermediate and printed output.
> .\"
> .\" This manual is distributed in the hope that it will be useful,
> .\" but WITHOUT ANY WARRANTY; without even the implied warranty of
> .\" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> .\" GNU General Public License for more details.
> .\"
> .\" You should have received a copy of the GNU General Public
> .\" License along with this manual; if not, write to the Free
> .\" Software Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139,
> .\" USA.

We're using SPDX now, so it will be more like this:

=2E\" Copyright (c) 2001 Martin Schulze <joey@infodrom.org>
=2E\"
=2E\" SPDX-License-Identifier: GPL-2.0-or-later
=2E\"


I guess that's good to you, right?

>=20
> This should help keep the manpage free and a version in Fedora.

Makes sense.  Thank you!

Cheers,
Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------nEij7rN0GkHWIgymSQgYC0C2--

--------------0EXTU0ehf94HEDZbpRlNNgHJ
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmSypBAACgkQnowa+77/
2zKEBw//Spq7iPTKsfc3b370MKNLto810MIMPLIdD8vfEZFte+7Co6KMpi/ljSFG
5p/AsXyJRYlhFx1LF9fjlklHgoWmJr1XfNrG34Ho1275Nfxl1HBjV8B6S1mz3xG6
AH/7gol2NejQz6BZJCT/ueyR7C+Jv3CgyFI5okllgxXZ8oLeRTIgSYbJpY/QTPOG
Up8xhgUrtdhkSSNfcpOevze4ceNpmUavGOOupLI15FraJOx7O4vtzl1ofV89qbA4
0LpuPXhKkPBVw6wFnYGOQE16Tdvf94e3B5GQiuT5xhtXyaBjyp/En5C+7QKNUM9y
kUn5Tbxf/0V0e3OGjJYk/0g0yhYw5KXFg6aMDx5BaGs/8ymA0qMCCVAzdx8NBWA+
VzKgaaLYVjMdY7bm6yuQMs+gqFtIsPO1Gy+l6j6yue4OC2h/hwfbQOCNAbWPpUnD
nNHaaWYpPrHnYisdYiIF1b6e1Q6kUNf/fDVlC7StOg7UKEVGxsCfJgZnLVudOfq2
qU8ELUSqxM4jKOWUlIqA5jjBOcbgB0g5O/DLqY2gjrmCLXbmpk5eKaQeAkj0eLIi
wssBQFxdx1rZrLvBfWMaIMvSoSGjTtBmUHZXkhBMtJW4YVsvgwtCXTwpgj1Zr84I
1doyKrc5Wi0yNm1WT1vKz03FwjctPj4tXSKz1WUbPAOO3g5kW/k=
=7KS4
-----END PGP SIGNATURE-----

--------------0EXTU0ehf94HEDZbpRlNNgHJ--
