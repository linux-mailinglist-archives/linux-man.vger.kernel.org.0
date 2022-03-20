Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 359C74E1C1D
	for <lists+linux-man@lfdr.de>; Sun, 20 Mar 2022 15:53:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234218AbiCTOyh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 20 Mar 2022 10:54:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34458 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238877AbiCTOyg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 20 Mar 2022 10:54:36 -0400
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com [IPv6:2607:f8b0:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B3001DE99
        for <linux-man@vger.kernel.org>; Sun, 20 Mar 2022 07:53:11 -0700 (PDT)
Received: by mail-pg1-x533.google.com with SMTP id o23so8602920pgk.13
        for <linux-man@vger.kernel.org>; Sun, 20 Mar 2022 07:53:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=znQkG2DP8Yj2NPNzLg0rIqoM6nxDU4svVOU17BwtW4o=;
        b=JPPJRrYJ7xYq0OJ/p39/kN6kYu5kpQAuIVTF8Hh1tzoI/bW+OvFzFUdDGeNfl0EzEt
         K2AnidBT11brl6HdqsJrX4TeWHFBIyf+0nrodg/9Fn8c31QHPebQiyblb9B2/Adf7pNX
         Re94XtoUPVPgkfCnRv+NUzCIW4ywrf4UR4+uNdF/QQnt+InS+4IJfSkFQ/p42sedgp1g
         Gt1rGVDdVI7XXSdqjkAYNMaB21MiYbPZaTJ9pk+X/d7Za0UjqQNCIBUjGNKJACCfvWhA
         cGy9Xr9E7FeCumjImk93M9cwuH9sdu4lpqbnhuk+0tncyl999t1uH3heXmG75NZc5RuW
         EH5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=znQkG2DP8Yj2NPNzLg0rIqoM6nxDU4svVOU17BwtW4o=;
        b=ST7x5q7UikPiZGANiWIr2GL3JJBPr5PWG9711ogOVuplpMVeLt+Dodhqdgf/cn013m
         tYKZPOEdgm2t17xlbLvbKm77f3sfFjkPqjhOWiEzlQMR+7cJA2T3Rov6tldsC/qR6Wb/
         VBUqqMN2wI5RrcdTEq00v7LSHdk3SbU9NO+NwQk2TgZFdv9N+x9wcarufpi/qAAaBFIZ
         1LIH3XjDqYlaXw8OB3M/7bbB1kQUfeM5XYokcus29qvWlRpKtTJrm3Gqu84Vu2lIFU+d
         st5ay35BiL3bwTLkaXO44n+0BsvvCKGWz/0MRuXif/FGOQISta/QRenPLXwVMvmkywIm
         Q7NQ==
X-Gm-Message-State: AOAM530SZjXjZPKww1yx+kaocrCkUc7Rne9pIjFC33UlapvR9FhX9IHT
        ksaI38VWmaCgpn3e686cHGwDs2Z8Agk=
X-Google-Smtp-Source: ABdhPJxxHlZo+0cHapkCVl/+l7A/iE6Cjz9LeqRf2Jn1zJR5cRQrPDpEtPbPkJt60BB7U5Ec6VmiSA==
X-Received: by 2002:a63:481d:0:b0:380:ea8d:4301 with SMTP id v29-20020a63481d000000b00380ea8d4301mr14632518pga.285.1647787991143;
        Sun, 20 Mar 2022 07:53:11 -0700 (PDT)
Received: from localhost.localdomain ([1.145.30.29])
        by smtp.gmail.com with ESMTPSA id o15-20020a17090a168f00b001bf66741097sm13193838pja.16.2022.03.20.07.53.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Mar 2022 07:53:10 -0700 (PDT)
Date:   Mon, 21 Mar 2022 01:53:06 +1100
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     Craig Ringer <craig.ringer@enterprisedb.com>,
        linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: [patch] Add docs on mount namespace rootfs access and pid
 namespace pid mapping
Message-ID: <20220320145304.nus44y4hsh6fohbk@localhost.localdomain>
References: <CAGRY4nx5R6d5iH1SUZHEuJO+M67h1p1zLNQB_6F6X5GGBKFYeg@mail.gmail.com>
 <2678e0e8-0057-7b63-a3a0-9f49b57f0cf4@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="yqwvayrvd7btdzjj"
Content-Disposition: inline
In-Reply-To: <2678e0e8-0057-7b63-a3a0-9f49b57f0cf4@gmail.com>
User-Agent: NeoMutt/20180716
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--yqwvayrvd7btdzjj
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi, Alex!

At 2022-03-14T15:05:49+0100, Alejandro Colomar (man-pages) wrote:
> Always start sentences after '.' in a new line.
> That's already covered by "semantic newlines" (see above),
> but it's especially important in this case because
> groff(1) prints (at least) 2 spaces after '.' normally,
> but if you write it this way it doesn't.
>=20
> BTW, Branden,
> I CCd you because I didn't find this documented in groff(7),
> or at least I couldn't find it.
> I tried /\.[^ [a-z]] and also keywords like period, point or dot,
> but no luck.
> Is it documented anywhere?

It used to be one of those things everybody just "knew" about writing in
*roff--back when people hung on Brian Kernighan's every word[1]--but
over the years the knowledge has atrophied.

The groff 1.22.4 Texinfo manual has the following.  I believe this
material is adapted from Eric Allman's paper "Writing Papers with NROFF
using -me".

[[
3 Tutorial for Macro Users
**************************

Most users tend to use a macro package to format their papers.  This
means that the whole breadth of 'groff' is not necessary for most
people.  This chapter covers the material needed to efficiently use a
macro package.
[...]
   * In keeping with this, it is helpful to begin a new line after every
     comma or phrase, since common corrections are to add or delete
     sentences or phrases.

   * End each sentence with two spaces - or better, start each sentence
     on a new line.  'gtroff' recognizes characters that usually end a
     sentence, and inserts sentence space accordingly.
]]

This advice, in the context of macro package usage, is scoped too
narrowly.  The manual has a later section which makes the point again.

[[
5.1.6 Input Conventions
-----------------------

Since 'gtroff' does filling automatically, it is traditional in 'groff'
not to try and type things in as nicely formatted paragraphs.  These are
some conventions commonly used when typing 'gtroff' text:

   * Break lines after punctuation, particularly at the end of a
     sentence and in other logical places.  Keep separate phrases on
     lines by themselves, as entire phrases are often added or deleted
     when editing.

   * Try to keep lines less than 40-60 characters, to allow space for
     inserting more text.

   * Do not try to do any formatting in a WYSIWYG manner (i.e., don't
     try using spaces to get proper indentation).
]]

I have written new material for groff's Texinfo manual in the
forthcoming 1.23.0 release.  The above section is significantly expanded
and, happily for skeptics of GNU Texinfo, ported to a man page as well.
The roff(7) page bears the fruit of much labor, including the following.

[[
Input conventions
       Since troff fills text automatically, it is common practice in
       roff languages to not attempt careful visual composition of text
       in input files: it is the esthetic appeal of the formatted output
       that matters.  Therefore, roff input should be arranged such that
       it is easy for authors and maintainers to compose and develop the
       document, understand the syntax of roff requests, macro calls,
       and preprocessor languages used, and predict the behavior of the
       formatter.  Several traditions have accrued in service of these
       goals.

       =E2=80=A2      Break input lines after sentence=E2=80=90ending punct=
uation to
              ease their recognition.  It is frequently convenient to
              break after colons and semicolons as well, as these
              typically precede independent clauses.  Consider breaking
              after commas; they often occur in lists that become easy
              to scan when itemized by line, or constitute supplements
              to the sentence that are added, deleted, or updated to
              clarify it.  Parenthetical and quoted phrases are also
              good candidates for placement on input lines by
              themselves.  In filled text, spaces and newlines are
              interchangeable; place breaks where it aids your purpose.

       =E2=80=A2      Set your text editor=E2=80=99s line length to 72 char=
acters or
              fewer; see the subsections below.  This limit, combined
              with the previous advice regarding breaking around
              punctuation, makes it less common that an input line will
              wrap in your text editor, and thus will help you perceive
              excessively long constructions in your text.  Recall that
              natural languages originate in speech, not writing, and
              that punctuation is correlated with pauses for breathing
              and changes in prosody.

       =E2=80=A2      Use \& after =E2=80=9C!=E2=80=9D, =E2=80=9C?=E2=80=9D=
, and =E2=80=9C.=E2=80=9D if they are followed by
              space, tab, or newline characters and don=E2=80=99t end a
              sentence.

       =E2=80=A2      In filled text lines, use \& before =E2=80=9C.=E2=80=
=9D and =E2=80=9C'=E2=80=9D if they
              are preceded by space, so that reflowing the input doesn't
              turn them into control lines.

       =E2=80=A2      Do not attempt to format the input in a WYSIWYG manner
              (i.e., don=E2=80=99t try using spaces to get proper indentati=
on or
              align columns of a table).

       =E2=80=A2      Comment your document.  It is never too soon to apply
              comments to record information of use to future document
              maintainers (including your future self).  The \" escape
              sequence causes troff to ignore the remainder of the input
              line.

       =E2=80=A2      Use the empty request=E2=80=94a control character fol=
lowed
              immediately by a newline=E2=80=94to visually manage separatio=
n of
              material in input files.  Many of the groff project=E2=80=99s=
 own
              documents use an empty request between sentences, after
              macro definitions, and where a break is expected, and two
              empty requests between paragraphs or other requests or
              macro calls that will introduce vertical space into the
              document.  You can combine the empty request with the
              comment escape sequence to include whole=E2=80=90line comment=
s in
              your document, and even =E2=80=9Ccomment out=E2=80=9D section=
s of it.
]]

This point about beginning sentences only on new input lines _is_
missing from groff_man_style(7).  As noted in the groff 1.22.4 NEWS
file:

o ... groff_man(7) has been expanded and largely rewritten ... to be
  more helpful and accessible to man page writers who may never read any
  other groff documentation.

groff_man_style(7) is now fulfilling this role, since a quick reference
for experienced man page writers remains desirable.  (I avoid letting
the two drift out of sync by generating both from an m4 master
document.)

I've been dithering over writing a new introductory section just for
groff_man_style(7) to present an example of a partial man page and use
it to explain typesetting terms that are inescapable even in the reduced
domain of man pages: breaking, filling, adjustment, hyphenation, and the
notorious matter of supplementary inter-sentence space.

As you will have observed, when I write in a hurry, I write a lot.  The
foregoing notional material needs to be written well, and that means
taking the time to cook the fat off.

Regards,
Branden

[1] https://rhodesmill.org/brandon/2012/one-sentence-per-line/

--yqwvayrvd7btdzjj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmI3P8kACgkQ0Z6cfXEm
bc6aYxAAjnKc9ChGBEeHVn1fhpsUuvfyUjbY532CbtIL2L4hqZ40sylX/mbsTree
yOH8zmM7KP8LoYcqWMPxcav+AeB8ZR0PHOrVBCTx8lGxWt9MhWuVv7AWC48UQAjr
GGLBabMbT5WxJ9Vy1jjMH53VwSNIjOneWAVU6hgaDkM6hhyK4sMBjoBPQp3XjroG
g4VC1etm7uWLGnNwACAazry+iSubA8zXr/xL8HmZRNytX0QOlEP9RRjYRm5XqKoK
IJ+eNsWs1wnAImAKI//ASvKqdRYuAHYWRprIcXFXQESRpKaMxYFs/9nPaWycvTB0
8Zg+vH9Kt9NXjV3aB7Vjtt3e8BYxyAPmu5dPYt/DGoqeEyC7ceJKL89DYPQ7ey9A
P4UhkGil3AO0Q4IHhLxN1SmueSKBZBIFUJ8y419CDtJIYLXzS6aWlJPU0wgVf9fG
Fr1Tqaany0UfoB3RbkOkLwALNA0KVDYcHw2bHLlRNZ6FXxE9gsFwB1KEQpz6/JPa
JleYMpAn/BNkAi33kQ4quimxjoFZeFEq7LSd7mSDO6SQmYvZzqKaCmwWdBozzrMf
CWnSX5FYPsKhJCMciCpzFUjKOe/y4iaGdcHT3xKEQoOZyzSWA/1Cws1eEBwplEP7
m4Jl5h3wSy2avWHrosPxPtrTbWefx1HJDcTAqDSMZ3VdYFaWvS0=
=ucPo
-----END PGP SIGNATURE-----

--yqwvayrvd7btdzjj--
