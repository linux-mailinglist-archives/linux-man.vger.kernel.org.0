Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BD6EA76A4DB
	for <lists+linux-man@lfdr.de>; Tue,  1 Aug 2023 01:30:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229888AbjGaXap (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 31 Jul 2023 19:30:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48394 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229678AbjGaXao (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 31 Jul 2023 19:30:44 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2596FB
        for <linux-man@vger.kernel.org>; Mon, 31 Jul 2023 16:30:42 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 5E9FD61350
        for <linux-man@vger.kernel.org>; Mon, 31 Jul 2023 23:30:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AB3AEC433C8;
        Mon, 31 Jul 2023 23:30:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1690846241;
        bh=VzLLwMUifY/C1eZcA7R2DxpDmVq7pw1PqSvvglOc5Z4=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=ED7w2QeSxEErCteaYvd9Rm1BYqcK9c7CSG5Zvcrtr/CxL87CnsEtn1fHYmAprprCX
         oHxRtsnK/GIvJIbYczGbZSaGQGeKLFcC2f9byQS+c6HbuoLhdiiJ+IvhMnVkNFYwI+
         evrr5GggQHRguCO9VUzd0VkkICQtFX9Jn0fSy2n6OlBiTaMzjdTgzXM+pC4bUDdpuK
         aAsdHo5PEn4X4xvQn1nCIlj1unzHHh+Sird6A1Exoszuom9HreyiBCNwgmPUs58sNu
         LnVkaD8o/VikTpE+LT+mrLQDvVlLUdQK0ILjiZMBvPzmg9M7lHfuwhFqM3qiKupZ0d
         KAC03mmg5uAhw==
Message-ID: <48146a83-ce14-b8d2-efbc-fc6eff753a46@kernel.org>
Date:   Tue, 1 Aug 2023 01:30:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [PATCH v2] man*/: ffix (migrate to `MR`)
Content-Language: en-US
To:     Jakub Wilk <jwilk@jwilk.net>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org, groff <groff@gnu.org>,
        Ingo Schwarze <schwarze@usta.de>
References: <20230731175251.67rgt2r4sweutnay@illithid>
 <20230731221641.pbkcrdx52gyy4xfz@jwilk.net>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230731221641.pbkcrdx52gyy4xfz@jwilk.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------LHIcGIeee2dHV7qk7NbdgzC2"
X-Spam-Status: No, score=-7.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------LHIcGIeee2dHV7qk7NbdgzC2
Content-Type: multipart/mixed; boundary="------------RrxPF8TYnuCmJl8HHhL9RXeZ";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Jakub Wilk <jwilk@jwilk.net>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, groff <groff@gnu.org>,
 Ingo Schwarze <schwarze@usta.de>
Message-ID: <48146a83-ce14-b8d2-efbc-fc6eff753a46@kernel.org>
Subject: Re: [PATCH v2] man*/: ffix (migrate to `MR`)
References: <20230731175251.67rgt2r4sweutnay@illithid>
 <20230731221641.pbkcrdx52gyy4xfz@jwilk.net>
In-Reply-To: <20230731221641.pbkcrdx52gyy4xfz@jwilk.net>

--------------RrxPF8TYnuCmJl8HHhL9RXeZ
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Jakub, Branden, Ingo

On 2023-08-01 00:16, Jakub Wilk wrote:
> * G. Branden Robinson <g.branden.robinson@gmail.com>, 2023-07-31 12:52:=

>> Use the man(7) macro `MR`, new to groff 1.23.0,
>=20
> Given that this version of groff was released approximately yesterday=C2=
=B9,=20
> this is very premature.
>=20
> NACK from me.

I included that, and the reason, in the commit message.  It's in the MR
branch in my private repo, as I mentioned in a reply to Branden:
<http://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/lo=
g/?h=3DMR>

My server is HTTP-only, but the commit should be signed with my PGP
signature, so it should be safe to check anything from my git:

$ git show --pretty=3Dfuller --show-signature=20
commit d4a22d4645184c205a04477ee84b0ee429fb6200 (HEAD -> MR, alx/MR)
gpg: Signature made Tue Aug  1 01:19:00 2023 CEST
gpg:                using RSA key EA3A87F0A4EBA030E45DF2409E8C1AFBBEFFDB3=
2
gpg: Good signature from "Alejandro Colomar <alx@kernel.org>" [ultimate]
gpg:                 aka "Alejandro Colomar Andres <alx.manpages@gmail.co=
m>" [ultimate]
Author:     G. Branden Robinson <g.branden.robinson@gmail.com>
AuthorDate: Mon Jul 31 12:52:51 2023 -0500
Commit:     Alejandro Colomar <alx@kernel.org>
CommitDate: Tue Aug 1 01:18:59 2023 +0200

    man*/: ffix (migrate to `MR`)

    [...]
   =20
    Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
    [Jakub has concerns that groff-1.23.0 was released too recently]
    Nacked-by: Jakub Wilk <jwilk@jwilk.net>
    [alx: Added quote from gbr documenting how he tested for regressions]=

    Signed-off-by: Alejandro Colomar <alx@kernel.org>


(While preparing this email, I noticed I hadn't noted Branden's
authorship while committing, so I've amended the commit; luckily it
wasn't on kernel.org.  I'm sorry if I caused any inconvenience to
anyone fetching from my repo.)

>=20
>> When the text of all Linux man-pages documents (excluding those=20
>> containing only `so` requests) is dumped, with adjustment mode 'l'=20
>> ("-dAD=3Dl") and automatic hyphenation disabled ("-rHY=3D0") before an=
d=20
>> after this change, there is no change to rendered output.
>=20
> That's not what I'm seeing with Debian groff 1.22.4-10 (which seems to =

> have .MR backported).
>=20
> After applying the patch, the man page references are typeset in=20
> italics, which is ugly and against man-pages(7) recommendations.

I guess he meant no regressions other than the intended formatting
change.  Branden, I find that this isn't really documented in the
commit message and it should be.  We probably thought it was obvious,
but Jakub is right there.

I would be worried if there would remain any difference after removing
formatting, or more precisely, if after configuring MR to do bold
there would remain any differences.

However: Branden, I suggest you content Jakub showing more proof that
there's no regressions, and very explicitly document the intentional
regressions a bit more (basically that we're changing to italics).

Jakub, you (or distributors) can always change the meaning of MR to
perform bold instead of italics.  Just in case you didn't know.
Although if you didn't, maybe it's a sign that it should be more
thoroughly documented in this patch.

I started CCing Ingo in these discussions to let him know that D-day
has come, and we would appreciate mandoc(1) support for `MR`.

Cheers,
Alex

>=20
>=20
> =C2=B9 More precisely, about a month ago.
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------RrxPF8TYnuCmJl8HHhL9RXeZ--

--------------LHIcGIeee2dHV7qk7NbdgzC2
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTIRBgACgkQnowa+77/
2zJIeA//akzgTUNPDUKVCN41r+knfSZFHz9fRFaPfE5MdXL3FnAi3d1Randyc9To
OjollGQrvw6aZxxy+h+mg2/Qr7C8khwqKOiAyPBlliV0xdXJQD+u+BRAOODfssH/
H5M53mSiUuOFcNDF5AqSVA3nPimRicyQICPG+TfjR89WgclGmZvyLT7IQGt4SeRd
GvpxERMRZg7WeVdlrUKHnxEvHMwzvnZ82/QtT7AaVbYEANnjN68OJ+jyyMjcxJSU
BLhjq8G7aiXmBsiWjAhUbT4z6uLkbx4acggUQo7rHf4/7aje+0lct3K5vEH2yG5Z
mcg2Np3TGlPZD5OetVtS4oGL/Q+2zlgCD/d+iRhGzpbCPXwE0Dmjwc/bxdVClDrz
ap7f6BS1Yzyl8h/zZhY2KvXUTuGr6mOryqUpqZmJUkDDa/O+Wrl79MunAkOVpunv
VJTtIxtG+/qWVWuFkeDd8VOpTMgGfOx3gZ8xT28iELLU1DYAp/4zu789VArTp4Gf
ltP9gfkRU4veGCxXsuTU4zKP72groXPBmdWgpFRfgJHT5UcmRDw6I1oYCEtmGjvd
1VNkW4/dEr2cfA3ikGgnPG2siueKaxmUMdDwflGatADrG39TbMcVWI8XNjzxLZgq
qKvkRHVWLRlgugWwV/lu3B2PNUDGrtwC/CkWHovQOYvlK/6iHGM=
=H4sv
-----END PGP SIGNATURE-----

--------------LHIcGIeee2dHV7qk7NbdgzC2--
