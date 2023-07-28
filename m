Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AE6FA76776D
	for <lists+linux-man@lfdr.de>; Fri, 28 Jul 2023 23:09:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229902AbjG1VJC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 28 Jul 2023 17:09:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53850 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229690AbjG1VJB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 28 Jul 2023 17:09:01 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0FDC0449E
        for <linux-man@vger.kernel.org>; Fri, 28 Jul 2023 14:09:01 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 9A1B1621FF
        for <linux-man@vger.kernel.org>; Fri, 28 Jul 2023 21:09:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7489DC433C8;
        Fri, 28 Jul 2023 21:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1690578540;
        bh=nP++M3MFCeM3InVCkBQ+paLck/t/4THiMKqjSSTc64E=;
        h=Date:Subject:To:References:From:In-Reply-To:From;
        b=ekZdVPimhrqcrmcgBdSsg6J9ckZ4/xrNd3SIdW7nWdI4jPRNH8zDt3/FD++9cc/5v
         QiGwTvHRmObwYf/tgXsynKi905XH3tOmpifyF290Jstj3i1Qc2P4ItJy6HRWUkh6Nt
         Q6m4+Nj19rliVncLUcrv05xSSnh+Zxg4gkvnil8A7kNC4mlYyDg6e5j5E6ht0HaZLO
         IbgrfZCiFf+CDTSpKs9/qidYO9SfCZ68xiLKLQPHbW1xbtWs7/3mVkmILVpv+r4LfF
         3TO0BN2tQWf3OF9yD5qXI9ZFrUn846lc206wMgOMvnLYYAFU6brxn5d0G0myM8fdGT
         crp7PQK3jGfoA==
Message-ID: <0345e25f-e440-41f4-72b6-6ed6854e4603@kernel.org>
Date:   Fri, 28 Jul 2023 23:08:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH 4/6] time.1: ffix
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org
References: <20230728180039.ivcnxzk66gpktqfx@illithid>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230728180039.ivcnxzk66gpktqfx@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------cxVayChXv4cu51pp41jrLEwD"
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------cxVayChXv4cu51pp41jrLEwD
Content-Type: multipart/mixed; boundary="------------zpn27aApnyiLxs2HMUD084Hp";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 linux-man@vger.kernel.org
Message-ID: <0345e25f-e440-41f4-72b6-6ed6854e4603@kernel.org>
Subject: Re: [PATCH 4/6] time.1: ffix
References: <20230728180039.ivcnxzk66gpktqfx@illithid>
In-Reply-To: <20230728180039.ivcnxzk66gpktqfx@illithid>

--------------zpn27aApnyiLxs2HMUD084Hp
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 2023-07-28 20:00, G. Branden Robinson wrote:
> Clean up in preparation for "MR sed".
>=20
> From 225f59d4bd93db69d499cfd546ebef62fc6a63cb Mon Sep 17 00:00:00 2001
> From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
> Date: Fri, 28 Jul 2023 12:02:49 -0500
> Subject: [PATCH 4/6] time.1: ffix
> MIME-Version: 1.0
> Content-Type: text/plain; charset=3DUTF-8
> Content-Transfer-Encoding: 8bit
>=20
> Mark up ellipses properly.  They should be in roman.  The item precedin=
g
> an ellipsis should be in the singular.  Use unbreakable space between
> metasyntactic variable and subsequent ellipsis.
>=20
> Quoting groff_man_style(7):
>=20
>     =E2=80=A2 Symbols that are neither to be typed literally nor replac=
ed at the
>       user=E2=80=99s discretion appear in the roman style; brackets sur=
round
>       optional arguments, and an ellipsis indicates that the previous
>       syntactical element may be repeated arbitrarily.
> [...]
>     =E2=80=A2 The dummy character escape sequence \& follows the ellips=
is when
>       further text will follow after space on the output line, keeping
>       its last period from being interpreted as the end of a sentence
>       and causing additional inter=E2=80=90sentence space to be placed =
after it.
> [...]
>=20
> Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
> ---
>  man1/time.1 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man1/time.1 b/man1/time.1
> index efb818cfd..8902b4b96 100644
> --- a/man1/time.1
> +++ b/man1/time.1
> @@ -9,7 +9,7 @@ .SH NAME
>  time \- time a simple command or give resource usage
>  .SH SYNOPSIS
>  .B time
> -.RI [ options ] " command " [ arguments... ]
> +.RI [ option \~.\|.\|.\&] " command " [ argument \~.\|.\|.]

Please document the reason why \| should be used.

Cheers,
Alex

>  .SH DESCRIPTION
>  The
>  .B time

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------zpn27aApnyiLxs2HMUD084Hp--

--------------cxVayChXv4cu51pp41jrLEwD
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTELmkACgkQnowa+77/
2zJgCxAAgAvLua9RebnzIBpRYtxP6NPoGf4j+KGHWcb/WqZ0zKZycvxNjQvd3IkY
nKRIzcN8xMq/KSGIAFnYnfcJhojYMxq9WxHCQbyU2z2m52+fgj9NkgccD8QoX7uO
tEnTjG+qQC28Os/vw1aGkH3XJ8HmGpTdKPMOQ1HOoKJ71BdDDIalKX5FkyyvuD7U
hNNyvkbSKacER06pF89pLbcltLCloG/Wy+K7OxHSNXL5THOOOx8WykL584KP46ic
nVcXujheANa4a9rSbPlgdY1naTCkfJgAoB5EDYKTaAdQj8sq33WlkGJjCF5HORDJ
QKVK1EjtUuWtUmd9QM5oXb+mJri7tNV163m1Q8YL+SiBfhMjYkwqfitKYSc+Mr+Q
JqEV5zwu1X/F3zpW9RqU1dw39ep9Ck1F/jzmA84eBSmL5nj/4HO7YuF6fWj7DbKq
RigiDiuThQwkqUgfwgfUix+VRVp68YKs75ZXp6+Sh4GDCPX8IP+GVV8RFSqY+aWg
ixVA2mwMPHXQFAAfu7HKbGiTrucyNYDUXP+xv7r2Tx1cHv2zpGDY8ip0jIsdB9sh
imBnc5DgV8QofBmEpFHQ56DmDf1OoPaGYbughEfCP777I5/1Zjj4SvFdne0qUCSK
V74N2NUrO9iE9ZgJg67ZTozgjGY3AjyfNT3hCDCWJB1fAhzsrY4=
=/HIN
-----END PGP SIGNATURE-----

--------------cxVayChXv4cu51pp41jrLEwD--
