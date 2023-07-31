Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1623676A4A2
	for <lists+linux-man@lfdr.de>; Tue,  1 Aug 2023 01:15:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230020AbjGaXPI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 31 Jul 2023 19:15:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39450 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229851AbjGaXPH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 31 Jul 2023 19:15:07 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3131E19F
        for <linux-man@vger.kernel.org>; Mon, 31 Jul 2023 16:15:06 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id C35326134F
        for <linux-man@vger.kernel.org>; Mon, 31 Jul 2023 23:15:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 17269C433C7;
        Mon, 31 Jul 2023 23:15:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1690845305;
        bh=WzIgkht0UF+8cfA7v+5IprZUIMa/b/oVT/Kge0nVb6k=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=cpSEY1TGkFv5RQcw7wVSehdpwMZMzb1y4D/k8HugmV6xpOCZSkz4VPvQug/M+4TTI
         saoX030F4mTorO+Nnh3Lz+lgr3sgKkYbmF/TuHtAvDS16Lgvr9OH58LVMtpf8Wsb6g
         4EjgCPHuMXWt8yAg5P+0yjT9aTJuwAbC+tLhRhg7B2Vr5tjXnXdMyQyYn+6umjNuDX
         vOHs0cNpORDJ4gOIHp+iKBozmw6Vizx9wi5Mw5bGgzCr4igwvg0yQekCZKCb+tDyHG
         jrWFROJ+VlnY4lpSTjN481wrCftPQNxoh1ntBQwd0j+k6SSFEoaoY224x/5gd/DMy+
         B/U9ksZD2UzvA==
Message-ID: <c2a8024a-0d56-4fb2-ee12-7dcbca0e75e7@kernel.org>
Date:   Tue, 1 Aug 2023 01:15:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [PATCH v2] man*/: ffix (migrate to `MR`)
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org, Ingo Schwarze <schwarze@usta.de>,
        Jakub Wilk <jwilk@jwilk.net>, groff <groff@gnu.org>
References: <20230731175251.67rgt2r4sweutnay@illithid>
 <a57068eb-83dc-5018-281d-8c122b6ccb6e@kernel.org>
 <20230731225016.4fxao4bn4ntmnx35@illithid>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230731225016.4fxao4bn4ntmnx35@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------afxy9o7uACnyZ3Upt3hAjjKA"
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
--------------afxy9o7uACnyZ3Upt3hAjjKA
Content-Type: multipart/mixed; boundary="------------RIV0SoHRJdbhZeZSIcqj8K6d";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, Ingo Schwarze <schwarze@usta.de>,
 Jakub Wilk <jwilk@jwilk.net>, groff <groff@gnu.org>
Message-ID: <c2a8024a-0d56-4fb2-ee12-7dcbca0e75e7@kernel.org>
Subject: Re: [PATCH v2] man*/: ffix (migrate to `MR`)
References: <20230731175251.67rgt2r4sweutnay@illithid>
 <a57068eb-83dc-5018-281d-8c122b6ccb6e@kernel.org>
 <20230731225016.4fxao4bn4ntmnx35@illithid>
In-Reply-To: <20230731225016.4fxao4bn4ntmnx35@illithid>

--------------RIV0SoHRJdbhZeZSIcqj8K6d
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Branden,

On 2023-08-01 00:50, G. Branden Robinson wrote:
> Hi Alex,
>=20
> At 2023-07-31T23:47:50+0200, Alejandro Colomar wrote:
>>> When the text of all Linux man-pages documents (excluding those
>>> containing only `so` requests) is dumped, with adjustment mode 'l'
>>> ("-dAD=3Dl") and automatic hyphenation disabled ("-rHY=3D0") before a=
nd
>>> after this change, there is no change to rendered output.
>>
>> It would be interesting to see a script that corroborates the above
>> paragraph.  It might help other projects that may want to migrate to
>> MR.
>=20
> Sure.  I used a couple of scripts.
>=20
>   $ cat ATTIC/dump-pages.sh
>   #!/bin/sh
>=20
>   pages=3D$(grep -L '^\.so ' man*/* | sort)
>   groff -t "$@" -m andoc -T utf8 -P -cbou $pages
>=20
>   $ cat ATTIC/dump-pages-left-adjustment-no-hyphenation.sh
>   #!/bin/sh
>=20
>   pages=3D$(grep -L '^\.so ' man*/* | sort)
>   groff -t -dAD=3Dl -rHY=3D0 -m andoc -T utf8 -P -cbou $pages
>=20
> And here's how I ran them.
>=20
>   sh ATTIC/dump-pages.sh >| DUMP1
>   sed -i -f ./ATTIC/MR.sed $(grep -L '^\.so ' man*/*)
>   sh ATTIC/dump-pages-left-adjustment-no-hyphenation.sh >| DUMP2
>   diff -U0 -b DUMP1 DUMP2 | less -R
>=20
> That confirmed that there were "no changes" (with the caveat noted
> above).
>=20
>   sh ATTIC/dump-pages.sh >| DUMP2
>   diff -U0 -b DUMP1 DUMP2 | less -R
>   diff -U0 -b DUMP1 DUMP2 | wc -l
>=20
> I used these to eyeball and measure whether there were any formatting
> changes even with default adjustment and hyphenation enabled.  It showe=
d
> me _tons_ of man page names no longer getting broken (and hyphenated)
> across lines, and nothing else that I noticed.
>=20
> With the previous empty diff in hand, I decided that I hadn't regressed=

> the text of the pages.
>=20
> If there are further sanity checks we can apply, I'm open to
> suggestions.

Nah, I eyeballed random samples the diff and it looked good.  That, and
your extensive tests, make me confident enough.  If we screwed anything,
we can fix it.

The only concern I had some time ago was with code like exit(1), but
that should be using italics today, so it shouldn't be a problem.  I
can't imagine big issues.

>=20
> Since you had me looking at my shell history, I'll share that I did a
> "git co ." (co =3D alias for "checkout") 18 times in the course of
> developing MR.sed.  Those drove most of my recent patch submissions
> immediately prior to this one.  I could have done 18 more without
> fatiguing (albeit not necessrily without frustration with myself for no=
t
> getting my sed right).  But that's the beauty of sed, and
> Bash/readline's "reverse-search-history" and "operate-and-get-next"
> features.
>=20
> As it turned out, my sed was pretty good, except for the missing use
> case you identified, and my fix for which worked on the first try.  The=

> irregularity of the page inputs was the tricky bit.
>=20
> At one point I had a fearful episode that I'd misdesigned `MR` for one
> scenario, and much like the Master being terrorized by the Keller
> Machine, I had visions of the Doctor (Ingo Schwarze) laughing at me and=

> telling me he told me so and winning the whole world over to mdoc(7) in=

> one stroke.  But it was fine (attached).
>=20
> There are _still_ some `ad` requests scattered around (outside of tbl(1=
)
> text blocks), but I didn't go after those because they weren't in the
> way of my objective.  Eventually it'd be good to scrub those too.
>=20
>>> I prepared this change with the following GNU sed script.
>>>
>>> \# Handle simplest cases: ".BR foo (1)" and ".IR foo (1)".
>>
>> What I do to avoid git messing with these comments is to write a
>> leading space.  For git, only '#' in column 1 are special.  Since most=

>> compilers and interpreters allow a space before a commented line, a
>> leading space is fine.
>=20
> Ahh.  A leading backslash is the only workaround I've ever noticed.
>=20
>> I've edited the commit message to have spaces, so that it's directly
>> pastable into a MR.sed script.  Oh, and I included "$ cat MR.sed;" in
>> the commit message; I couldn't not do it.  :)
>=20
> No worries. :)
>=20
>> I've applied the patch (or rather, the script), but won't push it yet.=

>> If you send a run of commands that prove no differences before and
>> after, I'll amend the commit message with it.
>=20
> Please do verify it yourself with the tools above (or better ones).  I'=
m
> well aware that this is a huge change that can make people nervous.

I applied the patch, amended the message with a quote from this email,
and pushed to the MR branch in my private git repo at
<http://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/lo=
g/?h=3DMR>.

Oh, and I also removed a few pages from your patch, per CONTRIBUTING
guidelines:

Notes
   External and autogenerated pages
       A few pages come from external sources.  Fixes to the pages
       should really go to the upstream source.

       tzfile(5), tzselect(8), zdump(8), and zic(8) come from the tz
       project <https://www.iana.org/time-zones>.

       bpf-helpers(7) is autogenerated from the Linux kernel sources
       using scripts.  See man-pages commits 53666f6c3 and 19c7f7839 for
       details.

Anyone that wants to check it, feel free to have a look at it.


Cheers,
Alex

>=20
> Regards,
> Branden

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------RIV0SoHRJdbhZeZSIcqj8K6d--

--------------afxy9o7uACnyZ3Upt3hAjjKA
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTIQHYACgkQnowa+77/
2zLM0w/7BGDjpGBcWqTDetzQhnz7yccMSzmILw00HrTUcLA+F6Pe65pS9ueOQG6x
f0LWOnriNhUTGNjbyTufK3ukF8Yo247IeBZE0+JEUQqiSjPbloba4AGdKoFsVBVi
V5IL4UDDewhX89FcDNonnnL53vmdi4SG6l48t2o0Od6nucfIq/eadxXEW8Yx6Yzd
8ZR7XJnnbfWC8RC1XBARdI5+OD9/6Qozxi8geXRuSpbGo50N7a3jpDDTZdsgzyIo
f8Bf8qFfPHjhl6Ju6vwNVltGhk9Jnz5TiP6L9Y6IuidNd68zX0tqchMpkBzfXvl1
JoZWHimE/gwHhze5CwcQY3a/AcXUdDfiVuTlDXHdkZ3FIRrp/HDDBGbrOjretNKf
BkXzo4XOdE+wsR0APLk0Ac6pfQfqAUo5iRh3VED78qAY8lJ8IOZAjm035WjE06ws
qBOFJ1n22qHMkAM/WHLsNDQ5gYVA+J8Zp+VdsfogL8gtQI9eHbfWNNc2jEr6ftL0
HxwN0fIrhWs8m/GOz+G7a6T+27AY9wl5UliZMgnIfBW8MIm6HGgpiKjHf1xIpceC
SFwvjmmkpCEQS267Des+lw2I3HymPZZEDqv9RXlJUXosPSLVRRkNo2Vx7/yp/DdM
hffxUtNWy8rgM3+KGsz+wGXt3N7/goxfj1P3rzt0F1b2dUcjePk=
=KHWJ
-----END PGP SIGNATURE-----

--------------afxy9o7uACnyZ3Upt3hAjjKA--
