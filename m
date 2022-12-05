Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 38E0F642F82
	for <lists+linux-man@lfdr.de>; Mon,  5 Dec 2022 18:55:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231715AbiLERzw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Dec 2022 12:55:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48982 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232499AbiLERzd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Dec 2022 12:55:33 -0500
Received: from mail-oa1-x2a.google.com (mail-oa1-x2a.google.com [IPv6:2001:4860:4864:20::2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F38663E8
        for <linux-man@vger.kernel.org>; Mon,  5 Dec 2022 09:55:06 -0800 (PST)
Received: by mail-oa1-x2a.google.com with SMTP id 586e51a60fabf-1322d768ba7so14362562fac.5
        for <linux-man@vger.kernel.org>; Mon, 05 Dec 2022 09:55:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Zk0mIUfKW6eSQ+Y6VSK1hjlX/HIQ7qtzUzNIGjEpgis=;
        b=MSvbZWhc05t5QpjRH/inWh8AqfHIn0f8fACEMaFurfBnnvNTtBRD4RCdV5/BsLfqXY
         hk0XwVNaUjVuPL1hfhrGCKV576CdDMHFQYTrtIZUiUZLveajDeI/kbB/6Ztc06A9YxIO
         sBa1Y0jImxOXxkrlmBLWv17NwqNT/Whb3QfyZY99TOHFz1UTCVr8nPKP0TH51hDKJeJ8
         ZIu/lRufaiDyxXqs9mLWo6ILxF2XB2cJa+h3ZCfJTVzNGurO0/0f2zJagWji04HOrdw3
         YerhEBejvOfMAvxYG/r1yqGDkXQbIptRXkqn1OzC/XX2I+i8NOz0f6Tg/HFuB69SQA9V
         VYxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Zk0mIUfKW6eSQ+Y6VSK1hjlX/HIQ7qtzUzNIGjEpgis=;
        b=qnyWXek4gjCf1b6ZjVZQU6byDkMfQbQKHWLLVSGjWtEbSvz9oLkiDAwwjq9t1vzoxK
         pNI5n+mRct8yv+KR6FW3H/RvFP9ZAjq2KFyRyJ5Ahfve6UDRoiZBcOutyAXm7hvheLC8
         1RIPEuQfUM9LCYD7PNa3mVJbk3+EbUWMfvD/wv+Y4yU/AL313fjGNQWf6av5xeHwDGXM
         IS152vczZXLYCJH6T9FbMdPo+Y2bTebqm26scx2Z/yxBAwzU6ufQUGiD3fdr03F3OAga
         V63JCkBPXJrW1grRcUS41GAJOljQpjwluBHdZIA0udlhOwZVmuZATZzWKizxHUMEE727
         ricg==
X-Gm-Message-State: ANoB5pnroaWpg/QZD1OLS1Vi6kWPluFUzFHbtM8uWINbnatgam0LU2CF
        JeqLZWuQ9QjSmdfMzzRYE3ZV7eVTiKI=
X-Google-Smtp-Source: AA0mqf4bVp/pLEFcupHu6vS2i0OQHzOJFJUryS69jo4andnvndS8/oPKzAGOroZJZjPsi6g6TTsMAg==
X-Received: by 2002:a05:6870:f616:b0:12d:4244:43d0 with SMTP id ek22-20020a056870f61600b0012d424443d0mr38165789oab.207.1670262905768;
        Mon, 05 Dec 2022 09:55:05 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id f13-20020a9d6c0d000000b006704589eb54sm1135795otq.74.2022.12.05.09.55.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Dec 2022 09:55:05 -0800 (PST)
Date:   Mon, 5 Dec 2022 11:55:03 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page wcsncpy.3
Message-ID: <20221205175503.ts7a3agzslnoycqb@illithid>
References: <20221204090724.GA1249@Debian-50-lenny-64-minimal>
 <e358f853-93e5-a30a-2d59-1115d64a61af@gmail.com>
 <20221205170935.GE5000@Debian-50-lenny-64-minimal>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="r2ecxitfgvt7zc6k"
Content-Disposition: inline
In-Reply-To: <20221205170935.GE5000@Debian-50-lenny-64-minimal>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--r2ecxitfgvt7zc6k
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Helge,

At 2022-12-05T18:09:35+0100, Helge Kreutzmann wrote:
> Hello Alejandro,
> On Sun, Dec 04, 2022 at 09:44:47PM +0100, Alejandro Colomar wrote:
> > On 12/4/22 10:07, Helge Kreutzmann wrote:
> > > Without further ado, the following was found:
> > >=20
> > > Issue:    Is the "L" in the bracket (for the NULL character) correct?
> >=20
> > AFAIK, yes.  I never used it myself, but I believe L'\0' generates a "n=
ull
> > wide character".
>=20
> Just to get this clear for myself, the man page currently use quoting
> characters (not plain ''), i.e.=20
>=20
> L\\(aq\\e0\\(aq

Right.  \(aq means "write out ASCII 39 decimal (U+0027)".[0]

> And this should not be translated? Currently I translate the quotes,
> i.e. in German this is marked as:
>=20
> L=C2=BB\\e0=C2=AB
>=20
> This is probably wrong?

Yes.  You are turning this into a set of typographical quotes for
written prose, but the expression is a literal constant in the C
language and must be typed using "straight single quotes" a.k.a. ASCII
39 decimal.

L'\0' is a null wide character, that is, a null character of type
wchar_t.  The language has this because '\0' without the L prefix
already means a null character constant of CHAR_BITS width; if wchar_t
is wider than that, then there can be ambiguity with respect to what
happens to the higher-order bits in the object thus initialized.

The following compiles without warnings on my system, even with -Wall.

int main(int argc, char *argv[]) {
        wchar_t w1 =3D '\0', w2 =3D L'\0';
        printf("%d\n", (w1 + w2));
}

For me this reliably writes "0" to the standard output.

However it is conceivable, depending on the implementation, that bits 8+
of w1 come from uninitialized memory, and a large positive or negative
value would be written to stdout.

C is full of undefined and implementation-dependent behavior.  This is
what makes it go fast and break stuff.

> Is there a way to note that this quotes are not to be translated even
> though they are not printed literally but with the macro \\(aq?

Technically, in roff parlance, that is not a macro, but a special
character escape sequence.[1]

> I explicitly ask this because using macros (markup) is a clear sign
> for me that it can be translated, and thus this breaks my heuristics.

That heuristic is not reliable.  \(aq and \(dq, among other
characters,[2] will often be used in man pages to _avoid_ the output of
glyphs common in a conventional prose typography context.

groff_char(7) surveys several kinds of quotation mark.  UTF-8 follows.

  Quotation marks
    The neutral double quote, often useful when documenting programming
    languages, is also available as a special character for convenient
    embedding in macro arguments; see subsection =E2=80=9CFundamental chara=
cter
    set=E2=80=9D above.

    Output   Input   Unicode   Notes
    =E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80
    =E2=80=9E        \[Bq]   u201E     low double comma quote
    =E2=80=9A        \[bq]   u201A     low single comma quote
    =E2=80=9C        \[lq]   u201C     left double quote
    =E2=80=9D        \[rq]   u201D     right double quote
    =E2=80=98        \[oq]   u2018     single opening (left) quote
    =E2=80=99        \[cq]   u2019     single closing (right) quote
    '        \[aq]   u0027     apostrophe, neutral single quote
    "        "       u0022     neutral double quote
    "        \[dq]   u0022     neutral double quote
    =C2=AB        \[Fo]   u00AB     left double chevron
    =C2=BB        \[Fc]   u00BB     right double chevron
    =E2=80=B9        \[fo]   u2039     left single chevron
    =E2=80=BA        \[fc]   u203A     right single chevron

Programming languages frequently attach important semantics to \(aq and
\(dq (ASCII ' and "), so it is important not to subject these to natural
language quotation mark transformations.

Because of their specialized nature, this also means that if you see a
man page using them in prose, the page is wrong.  You should translate
the quotation marks as if you were seeing \(lq, \(rq, \(oq, \(cq, and so
forth.

Here's an example of erroneous input.

After reading from /proc/$$/mem, Anne\(aqs mom told her not to
\(dqparty\(dq.

The foregoing should be recast to use conventional punctuation and
typographer's quotes.

After reading from /proc/$$/mem, Anne's mom told her not to
\(lqparty\(rq.

The above uses en_US quotation; en_GB practice is different.

After reading from /proc/$$/mem, Anne's mom told her not to
\(oqparty\(cq.

=2E..but experienced readers of English generally have little trouble
switching conventions.[2]

Regards,
Branden

[0] Technically, the glyph corresponding to it, and this will do the
    right thing even on OS/390 Unix, which uses code page 1047 (EBCDIC).
    There is a way to ask for glyph index 39 in the current font, but a
    man page should never fool with that.

[1] Once a groff user is good and comfortable with the distinction,
    someone comes along and does this.

    https://git.savannah.gnu.org/cgit/groff.git/tree/src/roff/troff/node.cp=
p#n5029

    This is why manufacturers of voodoo dolls will never starve.

[2] From groff_man_style(7):

   =E2=80=A2 Some ASCII characters look funny or copy and paste wrong.
        On devices with large glyph repertoires, like UTF=E2=80=908=E2=80=
=90capable
        terminals and PDF, several keyboard glyphs are mapped to code
        points outside the Unicode basic Latin range because that
        usually results in better typography in the general case.  When
        documenting GNU/Linux command or C language syntax, however,
        this translation is sometimes not desirable.

        To get a =E2=80=9Cliteral=E2=80=9D...   ...should be input.
        =E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80
                            '   \(aq
                            -   \-
                            \   \(rs
                            ^   \(ha
                            `   \(ga
                            ~   \(ti
        =E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80

        Additionally, if a neutral double quote (") is needed in a macro
        argument, you can use \(dq to get it.  You should not use \(aq
        for an ordinary apostrophe (as in =E2=80=9Ccan=E2=80=99t=E2=80=9D) =
or \- for an ordinary
        hyphen (as in =E2=80=9Cword=E2=80=90aligned=E2=80=9D).  Review subs=
ection =E2=80=9CPortability=E2=80=9D
        above.

[3] The U.K. practice of dropping periods from abbreviations when the
    last letter of the abbreviated word remains intact is far more
    distracting and productive of ambiguity.

--r2ecxitfgvt7zc6k
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmOOMHAACgkQ0Z6cfXEm
bc5uCg/+IwaTRQx0RxENGxIwrXQC7x/jBlf32IC+DfHr9+NyCVZqv0XApOhtz4TO
mm+E+WnWIwQt6Ls+SpsYcYa17yLm0WCYgKJaOJxHxoCK/0d6JmgLuToLEVWhO5+I
rmIV+H7jqVUMemm1wwD1rLVik35IMX9qPAatRcgIM9LdrA6SICeELH6l6H1ONjrc
8/AWB6oGJq1mK3wfMuHhVvITjAAfDJoV4VkicO++F9hNeIxIHpBzOH+IYwAPz5JF
TyAjb2Q+pShhil0cvZuZ3ohm/T/t8m8q/cT1M7Qg+U9/zBGK686hw5O50xE3wRQ4
DAVzU8ZC4p6rhlkQ8SZa2d9pTB1xbpAuhSOATx7WK3BUfa1TTFphwowcKa2HYPe1
sGpPQkjqVkV80pA4rSwB2CjGsyiofqc7W3RIFzFdtbqmUKp5Cns/xdeHqQvTEOZh
uMTUz7xv++FyQXamIK6JoUO6mx5UtgTDUdYQuXNovQlHZLw5Fwi0nX1znBY9spoB
cwu2omHv6yWADcMz6D7CdjJSENtuHaAnnsgCmN6J6fWgG1PmwxWvxok4oyg9LG9R
vsYxQ2LzHXDrMaE+oUYI9Ip/xjyfA1sh9E+KD0iHi/PODhG6zOtJD2irCq1ctwPf
0odcp2L+c5n1gfjqAAKK23kJvcVvIx45yTpRDplnQXTkHAKAJzQ=
=r882
-----END PGP SIGNATURE-----

--r2ecxitfgvt7zc6k--
