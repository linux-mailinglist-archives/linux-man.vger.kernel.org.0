Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 13C556EA1D0
	for <lists+linux-man@lfdr.de>; Fri, 21 Apr 2023 04:48:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229660AbjDUCsu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Apr 2023 22:48:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41698 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229521AbjDUCst (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Apr 2023 22:48:49 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 358BBE75
        for <linux-man@vger.kernel.org>; Thu, 20 Apr 2023 19:48:46 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id D22256640;
        Fri, 21 Apr 2023 04:48:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1682045323;
        bh=w63VscWvqG2P0UF3jHUdfnw+r2gRhi+1VFhpKlfCUXM=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=TR+g7M1xgfnNxR1MgNvCqXBsWluS/jJFtsnZhm4ZwyWVQBKG+cmBn1C4pMSJBUa+E
         eC6XlynpRi9x09o+qqbsOKLvS12QLlGDVmKFJyVG5xK4Dp08iwnC4B/OcMqvMbxAC8
         cX6cll4b1v0gNDldrjKo3iYHjvlaYJLhhRzekgh/rGEJMyjkCEU5Q1IX7wCghRqsR5
         fyxmiw2qMcLJYZxNN2SSeG+0pQOewtI0fwBJKO74Kj8dRLuMxLKN8cbideVSphh2zS
         s34v62AesbrutX/80POFRTeZqO7hMAncPewsZWP9mjnu7djJRmtzXZaGjzY4EZISlJ
         wZ0gNRWI/dQFg==
Date:   Fri, 21 Apr 2023 04:48:42 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v8 0/5] regex.3 momento
Message-ID: <cover.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
References: <567b10b2-0a3f-4bbf-642d-d6d7bc4f1580@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="2cwbcsvl2vs63x67"
Content-Disposition: inline
In-Reply-To: <567b10b2-0a3f-4bbf-642d-d6d7bc4f1580@gmail.com>
User-Agent: NeoMutt/20230407
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RDNS_DYNAMIC,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--2cwbcsvl2vs63x67
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

As a pull.rebase =3D true enjoyer, it was very easy
(indeed, git pull and axe the single-line conflict + empty commit),
and it's what I've been doing the entire time; recommend it.

5/5 remains a toss-up for me. Apply it if you think it's better,
don't if you don't.

https://bugs.debian.org/1034658

=D0=BD=D0=B0=D0=B1 (5):
  regex.3: Desoupify regerror() description
  regex.3, regex_t.3type, regmatch_t.3type, regoff_t.3type: Move & link
    regex_t.3type into regex.3
  regex.3: Finalise move of reg*.3type
  regex.3: Destandardeseify Match offsets
  regex.3: Further clarify the sole purpose of REG_NOSUB

 man3/regex.3              | 179 +++++++++++++++++++++++---------------
 man3type/regex_t.3type    |  64 +-------------
 man3type/regmatch_t.3type |   2 +-
 man3type/regoff_t.3type   |   2 +-
 4 files changed, 110 insertions(+), 137 deletions(-)

No clue where it got this. The interdiff is just the .IR -> .I.

Range-diff against v7:
1:  783a16431 ! 1:  4479e1572 regex.3: Desoupify regerror() description
    @@ man3/regex.3: .SS Error reporting
     +.IR errbuf ;
     +the error string is always null-terminated, and truncated to fit.
      .SS Freeing
    - Supplying
      .BR regfree ()
    + deinitializes the pattern buffer at
2:  5706f1892 < -:  --------- regex.3: Desoupify regfree() description
3:  baacf086f < -:  --------- regex.3: Improve REG_STARTEND
4:  056c3ff04 =3D 2:  bad307847 regex.3, regex_t.3type, regmatch_t.3type, r=
egoff_t.3type: Move & link regex_t.3type into regex.3
5:  44d7b775d =3D 3:  edefa8a5e regex.3: Finalise move of reg*.3type
6:  79641df02 =3D 4:  500070a5e regex.3: Destandardeseify Match offsets
7:  26d06c07f =3D 5:  b01685c7a regex.3: Further clarify the sole purpose o=
f REG_NOSUB
--=20
2.30.2

--2cwbcsvl2vs63x67
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRB+YcACgkQvP0LAY0m
WPFsuw//TZWXaUnRyiZptdZavJfaDvi2Hrigp/UD3lMXafUPy/VtCu+t2WKClXuR
s5tPo5BGwv+qZn/3qVD8QmOiyFKmg9kyDOAN4nLwcj+iJYpTqcctwvIeVcym8Trz
+Pomkqk9xDTiFniGcfvXtQsbvwrGq4CF3es5XmdmgfDwEFYKqugCxUYKqUtZ2l19
xNUBhNGN1W0bUIpzlbiqatJbI4F3R8X9ZxwGWhEWYg4PnFeerez+NUC4mj2a087T
8JNYadRS4l2kH40V+6giGuti1jxA57SAGjczC81ASmHrlGK/ifu21BqLjpomxnbs
1jTEljFjW9zdK6hx+qMXWNAV+TeM27mmN7+6A0Gmu2PbJmaPUpll8attDT48ZjuO
ykaT1O4mqDMit5KZZdrLuWW9/Oo0InwHK4CBLb8g/lUVLo/ezDlBuldwgV+sVhdZ
AMrH5ZCIh0hhBIXohJB5Qz2Ezasad6+IdimGy7MNmFVmhbGcZ/P+IDToXqLgPdZA
kLjrz6tYm63Es/3xMKKSOT/GDqmJmcZDaiJ5dxOSPjs1Mu7giarW6J1Ke2Mgtdv1
6aDlUh8O5OQ+PQ/pjA9EBctY4MZ0Aypbq933ppyd3jbwpAWXe47efoLRwyS48sON
o0cROAQhhWh2QYI6qO7ABuK7b9aEk/7+1K4Md/zrCVw2ITtuzAA=
=ghBh
-----END PGP SIGNATURE-----

--2cwbcsvl2vs63x67--
