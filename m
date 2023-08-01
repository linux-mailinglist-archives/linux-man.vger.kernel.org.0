Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B508E76B5F9
	for <lists+linux-man@lfdr.de>; Tue,  1 Aug 2023 15:35:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234240AbjHANfd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 1 Aug 2023 09:35:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43880 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234341AbjHANfa (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 1 Aug 2023 09:35:30 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2EEF81BF8
        for <linux-man@vger.kernel.org>; Tue,  1 Aug 2023 06:35:21 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id B73B961578
        for <linux-man@vger.kernel.org>; Tue,  1 Aug 2023 13:35:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A56AC433C9;
        Tue,  1 Aug 2023 13:35:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1690896920;
        bh=VBogvWZ2hzgiu2N6itkcQtHug7K6HpuR+nYLw+/Kj/M=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=Vnxm/xp08GWEEh/VX1c/FHUtxQ5QfAQY32K54gvH2OcLiuIciMtbDoB8SiYLXkZSz
         aL8kR4HjPwmaxpLcfXom+2QPm0kctMA3NvTaBagHqcOcOSF6leB9OggjMfxZuMNoM0
         jkn5Me9i5VRLDRjyFlYJ/lU4tcjQKW86u0I++GQD17iNPVwOBTmOpQKJIqRHlWzjSn
         VhP5ypIxMYDMzlESPBz1LR8fEOtMXpOmbApCgRmMLDUAD38J2mDJQxM2xCYJhzf52u
         BXIz+tajwuCGbQiub9zwCbEUVJ4Lne6MlYqEpa+2yUt9OC+ALwjKC+ZFNTnqvocf+l
         swsPgftWO4KCA==
Message-ID: <4b44eef1-4e9b-8f03-8cf7-6ca9e2f5dea5@kernel.org>
Date:   Tue, 1 Aug 2023 15:35:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [PATCH v2] man*/: ffix (migrate to `MR`)
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Jakub Wilk <jwilk@jwilk.net>
Cc:     linux-man@vger.kernel.org, groff <groff@gnu.org>
References: <20230731175251.67rgt2r4sweutnay@illithid>
 <20230731221641.pbkcrdx52gyy4xfz@jwilk.net>
 <20230801013113.gw74e54tww7mrprf@illithid>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230801013113.gw74e54tww7mrprf@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Q0oCS0uf0C8Z7X3t0xZqyQeh"
X-Spam-Status: No, score=-7.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------Q0oCS0uf0C8Z7X3t0xZqyQeh
Content-Type: multipart/mixed; boundary="------------l4HQ0bxPp62xIrNtJD4ShvgG";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Jakub Wilk <jwilk@jwilk.net>
Cc: linux-man@vger.kernel.org, groff <groff@gnu.org>
Message-ID: <4b44eef1-4e9b-8f03-8cf7-6ca9e2f5dea5@kernel.org>
Subject: Re: [PATCH v2] man*/: ffix (migrate to `MR`)
References: <20230731175251.67rgt2r4sweutnay@illithid>
 <20230731221641.pbkcrdx52gyy4xfz@jwilk.net>
 <20230801013113.gw74e54tww7mrprf@illithid>
In-Reply-To: <20230801013113.gw74e54tww7mrprf@illithid>

--------------l4HQ0bxPp62xIrNtJD4ShvgG
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

[CC +=3D groff]

Hi Jakub, Branden,

On 2023-08-01 03:31, G. Branden Robinson wrote:
> Hi Jakub,
>=20
> At 2023-08-01T00:16:41+0200, Jakub Wilk wrote:
>> * G. Branden Robinson <g.branden.robinson@gmail.com>, 2023-07-31 12:52=
:
>>> Use the man(7) macro `MR`, new to groff 1.23.0,
>>
>> Given that this version of groff was released approximately
>> yesterday=C2=B9, this is very premature.
>>
>> NACK from me.
>>
>> =C2=B9 More precisely, about a month ago.
>=20
> 5 July UTC, to be (a little) more precise.
>=20
> Linux man-pages release scheduling is Alex's prerogative, not mine.

I just made a new release, so that we have plenty of time for the next
one.  I don't expect to make a new one in months.  :)

>  He
> asked me (a long time ago) to deliver this after groff 1.23.0 was
> released.  That is what I have tried to do.

Thanks!

>=20
>>> When the text of all Linux man-pages documents (excluding those
>>> containing only `so` requests) is dumped, with adjustment mode 'l'
>>> ("-dAD=3Dl") and automatic hyphenation disabled ("-rHY=3D0") before a=
nd
>>> after this change, there is no change to rendered output.
>>
>> That's not what I'm seeing with Debian groff 1.22.4-10 (which seems to=

>> have .MR backported).
>=20
> Not exactly.  It has a compatible stopgap measure to keep Debian stable=

> from going wrong in the event that any package using `MR` in its man
> pages gets backported to bookworm (Debian 12).
>=20
> https://salsa.debian.org/debian/groff/-/merge_requests/4

Yep; probably the most relevant case is contributors to this project
using Debian Stable to produce write their patches.

>=20
> groff 1.22.4 man(7) does not support the `MF` string (see below).  That=

> could be backported too, but there seems no point before there is a
> concrete need.
>=20
>> After applying the patch, the man page references are typeset in
>> italics,
>=20
> For great justice!  (See below.)

Still I think this should be documented in our commit.  Would you
please send a paragraph (and the position at which you'd place it)
with which I can amend the commit?

>=20
>> which is ugly
>=20
> See my recent exchanges with Lennart Jablonka on this list.
>=20
>> and against man-pages(7) recommendations.

Well, we should update those to use MR.  Branden is right that
italics is more appropriate.  He has defended that position very
well, so I'll let him defend that point.  The conversation to
which he referred was:

<https://lists.gnu.org/archive/html/groff/2021-08/msg00034.html>

>=20
> Not all man pages are bound by man-pages(7) style suggestions.
>=20
> Further, /etc/groff/man.local is a conffile, and assuming it's stock (t=
o
> simplify the pattern matching below), you can do this:
>=20
> sed -i -e 's/IR/BR/' /etc/groff/man.local
>=20
> And that way, even if someone backports groff 1.23.0 itself to Debian
> stable, you will not be disturbed by the choice of font for man page
> cross references.
>=20
> It might be helpful to recap the `MR` feature description from the
> 1.23.0 NEWS file and release announcement.  One of its objectives is to=

> _stop_ prescribing a typeface for these things, though of course it has=

> a default, as it must.

But we should document in the commit message that the MR default implies
a behavior change in our pages.

Cheers,
Alex

>=20
> Regards,
> Branden

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------l4HQ0bxPp62xIrNtJD4ShvgG--

--------------Q0oCS0uf0C8Z7X3t0xZqyQeh
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTJCg4ACgkQnowa+77/
2zIhIQ//b1PHTLrpskRvK2EN7w1BTQ8glZLloK/Hx+Rb0DeNavKeH2+rX/ijZX6l
n0/hmbaosV9gvYCfJCMLOUBiPNJOyhon+wQYQxXHS3iKMom94dMC8zK6A7ZxgJao
G64j5dR3UF+0b7y5YbsRbtQJ+KNmaqSDBM8qSfytiTHTe/hQtmMa42EgPnquKtbY
UBO/wz7jK5ceH/3bM2CwauMlOLQk8ToXU+OctZmeURS5ofyVxnavRPLKg7sBgpvJ
fQgrRG7j21QTe67Lgu4C9u2ru5XThQMHgl8eMiXbZqzjiMnJLDMSgu2dmtw4z+Mz
8Rx9n7RfTW9I/jrzqif23/WF1Smzh+C9zIyd5xXqKtX5bcR267TRnZmeX3mA7dFZ
QKa24xMJC4Lu7rKjF5u0twCsDZwzcTspl869JPRU6BanYzbDwRfYWgQbs2Z9FjVj
MRkkgrvADeiTcUczjMvAa0IXJP9cPY3P/AxF346wl2kzG2CFZnXV47vN8JkxYzM9
zJomPnCfF8MI7yAItdcUqowPZEat64sTsQT8RbLYD9Tv/z43KXsPuTFAvu3VhC99
//ZHjZz//tuMyDVErG6RapE++01z/S6loA4IqMqgMakXfNBu11MfhBM6Rrg2n1jk
AmVT+0A84xipvORmA6FJ/zm7Q7BSYQuIuCE7SdIVw6clJoLN/ek=
=zDil
-----END PGP SIGNATURE-----

--------------Q0oCS0uf0C8Z7X3t0xZqyQeh--
