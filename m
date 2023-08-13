Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 101B577AC38
	for <lists+linux-man@lfdr.de>; Sun, 13 Aug 2023 23:30:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231882AbjHMVaj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Aug 2023 17:30:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57392 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231879AbjHMVaj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Aug 2023 17:30:39 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0FBCE10D7
        for <linux-man@vger.kernel.org>; Sun, 13 Aug 2023 14:30:41 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 99A3B62B22
        for <linux-man@vger.kernel.org>; Sun, 13 Aug 2023 21:30:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4DF8DC433CA;
        Sun, 13 Aug 2023 21:30:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691962240;
        bh=biOANSWPlAcEa2h8bADud26N9y1H6XDhrF4AKeds/Zk=;
        h=Date:Subject:To:References:From:In-Reply-To:From;
        b=e7Kh0kmrO1qu2gLSh/kjapT6sfU/2yck/k4DnGX/csrfiBmBKboyfK4t0covhakSR
         GpOaXqR3gKJG1QC2/OXIsccxOudKw7aR37yedShJfiSNJcAmqzfDb3GFnCpu/esJ2W
         rDkidIUwz9uJsw3KzCJSRW2SmJo1mLKbhDBXtge336iKRId3q9rZ3TFQ4rYQ+C7VEy
         A1rY5m9PLoXM07ZAVlpIMF0cLjlb9bemU/hLu7iZTsLc/kfLQ7jTUglbaqc8A1eey8
         yZMzO7lgqLZbQF3SPFby9wc9EOk3AsrSzPbKraxrXo8IfBuhWsrFdB/BS0rwAzFxbt
         04Z7Ggzna+4Cw==
Message-ID: <c68f4010-e732-6519-a777-2744eb057887@kernel.org>
Date:   Sun, 13 Aug 2023 23:30:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [PATCH] man-pages-posix-2017/man1p/dd.1p: added missing
 ASCII-EBCDIC tables
Content-Language: en-US
To:     Brian Inglis <Brian.Inglis@Shaw.ca>,
        Linux Man-Pages <linux-man@vger.kernel.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <084cb8c0074b11327c68fb60b9c5c6238eed7df1.1691960082.git.Brian.Inglis@Shaw.ca>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <084cb8c0074b11327c68fb60b9c5c6238eed7df1.1691960082.git.Brian.Inglis@Shaw.ca>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------1eCgSA7akJygL4tsAjS0ZOlg"
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
--------------1eCgSA7akJygL4tsAjS0ZOlg
Content-Type: multipart/mixed; boundary="------------BjyHHy0KBjoJgeN018jkw0Av";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Brian Inglis <Brian.Inglis@Shaw.ca>,
 Linux Man-Pages <linux-man@vger.kernel.org>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>
Message-ID: <c68f4010-e732-6519-a777-2744eb057887@kernel.org>
Subject: Re: [PATCH] man-pages-posix-2017/man1p/dd.1p: added missing
 ASCII-EBCDIC tables
References: <084cb8c0074b11327c68fb60b9c5c6238eed7df1.1691960082.git.Brian.Inglis@Shaw.ca>
In-Reply-To: <084cb8c0074b11327c68fb60b9c5c6238eed7df1.1691960082.git.Brian.Inglis@Shaw.ca>

--------------BjyHHy0KBjoJgeN018jkw0Av
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Brian!

On 2023-08-13 23:01, Brian Inglis wrote:
> I have an OpenGroup/UNIX.org/Austin Group/POSIX account,
> so added the missing ASCII-EBCDIC tables by copying from the POSIX PDF,=

> as copying data is fair use, and the man page copy itself is authorized=
=2E
>=20
> As an aside to that, those ASCII-EBCDIC tables support characters from
> the old ISO 2033:1983 MICR/OCR character sets now in Unicode OCR block
> U+2440-U+245F, which appears only in a few fonts like Unifont and SIL
> LastResort (and MS Segoe UI Symbol), and are still available as TTF
> (some font formats and support are being dropped in favour of OTF).
>=20
> They appear normal on my screen running 'man 1p dd' on my system which
> has those fallback fonts installed.
>=20
> Is it sufficient to run the groff addition install-font.sh script on
> those fonts and add them to the config as .special, or is anything else=

> required to register and render the glyphs on other devices?
>=20
> Or should I take this up on the groff list?=20

I guess Branden is reading this, so he'll be able to better answer you.
I have little clue of those things.

>=20
> Signed-off-by: Brian Inglis <Brian.Inglis@Shaw.ca>
> Fixes: https://bugzilla.kernel.org/show_bug.cgi?id=3D215971

Regarding the man-pages-posix project, I don't have in mind releasing any=

soon.  In fact, I don't even maintain it, to be honest.  It just happens
that I'm the one with the keys to it.

The problem is that it's generated from scripts, and I don't know how tha=
t
project is organized.  I could try to get it working, but it would take
some work, and I don't feel motivated to do it.

And also, I don't even have the sources, which makes things more complex.=


I wish that POSIX allowed us to have a copy of the original source code
of the POSIX manual in the git repository.  With that, I'd find it more
interesting to maintain the project again.

I'd also like to know what's the original source code of POSIX's manual,
because it may very well be roff(7).  If that happens to be true, I'd
like to have access to that source, instead of the HTML.

Would you mind forwarding my rage towards the Open group, which IMO is no=
t
so open?

Thanks,
Alex

P.S.: Long live bzero(3p)!

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------BjyHHy0KBjoJgeN018jkw0Av--

--------------1eCgSA7akJygL4tsAjS0ZOlg
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTZS3YACgkQnowa+77/
2zIY1g/9FPsy/4Uu+PO3Buck74WQQy1vQaxXN4Gwr2SncfaCmsAfL9nHGgxtRxb1
MKI3+mkKr2kL73MO033V58Zm0Gmq8CSxuRZpWsRq8qUX6IY6jqMtjG22tuKKKXwb
iIZH+9BD89ALAFUVjUX56Cf6cH1ySoSPYwzoTBz1v1r+2UuNZJop98EPtZfv5yuc
CgHJHg6jIdCnAkMQeid7KTuw53/PsF/lCYjTwdJQYRJk2emAdhUBD7mdO8BuTsyC
9HKZhoaYTgODMBUvwbB4XCiotJr7F4dHVeRjtP8Y04288HkmODunYnIhPjYJ+xB5
v6l3zXN+1hgkVfv58bCOyCPG+xqD0/ub7vUzP78jkoQVbTKtva6tIS6LjsDgKNj6
benM0ksqeCFUeQLylaeJZvhCc07Qu0P5LIBu7zEQnV+S05YEtyPii2dFvPFI0qLn
KV/nYSqRvWAE9Y1+Jj7bVo8PzStsu9hUvHD4lUqP2gAC4MQv9QOafv0kIwaMjOQx
V6F/REAUVdPObiB6oX33/m/ZGLR9+rLENcBFWOBembqySwv4AGU4lhLgjycTzaSm
FL2fNq8L5/tc9oZ6cOZN0CNNcF/MzO0q4k17AkG4Z08FMr0SOlkhXoMal7N162Z5
5VZTdW93DNJZbpclw6ZzAbatz14+RMXzWiQHWg+nGf3TGFvxEvo=
=Y+cU
-----END PGP SIGNATURE-----

--------------1eCgSA7akJygL4tsAjS0ZOlg--
