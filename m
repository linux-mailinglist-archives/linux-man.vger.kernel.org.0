Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AB7B86D8C7D
	for <lists+linux-man@lfdr.de>; Thu,  6 Apr 2023 03:11:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232902AbjDFBLS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 5 Apr 2023 21:11:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47438 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232719AbjDFBLR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 5 Apr 2023 21:11:17 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 334C17ABF
        for <linux-man@vger.kernel.org>; Wed,  5 Apr 2023 18:11:10 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id h17so37904747wrt.8
        for <linux-man@vger.kernel.org>; Wed, 05 Apr 2023 18:11:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680743469; x=1683335469;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yi6bb+wA3bB405V7n7oezetEJIprGWnmkpb5rm4nS5Q=;
        b=CfKrXUe8OtrW6BHVXB1PlDXj+dFl4yxTLZsL1xC6OM8/35tK/WbMa4u+O021F/Vgjg
         SHVivl2vxLsZ30cQMS9DwsyKJJAdsYb8M0Mo2hI/SHS9jw4TAfzNKs11mKBmglSXeOVU
         fKRG50q3DThWpFgq/MTWiNkMLCeSwBBAcz2gyJxBt3CknPH1Ac4n4VJ4P9oDrGGWK9MA
         yVY4dkAYggTX7fg2LnvLAs8XEQTFUw7RKyXAp2eC/DnRhjeQZjCp/naybmnM365SZqrp
         0A56BaNIMJjSuPo4V87N/4Kq60gx+JEs0oZnQLfWkb7Rt6hbFdgWIX3AtPQUJN3GIFxV
         jkAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680743469; x=1683335469;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yi6bb+wA3bB405V7n7oezetEJIprGWnmkpb5rm4nS5Q=;
        b=IgpWumpzMnHeHuAl8oNa3LCzq42rHbGQ8HTZTDyVYflkonfII0KxY8o1X1ZbxnuHIG
         RK2b9ly3P6hOmKftdefocEx6eNQ0upwPLdRz/FlqtncdpEWXQeVhmVnzxzkh8Rux5uAg
         x3qBRGobvcag4qsITyCl2RtB4nEBINazkuhl+RiCxgiZEm9gZG0KANGxpH5p8miWFcqQ
         W15rR3pdaShG1RU8YlLmp18p7bT64RqefmqNDc4qZBJCx6sflHS4PRg6pNid1Yj7aLoB
         eGqtLrIo254AVsqhdWM+5a2TSqpiM5uVysfQgvVjuGUvsnjgZygh27mk9oic97P8Ix3X
         Df1w==
X-Gm-Message-State: AAQBX9cHlCVPj02xUT6K0sNk9dwHDaYxKqFb/REpz4o7jgEl51a1gL1W
        Rq8v1gNONXjVZUwd6r4obzApBLJH0lU=
X-Google-Smtp-Source: AKy350YNln9Qo+F18mgb4pEVtZdOQdZK2NI9MkexO9PxUQzsSzBMWm5+T3Au0c7TH0qx24TtytZ+yQ==
X-Received: by 2002:adf:f104:0:b0:2da:2aa0:13e8 with SMTP id r4-20020adff104000000b002da2aa013e8mr5843018wro.26.1680743468508;
        Wed, 05 Apr 2023 18:11:08 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id e8-20020a5d5308000000b002ce9f0e4a8fsm185838wrv.84.2023.04.05.18.11.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Apr 2023 18:11:07 -0700 (PDT)
Message-ID: <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com>
Date:   Thu, 6 Apr 2023 03:10:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: Playground pager lsp(1)
Content-Language: en-US
To:     Eli Zaretskii <eliz@gnu.org>
Cc:     dirk@gouders.net, linux-man@vger.kernel.org, help-texinfo@gnu.org
References: <ghileoo9dk.fsf@gouders.net> <ghbkkgo8x8.fsf@gouders.net>
 <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com> <834jpuuc1a.fsf@gnu.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <834jpuuc1a.fsf@gnu.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------GusXwH1nWlIAJe9agtvl2FXl"
X-Spam-Status: No, score=-1.6 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------GusXwH1nWlIAJe9agtvl2FXl
Content-Type: multipart/mixed; boundary="------------DrZM4GmZ3jFEUWKfNPxad6P7";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Eli Zaretskii <eliz@gnu.org>
Cc: dirk@gouders.net, linux-man@vger.kernel.org, help-texinfo@gnu.org
Message-ID: <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com>
Subject: Re: Playground pager lsp(1)
References: <ghileoo9dk.fsf@gouders.net> <ghbkkgo8x8.fsf@gouders.net>
 <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com> <834jpuuc1a.fsf@gnu.org>
In-Reply-To: <834jpuuc1a.fsf@gnu.org>

--------------DrZM4GmZ3jFEUWKfNPxad6P7
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Eli!

On 4/5/23 07:35, Eli Zaretskii wrote:
>> Date: Wed, 5 Apr 2023 01:45:46 +0200
>> Cc: help-texinfo@gnu.org
>> From: Alejandro Colomar <alx.manpages@gmail.com>
>>
>> With the benefit that you don't need to implement such a system from s=
cratch,
>> but just reusing the existing tools (apropos, man, whatis, ...).  It s=
eems
>> something like what I would have written if I had to implement info(1)=
 from
>> scratch.  I wish GNU guys had thought of this instead of developing th=
eir
>> own incompatible system.
>=20
> This last sentence is a misunderstanding.  The goal of Texinfo is not
> to improve the man pages.  Texinfo is a completely different approach
> to software documentation, which allows to write large books and then
> produce various on-line and off-line formats to read and efficiently
> search those books.

"The manual was intended to be typeset; some detail is sacrificed on
terminals." (man(1), _Unix Time-Sharing System Programmer's Manual_,
Eighth Edition, Volume 1, February 1985)

You mean books like this one?  Courtesy of groff(1)'s Deri James =3D)
<https://mirrors.edge.kernel.org/pub/linux/docs/man-pages/book/man-pages-=
6.04.01.pdf>

Or maybe you prefer HTML?
<https://man7.org/linux/man-pages/man1/intro.1.html>

As to efficiency, I'm not going to open that melon, because we're
both very biased to be efficient on the formats we each maintain.
I'll just say that I don't see an objective winner in those terms.

About variety of output formats, anything that can be produced by
groff(1), man(7) can be translated.  And groff(1) can do many formats.

>=20
> Man pages have no means of specifying structure

=2ESH, .SS, .TP, .TQ, and very soon (hopefully weeks not months) .MR

Those can be used to produce very precise links such as this one
(one of my favourite references when reviewing man-pages patches):
<https://mirrors.edge.kernel.org/pub/linux/docs/man-pages/book/man-pages-=
6.04.01.pdf#pdf%3Abm11886>

And there's still room for improvement over what you'll see in that
PDF, or what you can see in <man7.org>.

> and hyper-links except
> by loosely-coupling pages via "SEE ALSO" cross-references at the end;
> they have no means of quickly and efficiently finding some specific
> subject except by text search (which usually produces a lot of false
> positives).

I guess you mean searching from the command line by the name of the
parameter to a function, or what?  I would be interested in a more
detailed description of what you want to be able to search in current
pages (hopefully ones that I maintain, so I can speak of them) that
you can't find easily?  Maybe I can help making something more
accessible.

lsp(1) helps a little bit making the structure of man pages navigable,
and it's currently implemented using heuristics, but if it worked
together with groff(1) to get the real source of truth, it could get
precise data without needing heuristics.

>=20
> By contrast, Texinfo documents have sectioning structure, have
> cross-references that can appear where you need them and point
> anywhere else in the document (or into another document).

This was discussed as a possible extension to '.MR'.  We're just not
sure that there's a real need for that in manual pages (although
there's not a consensus on that regard, and Branden, which I'm sure
is reading this, may jump in at any moment :).

>  They also
> have indexing and commands that allow the reader to use the index in
> order to find the subject he/she is interested in very quickly and

You mean whatis(1) and apropos(1)?  lsp(1) makes use of those to be
able to navigate all pages in the system (I guess this is more or
less what info(1) does; with the obvious differences due to how
nodes are organized).

> accurately, even if the text of the index entry doesn't appear
> anywhere in the manual.

man pages have several ways:

-  Including keywords in the NAME section.
-  Link pages.
-  TH line.

Of course, this is for the terminal.  For PDF or HTML, you can
get hyperlinks to any subsection (and in the future maybe even
tagged paragraphs) within a page.

>=20
> How can you document a large and flexible software package, such as
> GDB or Texinfo or Emacs, in man pages?

git is a huge program, yet its man pages are quite useful.
Just split your documentation at the right boundary, which
usually requires a good design for your software that allows
such division.

$ apt-file show git-man | wc -l
190

>=20
> It is a mistake to even compare these two documentation systems,
> certainly in this way.

The fact that current man(1) implementations don't exploit
the whole power of man(7) doesn't mean you can't design a
software that does.

I'm sure you could build something similar to info(1) that
got man(7) pages as its input.

That PDF linked above is just a starter of what we want to
do in the not far future.  Hopefully we can also get some
time to work on HTML.

>=20
>>>        =E2=80=A2   In windowing environments lsp does complete resize=
s when windows
>>>            get resized. This means it also reloads the manual page to=
 fit the
>>>            new window size.
>>
>> Good.  This I miss it in less(1) often.  Not sure if they had any stro=
ng
>> reason to not support that.
>=20
> ??? Why do you say 'less' doesn't support window resizing?  It does
> here.

Hmm, now that I think, it's probably an issue of coordinating
man(1) and less(1).  I sometimes wish that when I resize a
window where I'm reading a man page, it would reformat the page
from source.  Of course, that might be a problem for keeping
track of where I was, since lines moved around.  Not sure how
good lsp(1) is at that.

>=20
>>>        =E2=80=A2   lsp has an experimental TOC mode.
>>>
>>>            This is a three-level folding mode trying to list only sec=
tion and
>>>            sub-section names for quick navigation in manual pages.
>>
>> Nice, and this an important feature missing feature in info(1), as I
>> reported recently.  :)
>=20
> It isn't missing.  The TOC is presented as top-level menu in each
> manual, and large manuals have also the "detailed menu" with all the
> sub-nodes spelled out.  In addition, the Emacs Info reader has the
> Info-toc command, which presents a structured menu with all the
> sectioning levels of a manual even if the manual didn't produce it.

Ahh, yes, this is true.  What I found missing is a kind of a map for
knowing what I have available for navigating (also the fact that I
don't usually run info(1) makes me be a bit fuzzy on detailing what
is it that I miss from it).  So, info(1) has a map of the sections
available in a page, and does it also have a map of all the pages
in the system (or whatever you call your pages, I don't yet really
understand the organization of info manuals).

>=20
> There are also more focused commands which present TOC-like lists
> across all the manuals, which you can then navigate to read what you
> deem appropriate.  See the description of "--all" command-line option
> of the stand-alone Info reader.  For example, try this command:
>=20
>   $ info --all e --index-search "init file"
>=20
> There's also the index-apropos command from inside the stand-alone
> reader (and the matching info-apropos in the Emacs Info reader).

It's nice to talk to you, even if we usually disagree in how we
find documentation more accessible :)

Cheers,
Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------DrZM4GmZ3jFEUWKfNPxad6P7--

--------------GusXwH1nWlIAJe9agtvl2FXl
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQuHCQACgkQnowa+77/
2zL32w//VJCXbRCotyIYNoerqY/yxV8PEC3z2sdQWETrVkXR/unqSMypY9y4knKX
CJ5NrHesoS0t8/f9zpXN8GNel4boOiNR0x5APcI4MEtzxoJ89FPvAO2dhxv0vCIt
QKebMzmWrhEmfxoX4R9j1IUnycAByI0RX8xMRzt5d+ZexPpVQ4uOtY9diePpIPts
O45spNh1GCYQ4dKOc2fZ5KjoBWZj8VvKed2PPMwcoAuUBvvexOUBUlVDwLMZ22lO
8OrYJUKwXWdRIxGeNdwHrdRXFzhMBhRI8Tc+WzjL4SOsCXRwa3ZWvLjTJyUwsN1M
506SVe4/DCeZEPntBrqgpswttnWwgADBn+x8mp7eOQgUxKbHhxjfcW6hrNChngSz
5a3MFAQV1uvOb933KoZLVY3uNtOXfRHMY0u5m91AcXl8eVQiHzGGhh9BtT3HwHmL
pg9t+4Vjt3+JvfXMC10G6T8jPHe6Tr5IdFMOYPWBf4Q7XJEgWXMFOKESYAdKmF1X
ywUCaDtuiakESKOHdtlHETKQw0WjzRMta7br9uJweOtzRTJzGJ0LEks1uZmjEyL7
AMBHUzvi8kMe+QMecnvZWvMnT60dpUM5FLrhsGQpTuv+WUK2UeaxKI6L2pCMLTPG
q1vM1O32Yvo99puaUsvucr5ecx/xlVodllOUzksQ1gqoK681R0I=
=3wGK
-----END PGP SIGNATURE-----

--------------GusXwH1nWlIAJe9agtvl2FXl--
