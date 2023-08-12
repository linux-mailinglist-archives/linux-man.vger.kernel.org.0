Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C361C77A0D3
	for <lists+linux-man@lfdr.de>; Sat, 12 Aug 2023 17:35:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230217AbjHLPfo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Aug 2023 11:35:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44420 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229547AbjHLPfo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Aug 2023 11:35:44 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6AE47BA
        for <linux-man@vger.kernel.org>; Sat, 12 Aug 2023 08:35:44 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id D8C1E61DDF
        for <linux-man@vger.kernel.org>; Sat, 12 Aug 2023 15:35:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 215B4C433C7;
        Sat, 12 Aug 2023 15:35:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691854543;
        bh=H+67Voo0Rs0z9zvzMc804GdnKGT2c6w20s/pfXcy+sM=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=E5/BkXnBtFk58HQ55BEC9xRMEUJb0hxXiCV2BH0uybEt40qS6Yt15ypPyz34dxB7s
         iwrN+e7M1dZ8cPj3I9BdkaQfTJECHXW3JZ1Z7oP0IRh+f3F6ep/1k2jr1ONE7v3e0m
         iZsoHLHocoh91yOdD82uPXxDrYhnh6V/tfpn94O7uHbR53lrk4+bI22kQGhp3v8W9l
         mB6Mmnxu++n20/lcsoZPVoQ6cXgKpSWqF8zfDJgp4TygXgFUFNVcRW7J2rrcvRYvSu
         G+Jo+34kFIgOcSkARU0pT+GJsrZ9nbNTomlghYJytqoEXUw5fMpANH5ycYxRxUx953
         YAZ19u5PATK1Q==
Message-ID: <fe34c908-f441-e256-2f23-1dba764be905@kernel.org>
Date:   Sat, 12 Aug 2023 17:35:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [PATCH v2] man*/: ffix (migrate to `MR`)
Content-Language: en-US
To:     Ingo Schwarze <schwarze@usta.de>, Jakub Wilk <jwilk@jwilk.net>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org, groff <groff@gnu.org>
References: <20230731175251.67rgt2r4sweutnay@illithid>
 <20230731221641.pbkcrdx52gyy4xfz@jwilk.net>
 <20230801013113.gw74e54tww7mrprf@illithid>
 <4b44eef1-4e9b-8f03-8cf7-6ca9e2f5dea5@kernel.org>
 <20230801141248.bo5sujjwjfob6pgj@illithid>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230801141248.bo5sujjwjfob6pgj@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------PSdit0mxd0lRV38iXLpZCVDL"
X-Spam-Status: No, score=-8.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------PSdit0mxd0lRV38iXLpZCVDL
Content-Type: multipart/mixed; boundary="------------yGVL4ZmTow0Cg5Jw0oM6o0u5";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Ingo Schwarze <schwarze@usta.de>, Jakub Wilk <jwilk@jwilk.net>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, groff <groff@gnu.org>
Message-ID: <fe34c908-f441-e256-2f23-1dba764be905@kernel.org>
Subject: Re: [PATCH v2] man*/: ffix (migrate to `MR`)
References: <20230731175251.67rgt2r4sweutnay@illithid>
 <20230731221641.pbkcrdx52gyy4xfz@jwilk.net>
 <20230801013113.gw74e54tww7mrprf@illithid>
 <4b44eef1-4e9b-8f03-8cf7-6ca9e2f5dea5@kernel.org>
 <20230801141248.bo5sujjwjfob6pgj@illithid>
In-Reply-To: <20230801141248.bo5sujjwjfob6pgj@illithid>

--------------yGVL4ZmTow0Cg5Jw0oM6o0u5
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Branden, Ingo,

On 2023-08-01 16:12, G. Branden Robinson wrote:
> At 2023-08-01T15:35:10+0200, Alejandro Colomar wrote:
>> [CC +=3D groff]
>>
>> Hi Jakub, Branden,
>>
>> On 2023-08-01 03:31, G. Branden Robinson wrote:
>>> Hi Jakub,
>>>
>>> At 2023-08-01T00:16:41+0200, Jakub Wilk wrote:
>>>> * G. Branden Robinson <g.branden.robinson@gmail.com>, 2023-07-31 12:=
52:
>>>>> Use the man(7) macro `MR`, new to groff 1.23.0,
>>>>
>>>> Given that this version of groff was released approximately
>>>> yesterday=C2=B9, this is very premature.
>>>>
>>>> NACK from me.
>>>>
>>>> =C2=B9 More precisely, about a month ago.
>>>
>>> 5 July UTC, to be (a little) more precise.
>>>
>>> Linux man-pages release scheduling is Alex's prerogative, not mine.
>>
>> I just made a new release, so that we have plenty of time for the next=

>> one.
>=20
> I saw that, and thought, "ooh, that's a bit quick--surely he didn't..."=

>=20
> And no, you didn't (include the giant `MR` migration patch).

Not yet.  I hope to have MR support in mandoc(1) before I release that.
Ingo, would you mind?  :)

>=20
> I trust the announcement didn't give Jakub a heart attack...
>=20
>> I don't expect to make a new one in months.  :)
>=20
> I can't cast stones about release frequency, that's for sure.
>=20
>>> He asked me (a long time ago) to deliver this after groff 1.23.0 was
>>> released.  That is what I have tried to do.
>>
>> Thanks!
>=20
> A pleasure.  Not merely to promulgate my "baby", but also to get a lot
> of that cargo-culty stuff around tables cleaned out of the Linux
> man-pages.  Tidy man(7) sources make for happier documentation writers
> who have an easier time getting what they want.

Yup!

>=20
>>> groff 1.22.4 man(7) does not support the `MF` string (see below).
>>> That could be backported too, but there seems no point before there
>>> is a concrete need.
>>>
>>>> After applying the patch, the man page references are typeset in
>>>> italics,
>>>
>>> For great justice!  (See below.)
>>
>> Still I think this should be documented in our commit.  Would you
>> please send a paragraph (and the position at which you'd place it)
>> with which I can amend the commit?
>=20
> Yes.  That was on oversight on my part; I was scrubbing out all font
> changes (with "-P -cbou") because my concern was with unexpected change=
s
> to adjustment and hyphenation.  The style change for man page topics
> (from bold to italics) was a "known factor" (to me).

Would you mind sending an updated commit message?

>=20
> Also, I saw that some "=3D3D" quoted-printable ugliness got into the
> commit message, buried inside groff command-line options where people
> unaccustomed to writing them might not mentally screen out the noise.

Heh, I noticed some weirdness about it, but it happened to be after a
-rCHECKSTYLE, so it seemed like it could be some improvements that you
had applied upstream to CHECKSTYLE.  =3D3 definitely made sense to that
register.

>=20
> Please double-check for that before pushing to kernel.org.

Please send one that I don't need to modify.  I don't like modifying
other's stuff, in case I break it.  :)

>=20
>>>> which is ugly
>>>
>>> See my recent exchanges with Lennart Jablonka on this list.
>>>
>>>> and against man-pages(7) recommendations.
>>
>> Well, we should update those to use MR.
>=20
> And man(7) too, I guess.  What do you think?

I want to kill that page.  Please have a look at it, take anything
good that it has for groff_man{,_style}(7), and ping me when I
should sharpen the scythe.  ;)

Cheers,
Alex

>=20
>> Branden is right that italics is more appropriate.  He has defended
>> that position very well, so I'll let him defend that point.  The
>> conversation to which he referred was:
>>
>> <https://lists.gnu.org/archive/html/groff/2021-08/msg00034.html>
>=20
> Yes.  That message includes Ingo's acknowledgement of my historical
> analysis, which can be found in the parent message.
>=20
> https://lists.gnu.org/archive/html/groff/2021-08/msg00023.html
>=20
> But we had a fairly wide-ranging discussion, much of which will not be
> of interest to someone who updates to man-pages 6.6.6 =F0=9F=A4=98, see=
s italics
> appearing where they had been accustomed to bold, and flies into a rage=
=2E
>=20
> I reckon the virtuous thing to do would be to write an ms(7) article
> about the history of cross reference styling in Unix man pages.  I
> regret that my conjecture about _why_ the GNU/Linux community shifted
> the style (VGA text mode limitations) remains unsupported by testimonia=
l
> accounts from people who deliberately made this change.
>=20
> Maybe this change will attract the attention of those folks.  Even if
> they get angry with me in the process, I'm willing to risk being called=

> out as the price of improving the historical record.  :)
>=20
>> But we should document in the commit message that the MR default
>> implies a behavior change in our pages.
>=20
> Yes.  And it's not hard to offer MANROFFOPT=3D"-dMF=3DB" as an initial
> workaround.  One could throw this into one's shell startup file, but
> only man-db man(1) honors that variable.  The more systemic approach is=

> to edit the site configuration file for groff man(7).
>=20
> Files
> [...]
>    /usr/share/groff/site-tmac/man.local
>           Local changes and customizations should be put into this file=
=2E
>=20
> (Debian symlinks this to "/etc/groff/man.local".)
>=20
> groff_man_style(7) offers further suggestions for content, based
> (mostly) on feedback we've often seen over the years.
>=20
>             .\" Use narrower indentation on terminals and similar.
>             .if n .nr IN 4n
>             .\" Put only one space after the end of a sentence.
>             .ss 12 0 \" See groff(7).
>             .\" Keep pages narrow even on wide terminals.
>             .if n .if \n[LL]>78n .nr LL 78n
>             .\" Ensure hyperlinks are enabled for terminals.
>             .nr U 1
>=20
> Debian's groff 1.23.0 packages in testing and unstable in fact already
> enable the last (thanks, Colin!).
>=20
> Regards,
> Branden

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------yGVL4ZmTow0Cg5Jw0oM6o0u5--

--------------PSdit0mxd0lRV38iXLpZCVDL
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTXpsQACgkQnowa+77/
2zLHNQ/9H3zskjxI/Pvgz0CUR3+C6n9yL/mrxP2QuAVXm8giOSYu7/raQj0+d9VL
l7mvYOTCiDI037xqc7xuW7MUaUK/Dfb1y+tsLeJ7hK6ER8+aFMDRLLcrswa4so9G
mYPvMHLORGNv8+B2S5YJpXZGZ2Rt8sZRGHewXec792kEaNME7AuanuL8+dnSRwpj
r31hkX4wTwq3fjK08Gg9RMSgwOi0YHB4FuHwZwZ+022JCT97igbq1LRM0SMyxlRJ
v9taZvDpJnT6mo9NWtlAdBqaQcduI/59nub7kLWRsOGfuooqjM1gWsNG/w9wiW5m
ksmoEPxevinw5OcsuUP7ZC+1hlhUE0v5jIzd4BbpHG3GT9IWjfS00NJxXCcWqEuM
3fnO7RtGWeILYCTRUlFJf047EPM3aphSb7wdmiIxHsbsgFcim1Ts5bZKZuTq46sM
C+ThA3rC3/08owIQ4+7wGYgXrcPft6viFDPp3pr67UiGqJVwAiHtiagQaQwbajAp
6lDb8O9wpJp1Yy7GlHjF1S225vjYVU0TT1gZiiXauQKTvoxxW4kWHrTLDTfaJnR5
JOWN4kVXT3fL6J6Fq1jU3JPEvjnu1LgSOMIKfGxxKFGaMRjGDcZ0TSJJF/vc0tBX
ZeUQLlyUKKlmqE72c5RpfZFgxGP+6p+ci4Thm+7QEiGBFYWaQRo=
=sGc7
-----END PGP SIGNATURE-----

--------------PSdit0mxd0lRV38iXLpZCVDL--
