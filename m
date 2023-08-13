Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 58A2777AE81
	for <lists+linux-man@lfdr.de>; Mon, 14 Aug 2023 00:46:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231284AbjHMWqO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Aug 2023 18:46:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47088 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230443AbjHMWp7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Aug 2023 18:45:59 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A416710DE
        for <linux-man@vger.kernel.org>; Sun, 13 Aug 2023 15:45:56 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 388C3629D7
        for <linux-man@vger.kernel.org>; Sun, 13 Aug 2023 22:45:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 821AAC433C8;
        Sun, 13 Aug 2023 22:45:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691966755;
        bh=X1kzybydq8Y0w+F2XFgVryMA9iCOHgF2iU3hsrC4NCg=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=sYb8fbQfaPjXoZ7Ew6N+r36mRFSJJPXq19J5Tf3cvbVKSPve+0JBG9g+78Lq0LOqO
         OBc8rkIaljd7dAV7mK7kgVhJqOXiZ1RZsiiYnp/QYFTcxA95T5trAkl3XWEM9QRU+Z
         s0OrUXGM3+kfE3yMeYZ4hSrCuZlsyeJInA8MHWhLGZXENUP0zq1SZM5Lr/SOOz32pC
         2vURZLCtUuJ31uYnoilQ6kVuiPzW/mV9M1inaYvKLBRVkafvp4Hic571fcqqYEoRmC
         QkBU61272fPxWzbFY5VT69XouA8AfsjqxFM9lHG+mXHkdsOZ4vUrqup2TbJzP/9xq9
         vusvO5+mqlrnQ==
Message-ID: <c19cfc5c-3a8f-81a0-f4de-611683cb9f41@kernel.org>
Date:   Mon, 14 Aug 2023 00:45:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: No 6.05/.01 pdf book available
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Brian.Inglis@Shaw.ca, linux-man@vger.kernel.org,
        Deri <deri@chuzzlewit.myzen.co.uk>,
        Ralph Corderoy <ralph@inputplus.co.uk>
References: <094c0eacf60998465be28c605bef69f2f5742459.1691370798.git.Brian.Inglis@Shaw.ca>
 <21975186.EfDdHjke4D@pip> <7f020624-ebc9-5eb8-b87f-8f954a8084a0@Shaw.ca>
 <3258129.44csPzL39Z@pip> <1b955f49-8181-5bd5-b818-020c6b5287dd@Shaw.ca>
 <54c962ab-28df-b2c9-923e-c47db004aaba@kernel.org>
 <20230813215544.xtejrxxeygzxgz7e@illithid>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230813215544.xtejrxxeygzxgz7e@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------X35duR606BYbTJXUNfxpub0Y"
X-Spam-Status: No, score=-6.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------X35duR606BYbTJXUNfxpub0Y
Content-Type: multipart/mixed; boundary="------------qF8NiJ2OPAUBvToLtoiOT4rA";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Brian.Inglis@Shaw.ca, linux-man@vger.kernel.org,
 Deri <deri@chuzzlewit.myzen.co.uk>, Ralph Corderoy <ralph@inputplus.co.uk>
Message-ID: <c19cfc5c-3a8f-81a0-f4de-611683cb9f41@kernel.org>
Subject: Re: No 6.05/.01 pdf book available
References: <094c0eacf60998465be28c605bef69f2f5742459.1691370798.git.Brian.Inglis@Shaw.ca>
 <21975186.EfDdHjke4D@pip> <7f020624-ebc9-5eb8-b87f-8f954a8084a0@Shaw.ca>
 <3258129.44csPzL39Z@pip> <1b955f49-8181-5bd5-b818-020c6b5287dd@Shaw.ca>
 <54c962ab-28df-b2c9-923e-c47db004aaba@kernel.org>
 <20230813215544.xtejrxxeygzxgz7e@illithid>
In-Reply-To: <20230813215544.xtejrxxeygzxgz7e@illithid>

--------------qF8NiJ2OPAUBvToLtoiOT4rA
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 2023-08-13 23:55, G. Branden Robinson wrote:
> Hi Alex,
>=20
> At 2023-08-13T22:47:34+0200, Alejandro Colomar wrote:
>>> Aha - Alex says .set:
> [...]
>>> 	https://lists.gnu.org/archive/html/groff/2023-04/msg00213.html
>>
>> We might as well make it official in suffixes(7).
>>
>> 	.set	troff(1) typeset output
>=20
> I don't think this convention is very widely used.  troff(1) output is
> so seldom dealt with by users that it is little wonder to me that no
> convention has arisen here.
>=20
> As noted earlier somewhere, I prefer ".trout" for AT&T-compatible
> troff(1) output, and ".grout" for GNU troff(1) output. Strictly, the
> latter suffix would only be necessary if the syntax extension for
> multi-line device control commands is used, and I don't know for sure
> that late-vintage DWB troff or Research Unix troff didn't support it.
> Things got very murky with AT&T troff after the company decided it to
> try using it as a cash cow.

Hmm, then let's leave it open to discussion then.

>=20
>> Which made me realize .roff is not documented.  Branden, as the
>> maintainer of groff(1), would you mind checking that page and adding
>> all the groff(1)-related suffixes you find (or actually, that you
>> don't find)?
>=20
> Sure, but I've got other things on the burner right now and might need =
a
> reminder.
>=20

Sure, I'll ping you.  I see you're fixing many of my bug reports.
Thanks for the TS register, and more for making it default to 2!  ;)

Cheers,
Alex

> Regards,
> Branden

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------qF8NiJ2OPAUBvToLtoiOT4rA--

--------------X35duR606BYbTJXUNfxpub0Y
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTZXRUACgkQnowa+77/
2zKohA/+MJMAA4D6LpZqqs8pICc421uudMdKScJV8VojM86THLv+dk4xSR6/ZYR+
wZ9ycCj5sjmPD02S4yTd7pRIWONcxHPNDNsJ3SIP1M1GUoVi3/godkrq44I0UQYh
8b+oQExlvum/g+CWNjS9JYquT6H0WZI7sRRHYg7XRU4ITEar4wuUGZkbyjcQyFXF
TfHdcJ6lajvKUKcXXfwgF4QSb2N3efSWEofuqbs7XnpVc0xuRmLN5Qcc673B0Tft
EQiazeF8WlJrUp6j5zFjprol8TM7YXC8mamFKVdMvgGITgV2VJ+AH+se4Tra0Pqy
WLbpdzzRMRqVrfUUAUE7lcidejXv+Ig6A9167w2HQTzuGJOyV88WWLJzZVBhAT0J
Qol1Du+Zbjuh0yiiDcUmGis/6QfYyykJrZ6tEgfL7hQA8OojGaytWGK+qZSjxEIb
o/jqfzWnY9KK7X1k0Gj0PKnlpEsC8YZcyvTerXxwlS9EXiKBf1JhYn49EOEGURnl
MzBrsyakLJPstOI354RLJueJb80gVr4N3sj+1fSKmpNES9V+TPuLp98a4H1Shyxf
kbSTPCsDLEhx9AWQ/OZHfaZZgOdqmeQNGz8wIa9u+XFNiBnu7SaIQ2NlAoQ+1sLe
meEJstRDXVgWbLKrVds4Of91PrQdSupf74Wplkf3+/PT64eBX+M=
=MckU
-----END PGP SIGNATURE-----

--------------X35duR606BYbTJXUNfxpub0Y--
