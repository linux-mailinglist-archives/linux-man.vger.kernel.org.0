Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DE66C6497E7
	for <lists+linux-man@lfdr.de>; Mon, 12 Dec 2022 03:14:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231297AbiLLCOQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 11 Dec 2022 21:14:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41134 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231263AbiLLCNx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 11 Dec 2022 21:13:53 -0500
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com [66.111.4.25])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E0B49DEC4
        for <linux-man@vger.kernel.org>; Sun, 11 Dec 2022 18:13:47 -0800 (PST)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
        by mailout.nyi.internal (Postfix) with ESMTP id C93245C0093;
        Sun, 11 Dec 2022 21:13:43 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Sun, 11 Dec 2022 21:13:43 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=owlfolio.org; h=
        cc:cc:content-transfer-encoding:content-type:date:date:from:from
        :in-reply-to:in-reply-to:message-id:mime-version:references
        :reply-to:sender:subject:subject:to:to; s=fm1; t=1670811223; x=
        1670897623; bh=675rTnQ0NW3exxlLbFmv17LYkj1iCw8FMONEqZRKhDk=; b=E
        YK4jyDoEBR/iQKw4j0ycxhOQzZ1rWVU1cIy/9WMi2mog/eYO65w1CnNrPlH7Qtl+
        qZwQkZFk/VCZhe6onJJ4bW6ou9+G2ZhcssdTULUs/egkU0CSarOkzs1q8lYTlimZ
        nHGIjw/aECkW2PqbxuIbVh4aGCohYm5JZRLhbwB1LIprEB30zS9W2kr5lGyqc/w/
        8lRvI3X9jJmGnxgP/3TSdkePrhvbI9s+p+5tS/eE4xtx9BhV4uOKqiStrw1d4CSY
        UFg/Oo+8hAOiDCDe4CmbTgWfE2sEsigfc2X0XnTd3oAdgDYYvoVehhx21O0eF37I
        OjEZ9wlOU3A0hvkIy2lLA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:cc:content-transfer-encoding
        :content-type:date:date:feedback-id:feedback-id:from:from
        :in-reply-to:in-reply-to:message-id:mime-version:references
        :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
        :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1670811223; x=
        1670897623; bh=675rTnQ0NW3exxlLbFmv17LYkj1iCw8FMONEqZRKhDk=; b=x
        N4MG0QMbUqynhwez32w3BS9CWnE3DLOw0qj4yUUPx4WCEnofJNYVrIjbtdAl4ZA2
        xwlhRrmd6i6n1/9vflH98D6qgtn7RacfPCy08urMCQrH0yUY2LZ1Q5F8YHngY+Aw
        0jF2vtWOeKjX9vr8SkEvVYTVIw3C6xwCqVRLXbawOneZDub4r8AM9df4KfgR2mIP
        dYWYJcpoCcRzDvyzPEGDPbyDZxi95fZAiz4yHybzNpVPYQA+PemAJEH+tSZeu/h6
        5sCW/tgO8ejd5XLE0OXhAF+jpjQRh8ZyqBfwvDCx+MwdZgie2wN2ynLwpgy9bXEK
        3vQEEX/VMc4zVNnveMd9A==
X-ME-Sender: <xms:V46WYxRB3ZjTmga16LMfvI0a66X0yJSKWrKj6VJA9crNETORBvxpkw>
    <xme:V46WY6zJEn21iipgcIYjziUvTRpNsxfsIvrQYBQoqv5nmV3WLSNivoYGbTLcOhOFe
    4zHCSIzMmddAP8fQvA>
X-ME-Received: <xmr:V46WY22-ICxJHlpb9wqJBhMJkuG9F2-GaXCCJedg6CYTr6gmn8fFy23f8j8gMU4ZNPi-VWieCnfKLoviOxDtsK8qoE6232cWe_yOAA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrvdejgdegfecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvfevufhfffgjkfgfgggtgfesthhqredttderjeenucfhrhhomhepkggrtghk
    ucghvghinhgsvghrghcuoeiirggtkhesohiflhhfohhlihhordhorhhgqeenucggtffrrg
    htthgvrhhnpefhvdevuefgjeeuheegfeejhefhheegkeejhfejhffgveduhfehjefggfel
    fffgheenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    iirggtkhesohiflhhfohhlihhordhorhhg
X-ME-Proxy: <xmx:V46WY5BuZoysuzjL5FOS5eroofG3aGlGpSoy_afg8NwTUD_YhKAk-w>
    <xmx:V46WY6g39tc6sLGkwnf2-K49H_PN_BpivbPTNJhZs9a5I1kETQ_ofg>
    <xmx:V46WY9o-nan3vLi_eDIVKLvK5ydcivInBNEZQDa1w2pySacykgMPqw>
    <xmx:V46WY9uRYeN77fngpZbIptJIsUSlWl3dn5QQ9iuc-DB3VsZiQ1yRpA>
Feedback-ID: i876146a2:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 11 Dec 2022 21:13:43 -0500 (EST)
From:   Zack Weinberg <zack@owlfolio.org>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     libc-alpha@sourceware.org, 'linux-man' <linux-man@vger.kernel.org>,
        Ian Abbott <abbotti@mev.co.uk>
Subject: Re: [PATCH] scanf.3: Do not mention the ERANGE error
References: <20221208123454.13132-1-abbotti@mev.co.uk>
        <5f490d45-b31e-279e-edcb-de4806b8ba54@gmail.com>
        <d1ecf57b-72cf-dbb4-3b4a-b19c7cdc93e9@mev.co.uk>
        <06f70d09-a258-7d6d-4a98-6a89ed761849@gmail.com>
        <6269173b-20cb-7b47-1ad9-6099a9baa052@owlfolio.org>
        <d65cff0c-7aba-8bb3-9a2f-3d07f20517b4@gmail.com>
Date:   Sun, 11 Dec 2022 21:11:59 -0500
In-Reply-To: <d65cff0c-7aba-8bb3-9a2f-3d07f20517b4@gmail.com> (Alejandro
        Colomar's message of "Sun, 11 Dec 2022 16:58:27 +0100")
Message-ID: <ypikk02xv09c.fsf@owlfolio.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.2 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Alejandro Colomar <alx.manpages@gmail.com> writes:
> On 12/9/22 22:41, Zack Weinberg via Libc-alpha wrote:
>> The `scanf` functions have undefined behavior if numeric input
>> overflows.=C2=A0 This means it is *impossible* to detect malformed input
>> reliably using these functions.
>> Many input specifications (e.g. `%s`, `%[^\n]`) read a sequence of
>> characters into a destination buffer whose size is unspecified; any
>> use of such specifications renders `scanf` every bit as dangerous as
>> `gets`.
=E2=80=A6
>> Best practice is not to use any of these functions at all.
=E2=80=A6
> I'm inclined to add that in that manual page.  Is there anything that
> can be saved from that page, or should we burn it all?  To be more
> specific:
>
> -  Are there any functions in that page that are still useful for any
>    corner cases, or are they all useless?
> -  Are there any conversion specifiers that can be used safely?

Hmm, this turns out to be a bit of a rabbit hole.

There are two major design-level problems with the scanf family.
The more important one is that string input conversions (%s, %[=E2=80=A6])
will read an unlimited number of characters by default, oblivious to
the size of the destination buffer =E2=80=94 exactly the same design flaw as
=E2=80=98gets=E2=80=99.  They do stop scanning at _any_ whitespace (not jus=
t \n) so,
if you=E2=80=99re trying to craft exploit code, there are more byte values =
that
must be avoided, but this is only a minor obstacle.  They can, however,
be used safely, either by supplying a field width that accurately
reflects the size of the destination buffer, or by using the =E2=80=98m=E2=
=80=99
modifier (a POSIX extension), which directs scanf to allocate the
right amount of space for the string with malloc.

(Field widths are awkward to use because you have to write them as
decimal constants _inside the format string_, which makes them more
likely to get out of sync with the actual size of the buffer than,
say, the buffer-size argument to =E2=80=98fgets=E2=80=99, but this is not a=
 fatal
flaw in and of itself.)

The other design-level issue affects all of the numeric conversions:
if the result of (abstract, infinite-precision) numeric input conversion
does not fit in the variable supplied to hold the result of that conversion,
the behavior is undefined.  The manpage says that you get an ERANGE error
in this case, and that may be the behavior _glibc_ guarantees (I don=E2=80=
=99t
actually know for sure), but in the modern era of compilers drawing
inferences from undefined behavior, a guarantee by one C library is
not good enough.

That covers everything except %c and %n, which are safe but somewhat
pointless in isolation.

> Or the converse questions:
>
> -  Which conversion specifiers (or modifiers) are impossible to use
>    safely as gets(3) and should therefore be marked as deprecated in
>    the manual page (and probably warned in GCC)?
> -  Which functions in that page are impossible to use safely and
>    should therefore be marked as deprecated?
>
> Would you please mark them as [[deprecated]] in glibc too?

I don=E2=80=99t think glibc should unilaterally deprecate any function that=
=E2=80=99s
specified by ISO C.  And, the scanf family *can* be used safely with
sufficient care =E2=80=94 read entire lines of input with getline, then spl=
it
them up into fields with sscanf using only %ms and %m[=E2=80=A6], and final=
ly
parse all numeric fields by hand with strtoX =E2=80=94 the issue is more th=
at,
if you limit yourself to the set of scanf operations that are 100% safe,
you=E2=80=99re left only with stuff that is arguably *easier* to do with <s=
tring.h>
and <regex.h> functions.

In a more sober tone of voice I suggest this text for the manpage:

.SH BUGS
By default, the=20
.IR %s " and " %[
conversions will read an
.I unlimited
number of characters from the input.
In this mode they are just as unsafe as the infamous
.BR gets (3).
One should always specify either a field width,
or the
.I m
modifier,
with every use of
.IR %s " or " %[ .
.PP
If a numeric input conversion produces a value
that is not representable in the type of the corresponding argument
(e.g. if 99999 is to be stored in an
.IR "unsigned short" ),
ISO C says that the behavior is undefined.
The GNU C Library guarantees to treat this condition as a
.IR "matching failure" ,
but portable code should avoid using the numeric conversions.

I also suggest that GCC should add diagnostics to -Wformat and/or
-Wformat-security to catch use of %s and %[ with no size specified;
if glibc doesn=E2=80=99t already treat numeric overflow as a matching failu=
re,
it should be changed to do so; and maybe someone should write up a
proposal for the C standard to make the same change.

zw
