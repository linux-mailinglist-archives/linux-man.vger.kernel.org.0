Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 99B7757E6F7
	for <lists+linux-man@lfdr.de>; Fri, 22 Jul 2022 21:04:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231199AbiGVTEF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 22 Jul 2022 15:04:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43650 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229522AbiGVTEF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 22 Jul 2022 15:04:05 -0400
Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com [IPv6:2607:f8b0:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0FF45A0245
        for <linux-man@vger.kernel.org>; Fri, 22 Jul 2022 12:04:04 -0700 (PDT)
Received: by mail-oi1-x233.google.com with SMTP id u9so6499670oiv.12
        for <linux-man@vger.kernel.org>; Fri, 22 Jul 2022 12:04:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=00krq+hqs3jJSja+kD+v4FhvtZx541gLxMjAVv1iYdQ=;
        b=AL/CGJ+DSHM4LZRwHspsyUJlNvLtZPLJwwjOAPTaap7gM7VN0vwOvEhlKNW5KwxGaV
         k6lotVx6RsY/B7Dc7/ioT5MiHd5in5oAzFzvjTWz/G0Ai+QsGd3VIoiVWgbjHreH8Vkf
         IhCKp9QEkQ/RwtFQBkqGPg8jrzJrS1+iFv+eGvN9/dnK6awBCaId2K7EbGreyNpoHvH2
         62PxZbEBxPR/uWzdYPgA5EBuREKvI1VEeMdDixT4IL4rW6DoxiViE47Ubqdfq86wRuqg
         5T1bBruShmn9XupyGQCSSWkpG+8rP4aQm2EoYlb/SJmo9vqFcU9GQw8DQv8uyenWWTpf
         QZVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=00krq+hqs3jJSja+kD+v4FhvtZx541gLxMjAVv1iYdQ=;
        b=34IyjSy/aesWgkszWDQvNAzKzwbJXoNBfSAAFfLDnAW8+RSMkoAWgu/i706F4P6q4G
         hC2YjdOMLaXn4v1SnVf+XUQdBMvGME2XyNtbHJtqgtQ3eJLBFCpQBNXemvtdaBmw98A4
         fZ+6qhNm2VuFIw0SD1RJtotTJ96R9BTAP3n5Ir60nrATgHLXR9JbRFqbAMuCCfjOLup0
         A6KTv7ERAWPiVHfcQrZka2mpzLJ4oucZMqnOMil7paBqPIIYJY3jGja8lZdzp6w6HOXE
         ldMk2ysqggTJHy8Zi2ZS76LxkvB7KXUsVK5KX+CBFwHJbHotwduWAJA93gaCAa3YFiMt
         PPfg==
X-Gm-Message-State: AJIora8JzCN+mbzWOwECrPYM1Ty6DDYit4LJX9cQcnYkFfnI8l3YV2gZ
        YJK2UbppA86+8RTSBHk5I4lufeRYNvY=
X-Google-Smtp-Source: AGRyM1srxjDu/ZkP924DCny8iO60yrm0cvX+bNGw5a2pBBNJ9Paex0N//EoEF+W5xzyO19MkjS+clQ==
X-Received: by 2002:a05:6808:1641:b0:333:3549:a374 with SMTP id az1-20020a056808164100b003333549a374mr558281oib.156.1658516643199;
        Fri, 22 Jul 2022 12:04:03 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id q126-20020aca5c84000000b003331f695f0asm2107675oib.30.2022.07.22.12.04.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Jul 2022 12:04:02 -0700 (PDT)
Date:   Fri, 22 Jul 2022 14:03:59 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>, groff <groff@gnu.org>
Subject: Re: All caps .TH page title
Message-ID: <20220722190359.pyw2yi3u6vua5z34@illithid>
References: <66c19a09-ef0f-0d85-0380-37a67ac483dd@gmail.com>
 <20220721183620.hdvgwwef66hmrgln@illithid>
 <1e1f9197-a013-0d6b-6bfa-853fe28102cf@gmail.com>
 <20220722021452.5k43or5uwj2eiouh@illithid>
 <7a94b352-9ae5-a823-72c4-c526a0cc0e66@gmail.com>
 <e4603be0-47f4-bc2b-b31e-52039ca63721@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="lpqvjezzc7efqr2b"
Content-Disposition: inline
In-Reply-To: <e4603be0-47f4-bc2b-b31e-52039ca63721@gmail.com>
X-Spam-Status: No, score=-0.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URI_DOTEDU autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--lpqvjezzc7efqr2b
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2022-07-22T13:46:37+0200, Alejandro Colomar wrote:
> On 7/22/22 12:35, Alejandro Colomar (man-pages) wrote:
> > BTW, I think I didn't reply (or if I did was very short) to your
> > comment that other languages may find it difficult to mirror our use
> > of subsections, since their main section is already a subsection
> > (e.g., 3pl).

In my (Debian-centric) experience, I see "3perl"--just a detail.

> > I'd say that since C is the native Unix language, and others are
> > just... others?, I'd optimize for C, and let other languages find a
> > way to document their things.=A0 It would be easy to say just go away,
> > the man pages are for C, but I won't dare to say that, since I like
> > man pages, and I'd like to see more documentation for languages that
> > I sometimes have to use be in the form of man pages, so I'll try to
> > come up with a more imaginative answer:=A0 how about using
> > subsubsections of the form 3pl_type?=A0 At least it's a possibility.=A0
> > man(1) would handle them as any other subsection, but that's not a
> > big problem.=A0 Maybe man(1) could develop a way to provide
> > subsubsections...=A0 Colin, any ideas in this regard?

I don't see any reason to privilege the C language more than it already
is.  Let us review the default manual section titles--the material that
appears in the center header by default when man pages are rendered.

  .\" Localize manual section titles for English.
  .de an*localize-strings
  .  ds an*section1 General Commands Manual\"
  .  ds an*section2 System Calls Manual\"
  .  ds an*section3 Library Functions Manual\"
  .  ds an*section4 Kernel Interfaces Manual\"
  .  ds an*section5 File Formats Manual\"
  .  ds an*section6 Games Manual\"
  .  ds an*section7 Miscellaneous Information Manual\"
  .  ds an*section8 System Manager's Manual\"
  .  ds an*section9 Kernel Developer's Manual\"

Literally none of this necessarily implies the use of C.  Instead these
sections are a coalition--perhaps an uneasy one--of three different
categorical axes.

  (1) who needs the information--users, programmers, or administrators
  (2) whether the information is a kernel-invariant or not
  (3) the syntax of data presented to other system components

I suggest that this arrangement survives not just due to blind inertia,
though that may be the preponderant factor, but because in a POSIX
system these categories remain fairly stable.  One can bloat or shrink
the kernel but there's always going to be a kernel.  There is a sharp
distinction between kernel (or supervisor) mode and user mode.  Some
users are more privileged than others, and perform administrative tasks.
The file metaphor as a persistent array of (often seekable, often
persistent) bytes is deeply entrenched.

> Or, maybe it's the time to write a whole new volume?  I think there's
> a comparable difference between 3type and 3 than between 2 and 3 or 1
> and 8, so it would be merited.  I didn't do it before for two reasons:
> it might break software that assumes than Unix manuals use a single
> number followed by an optional string (I'd say it's not a fair
> assumption to say that man9 would be the last one ever used; if
> there's 9, there might be a 10 some day), and because other projects
> had already used 3type.
>=20
> But, that would start a clean namespace.  Maybe it's worth it.
>=20
> How would you feel if I inaugurate man10 for types, and later man11 for
> non-function-like macros? :D

Permit me to play an unaccustomed role as a voice of conservatism.  I
don't think we need the section number, or even a section suffix, to
communicate information about a data type.

(A) Header files could be put in section 3 under their names as-is.  We
    should remember that C standard library header files, per ISO C,
    need not be literally present on the file system; they can be
    provided by the compiler using unspecified means.  I point this out
    to emphasize their exotic nature.  They need not be ordinary files,
    though on POSIX systems we should expect this.  I don't think
    inaugurating a "section 0" serves any use here, since C identifiers
    will not collide with them.  We do not write a stand-alone man page
    for a member of a structure, so the element "h" of a hypothetical
    "struct math" will be documented in "math(3)", not "math.h(3)".

(B) Collisions in C's name spaces are discouraged by common practice and
    seldom leveraged even where syntactically distinct.  Functions and
    variables ("objects") are in the same name space in C, and data
    types and objects are so confusable[1] that in practice programmers
    treat them as being in the same name space.  For example, structure
    tags enjoy their own name space but most novice and even many
    experienced C programmers are shaky on the fact.  (This ignorance
    was compounded for decades by a common idiom of introducing type
    aliases ("typedefs"[2]) for structs as soon as they were declared.)

The above points are why I think we not only don't need new sections of
the manual, but that suffixes like "type" and "def" are not performing
any service for the reader that isn't clearly and obviously communicated
in the text of the man page, if it is written to a minimum level of
quality.  The synopsis will say what is needed, and within a programming
language, names exposed by an API should not be ambiguous, so the suffix
won't be necessary to aid the apropos/"man -k"-using reader.

Here, let me do an impression.  [tousels hair; puts on big glasses;
becomes copyright rentier; indulges predatory, monopolistic practices]

"Nine sections of the manual ought to be enough for anybody."

Regards,
Branden

[1] https://en.wikipedia.org/wiki/Lexer_hack
[2] A deceitful little term if there ever was one, because it does
    _nothing_ to enhance type conformance checking.  Kernighan pointed
    out that "strong typing is not dimensional analysis" in his article
    "Why Pascal Is Not My Favorite Programming Language", when
    enumerating deficiencies of that language.  Here's his example.

    type
      apple =3D integer;
      orange =3D integer;

    C works similarly.

    typedef int apple;
    typedef int orange;

    Kernighan failed to note that strong typing _could_ be dimensional
    analysis, if taken seriously.  Perhaps he didn't because the same
    criticism could then be made of C, which had his name on it and
    proceeded to eat much of Pascal's lunch in the '80s and '90s--for
    reasons conspicuously distinct from the quality of its type
    checking.

    If you want real checking of a primitive type in C, you have to wrap
    it in a one-member struct.  Even then you don't get range
    constraints, which are frequently valuable and which Pascal did
    support.  Kernighan clucked in the same paper that range checks
    "seemed like a service, though they too exact a run-time penalty".
    In other words, they are costly.  I wonder how we might measure the
    cost of failures to observe CERT'S INT{30,32}-C[3] in the quest for
    bragging rights about performance.  Obviously its magnitude was
    recognized only in retrospect.

    Now, lest I seem hard on Kernighan here, let me note that, among
    other excellent points in the paper, his thorough trashing of
    Pascal's array handling, where the size was regarded as an
    integral part of the data type, was completely deserved.  For those
    who haven't read the paper, this means that, yes, in pre-ISO Pascal,
    your function which operated on char arrays of length 4 would not be
    permitted to operate on char arrays of length 5.  The compiler (or
    interpreter) would stop you.  It is hard for me to imagine, as a
    workaday programmer, how Wirth let the language escape the
    laboratory with this defect.

[3] https://wiki.sei.cmu.edu/confluence/pages/viewpage.action?pageId=3D8715=
2052

--lpqvjezzc7efqr2b
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmLa9JgACgkQ0Z6cfXEm
bc5uRxAAiOeVmE7bCqPDWRMQtxWTTjEOqLemitv5CwWFAyoYk0TcCu3lrj8SKwWf
0Vu3IVESQK0AMKMsmpfMRIZoTDdV7SA/bZojYO7qjJAym52EOHGs9i4StfAIV+X0
PY/awcsaVBXFW1Luw+1uc6KRkBfyXRjXx+fT83VZtTOz1ZLkZfASHj8UaeUf3bnY
7VMf9qsQ7+pmAJx5NlnO0inNc80LdhLRuJZ8VWTYEp8SCRKbrXc4Ajxov6+yKRP+
VBjWPsvFNjkUw100JUip92czQjvH5WmRoc5dsiOI6ik0/YLXvkLBIqFL4duAbpOh
rdCKpKSPv+uRQ3tOOeeR9mBcu58N/JIdwGPsAqPPVhTbDwOnSm0BWyaDug07n48w
BEFNxU/wFapPLlRxJNhLlxlIRlJfDN1OJPFdTPsCHXWZMriWNbVNg/XjUdPCe095
FkdrEzUj/HUdKBMhX36TdiqtX7hfk+5x7//sLQVCBfxd6ELh+UwCOietyFummi02
gtsEu11KtK40jJaKybIbIu3cYrXCfuJd9wbSGV64mfVtLkKYX0ZHc+IIIeTqbmpB
Bpuu3k9BSiQ7sHwMCP0SsoRXF4eBZDcIIc4JoYdPtec7vsGSpyJHoZG0/FqkVkEz
LHj12LRrOM5DxuwZvbFLQoW5kyVklltlvzTyst5YRAA0bbFtkic=
=DmRH
-----END PGP SIGNATURE-----

--lpqvjezzc7efqr2b--
