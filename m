Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5A9756C7499
	for <lists+linux-man@lfdr.de>; Fri, 24 Mar 2023 01:30:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229734AbjCXAaM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 23 Mar 2023 20:30:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48060 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229681AbjCXAaL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 23 Mar 2023 20:30:11 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7534BE39C
        for <linux-man@vger.kernel.org>; Thu, 23 Mar 2023 17:30:10 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id o32so221454wms.1
        for <linux-man@vger.kernel.org>; Thu, 23 Mar 2023 17:30:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679617809;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0QcrO9AI0g1Dst325pTo31j0gGexbuAiJe5SPl7SOL4=;
        b=hfwASy3wWMY4GNmmLG2MXTPeh+pgqN8yeAZLZV3Ye+2NgTHU16ddAGwxDy9GequgTO
         xDYHDND/O9+fyYv7Ej8kE3nelRy/EoJpyPokFWtW1XIONCNwfZJnOwsWCsyngaA5HYkf
         +t8u6vUxdohKzQPaz6AY7zcbHOPW4CuoRHdOfpj/NEBmC53+noe/z64H/uLsmvPCVygh
         6zTQykdm+wRnu1H47tGMN5E8SL+QDU6E/kZavlWBLQ5Lkryzfl4RKKlGd+gwnPlek//w
         v7TuMI4K675Q4A9G0aSWUv6U6tNWy8ko534p3i5PtsCk6VR49Rw4pFihsVspVhXxvCKd
         tLKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679617809;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0QcrO9AI0g1Dst325pTo31j0gGexbuAiJe5SPl7SOL4=;
        b=PitK1l8HD1X/NqdCaULvU4UnRO3fJdAWq5vhFFXcvIrJ05Y7MBzk9xaOU98PjrpJKf
         GXA0V7rO6tlA2mA0+Ukvqb9bNrKFgPxmv4u1qFbXe0oRUdYwgm4HXDbwnELBv2n0uWP5
         /K3jNya8Cdk759TfTjILfgztvpiwOkQrn7C6Fefm34eKkCv29B/O3vPpi4d4jln1gh0j
         5HYD2GU7atq7fryWIrtnqDlOFi99vNlynx9sPsSbf93MUx7cofN1SQXOh3upBOzTLzWK
         zxwVaKPjoylY7lom7GzuAaGH0KCTHVGPmGhr7YPPClIo19NFhDv9HhADXCHh+vHomKyz
         38rQ==
X-Gm-Message-State: AO0yUKXr3LUGa/WZeLe1LmNOqaHO2M7lWMBbfxkiFCQy0MumAyfB5l+Q
        +o0ibpEd+NapCUROTxkkbv4=
X-Google-Smtp-Source: AK7set9jnDQvqMcoa4MnnfS6wJ2qmVn/eDCBAFYdGzJudrX8jLemaHGeiM8r+Gj/82FwaOo5Ac60hw==
X-Received: by 2002:a7b:cb92:0:b0:3ea:ed4d:38f6 with SMTP id m18-20020a7bcb92000000b003eaed4d38f6mr1000175wmi.4.1679617808558;
        Thu, 23 Mar 2023 17:30:08 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id a8-20020a056000100800b002d8566128e5sm8796921wrx.25.2023.03.23.17.30.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Mar 2023 17:30:07 -0700 (PDT)
Message-ID: <ac01dc54-34ba-f075-1f48-1c72caa13537@gmail.com>
Date:   Fri, 24 Mar 2023 01:29:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] man7/: ffix
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
        groff@gnu.org, Helge Kreutzmann <debian@helgefjell.de>
References: <20230312110203.3898-1-alx@kernel.org>
 <20230312164434.ga3hkxnszly7agk5@illithid>
 <e35baa3f-91af-dfb2-2ec8-cc2dea002f79@gmail.com>
 <20230323222955.xm7ykh32izdrl3k5@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230323222955.xm7ykh32izdrl3k5@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------FT89Iu9Hpbq2GoURYVOtGIs0"
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------FT89Iu9Hpbq2GoURYVOtGIs0
Content-Type: multipart/mixed; boundary="------------CyLJxAZroAd6kZx8WQI9xdzG";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
 groff@gnu.org, Helge Kreutzmann <debian@helgefjell.de>
Message-ID: <ac01dc54-34ba-f075-1f48-1c72caa13537@gmail.com>
Subject: Re: [PATCH] man7/: ffix
References: <20230312110203.3898-1-alx@kernel.org>
 <20230312164434.ga3hkxnszly7agk5@illithid>
 <e35baa3f-91af-dfb2-2ec8-cc2dea002f79@gmail.com>
 <20230323222955.xm7ykh32izdrl3k5@illithid>
In-Reply-To: <20230323222955.xm7ykh32izdrl3k5@illithid>

--------------CyLJxAZroAd6kZx8WQI9xdzG
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hey Branden!

On 3/23/23 23:29, G. Branden Robinson wrote:
>=20
>> Going more into what concerns me, which is man3, I often miss an
>> ARGUMENTS (or PARAMETERS, to be more precise) section in the pages for=

>> functions.  Sometimes it would be just one line per argument, but in
>> other cases it would help a lot have more organized information.  I'll=

>> show you a few cases where I've used it, and where I think it made a
>> difference.
>>
>> <https://github.com/shadow-maint/shadow/blob/master/lib/stpecpy.h>
>> <https://github.com/shadow-maint/shadow/blob/master/lib/stpeprintf.h>
>> <https://github.com/shadow-maint/shadow/blob/master/libmisc/agetpass.c=
>
>=20
> I don't have strong feelings about this.  A deeper principle I hold is
> that functions shouldn't take a lot of arguments in the first place.  I=
f
> they do, it is a sign that
>=20
> 1. a data structure is called for, and a pointer to it should be passed=
;
>=20
> and/or
>=20
> 2. the function is too complex, tries to do too much, and should be
>    decomposed into orthogonal features.
>=20
> The latter doesn't mean you can't also provide a convenience function t=
o
> handle common cases, or show the user how to implement one.  To recall
> and old disagreement of ours, this is why I prefer memset() to bzero()
> as a standard library function.  (Yes, memset() takes more arguments,
> but it is also more _general_.  But I digress...)

While it is more general, I yet haven't been shown a list of uses for it.=

I recall 1 use in my entire life (not too long, I know).  It was for
initializing an array of bitfields to all-bits-1.  I would expect that a
function that allows doing that would be something obscure that is rarely=

used.

While bzero(3) and memset(3) are similar in the implementation,
they are rather different in the abstract semantics: one zeroes a buffer.=

The other allows two uses (that I know): initializing to 1s, in the rare
case where you want all 1s; and initializing memory to some magic
pattern to be able to detect uses of invalid memory.

It would be nice if grepping for memset() would show these rare cases
only, rather than being needles in a huge haystack of zeroing.  A regex
might help, but still...

I would even go further and say that libc doesn't need memset(3).  It's
such a niche function, that we don't really need it in the most
essential library.  I mean, we still don't have strlcpy(3) in some libc
implementations, and it's quite useful.  Why don't we ask users to
implement their own loop for the rare case they want to initialize their
buffers to 0xF0?  Why not a memset32(3) to initialize arrays of
uint32_t?  What's so special about non-zero byte initialization?  If you
need memset(3) to be optimized, you can write libmemset and write it in
assembly...  Can anyone justify the existence of memset(3) in libc?
Apart from the obvious "because we already had it, so why remove it" or
"because ISO C says so".  If we had none of them in libc, and were
presented both bzero(3) and memset(3), I'd go for bzero(3) 10 out of 10
times, as it's essential, and would ask the interested in memset(3) to
write their own niche library.

> But it went in anyway, apparently, on the strength of the functionality=
=2E
> Maybe the prospect of fighting Multics on its own ground was too
> appealing to pass up.
>=20
>> It's kind of a synopsis of the parameters.  Would it be better _after_=

>> the description?  Maybe.
>=20
> Maybe not.  _If_ you're going to have an "Arguments" heading for
> section 2 or 3 man page, placing it between "Synopsis" and "Description=
"
> seems appropriate.

Yep.

>=20
>> Is it better than having it all in the description?  I think it is.
>> Will we see this in the Linux man-pages some day?  Maybe.  What's your=

>> opinion?
>=20
> I think you should collect more opinions.

Yeah, I don't have any plans for that now.  While I use that section
in other projects where I write man pages or man-page-like documentation
from scratch, here that we don't use it, it would be more work than I'm
willing to do for now.  Maybe in something like several years, I could
consider that, if other people want it.

>  Also consider going back to
> the Unix Programmer's Manuals of the 1970s and see how they tackled the=

> issue.  The complications of history are not going to make _every_
> simplification impossible.  And you may well find places where these
> manuals were ill-written or the API badly designed.  (Inter-process
> communication was not born elegant in Unix and still isn't to this day.=
)
>=20
>> Yup, I think the man pages should serve as both (short) tutorials
>> *and* quick references.  If I need further info, I go to
>> StackOverflow, but I'd like to understand at least the basics of a
>> function when reading its page (and I've learnt many of the man3
>> functions by reading the pages while maintaining them; for example, I
>> didn't even know there was a regex(3) function until I saw the page
>> being mentioned in a ffix patch by Michael; a few weeks later I needed=

>> it, and could use it by just reading the manual; then I added the
>> example program with something close to what I did with it).
>=20
> I learned years ago that the only way I can truly learn anything that
> isn't simple is to start rewriting its documentation, which usually
> means conducting a lot of experiments.  In the 6 years or so I've been
> contributing to groff I've amassed a set of 1,433 files in my
> "EXPERIMENTS" subdirectory.  I've also thrown many experiments away.

Heh, me too :).  Probably one of the most run commands in my terminals
is `cd ~/tmp`.  However, I discard them always (keep them maybe for a
week, until it grows too much and `rm -rf *` does its job); organizing
that mess of 10-liner programs is too much for me :p.

>=20
> Other people may have an easier time forming accurate models of
> programming systems in their heads, but for me the right approach
> appears to be radical skepticism combined with a record of findings
> (i.e., expanding or correcting the documentation where appropriate).

Well, once I write the test, it at least gets into my brain so I can
discard it.  Cache misses of that kind don't seem a big issue in my
head, it seems.  I have good video memory.  :-)

>=20
>> Something I do is first look at the synopsis, have a quick look at the=

>> description searching for one line that describes each argument, and
>> then look at the example program to guess myself about the function.
>> Only after that is when I try to read the entire page to know the
>> details.  But most of a function should be obvious already before
>> reading the description, or the design of the function would be
>> dubious.
>=20
> I broadly agree.  This is one reason naming things well is important.

Guess what's been the discussion of the day?  Why do we find bool more
readable than uint8_t (with a comment saying /* 1 bit */) for boolean
variables, and true/false vs 1/0.  lol.

Cheers,
Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------CyLJxAZroAd6kZx8WQI9xdzG--

--------------FT89Iu9Hpbq2GoURYVOtGIs0
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQc7wcACgkQnowa+77/
2zKVdhAAgnWqmjb2zJ5eKpEjQDhpz1qCslxxYh2tYxsi7M2Cx1DUri+xUJfgGoF1
0+JwAA2K13ukhzP1AbiHoOFDG17UhrSF6P467gjEkxrP2hU1730AtL24qNGHMcJG
PO4cCk84o+jfDHU2+xKX4WtgY4Dkco4sxvpI/5LFxc7Nk14faG88ObwjrszZcSXu
4WJzzKJ7hnaaGa/Uz9JwaqmH9SbslHE3HrXN/Mf8FPwoC3yc5hSX2I0J4HU0PbIb
Dcxhvre+Qr2hLvVtl+xdHwMCflwTvgoIvDvlqbf6NmKAjDBG/D/jFSKN/YC0DX/Y
D1z0dyDtfScXW7A8EOp0FLmv/FZCvzzYhzt6LU1FgKh7PnmKfMmXqOx9fCpI9d2F
KYfF0xJOXLUtUz9AEJa3r4epg7ziosl69JE7Cwy3lLuAB7xZMmHDAha2/jVB50uT
WUJdY2j1IooHRvU6TIUSARRPwfec03akb+xB/5VlzdOnJEs3DyahAMLtAoQunmUY
c/bHbFj6EQpHgFxUe/TzUlOQoUIwIDZK6rfKbUE/vdyah/5gK8csD2kVLYfMe+Gn
9+u1hxyiPSPU384SZI/l74KwoKiF4lCUqQ6fVgr/KZUKVg8DJuHGbrAEDnnVsBFu
o4av7ov5cIRez4s9RWE7/Zy79Oz+qVkzWSl+oR2GBuPT2kGA0Vw=
=K83y
-----END PGP SIGNATURE-----

--------------FT89Iu9Hpbq2GoURYVOtGIs0--
