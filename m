Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DBF3F6EAA0E
	for <lists+linux-man@lfdr.de>; Fri, 21 Apr 2023 14:13:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231451AbjDUMNW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 Apr 2023 08:13:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53976 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231754AbjDUMNW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 Apr 2023 08:13:22 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id F27815B93
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 05:13:20 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 218D26746;
        Fri, 21 Apr 2023 14:13:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1682079200;
        bh=xkK7BuJfnkHA8FfSQrCx/3mFqtTORYcO+HKoIGTvKNE=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=HG0yjY+1NmphWQ2vclTrHt2/f4twXfk/zFewsq5/8YvOf3q73hkT1GDGgjyrVKTnJ
         vGDoT2FU1JFRDMd+Xsof55cIQSMlI4FSDgdaPREYptSIjVEEXoHr4klgrc7hqWVcHr
         U9AraGaZ9CWYNy8juux8iZX2zR6bOhse7XFCHa+RMc1yH0aOpBXUotOj/X/7G5CnOM
         T3/wGh1T9spLSZPsvOLmvoPHMIww1GbxxGDkOhjCRxacn9UzlUAp2RqF36pNn3PEZv
         HjY8DJEyo6fLyBotFBee72P2BbAXK9vKg7Ok7l2GeSqFD3YUI1TDBqJZ1t4RYa02cV
         olJeqxMyPo9gw==
Date:   Fri, 21 Apr 2023 14:13:18 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v7 4/8] regex.3: Improve REG_STARTEND
Message-ID: <jsjcirm57g64rxhocttpbozx5wmjwc44ot5jfkxeeag6gal3sj@p4qyghzkpv2d>
References: <8c4487ff-17c6-f4f6-d8cf-59a82d9daeca@gmail.com>
 <sowec336dkzypq6kjouieoyesyfdejmo3j2err3kc4xcpine4l@2takvti7yrem>
 <5918ccbe-d218-df42-cf0f-5eb7b3354e2b@gmail.com>
 <atartvvgxjv7wk5rvdtiyrxjc22lnsgkf75hy3nz3m7fw3m6j4@i7khsjrvuise>
 <d4d75bce-e8f3-756b-fd7e-172f098dcffd@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="abpxryv7h476a3l3"
Content-Disposition: inline
In-Reply-To: <d4d75bce-e8f3-756b-fd7e-172f098dcffd@gmail.com>
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


--abpxryv7h476a3l3
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 21, 2023 at 11:45:07AM +0200, Alejandro Colomar wrote:
> On 4/21/23 04:16, =D0=BD=D0=B0=D0=B1 wrote:
> > And it passes!
> Do you mean that make doesn't recognize the error?
I mean that
> > Those are the only errors I saw, even on the version with
> > IR\ string$
so, even if I'd ran the linter pass, it wouldn't've found the line you
originally pointed out.

> I have the same bashrc (Debian Sid here), and have this same
> line.  Why is it failing only for you?  Maybe I modified
> something in my startup scripts?  Maybe you did?
Unlikely. What if you do make ... 2>&1 | less?

Or this is an unrelated bullseye bash bug that's fixed in bookworm.

Best,

--abpxryv7h476a3l3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRCfd4ACgkQvP0LAY0m
WPFdIBAAhyLREDrCB6tvH5/XUugvDBg1m254JCshWCm2G2UsoMHeEQTDPX4Fe012
IaIxPEcRNyBG/h1jwwYurHqfYR9h52hwLnPo1skC7rN/STuF63Lbk14JN+Hdk2qj
oVar3MrGjQn0D3qvx1QZTu2qw5AU39KniqlnG6Da4dHq8/aU9ljYp6yai1seQX6/
i7WFeXzbZ3v53/hnlccnE9D+SQAoTe/a2yI0P+maarAIEoxUt/rn0K4/KoekO3n7
yk1ICu7KXQ+024TLGz0th8Q9pKr0J7ihgdUNhi+xsHi7z+08QJHL9n6CI6//16EV
IcrNMvjKDM75wtyYWVE2zyETY7Uh+kaGjdbO8RjVR0i8Iv5s7qcG7e+SN3FEmJaB
zx7O+se2XL9KMY7KJw0jKFfpjmFp6aKx43lcQtQW1kApd3PPqoXk29S8xE9sjnzc
LTavBkE3seDIEV+Xdfzs+oVr7/Vkf2yKmy+8dbVVS5lWexufukMUUAKfRnzjnimf
DW7yWFYkkLy1Bs/vg9N6DNXxc8gwGkyt+gZvxyGYNulAiEVOHU9Wq0IzwL80Q0h9
2k+kMkpjRcrB2zX7PzBnYPkH5NWf0TmTbYMEvfWBstRxxd+8N68vNcP2kB4rebV1
8MyO8+2dVICR1rBJ9SyNndqknIfp+CwUS47+o8kaWhxFAFzp9rE=
=1PhW
-----END PGP SIGNATURE-----

--abpxryv7h476a3l3--
