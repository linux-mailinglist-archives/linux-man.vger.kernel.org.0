Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 68487639843
	for <lists+linux-man@lfdr.de>; Sat, 26 Nov 2022 22:19:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229487AbiKZVTw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 26 Nov 2022 16:19:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38842 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229453AbiKZVTw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 26 Nov 2022 16:19:52 -0500
Received: from mail-oa1-x33.google.com (mail-oa1-x33.google.com [IPv6:2001:4860:4864:20::33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 054B412D2D
        for <linux-man@vger.kernel.org>; Sat, 26 Nov 2022 13:19:51 -0800 (PST)
Received: by mail-oa1-x33.google.com with SMTP id 586e51a60fabf-12c8312131fso8936268fac.4
        for <linux-man@vger.kernel.org>; Sat, 26 Nov 2022 13:19:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=i0Z6ouWuR4IpgY4W8Pze4foGuUHFG7jSLjUBUe2jks4=;
        b=abWhYvtD1XSKqnF7LlgLyY5zAczqzJRb64j6SqQaQW1ozGBlQjldRYej5UYpXdpHuC
         UZYHie1eWI+OCTd4TOoDGArT84wGq25JJJWXG2UQ785H1sJOg0eJZ780t6NdKdTPLuaV
         JxWMRb5Glf46Don8DWRkKzX07Zm794xGXyKbNH/DdLR+P6VzOfdvrNgQ2odZ1Lxl1QUC
         foUVWqQHhYuT0pwEVdLccd5Gj/VfP7sbHyMzixycQyB//5ibJ/yp5Ib9T4ZBm906TIDz
         V8haBkdKuxrmQn2yWsZz7wqJq8Casmcc+VQxRY/AvA0yoIRnnPb4gdpynN1wrUomlvbx
         reAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i0Z6ouWuR4IpgY4W8Pze4foGuUHFG7jSLjUBUe2jks4=;
        b=fSF6Y9xnMfZktK9/BBuJMI+z/Onov5+JHnsgfA258u5dKwgM/9e5+Z3nfHYdHDDhAU
         AonoK9jWaWp1o0hiLcpInec00DrFsphS00RepHXuvmHxE8rKkHBQxCREhGD1hOtte1Kw
         42fOjCnV2cSQ2HukHlLAE/aw4qfjrDoKFaoPr2gJWcrwMcr0Yb2naVz8BfYixw760qGK
         CtpdyQicLMg7R3uKLqGtkuh6S1B4EY5qj6RCCI3hvtvZpD+IkoHpbk7vVwfYGk7JKufN
         o7cBtMQvTBQXkZH5PVik73sb/NRGwfeermG6M/TB4nbmSK+IKQJDRXDlX6EE+aXcurAF
         P1pA==
X-Gm-Message-State: ANoB5plL0V+3v8DbfSS6JT3g6VClxylwge3jEYX9GmWY67xSO4lmDA1q
        yDrEs0zys+PeyxqI4yZ8UDw=
X-Google-Smtp-Source: AA0mqf77UVlznS+AePKEpHRHtlVq9WJGwNMF+zxAumGCNJi5l87puN8BgvQK4dy4s6edQFJEWCobtQ==
X-Received: by 2002:a05:6871:409b:b0:143:6ecc:c97d with SMTP id kz27-20020a056871409b00b001436eccc97dmr5674751oab.28.1669497590255;
        Sat, 26 Nov 2022 13:19:50 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id c13-20020a056830348d00b0066c49ce8b77sm3035763otu.77.2022.11.26.13.19.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Nov 2022 13:19:49 -0800 (PST)
Date:   Sat, 26 Nov 2022 15:19:47 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Paul Eggert <eggert@cs.ucla.edu>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
        Geoff Clare <gwc@opengroup.org>, groff@gnu.org,
        Time zone mailing list <tz@iana.org>
Subject: Re: [PATCH v2 3/4] zic.8: Use correct escape sequences instead of
 special characters
Message-ID: <20221126211947.wzhb6zopmbsxqapj@illithid>
References: <20221123134827.10420-1-alx@kernel.org>
 <20221123134827.10420-3-alx@kernel.org>
 <2dc9b4ee-83c4-9a23-82d5-fd314efd648d@cs.ucla.edu>
 <f8fa5d28-034c-4080-98d7-a142f467b45e@cs.ucla.edu>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="q7vlrhzz6uicck6a"
Content-Disposition: inline
In-Reply-To: <f8fa5d28-034c-4080-98d7-a142f467b45e@cs.ucla.edu>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--q7vlrhzz6uicck6a
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Paul,

At 2022-11-25T18:31:02-0800, Paul Eggert wrote:
> On 2022-11-23 10:43, Paul Eggert wrote:
> > I installed that
> Further testing showed that the installed patch doesn't work with
> traditional troff, which doesn't support groff escape sequences like
> \(aq.

I think this patch goes too far in the retrograde direction.

\(xx, where xx is any two characters, is not a groff extension.  It
comes from Ossanna troff all the way back in the mid-1970s.

It is a special character escape sequence; a groff way of spelling it
is \[xxx] where xxx can be of any nonzero length (but cannot contain a
closing square bracket).

The repertoire of supported special character identifiers varies by
implementation and, after Kernighan's rewrite of troff circa 1980 for
device-independence, by output device.  Nevertheless, for
portability/backward compatibility, a set of them are very widely
supported.  These include three that your patch takes out, \(ha, \(ga,
and \(ti.  Replacing these with ASCII characters will _not_ produce
correct typography on typesetting output devices.

I would attach scans of Tables I and II from "NROFF/TROFF User's
Manual", the version dated 1976, published with Volume 2 of the Unix
Programmer's Manual (1979), and reprinted by Holt, Reinhart, and Winston
in 1983, but the linux-man list rejects all attachments bigger than a
breadbox, so I will ask for your trust (or ask me for it privately).

Those tables illustrate the glyph repertoire of Ossanna troff and the
special character identifiers that were implemented.

groff_char(7) from groff 1.22.4 and earlier marks the special character
identifiers you can expect to be portable (with "***" in its listings),
and for 1.23 I have added a "History" section to the page which
addresses most of the thousand questions I've asked over the past few
years while trying to learn this stuff.  I'll put that in a footnote.[1]

> To fix this I installed the equivalent of the attached further patch to
> TZDB.

I therefore propose the following snippet instead, also taking into
account Solaris 10 troff's poor handling of unsupported font selections
in nroff.

=2Eq + .
To allow for future extensions,
an unquoted name should not contain characters from the set
=2Eie \n(.g .q \f(CR!$%&\(aq()*,/:;<=3D>?@[\e]\(ha\(ga{|}\(ti\fP .
=2Eel .ie t .q \f(CW!$%&'()*,/:;<=3D>?@[\e]\(ha\(ga{|}\(ti\fP .
=2E    el   .q !$%&'()*,/:;<=3D>?@[\e]\(ha\(ga{|}\(ti .
=2ETP
=2EB FROM
Gives the first year in which the rule applies.

What do you think?

Regards,
Branden

[1] (Much UTF-8 follows.)

History
    A consideration of the typefaces originally available to AT&T nroff
    and troff illuminates many conventions that one might regard as
    idiosyncratic fifty years afterward.  (See section =E2=80=9CHistory=E2=
=80=9D of
    roff(7) for more context.)  The face used by the Teletype Model 37
    terminals of the Murray Hill Unix Room was based on ASCII, but
    assigned multiple meanings to several code points, as suggested by
    that standard.  Decimal 34 (") served as a dieresis accent and
    neutral double quotation mark; decimal 39 (') as an acute accent,
    apostrophe, and closing (right) single quotation mark; decimal 45
    (-) as a hyphen and a minus sign; decimal 94 (^) as a circumflex
    accent and caret; decimal 96 (`) as a grave accent and opening
    (left) single quotation mark; and decimal 126 (~) as a tilde accent
    and (with a half=E2=80=90line motion) swung dash.  The Model 37 bore an
    optional extended character set offering upright Greek letters and
    several mathematical symbols; these were documented as early as the
    kbd(VII) man page of the (First Edition) Unix Programmer=E2=80=99s Manu=
al.

    At the time Graphic Systems delivered the C/A/T phototypesetter to
    AT&T, the ASCII character set was not considered a standard basis
    for a glyph repertoire by traditional typographers.  In the stock
    Times roman, italic, and bold styles available, several ASCII
    characters were not present at all, nor was most of the Teletype=E2=80=
=99s
    extended character set.  AT&T commissioned a =E2=80=9Cspecial=E2=80=9D =
font to
    ensure no loss of repertoire.

    A representation of the coverage of the C/A/T=E2=80=99s text fonts foll=
ows.
    The glyph resembling an underscore is a baseline rule, and that
    resembling a vertical line is a box rule.  In italics, the box rule
    was not slanted.  We also observe that the hyphen and minus sign
    were already =E2=80=9Cde=E2=80=90unified=E2=80=9D by the fonts provided=
; a decision whither
    to map an input =E2=80=9C-=E2=80=9D therefore had to be taken.

           =E2=94=8C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=90
           =E2=94=82A B C D E F G H I J K L M N O P Q R S T U V W X Y Z =E2=
=94=82
           =E2=94=82a b c d e f g h i j k l m n o p q r s t u v w x y z =E2=
=94=82
           =E2=94=820 1 2 3 4 5 6 7 8 9 fi fl ffi ffl                   =E2=
=94=82
           =E2=94=82! $ % & ( ) =E2=80=98 =E2=80=99 * + - . , / : ; =3D ? [=
 ] =E2=94=82           =E2=94=82
           =E2=94=82=E2=80=A2 =E2=96=A1 =E2=80=94 =E2=80=90 _ =C2=BC =C2=BD=
 =C2=BE =C2=B0 =E2=80=A0 =E2=80=B2 =C2=A2 =C2=AE =C2=A9                    =
     =E2=94=82
           =E2=94=94=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=98

    The special font supplied the missing ASCII and Teletype extended
    glyphs, among several others.  The plus, minus, and equals signs
    appeared in the special font despite availability in text fonts =E2=80=
=9Cto
    insulate the appearance of equations from the choice of standard
    [read: text] fonts=E2=80=9D=E2=80=94a priority since troff was turned t=
o the task of
    mathematical typesetting as soon as it was developed.

    We note that AT&T took the opportunity to de=E2=80=90unify the
    apostrophe/right single quotation mark from the acute accent (a
    choice ISO later duplicated in its 8859 series of standards).  A
    slash intended to be mirror=E2=80=90symmetric with the backslash was al=
so
    included, as was the Bell System logo; we do not attempt to depict
    the latter.

        =E2=94=8C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=90
        =E2=94=82=CE=B1 =CE=B2 =CE=B3 =CE=B4 =CE=B5 =CE=B6 =CE=B7 =CE=B8 =
=CE=B9 =CE=BA =CE=BB =CE=BC =CE=BD =CE=BE =CE=BF =CF=80 =CF=81 =CF=83 =CF=
=82 =CF=84 =CF=85 =CF=95 =CF=87 =CF=88 =CF=89         =E2=94=82
        =E2=94=82=CE=93 =CE=94 =CE=98 =CE=9B =CE=9E =CE=A0 =CE=A3 =CE=A5 =
=CE=A6 =CE=A8 =CE=A9                                     =E2=94=82
        =E2=94=82" =C2=B4 \ ^ _ ` ~ / < > { } # @ + =E2=88=92 =3D =E2=88=97=
                       =E2=94=82
        =E2=94=82=E2=89=A5 =E2=89=A4 =E2=89=A1 =E2=89=88 =E2=88=BC =E2=89=
=A0 =E2=86=91 =E2=86=93 =E2=86=90 =E2=86=92 =C3=97 =C3=B7 =C2=B1 =E2=88=9E =
=E2=88=82 =E2=88=87 =C2=AC =E2=88=AB =E2=88=9D =E2=88=9A =E2=80=BE =E2=88=
=AA =E2=88=A9 =E2=8A=82 =E2=8A=83 =E2=8A=86 =E2=8A=87 =E2=88=85 =E2=88=88 =
=E2=94=82
        =E2=94=82=C2=A7 =E2=80=A1 =E2=98=9C =E2=98=9E | =E2=97=8B =E2=8E=A7=
 =E2=8E=A9 =E2=8E=AB =E2=8E=AD =E2=8E=A8 =E2=8E=AC =E2=8E=AA =E2=8C=8A =E2=
=8C=8B =E2=8C=88 =E2=8C=89                         =E2=94=82
        =E2=94=94=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=98

    One ASCII character as rendered by the Model 37 was apparently
    abandoned.  That device printed decimal 124 (|) as a broken vertical
    line, like Unicode U+00A6 (=C2=A6).  No equivalent was available on the
    C/A/T; the box rule \[br], brace vertical extension \[bv], and =E2=80=
=9Cor=E2=80=9D
    operator \[or] were used as contextually appropriate.

    Devices supported by AT&T device=E2=80=90independent troff exhibited so=
me
    differences in glyph detail.  For example, on the Autologic APS=E2=80=
=905
    phototypesetter, the square \(sq became filled in the Times bold
    face.

[The lowercase Greek letters in the last boxed table above render in
italics where feasible; it is not when pasting into a plain text email.]

--q7vlrhzz6uicck6a
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmOCgusACgkQ0Z6cfXEm
bc4fbBAAo8sis6CHaf+DNNsVWNktrQa43dnOMkqmJ/W8sITyATBoPL22te6NztqX
L7N0an8KG3/z07YNy+48LqkfMQi7arGUQN+OY//7kLfYUMqGMnlgi69AyNkI4P9v
n5ch/aveXKZhzhmLZvcjgWog8Gxh4r+Bbu6IGoRx3dJUaDjXiS2ySK34RvdeHF4X
Sbw3GA9Nu9VcO21UD3+/HqdHPX0cFe2jzdDncrZPDWXOLQ4d+07JWQkQ+kYjx+E0
TQ9MK70MZ77j46hzYJMsMH1M1QHg1ecrdONNd4J4JP1vwF78PDY8LM069hmHWjQR
hTUh+pyC3YYVSV38qfldxIQjIc7Sht75x9DLiHtnTFaKWlymIII7dJ/p74Nf3T6B
yl0P/Zvr220jHG5aoSfpnPizo+Q3K4ZI2Et+lS38Uui0t0bP5JZ0wNaksEU6/CXF
KXRl9jeYLd0AifAKeDhPc3PW8HRSDeWz4AaorBEpZUQpqIxAhTkWEKiYUnSIO1kC
Tb4Ubt7vZAzOKYFUy/nen/cyMm5Zbdbk6HVpbbQeVYD0rdaEGcdUQmmJ9sqyuz3M
b1/sZqyXSLIcGDJwWQFh2tMipY5IIU8YMegz5d2YlI1hKb4uXwg8Tqgi8q3l+O1+
slZdObhfTelL6DrH/ZlvVzUjoRA889evYMGYVcVyqbQPHOVXZy0=
=LCzr
-----END PGP SIGNATURE-----

--q7vlrhzz6uicck6a--
