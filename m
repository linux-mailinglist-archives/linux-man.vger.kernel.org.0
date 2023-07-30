Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3601976864B
	for <lists+linux-man@lfdr.de>; Sun, 30 Jul 2023 17:49:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229713AbjG3Ptd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 30 Jul 2023 11:49:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56248 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229579AbjG3Ptc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 30 Jul 2023 11:49:32 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C8606E54
        for <linux-man@vger.kernel.org>; Sun, 30 Jul 2023 08:49:31 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 65FD960C91
        for <linux-man@vger.kernel.org>; Sun, 30 Jul 2023 15:49:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4EB31C433C8;
        Sun, 30 Jul 2023 15:49:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1690732170;
        bh=/efMMnVXO6MPq1DK06vNCmCUSgKVy37NI5o1s0Ziu3s=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=O9BbJqvyyRS8sShVD5TR/7fdvWtvezmkvMKtudbI22Ja3sPDNqUR30ZrTm7/BZvMn
         7KDW+tLSo+UKlP7nTdWgAStM7J42Qjjpofyis1p3ZzVQKeU62GyD6NIvACxm3BrQYg
         ZOQmXRnoI6KNAbhhbc9RzoScQQWu18ERLZ6yKg8TGgffbMLuJEVzLEJo9+xREo+C3t
         dopQP8ilFUJgyDl0swDit1ByPC420/gapXLoCHWxC9w1CSJkccmEJcUwtE4IHRBjxG
         IYdQAHEOptGUUUET8gh+HaECHqvelmRMxC2nbmR0Z9lTky/7XBlRtWyaLSKIbfwgH2
         UFB2Dp8JQewxw==
Message-ID: <02dce126-966c-b7f8-4b26-2fb6ce11b30f@kernel.org>
Date:   Sun, 30 Jul 2023 17:49:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Spaces in synopses of commands (was: [PATCH v3] time.1: ffix)
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230730152149.ajvi7zhskzzsp5jz@illithid>
 <76ee749c-6220-81e3-3c2d-af52da823ba4@kernel.org>
 <20230730154541.uitln7ioq4bw6xkq@illithid>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230730154541.uitln7ioq4bw6xkq@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------yt77uCrfQWyjtvMJTA8o2Wga"
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------yt77uCrfQWyjtvMJTA8o2Wga
Content-Type: multipart/mixed; boundary="------------UYntSi4kZyALDVrSXfT5Oy9M";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <02dce126-966c-b7f8-4b26-2fb6ce11b30f@kernel.org>
Subject: Spaces in synopses of commands (was: [PATCH v3] time.1: ffix)
References: <20230730152149.ajvi7zhskzzsp5jz@illithid>
 <76ee749c-6220-81e3-3c2d-af52da823ba4@kernel.org>
 <20230730154541.uitln7ioq4bw6xkq@illithid>
In-Reply-To: <20230730154541.uitln7ioq4bw6xkq@illithid>

--------------UYntSi4kZyALDVrSXfT5Oy9M
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Branden,

On 2023-07-30 17:45, G. Branden Robinson wrote:
> Hi Alex,
>=20
> At 2023-07-30T17:35:06+0200, Alejandro Colomar wrote:
>> That's the reason to use a non-breaking space over a breaking space.
>> However, I'd also like to see justification for using a non-breaking
>> space over no space at all.
>=20
> Readability.
>=20
> Consider the synopsis of groff(1) itself.
>=20
>         groff [-abcCeEgGijklNpRsStUVXzZ] [-d cs] [-d name=3Dstring]
>               [-D enc] [-f fam] [-F dir] [-I dir] [-K enc] [-L arg]
>               [-m name] [-M dir] [-n num] [-o list] [-P arg] [-r cn]
>               [-r reg=3Dexpr] [-T dev] [-w name] [-W name] [file ...]
>=20
> Pasting into this email, it's stripped of all its formatting, a scenari=
o
> we can imagine affects some number of users, especially those confused
> by the old overstriking convention and who employ crude tools.
>=20
>         groff [-abcCeEgGijklNpRsStUVXzZ] [-dcs] [-d name=3Dstring]
>               [-Denc] [-ffam] [-Fdir] [-Idir] [-Kenc] [-Larg]
>               [-mname] [-Mdir] [-nnum] [-olist] [-Parg] [-rcn]
>               [-rreg=3Dexpr] [-Tdev] [-wname] [-Wname] [file ...]

I agree that having a space between an option and its argument improves
readability.  However, between a positional argument and the ellipsis
that marks that it can appear multiple times, I don't think the same
reasoning applies; at least not so obviously.

I'm referring to  [file ...] vs  [file...].

Cheers,
Alex

>=20
> Is that as easy to make sense of?  Maybe it is for some people,
> especially if they already know that groff doesn't ever use a single
> dash as a prefix for a long option name.  But there are conventions
> other than GNU's.
>=20
>     xclock [ -help ] [ -analog | -digital ] [ -brief ] [ -chime ] [ -hd=

>     color ] [ -hl color ] [ -update seconds ] [ -strftime format ] [
>     -twelve | =E2=80=90twentyfour | =E2=80=90utime ] [ -padding number =
] [ -norender ] [
>     -render ] [ -sharp ] [ -face pattern ]
>=20
> That actually proves to be a better example of bad formatting than I ha=
d
> hoped for--look at all those problems!  Anyway, an expert can figure ou=
t
> that "-utime" doesn't refer to an option "-u" that takes a metasyntacti=
c
> "time" as an argument.  But we shouldn't write man pages only for the
> attention of experts.
>=20
> Regards,
> Branden

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------UYntSi4kZyALDVrSXfT5Oy9M--

--------------yt77uCrfQWyjtvMJTA8o2Wga
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTGhogACgkQnowa+77/
2zK6+RAAl1nMwwrr858B5290CpefKLChIzmFJjBU9vA60dyKa4QAHSEW84vGX4iT
JdREISDqWvIuHCRBHnLcuhJ3gSUXZvNFg6/0JqKlkadf0LR+L0x2orPMw5jOQ2aH
MmWP/8x9v9kQqRNwJKqr3g7DAy+ewS60QTtL08O+/oS9CQj2DdtOlOqIvLY5H/i5
hJfgvyaLqXodGdE79GnxKgwAfORsVz6G7kui1V85ERZM2gIZCm2wnsoBX6l5WjFQ
Pf5HqpmV4YKcTZC/IzLIuO5S2IS4uZeWc0SFZJ8i1WboD6lkMGpZ+vJ+IBLN50bo
xFU1tt2LVil4GH+HveSE0BqrjDlWKwWJGsTMQvKWaFjo7EyREDfS1vQgR0xpnPm9
uc9CKXUr6GDDKR1S9tFWsjxYKXnfPZZepO8SMpBlPNev1LTHbrkWp6hfrhjgZZ0Z
LWkVIA8E52D2a0flvHwvYyVJJeQgtYgKLjwbWaL0JG1Deuuj7rwwP9wvYJoSc6sZ
SBQUP/a3P0DL0ebortROfyAn9GaCNwaVnwmm508OJxXuu0W+F0WtnPt0jgJMFoeG
Ig9MUdq9xN3klHzK1w09FDFxKk1b3LQq3w6SIPHVAO/zLdsCdJmOR0o/QmfFq39F
J1O9lyqc7+h6FIN5vAcrvxsIQMBjjNbCLuFQyNZ9By0Uo7OmLgs=
=qm41
-----END PGP SIGNATURE-----

--------------yt77uCrfQWyjtvMJTA8o2Wga--
