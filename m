Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 41D676EA8D8
	for <lists+linux-man@lfdr.de>; Fri, 21 Apr 2023 13:07:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229657AbjDULHu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 Apr 2023 07:07:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46824 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229575AbjDULHt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 Apr 2023 07:07:49 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 175BD93F6
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 04:07:48 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-2fde2879eabso1469489f8f.1
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 04:07:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682075266; x=1684667266;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=elajmMsjWDoG78fMPI/LyApZJIEaknuLlrzusQ+sNPM=;
        b=U7To8lEonerYxV66/5eedEtohgvt431z0/SLMRECA3TUDL9dX+NDBhPfwRdgP1b4bm
         criAHMueWVV8KbuI+E9ZUWRORj1RlKx8pvH+MxaOZTnxQOR5NqOYK2/NPwT0Wj5JDm7C
         yHgYJM/+ZYzgf5odWU+Wc2P4ioSBaW95/mxxM3mXumBooVmcBqEIAzCaUN6JdYs0xoLu
         3vyoQy2iUE70LS+3qlZkIcvhAGw78arF5Sd0PEwlxWi8OEKeCwgLeR0+pTWZ7X2TbyIF
         0P00beMv3wWyP2gbRFGQArNAKqTpUvTvtx+GT5bkvfOD2a4FLEeuHz7LwuusweaHaa5q
         CCYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682075266; x=1684667266;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=elajmMsjWDoG78fMPI/LyApZJIEaknuLlrzusQ+sNPM=;
        b=hUlwPS38JRny5Q/q8ljctMHuVePy6OCMGt/3TTes9i4xesWtSbAUzmandvUCGM5E08
         PME+mK0Tj3WMUEJzr9mX4x6N1beK3FTzrYH0vrhCyatmWLNTVMJXCOl9IIBASbt0/jDD
         LBnJIHZUjAw2wb9PL1XGt/4kLVcxYUpqtKXyxB5YfWG/6Ml730kT3x5eJXYvDav/qYwq
         LSPNdiLPiziTDMqj+0s6RxbbFV0CYr3655sgCg2igCKQh8F7ikA6V0ZjHXRyAorOLoiq
         cl9ltVu3/rt90Ix3oNhHYk0xisJUldobypE33SVdjecZvfkT3k9IrTsRejxP71aryJ0s
         XjkA==
X-Gm-Message-State: AAQBX9eZH9PmJnipp6mDbPw7dc6W8kTST5p1MosTCGaOmQP04T5qKSdL
        AqVSfvF2TxJzMpM7SQFXLeo=
X-Google-Smtp-Source: AKy350Z+LiOhV0ZbqypmLNewKjaKPdEMG3vtyMAFK1qEzQj0F7QlQhsbsHXnr/f/vQtzumKIUAyNyA==
X-Received: by 2002:a5d:52d2:0:b0:2cf:eeae:88c3 with SMTP id r18-20020a5d52d2000000b002cfeeae88c3mr3503267wrv.32.1682075266379;
        Fri, 21 Apr 2023 04:07:46 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id ay37-20020a05600c1e2500b003f18b52c73asm4282239wmb.24.2023.04.21.04.07.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Apr 2023 04:07:45 -0700 (PDT)
Message-ID: <4b18b6d8-939b-7a67-16d7-46d6057f2a05@gmail.com>
Date:   Fri, 21 Apr 2023 13:07:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v2 2/9] regex.3: improve REG_STARTEND
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>,
        linux-man@vger.kernel.org, groff <groff@gnu.org>
References: <747kzwqbq2dqlrf7znp4eextcl5p2dlickflwicxstnk6fpinv@ntnnei6ianmk>
 <5ae22853ab58af90c0ec2685bb740af1f6177dfe.1681946212.git.nabijaczleweli@nabijaczleweli.xyz>
 <20230420100059.hdtey45vpaytjcvg@illithid>
 <ooclowvlja44cqpomwmenrleernvsbsqfsmq7g5jydylbcptw2@4uys4qxjnnyy>
 <20230420183300.nsw4lh2c27lwsnrs@illithid>
 <4045b975-c79d-a2b5-f180-fcdafe7290a1@gmail.com>
 <20230421050056.i2tuhdovzczap7z3@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230421050056.i2tuhdovzczap7z3@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------CV0yXC4lfC36Xv6ppMjb5x9h"
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------CV0yXC4lfC36Xv6ppMjb5x9h
Content-Type: multipart/mixed; boundary="------------boEq0YzbB2y00hiybY5NUfSk";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>,
 linux-man@vger.kernel.org, groff <groff@gnu.org>
Message-ID: <4b18b6d8-939b-7a67-16d7-46d6057f2a05@gmail.com>
Subject: Re: [PATCH v2 2/9] regex.3: improve REG_STARTEND
References: <747kzwqbq2dqlrf7znp4eextcl5p2dlickflwicxstnk6fpinv@ntnnei6ianmk>
 <5ae22853ab58af90c0ec2685bb740af1f6177dfe.1681946212.git.nabijaczleweli@nabijaczleweli.xyz>
 <20230420100059.hdtey45vpaytjcvg@illithid>
 <ooclowvlja44cqpomwmenrleernvsbsqfsmq7g5jydylbcptw2@4uys4qxjnnyy>
 <20230420183300.nsw4lh2c27lwsnrs@illithid>
 <4045b975-c79d-a2b5-f180-fcdafe7290a1@gmail.com>
 <20230421050056.i2tuhdovzczap7z3@illithid>
In-Reply-To: <20230421050056.i2tuhdovzczap7z3@illithid>

--------------boEq0YzbB2y00hiybY5NUfSk
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Branden!

On 4/21/23 07:00, G. Branden Robinson wrote:
> Hi Alex,
>=20
> At 2023-04-21T00:29:12+0200, Alejandro Colomar wrote:
>> On 4/20/23 20:33, G. Branden Robinson wrote:
>>> [Note for non-mdoc(7) speakers: `Sx` is its macro for (sub)section
>>> heading cross references.  man(7) doesn't have an equivalent, though
>>> if there is demand, I'm happy to implement one.  :D]
>>
>> I've been delaying my global switch to non-shouting sexion headings,
>> due to not having a clear idea of how to refer to them.
>=20
> Fair.
>=20
>> Having a macro that does that for me, and ensures that the appropriate=

>> formatting is applied might be a good solution.
>=20
> Well, I have three ideas.
>=20
> 1.  Mark them up the way the groff man pages do, in typographer's
>     quotes.
>=20
> See \[lq]Match offsets\[rq] in
> .MR regex 3 .

Not bad, but if we can have some macro that hides these details, and
even lets users tune their favourite formatting, that may be nicer.
As a bonus, it adds hyperlinking abilities.  :-)

>=20
> 2.  I could implement the `Q` quotation macro for man(7) that I've been=

>     making noise about for a while.[1]  Of course, you'd be waiting for=

>     the next release _after_ groff 1.23.0 for it...
>=20
> See
> .Q "Match offsets"
> in
> .MR regex 3 .

I'm not yet convinced by a general need for .Q.  Since the single use
I've needed so far for it is in section references, I guess a .SR macro
is more appropriate.

>=20
> 3.  I could implement a macro explicitly tuned to the problem of
>     (sub)section cross references.  I didn't see anybody come up with a=

>     good way to shoehorn this functionality into `MR`, so I suggest the=

>     following.

Agree; extending .MR for that seems not easy.

[... fixed in reply; below ...]

>=20
> On devices supporting hyperlinks, "Match offsets" would be a hyperlink
> with a to-be-determined anchor reference.  "regex(3)" would be a
> hyperlink as with the `MR` macro today.  "Bugs" would be a hyperlink
> with a to-be-determined anchor reference within the current document.
> (OSC 8 support for this may require some thought, or maybe we'd just
> handle them like external page references.)
>=20
> I trust the tradeoffs involved with each of the above solutions are
> readily apparent.



>=20
>> It would also please the info(1) people, so that the few references we=

>> have to those would be linked.
>=20
> What's the URL format for hyperlinks into Info documents?

You ask me about how info(1) works?  :D

info(1) is to me as unknown as ed(1).  At least I can quit them both
with q.  There's not much more I know of either.

>  How is the
> existing .UR/.UE inadequate?

I meant more that man(7) would have capabilities similar to info
documents.  It would only be that the current implementation of man(1)
is not powerful enough to do what info(1) does, but I guess it would
be conceivable to implement an info-like system that got man(7)
source.  Similar to what this lsp(1) proposed to the list recently
could do.

>=20
> Regards,
> Branden
>=20
> [1] https://mail.gnu.org/archive/html/groff/2022-12/msg00078.html




On 4/21/23 10:06, G. Branden Robinson wrote:
> [self-follow-up; updated subject]
>=20
> At 2023-04-21T00:07:21-0500, G. Branden Robinson wrote:
>> 3.  I could implement a macro explicitly tuned to the problem of
>>     (sub)section cross references.  I didn't see anybody come up with =
a
>>     good way to shoehorn this functionality into `MR`, so I suggest th=
e
>>     following.
>>
>> .SR section-or-subsection-title [page-topic page-section [trailing-pun=
ct]
>=20
> On second thought, I think it would be better to have matched brackets
> here.  And more seriously, to permute the argument order to feel more
> parallel to `MR` (as well as `ME` and `UE`).
>=20
> .SR section-or-subsection-title [trailing-punct [page-topic page-sectio=
n]]

I like this one most, by far.

However, I wonder what happens when there are conflicting names for
subsections.  This doesn't happen often, but certainly happens.  Should
we disambiguate by specifying the section and subsection in separate
arguments?

=2ESR section-or-subsection-title [trailing-punct [page-topic page-sectio=
n] [section-title]]

I guess that will be hard to implement, but should be doable, since it's
unambiguous.  It also answers what to do when the chapter is not specifie=
d:
it would be interpreted as a section instead, so author's fault.  Some
draft examples:

See
=2ESR Description

       See =E2=80=9CDescription=E2=80=9D

See
=2ESR Description .

       See =E2=80=9CDescription=E2=80=9D.

See
=2ESR Compilation . Description

       See =E2=80=9CCompilation=E2=80=9D (=E2=80=9CDescription=E2=80=9D).=


See
=2ESR Description . regex 3

       See =E2=80=9CDescription=E2=80=9D (regex(3)).

See
=2ESR Compilation . regex 3 Description

       See =E2=80=9CCompilation=E2=80=9D (regex(3) =E2=80=9CDescription=E2=
=80=9D).


Further arguments ignored.  The complex thing would be that the meaning
of the 3rd arg depends on having a 4th one, but it's not so bad.

Does it make sense to you?

Cheers,
Alex

>=20
> Updating the example:
>=20
> See
> .SR "Match offsets" . regex 3
> .
> Also see
> .SR Bugs
> below.
>=20
> In this design, if argument 3 is present, argument 4 is mandatory.  Thi=
s
> would need to be a pretty hard requirement.  Maybe the default section,=

> if unspecified, would be "UNKNOWN".  This is rude but doesn't penalize
> the user any more than the document author does.  (There is also
> precedent in mdoc(7)'s setup macros.)  We don't want to `ab`ort page
> rendering for these errors because that will adversely affect innocent
> users who are simply trying to read documentation.
>=20
> The foregoing would render as
>=20
>        See =E2=80=9CMatch offsets=E2=80=9D (regex(3)).  Also see =E2=80=
=9CBugs=E2=80=9D below.
>=20
> Regards,
> Branden

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------boEq0YzbB2y00hiybY5NUfSk--

--------------CV0yXC4lfC36Xv6ppMjb5x9h
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRCbnoACgkQnowa+77/
2zLmRg//YMfhiam4OEKpW1FcASp/hGMgjBFEXLQeaiCFgDaauYqJjd0ACRXud8eo
ojtxWVFxuDqN4lSpL+78XYkuT6BuhRd+onJukuQY6I0vtZY91xiuSho+Kk3ufNul
LLZ+hnnSR4ktyCfIi6pR9xeivU9jtTDR/cfuLSPmtbWyRTOngfVZ/D+Urvc+ImwK
pYTIr+PtQjYVNlkUEdefYAFZqCDs6mhd9bd1bXB4829n+klVXhSIKtnp6GSiVE9t
j2pPYqorAFMGC9Z5bEmbFQ8Ne7sO4ZFOjUgY6VxxO0YtlICFdxjgHqO/zkLjGher
21IT0lToTvGdx1MXjcQYbv9eYkdzVebqeJ+p1BP0yD0IvDQSWTO5RnKenYplyvbJ
C8zd+N6TBaAf08bXqzfa/8wPW07wnUoGkeVGGCJSLKqSGOZ0ZV/BpS1hHYBaXmDu
23/O5cFhj8G1GBQO8lIi+Rbqc89tcVGht2AHR7stDi8jvCCRHJiIwF56va0cnTe0
wmyLLR2kXeB1Z9xHcKFdlNAvu1pMhb1RNPfapWr02ii4wC0tXIK/GmGeJ8Js/iN0
KcCKS6Nfz45BA+lZlbmylLfh2cN/mi7E6Kc6dIEggWXYQXKP5Z0FTdtefZVThOcv
IFytKSTyy3ITb6hvZx7uKRDl7if9qFvoUXoTFzpAbDizTWtlZoE=
=KvPN
-----END PGP SIGNATURE-----

--------------CV0yXC4lfC36Xv6ppMjb5x9h--
