Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6988177AB06
	for <lists+linux-man@lfdr.de>; Sun, 13 Aug 2023 22:00:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230400AbjHMUAb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Aug 2023 16:00:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53694 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229745AbjHMUAa (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Aug 2023 16:00:30 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C28B210F6
        for <linux-man@vger.kernel.org>; Sun, 13 Aug 2023 13:00:32 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 50C7D60BAD
        for <linux-man@vger.kernel.org>; Sun, 13 Aug 2023 20:00:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 160C1C433C8;
        Sun, 13 Aug 2023 20:00:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691956831;
        bh=4qzVFMHn3N1HdoNJuOSrxIxbfPObduTsUjQeDhwv/N4=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=nkEBaZH/vzZMtr+fRIpM231N7C5w7nA2tZOVokOq5IbXR0SaRmBJrRDY56LrDrunD
         G2bxv78ESbdFUXmyIWtDVII1VFhez39/oI7rCO3bHeKOe1hFwPILRNQXTMH02Q2rGR
         iFK96ubbrIW/wtQGb39BCojQo850hAf5+OU8DI5D8zMJOvaNO38NDJwSBHAmk9Jqtp
         21S6qEOy6zREe+BmRuVuBYarKhi+Jbih849C3CJTWcJ7KVtL8q+GIjXiGNEeTaA9Tf
         QgbeVHvcvhhbC4uCuXgFJ8UDGul0omYM31r+IRsZ+53ufpwlX1APNTPgcOiiZqWO3K
         GfVJBRqKHytqw==
Message-ID: <7e28216b-fd36-e332-e492-0db9b5ecad0d@kernel.org>
Date:   Sun, 13 Aug 2023 22:00:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: .sp 1 in strerror.3 (and probably more pages)
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
References: <d499316f-1d85-6a99-456e-191004059bc0@kernel.org>
 <20230813152806.sgbftjs6nqgjjcoy@illithid>
 <60420364-2a68-a6b8-d7ca-7fe6a1384d64@kernel.org>
 <20230813162004.bknsqbfvpewbee7f@illithid>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230813162004.bknsqbfvpewbee7f@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------ztnx10RrXwfduvam761SI5VC"
X-Spam-Status: No, score=-11.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------ztnx10RrXwfduvam761SI5VC
Content-Type: multipart/mixed; boundary="------------PpifuUBLCZCOO3XzkjU2nV3P";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man <linux-man@vger.kernel.org>
Message-ID: <7e28216b-fd36-e332-e492-0db9b5ecad0d@kernel.org>
Subject: Re: .sp 1 in strerror.3 (and probably more pages)
References: <d499316f-1d85-6a99-456e-191004059bc0@kernel.org>
 <20230813152806.sgbftjs6nqgjjcoy@illithid>
 <60420364-2a68-a6b8-d7ca-7fe6a1384d64@kernel.org>
 <20230813162004.bknsqbfvpewbee7f@illithid>
In-Reply-To: <20230813162004.bknsqbfvpewbee7f@illithid>

--------------PpifuUBLCZCOO3XzkjU2nV3P
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Branden,

On 2023-08-13 18:20, G. Branden Robinson wrote:
[...]

>> Here's what Michael's commit says:
>>
>>     # ".sp 1" =3D=3D> ensure a blank line before the next section head=
ing
>>
>> (c466875ecd64 ("Various pages: Improve formatting in ATTRIBUTES"))
>=20
> Thanks for the context; it helps.

I had a terminal where I had nicely prepared a lot of stuff to show you,
but it seems I completely forgot about it.  I had a lot more than that.  =
:/

>=20
>> Yep, it explains the difference, although it doesn't explain why
>> Michael added it.
>=20
> Since the Linux man-pages "ATTRIBUTES" section uses a boxed table, I'm
> betting it was working around Savannah #49390.
>=20
> https://savannah.gnu.org/bugs/index.php?49390

Yeah, that's what I suspected.  I've killed them now.  The only pages wit=
h
call now are the tz ones and bpf-helpers.7 (generated from .rst, itself
generated from kernel headers).

Cheers,
Alex

>=20
> The overprinting was invisible if there was no text on the line after
> the table, but it would _look_ like the omission of the space that
> normally precedes a subsequent section heading.
>=20
> Regards,
> Branden

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------PpifuUBLCZCOO3XzkjU2nV3P--

--------------ztnx10RrXwfduvam761SI5VC
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTZNl0ACgkQnowa+77/
2zIPmRAAo+wt2eKDdFtht+SV1bj0fCm3XHQ2KznFZLyy4d++0PuGjBQcQRy11tCd
NNlzTx6Nv91dAT/e3T2LCnREoER+OVs34R3lW4xuXVwqsCC75SmgvtEhU0/XGY8B
e4xDc+R/DjPxqFo30o1TaJtIMaVwEjnO+tO4nzSK9tOzcvsLY14ms5h7809V2QKb
0utm9xy11tISg0V1LD7lrzQvcy5524ly+1P75EHq383+vNDkecUgXH/hoxaZDMl1
10VaLheI1u/OnFDOU+CkGZd1W/Hxa1gsdvRjWBZsMDxFLOOl0pMTo/NwQyIxW7yx
pRrVt1xQlmIb99CIpv2hMrsAPELv4itBzD+IvySI5Ti9Dl/3WrfKDO+eaHZj6lIj
e7rUTUuAATB4jpADjcDTee5Is9eXg8OIqxE2tNL9mJDKtPM5CnOWctC9Wc4usn9z
pqqxQ1+OMRItVPui6iS7FcZdJQveZJv0ep6Urj1Mjsmzn5UA/CH4VaAwM5mVBDo2
lBbERHdiDS0EP4oRHX10I//CBSJlzcVthfUKEqP52oz+ZaGhtzJaYuotn58jJV8N
Xy424H1GBGop9PvnM44kxd9nv5/BapH519l0yNisvBBgRCdRzmz7jNZnwuZjgoas
5ca9W2CxrYMXi+fdY+h+jh1u0ZthVZtcVnmeWAyBPajlVQhNb6k=
=AmOu
-----END PGP SIGNATURE-----

--------------ztnx10RrXwfduvam761SI5VC--
