Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5C739712812
	for <lists+linux-man@lfdr.de>; Fri, 26 May 2023 16:11:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236478AbjEZOLB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 26 May 2023 10:11:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50814 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236978AbjEZOLA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 26 May 2023 10:11:00 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB96DDF
        for <linux-man@vger.kernel.org>; Fri, 26 May 2023 07:10:57 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-3f6094cb2d2so8406055e9.2
        for <linux-man@vger.kernel.org>; Fri, 26 May 2023 07:10:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685110256; x=1687702256;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PXzhvrOa3ogSGuDqCsabCIkx6rT11hj7dz2U+fN8qnc=;
        b=gNxWkcINcgqhx4ZKhWgSNu5JPDql3S1JT7Z+ER8h1ffvUcB20Fxguk4vDTa7LcHEgh
         xNEPFoZ+x8PLPIwqmuP5LkgJeP3rFy7LQH9T+X1/hbVvd23mu1UJpzW/aHgP7lE3wklF
         DOw8VyyzmCHPoDzIRj37rTnY7bDOrMpirhjAVV4EtDZhkm6Jl3vz8+16nDqFCxsKx94M
         V6h19Xm2kOLJK/ZgWvRRn5w1WY6PJng6oKo5YCb4VOmUQaI50yQFitMvBToj4GHuYrw0
         MEDomTBb2pJnmd0ch4fAYBMAjNeTS7r16C57UEqUAqezTT3dkDF3jIF/9pBCFZrsywPj
         pAVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685110256; x=1687702256;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=PXzhvrOa3ogSGuDqCsabCIkx6rT11hj7dz2U+fN8qnc=;
        b=QDDRNfoLMQIqTZoQBbgGy+1zsT9NF+kBbZ5lOzF9HqtpZkSdRKUMrQl4odYzWUna7f
         NnN5r6gyqud2ZkP1SeRdDSkmhoMhWIxsDcrOmRIRb8eb2rFhvd6mPCvCpwHFVz0vkWDY
         XiE+Xi98YhSJu4JTqBVQKIGGJo52CLWtBg6AXMoR4fzste2mL22p5O0Gnfdy8eCkatO0
         tkAGXzZodpZw0z3nRmEmKkhOfS7oZRQo0L/XomSuhiHMUjMcZNuMrzy7gHB7OsQJBGsr
         QUkyp4WF5uxqDzKFSbgHL/vM0dQUQU6l/zEPtIhcK7Tjw3pAJoqmXdUpqojylYMcSQI1
         OlEg==
X-Gm-Message-State: AC+VfDwKHRc5g3sH8pogeCFE5JQxaHE0eXA45t9UNPK5xQUJzTPbxOED
        TG+s+yoqSOJmhTKuFi3COFo=
X-Google-Smtp-Source: ACHHUZ4BXsFz34XC9M/J6E8BQSi9AuJBPSeDSB++VqTM/r7Yjlb0CM1J05th7OiHZ3djIh0qJYZpPw==
X-Received: by 2002:a7b:c388:0:b0:3f6:3e4:7cc9 with SMTP id s8-20020a7bc388000000b003f603e47cc9mr1593633wmj.40.1685110256028;
        Fri, 26 May 2023 07:10:56 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id y8-20020a7bcd88000000b003f6038faa19sm8785694wmj.19.2023.05.26.07.10.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 May 2023 07:10:55 -0700 (PDT)
Message-ID: <cde812f7-1220-6918-3ae8-22bdb2a4e625@gmail.com>
Date:   Fri, 26 May 2023 16:10:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: SPDX license review requests
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org
References: <CADeQ=2-ZsaSCEPfTHUO6AAZ_+H8ob4LJ5x5MuGaX=jdOVpdCog@mail.gmail.com>
 <bd1a81d0-456a-bc19-7df0-fdbcc2a51395@gmail.com>
 <20230526131503.vvejwh3cgsrobgl3@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230526131503.vvejwh3cgsrobgl3@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------bmPGTZcBgHV6z0A3XUB1u5Zz"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------bmPGTZcBgHV6z0A3XUB1u5Zz
Content-Type: multipart/mixed; boundary="------------Luxfi1SXD9x9oOSEXIerd5R6";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 linux-man@vger.kernel.org
Message-ID: <cde812f7-1220-6918-3ae8-22bdb2a4e625@gmail.com>
Subject: Re: SPDX license review requests
References: <CADeQ=2-ZsaSCEPfTHUO6AAZ_+H8ob4LJ5x5MuGaX=jdOVpdCog@mail.gmail.com>
 <bd1a81d0-456a-bc19-7df0-fdbcc2a51395@gmail.com>
 <20230526131503.vvejwh3cgsrobgl3@illithid>
In-Reply-To: <20230526131503.vvejwh3cgsrobgl3@illithid>

--------------Luxfi1SXD9x9oOSEXIerd5R6
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Branden,

On 5/26/23 15:15, G. Branden Robinson wrote:
> [mailing only the list, but CCing Alex as I know he doesn't mind]
>=20
> Hi Alex,
>=20
> Thanks for getting the ball rolling on this.  I have some critiques of
> the existing variants and a suggestion for the forms we go back to SPDX=

> with.  I did also see your follow-ups which confused me a little, and I=

> fear they might confuse others a bit.  I suggest taking a few days to
> shake out some points (it's going to be a holiday weekend in the U.S.
> anyway, so some engineers may already be on PTO), and then re-announce
> the relicensing effort subsequently.

I'll go on trip around Europe for a couple of weeks starting this weekend=
,
so I'll be relatively quiet for some time.  :)

>=20
> At 2023-05-26T00:56:47+0200, Alejandro Colomar wrote:
>> We've got 4 derivatives of the "VERBATIM" (now one of them in SPDX
>> as Linux-man-pages-copyleft") license.  I'll paste here the four.
>>
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>>
>> $ cat LICENSES/Linux-man-pages-copyleft.txt=20
>> Copyright (c) <year> <owner> All rights reserved.
>>
>> Permission is granted to make and distribute verbatim copies of this
>> manual provided the copyright notice and this permission notice are
>> preserved on all copies.
>>
>> Permission is granted to copy and distribute modified versions of
>> this manual under the conditions for verbatim copying, provided that
>> the entire resulting derived work is distributed under the terms of
>> a permission notice identical to this one.
>>
>> Since the Linux kernel and libraries are constantly changing, this
>> manual page may be incorrect or out-of-date.  The author(s) assume
>> no responsibility for errors or omissions, or for damages resulting
>> from the use of the information contained herein.  The author(s) may
>> not have taken the same level of care in the production of this
>> manual, which is licensed free of charge, as they might when working
>> professionally.
>>
>> Formatted or processed versions of this manual, if unaccompanied by
>> the source, must acknowledge the copyright and authors of this work.
>>
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> The final paragraph may be nearly redundant/superfluous.  (1) Copyright=

> laws and international treaties forbid the effacement of (valid)
> copyright notices anyway, even under transformation ("formatt[ing]" or
> "process[ing]").  (2) Man pages are nearly always distributed and store=
d
> on systems in source form anyway.  If systems ship "cat pages" without
> their man(7) (or mdoc(7)) sources, they are already in violation not
> only of this provision but the aforementioned laws and treaties.
>=20
> I agree with your point about how amateur work is not necessarily done
> more poorly than professional work.  Striking that sentence leads to th=
e
> following...
>=20
>> $ head -n21 man2/set_mempolicy.2
>> .\" Copyright 2003,2004 Andi Kleen, SuSE Labs.
>> .\" and Copyright 2007 Lee Schermerhorn, Hewlett Packard
>> .\"
>> .\" %%%LICENSE_START(VERBATIM_PROF)
>> .\" Permission is granted to make and distribute verbatim copies of th=
is
>> .\" manual provided the copyright notice and this permission notice ar=
e
>> .\" preserved on all copies.
>> .\"
>> .\" Permission is granted to copy and distribute modified versions of =
this
>> .\" manual under the conditions for verbatim copying, provided that th=
e
>> .\" entire resulting derived work is distributed under the terms of a
>> .\" permission notice identical to this one.
>> .\"
>> .\" Since the Linux kernel and libraries are constantly changing, this=

>> .\" manual page may be incorrect or out-of-date.  The author(s) assume=
 no
>> .\" responsibility for errors or omissions, or for damages resulting f=
rom
>> .\" the use of the information contained herein.
>> .\"
>> .\" Formatted or processed versions of this manual, if unaccompanied b=
y
>> .\" the source, must acknowledge the copyright and authors of this wor=
k.
>> .\" %%%LICENSE_END
>=20
> With the next license, things get murkier.
>=20
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>>

[...]

>=20
>> $ head -n13 man2/move_pages.2
>> .\" This manpage is Copyright (C) 2006 Silicon Graphics, Inc.
>> .\"                               Christoph Lameter
>> .\"
>> .\" %%%LICENSE_START(VERBATIM_TWO_PARA)
>> .\" Permission is granted to make and distribute verbatim copies of th=
is
>> .\" manual provided the copyright notice and this permission notice ar=
e
>> .\" preserved on all copies.
>> .\"
>> .\" Permission is granted to copy and distribute modified versions of =
this
>> .\" manual under the conditions for verbatim copying, provided that th=
e
>> .\" entire resulting derived work is distributed under the terms of a
>> .\" permission notice identical to this one.
>> .\" %%%LICENSE_END
>=20
> This is the same as the first license we saw above with the last 2
> paragraphs removed--the one expressing a kind of disclaimer, and the on=
e
> that I claimed is redundant/superfluous.
>=20
> I see from your follow-up email that _this_ is the one Fedora claimed t=
o
> have a Freeness problem with.  Can we scare up a cite for which one,
> exactly, they were referring to?  The concern their determination cause=
s
> me is that _none_ of the four license you present here explicitly grant=

> permission to translate.

Sorry, I was already confused with so many threads.  So, there's one more=

license, not derived from these, but which seems related to GPL.  It's
the LDP (v1) license.  That's the one that was rejected by Fedora:

<https://gitlab.com/fedora/legal/fedora-license-data/-/issues/211>

The reason was the prohibition to recommend an info manual.

I confused that thread, with the one about VERBATIM_TWO_PARA, in which
you accused it of also being non-free.

<https://github.com/spdx/license-list-XML/issues/1947#issuecomment-155469=
5533>

>=20
> The LaTeX 2e/"traditional GNU documentation license", from which all of=

> these license texts seem to be derived, solved the translation problem
> with an explicit grant of permission.
>=20
>>> Permission is granted to copy and distribute translations of this
>>> manual into another language, under the above conditions for modified=

>>> versions.
>=20
> And in fact if you add the foregoing paragraph to "VERBATIM_TWO_PARA",
> you get _precisely_ what SPDX calls the "Latex2e license".
>=20
> https://spdx.org/licenses/Latex2e.html

[...]

>> Would you please relicense to either Linux-man-pages-copyleft or
>> VERBATIM_PROF?
>=20
> If you agree, I would add LaTeX 2e to the list of acceptable candidates=
=2E
>=20
>> Also, Linux-man-pages-copyleft seems to contain a sentence that
>> makes it differ from VERBATIM_PROF:
>>
>> """
>>   The author(s) may
>> not have taken the same level of care in the production of this
>> manual, which is licensed free of charge, as they might when working
>> professionally.
>> """
>>
>> I believe the quality of non-professional code and manuals to be
>> at least as high as the professional one.  We have more freedom to
>> reject crap.  I propose also deprecating Linux-man-pages-copyleft
>> and moving to VERBATIM_PROF as the single surviving license from
>> all four variants.
>=20
> I'd go farther and move to LaTeX 2e.
>=20
>> We're also discussing the names that each of these four should be
>> given in SPDX.
>=20
> Is that necessary, if you successfully migrate away from these to texts=

> that are already in SPDX, like LaTeX 2e and the existing Linux man-page=
s
> copyleft?  I realize SPDX wants to capture many licenses for SWBOM
> purposes, but if this transition is successful, the foregoing task will=

> rapidly become a problem of history.  And historical software
> distributions have far worse description problems, such as (1) unknown
> provenance, (2) missing copyright/licensing information, and (3)
> incorrect copyright/licensing information.  (To an extent, all three of=

> these problems will continue to arise from time to time.)
>=20
>> I suggest (in order of appearance in this email):
>>
>> -  Linux-man-pages-copyleft to be renamed to the following, and
>>    mark it as a deprecated license.
>>
>> 	Linux-man-pages-copyleft-nopro
>> 	Linux man-pages Copyleft (non-professional)
>=20
> I thought SPDX didn't support renames at all...?

They renamed GPL-2.0 to GPL-2.0-only, AFAIK.

>=20
> But if they do, I suggest disambiguation tags that are more descriptive=

> rather than trying to capture catchwords that distinguish them.
>=20
> 	Linux-man-pages-copyleft-care-disclaimer
> 	Linux man-pages Copyleft (with care disclaimer)

Sounds good for VERBATIM_PROF.

[...]

> And I wouldn't put a term like "high quality" (or "low quality") in a
> license identifier under any circumstances.

Agree.

>=20
>> -  VERBATIM_TWO_PARA to be SPDX'd as:
>>
>> 	Linux-man-pages-copyleft-notrans
>> 	Linux man-pages Copyleft (no translations)
>=20
> ...this, too, says nothing of Linux to distinguish it from LaTeX 2e.
>=20
> It is the LaTeX 2e license missing its latter two paragraphs.
>=20
>> -  VERBATIM_ONE_PARA to be SPDX'd as:
>>
>> 	Linux-man-pages-copyleft-verbatim
>> 	Linux man-pages Copyleft (verbatim)
>=20
> This one doesn't mention "Linux" but is pretty idiosyncratically worded=

> ("this page").  And Fedora had the aforementioned problem wherein they
> claimed to be unable to locate permission to translate here.
>=20
> You have already identified it as defective in its grant of permissions=
,
> and it affects only 2 documents in the Linux man-pages.
>=20
> Can we try to slate this one for the chopping block, and just not take
> it back to SPDX at all?

Sure.  Hopefully we can remove some.  I'll already relicense the ones
owned by Alan.

Cheers,
Alex

>=20
> Regards,
> Branden

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------Luxfi1SXD9x9oOSEXIerd5R6--

--------------bmPGTZcBgHV6z0A3XUB1u5Zz
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRwvecACgkQnowa+77/
2zJOSg/9ERpiFCMIcCFY/birs0g+GyIWbBu4tiyhl+XaLC8yDNZMMH//7WW1Gtan
2ZaTjzUszPCMWRc4QwamnCj254Ia8Kp68LvSvJKhMPjJySdv9zEzK12d2zsZ8GPk
PYoerCUP4vBDYR4oU+u31xJdmPELg+o5HxAfnntS05DBYapkKUQRM3odjYdnUQHa
N7HkXTP/Tf2P0p94pW3EiP4jvcK9gFGOK/PnsrcKVAjKUH1BwNAwrq3GAgCIecvT
K3d052zNKYjdSjLJe4SG17TaA1RsZm4Id7otsvhJQvK27qW6i9bDwCO93AvwnYEb
+NIBhH0CB2NsdS58ScSaWQHxAjWJfY1o2UYTKAHVW8YjoOLwngII3cNZ58uzZqhF
Gxj5ptDF7Mc1eHbn71sBihMLfay4zfuW/VlIYZqXJOdBGSCQhSfH8ewzRh4CHfe8
vJHOaBT+6QJaLg4ezGZhcF3GgK+UMpI76M6FIQKu055mpwWR9gy3Mof+DHnb3CPt
FdCjJjtKY4qpwfOjoN3Keqtb1HrE+6mP22dy56YXZ9ZNw6sdy2+Urmzzp8/pFCaR
1RqdAXGcN3sQHGKwxT4pLYeSvO238HeoUKUcBVFnGkhn8W9csuggu9OS3uhAd1X5
TqKQ5wLyrcXQU9puCctcN3X12NqMyRqXhMPKkor8s4/CeCsdt1c=
=zLR6
-----END PGP SIGNATURE-----

--------------bmPGTZcBgHV6z0A3XUB1u5Zz--
