Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5D8837695A2
	for <lists+linux-man@lfdr.de>; Mon, 31 Jul 2023 14:08:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231894AbjGaMIV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 31 Jul 2023 08:08:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33990 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232331AbjGaMIT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 31 Jul 2023 08:08:19 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F22F110FD
        for <linux-man@vger.kernel.org>; Mon, 31 Jul 2023 05:08:11 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 2640661072
        for <linux-man@vger.kernel.org>; Mon, 31 Jul 2023 12:08:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 016ECC433C7;
        Mon, 31 Jul 2023 12:08:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1690805290;
        bh=2uQUyOqwA3A7A4MIfyGWkv2Bkmt744JB6rTYb3pC1lM=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=Hv+rcxMSoJ6Z4l1jg7vH/MTpQpcP3YYDJWLEGZy+Wo2EAAyyNDiTTuH+lOPvYPw5u
         GifACddbfZ73BgFtl7CcUt+4HiIlwCyMXsjnwREbGkbKCSLjkTL503/L7TPGAzJzxT
         qtAUXvyxgBhMCpHW+ASmzuokB54KtOVF/V+QxxhiyK3Y9K+AcKUrvVALDv8JVmiChT
         ap9UFV2QaDzy59KVdBld9Ek7VPWgFz9PZaA8AFM9Fx0Yadbrc0zWpItE8j4lm8H/oF
         TTAuG3S6vw+z/bpB1AOH3DOOh3qLa+Kal+G3zD8nqnheuCNKz37flB1/03MRkzTIRL
         mMJis0LDYm9xw==
Message-ID: <081723b8-980f-d478-9480-c9659cf2b57c@kernel.org>
Date:   Mon, 31 Jul 2023 14:08:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [PATCH v2] man*/: srcfix
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230730193202.sly7va2kiv2edegr@illithid>
 <538191f8-a1bc-ab53-2a13-a8166637bb30@kernel.org>
 <20230731114229.255gdzlt3pq66fvo@illithid>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230731114229.255gdzlt3pq66fvo@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------zbia6VlsDPI66bwzhUIRbtDC"
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
--------------zbia6VlsDPI66bwzhUIRbtDC
Content-Type: multipart/mixed; boundary="------------0lhaT9H1I898eRKLpe6nXfPf";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <081723b8-980f-d478-9480-c9659cf2b57c@kernel.org>
Subject: Re: [PATCH v2] man*/: srcfix
References: <20230730193202.sly7va2kiv2edegr@illithid>
 <538191f8-a1bc-ab53-2a13-a8166637bb30@kernel.org>
 <20230731114229.255gdzlt3pq66fvo@illithid>
In-Reply-To: <20230731114229.255gdzlt3pq66fvo@illithid>

--------------0lhaT9H1I898eRKLpe6nXfPf
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Branden,

On 2023-07-31 13:42, G. Branden Robinson wrote:
> Hi Alex,
>=20
> At 2023-07-30T22:29:36+0200, Alejandro Colomar wrote:
>> On 2023-07-30 21:32, G. Branden Robinson wrote:
>>> Clean up in preparation for "MR sed".
>>>
>>> Format only one man page cross reference per input line.
> [...]
>>> --- a/man5/proc.5
>>> +++ b/man5/proc.5
>>> @@ -3459,7 +3459,9 @@ .SS Files and directories
>>>  .TP
>>>  .I /proc/locks
>>>  This file shows current file locks
>>> -.RB ( flock "(2) and " fcntl (2))
>>> +.RB ( flock (2)
>>
>> I guess you'll want a \c before flock(2).  RM ain't no macro.  :)
>=20
> Thanks!  Another good catch.  I was trying to get over the goal line
> too quickly yesterday, to little effect since the diff "ball" was too
> large for vger even gzip -9 compressed, and was somehow corrupted in th=
e
> copy I sent directly to you.  Can I just omit the diff entirely when
> re-submitting?  I'll include the (vastly shorter) sed script in the
> commit message; you said you prefer to run such scripts yourself anyway=
=2E

Sure.  If you want to include the first 1 or 2 pages, it might help
others have a look at what the patch does without running your script,
but for me, the script and the --stat (especially, the count of line
modifications, to make sure the script was correctly applied) are enough.=


>=20
> The above scenario is "snaggable" with an additional case in MR.sed.

While you're probably the most appropriate one to decide that, I suggest
to keep it simple, and handle these special cases as separate patches.
But whatever you prefer.

>=20
> # Handle case: leading punctuation, as in ".RI ( foo (1)".
> s/^.R[BI] \(\\%\)*\([^[:space:]]\+\) \([@_[:alnum:]\\-]\+\) (\([1-9a-z]=
\+\))\([^[:space:]]\+\)$/\\%\2\\c\n.MR \3 \4 \5/
>=20
> To anticipate complaints:
>=20
> The *roff markup produced by this is a bit viscous, exercising two
> escape sequences that man page authors often neglect to use, or use
> incorrectly.[1]
>=20
> diff --git a/man1/localedef.1 b/man1/localedef.1
> index 183f08f58..77ab69c4f 100644
> --- a/man1/localedef.1
> +++ b/man1/localedef.1
> @@ -53,7 +53,8 @@ .SH DESCRIPTION
>  files,
>  compiles them to a binary form quickly usable by the
>  locale functions in the C library
> -.RB ( setlocale (3),
> +\%(\c

Interesting.  No problem.

> +.MR setlocale 3 ,
>  .MR localeconv 3 ,
>  etc.),
>  and places the output in
>=20
> On the bright side, this is only about 1% of all uses--and of course th=
e
> decision to cast a man page cross reference at the beginning of a
> parenthetical is always(?) at the discretion of the page author.
>=20
> And when I say "about 1%", I'm not waving my hands.  Here is the
> diffstat summary from application of my "MR.sed" script _without_ the
> foregoing replacement.
>=20
>  1100 files changed, 15264 insertions(+), 15264 deletions(-)

OMG

>=20
> ...and here's what results from the replacement shown above.
>=20
>  56 files changed, 320 insertions(+), 160 deletions(-)
>=20
> The other complaint that I foresee is that while `MR` prevents man page=

> names from being hyphenated, that practice gives the formatter less
> flexibility when performing adjustment, which can make the text "gappy"=
=2E

I guess that's inevitable.  It's either that or unusable man page
references.

Cheers,
Alex

>=20
> Here's an example from my before-and-after diff.
>=20
> --- DUMP1       2023-07-31 06:15:47.059827045 -0500
> +++ DUMP2       2023-07-31 06:16:03.059756758 -0500
> @@ -2503,2 +2503,2 @@
> -              This  specifies  the  caller=E2=80=99s  session=E2=80=90=
specific  keyring  (ses=E2=80=90
> -              sion-keyring(7)).
> +              This   specifies   the   caller=E2=80=99s    session=E2=80=
=90specific    keyring
> +              (session-keyring(7)).
>=20
> But people who hate this often hate adjustment anyway, and that's what
> another new groff 1.23.0 feature is for.
>=20
> groff_man(7):
>=20
>     -dAD=3Dadjustment=E2=80=90mode
>         Set line adjustment to adjustment=E2=80=90mode, which is typica=
lly =E2=80=9Cb=E2=80=9D
>         for adjustment to both margins (the default), or =E2=80=9Cl=E2=80=
=9D for left
>         alignment (ragged right margin).  Any valid argument to groff=E2=
=80=99s
>         =E2=80=9C.ad=E2=80=9D request may be used.  See groff(7) for le=
ss=E2=80=90common
>         choices.
>=20
> man-db man(1) has also long supported an "--nj" option to do the same
> thing.  In its Git repository it now uses the foregoing means if groff
> 1.23 or later is the formatter, as opposed to a rougher approach with
> some side effects.
>=20
> This problem also will never arise with mandoc(1), since it refuses to
> perform adjustment (or hyphenation) even if you _do_ want it.
>=20
> [1] For *roff non-experts, groff_man_style(7) says:
>=20
>     \%  Control hyphenation.  The location of this escape sequence
>         within a word marks a hyphenation point, supplementing groff=E2=
=80=99s
>         automatic hyphenation patterns.  At the beginning of a word, it=

>         suppresses any hyphenation breaks within except those specified=

>         with \%.
>=20
>     \c  End a text line without inserting space or attempting a break.
>         Normally, if filling is enabled, the end of a text line is
>         treated like a space; an output line may be broken there (if
>         not, an adjustable space is inserted); if filling is disabled,
>         the line will be broken there, as in .EX/.EE examples.  The nex=
t
>         line is interpreted as usual and can include a macro call
>         (contrast with \newline).  \c is useful when three font styles
>         are needed in a single word, as in a command synopsis.

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------0lhaT9H1I898eRKLpe6nXfPf--

--------------zbia6VlsDPI66bwzhUIRbtDC
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTHpCEACgkQnowa+77/
2zKPSA//bocZQiL7Ur2VI/Dq1m8DlvefipDEER6gjHvH0bGriV7UKnO9ox732Kv1
0QBNlxyVH3WCxY+F6NzLdagN4vG/IY0HbtvvMktR3Gt3+cqoBr3V9tqTgP/ZTZW1
K3ChOd5plPekmXDxUW4z+AIzkCLSWGxwTrzzkpT/gn8G+FdlLeqrIRnxmKIi2u9j
7yM6N3OpVxD/uI7SRDg8QTjVLKcaB6ODuosJW5Gf4TlLe3nGCaONlx9zxxzKKUrl
S/rl6JPBT19vAX9NF2WiMx7DiDPx4DAJKRoGydwUuGCAOzv+88EG6sDpynzYRPGS
0hX9FxZWxEhDbVjcos35VuDfQBWQvPQTItO9YHl0FxRNDFsjgGrzpkYKllKNAwF7
cry2xXXZMwy+ZqtcL4YOHm0hHb7U27PwRdTvr/Nd/EfBXs2yW8M0DPBtwbpI45r0
K4ABHXJl5GRS2PezkMvMakBsebAWcNXYjL7FLydDthwau3ApKmKe+d/Y+e9B6Zpt
o39w7dp2xvOa+wvqJz8fnrAD7wA4oK99XvXpBNGdzTxeGGEJHCid1114PSnehZHo
DGjyoKw/aarvfcS7AXZynOV3yKDv0TGPBOK4MuF3ajZ4Auy4EXl28qDj4HRmfo9v
a4J1eviupbxZVWFb/RAPdgjImcp22cuvbRRxrMzDNMQv9jzNnFk=
=tqnn
-----END PGP SIGNATURE-----

--------------zbia6VlsDPI66bwzhUIRbtDC--
