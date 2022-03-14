Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CFD464D78F7
	for <lists+linux-man@lfdr.de>; Mon, 14 Mar 2022 01:53:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234979AbiCNAyP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Mar 2022 20:54:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235341AbiCNAyN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Mar 2022 20:54:13 -0400
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 85A84632F
        for <linux-man@vger.kernel.org>; Sun, 13 Mar 2022 17:53:04 -0700 (PDT)
Received: by mail-pl1-x62b.google.com with SMTP id n15so12223927plh.2
        for <linux-man@vger.kernel.org>; Sun, 13 Mar 2022 17:53:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=vMvwT61tfPYZpoZcessHKJIoU0x/JSEBdy4WW/hEB3c=;
        b=PUuGoxtxH5MyK9u5SV+WlfRbd8Vso+rD+AHrn8NBCVYajoaLdHDwcbMbUgO2IYA3aZ
         AA3RXfsWRUAT5WiMSd+Gf9uyiKfG3AGJWTwEq0s0yCpZ1sIZ2LVBR61ehmKx5GtKTXE0
         dEOn+FqXGCWsxcmZak9lF5ZozbEFOFWkh1Zu9v9gOuiWuX40Uu1qiGJbfpXRyJUtYxz/
         cfZFJwPImsMW+Oxdr1fX9OxmF7UhcF5EhJs40FH1Ofdmt8u9FU9XD0wr7qVAbtGlXzh8
         7bVzMirz+pDZWxR67SacLRysLYDSCz57dpoTVAlxWLvSxOOr99K4towdsDsfQg0eBWdQ
         xiHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=vMvwT61tfPYZpoZcessHKJIoU0x/JSEBdy4WW/hEB3c=;
        b=vbDa/u+041RhiVs3+Ra3zy0IHKhRQoAruVxGzRBo2QX7Anyza6iChA22ShhwGL3plu
         2YXc09VJR2qSnC7Yq5C/e8gZUS+qq5SQ+x84kTuc2m1s5PW+ThPu4jtVqILgLVf8yJkx
         k/eEtEfuaDjoQMVnalnlWD+NWlsfruwtHX6oXAWUdbTUsjOQ8HpSken9e3KVB4WxDjFr
         Z6qefZP5l5GeU24OselGKqXSI+1bWT8EWcbHalvXW511KyYE9zZMV1tw5usEHJpNJqow
         OPQQ7jIjBMiJwpC7g6eTmryNm7/KeV9A80CCBkGfoUF0PRWP/t4K/RtG2Wp+OUr8WtPd
         1QPA==
X-Gm-Message-State: AOAM5315n3coipmwdNx9DlYICHwk7WxpZ7UMSMKkmO8amAp70hP+ZKGj
        t9HuHBzRM5HqXY3YS8bDQQc=
X-Google-Smtp-Source: ABdhPJxTnzK19DCz8aafcibIqaKDD5vNIPZJYWgg9z46LmucaHGJSjXBlcNf8lfrFaI2J0wExSGiTw==
X-Received: by 2002:a17:902:e844:b0:151:f805:30ee with SMTP id t4-20020a170902e84400b00151f80530eemr20931576plg.33.1647219183912;
        Sun, 13 Mar 2022 17:53:03 -0700 (PDT)
Received: from localhost.localdomain ([1.145.18.125])
        by smtp.gmail.com with ESMTPSA id w204-20020a627bd5000000b004f6f70163e8sm17096343pfc.31.2022.03.13.17.53.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Mar 2022 17:53:03 -0700 (PDT)
Date:   Mon, 14 Mar 2022 11:52:59 +1100
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mtk.manpages@gmail.com, mario.blaettermann@gmail.com,
        linux-man@vger.kernel.org
Subject: Re: Issue in man page ascii.7.po
Message-ID: <20220314005258.fxidkcogt7epsvci@localhost.localdomain>
References: <20220313123422.GA22388@Debian-50-lenny-64-minimal>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="mj7r5vhaf7f6oxro"
Content-Disposition: inline
In-Reply-To: <20220313123422.GA22388@Debian-50-lenny-64-minimal>
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


--mj7r5vhaf7f6oxro
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Helge,

At 2022-03-13T13:34:22+0100, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    In the right table, please add \& markup for end of sentence ch=
aracters (? ! .) to get proper formatting in other locales. Thanks!

Specifically, what happens is that if the additional inter-sentence
space amount (set with the `ss` request) is not the same as the
inter-word space amount, the columnation of this "table" (not a tbl(1)
table) gets thrown off.

This is an area that has seen significant clarification in the groff
Texinfo manual and other documentation since the 1.22.4 release, so I
ask the reader's indulgence while I quote it.

 -- Request: .ss word-space-size [additional-sentence-space-size]
 -- Register: \n[.ss]
 -- Register: \n[.sss]
     Set the sizes of spaces between words and sentences.(1)  (*note
     Manipulating Filling and Adjustment-Footnote-1::) Their units are
     twelfths of the space width of the current font.  Initially both
     the WORD-SPACE-SIZE and ADDITIONAL-SENTENCE-SPACE-SIZE are 12.
     Negative values are not permitted.  The request is ignored if there
     are no arguments.

     The first argument, the inter-word space size, is a minimum; if an
     output line undergoes adjustment, such spaces may increase in
     width.

     The optional second argument sets the amount of additional space
     separating sentences on the same output line.  If omitted, this
     amount is set to WORD-SPACE-SIZE.

     The read-only registers '.ss' and '.sss' hold the values of minimal
     inter-word space and additional inter-sentence space, respectively.
     These parameters are associated with the environment (*note
     Environments::), and rounded down to the nearest multiple of 12 on
     terminal output devices.

     Additional inter-sentence spacing is used only if the output line
     is not full when the end of a sentence occurs in the input.  If a
     sentence ends at the end of an input line, then both an inter-word
     space and an inter-sentence space are added to the output; if two
     spaces follow the end of a sentence in the middle of an input line,
     then the second space becomes an inter-sentence space in the
     output.  Additional inter-sentence space is not adjusted, but the
     inter-word space that always precedes it may be.  Further input
     spaces after the second, if present, are adjusted as normal.
[...]
   (1) *Note Filling:: and *note Sentences:: for the definitions of word
and sentence boundaries, respectively.

> "   2 3 4 5 6 7       30 40 50 60 70 80 90 100 110 120\n"
> " -------------      ---------------------------------\n"
> "0:   0 @ P \\` p     0:    (  2  E<lt>  F  P  Z  d   n   x\n"
> "1: ! 1 A Q a q     1:    )  3  =3D  G  Q  [  e   o   y\n"
> "2: \" 2 B R b r     2:    *  4  E<gt>  H  R  \\e  f   p   z\n"
> "3: # 3 C S c s     3: !  +  5  ?  I  S  ]  g   q   {\n"
> "4: $ 4 D T d t     4: \"  ,  6  @  J  T  \\(ha  h   r   |\n"
> "5: % 5 E U e u     5: #  -  7  A  K  U  _  i   s   }\n"
> "6: & 6 F V f v     6: $  .  8  B  L  V  \\`  j   t   \\(ti\n"
> "7: \\(aq 7 G W g w     7: %  /  9  C  M  W  a  k   u  DEL\n"
> "8: ( 8 H X h x     8: &  0  :  D  N  X  b  l   v\n"
> "9: ) 9 I Y i y     9: \\(aq  1  ;  E  O  Y  c  m   w\n"
> "A: * : J Z j z\n"
> "B: + ; K [ k {\n"
> "C: , E<lt> L \\e l |\n"
> "D: - =3D M ] m }\n"
> "E: . E<gt> N \\(ha n \\(ti\n"
> "F: / ? O _ o DEL\n"

The piece of ascii(7) quoted above renders as expected if none of the
groff localization macro files are loaded, and if the user/administrator
has not changed the additional inter-sentence space amount in "troffrc"
or "man.local"--but doing so is supported.  A common preference, and one
shared by the Czech, German, French, Italian[1], and Swedish groff
localization files, is to set additional inter-sentence space to zero
with `.ss 12 0`.

Here is the result.

   Tables                                          =E2=94=82
       For convenience, below are more compact tables in hex and
       decimal.

          2 3 4 5 6 7       30 40 50 60 70 80 90 100 110 120
        -------------      ---------------------------------
       0:   0 @ P ` p     0:    (  2  <  F  P  Z  d   n   x
       1: ! 1 A Q a q     1:    )  3  =3D  G  Q  [  e   o   y
       2: " 2 B R b r     2:    *  4  >  H  R  \  f   p   z
       3: # 3 C S c s     3: ! +  5  ? I  S  ]  g   q   {
       4: $ 4 D T d t     4: "  ,  6  @  J  T  ^  h   r   |
       5: % 5 E U e u     5: #  -  7  A  K  U  _  i   s   }
       6: & 6 F V f v     6: $  . 8  B  L  V  `  j   t   ~
       7: ' 7 G W g w     7: %  /  9  C  M  W  a  k   u  DEL
       8: ( 8 H X h x     8: &  0  :  D  N  X  b  l   v
       9: ) 9 I Y i y     9: '  1  ;  E  O  Y  c  m   w
       A: * : J Z j z
       B: + ; K [ k {
       C: , < L \ l |
       D: - =3D M ] m }
       E: . > N ^ n ~
       F: / ? O _ o DEL

(Yes, there is a stray pipe symbol on the same line as the subsection
heading.[2])

I've confirmed that Helge's solution works.  In principle, it is fragile
to locales that have other sentence-ending characters, but I know of no
such locales--none are extant in groff, pending, or requested.
Therefore I'm +1 on this.

Perhaps better changes would be to (1) have the Linux man-pages start
using groff's EX/EE macros for this and (2) change groff's EX/EE macros
to start doing what everyone already thinks they do, and shut off
additional inter-sentence space (temporarily).  These would be
supplemental to the existing proposed fix.  Having the additional `\&`
escape sequences will cause no harm, and might be salutary examples.

I noticed just last night that the iso-8859*(7) man pages have a much
worse problem; they use raw 8-bit characters in the input, which leads
to UTF-8 mojibake and/or confusing and incorrect character names for the
glyphs that appear when you render one ISO 8859 encoding's page on
another.  (man-db man(1) hides this problem, possibly by using its
manconv(1) utility--but man pages should be written so that troff -man
works.)  The correct thing to do is use groff special character escape
sequences; these _name_ the desired glyph and are more robust to
character encoding conversions (albeit requiring use of preconv(1)).

Anyone have thoughts on any of the above?

Regards,
Branden

[1] forthcoming in groff 1.23
[2] This appears to be because the preceding tbl(1) table is too wide
    for 78 columns.  I'll have a look and see if I can tweak it.  Or
    this may be a tbl(1) bug; several have been fixed over the past
    couple of years[3].
[3] https://savannah.gnu.org/bugs/index.php?go_report=3DApply&group=3Dgroff=
&func=3D&set=3Dcustom&msort=3D0&report_id=3D101&advsrch=3D0&status_id=3D3&r=
esolution_id=3D1&submitted_by=3D0&assigned_to=3D0&category_id=3D109&bug_gro=
up_id=3D0&severity=3D0&summary=3D&details=3D&sumORdet=3D0&history_search=3D=
0&history_field=3D0&history_event=3Dmodified&history_date_dayfd=3D14&histor=
y_date_monthfd=3D3&history_date_yearfd=3D2022&chunksz=3D50&spamscore=3D5&bo=
xoptionwanted=3D1#options

--mj7r5vhaf7f6oxro
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmIukdwACgkQ0Z6cfXEm
bc4DoA//XRQK6V/ka/SSHD96ATkY2wLi1nlqnUpcd7DUt9UAmPiDzKA06r/Q+Vd9
tXGR1bDj7QV31odkoyK68y/ZSMTTh/VfW0pK0Fj1phOMmPSBudBykxlUtDWQORud
lALD9fy1yttevOFtbDxUa5A1o2/j3LOEK1ST31GlRylBuNAk+7FnoFQJSAjLOYQJ
3xq+V7jGeEmAUksPLlL5rtSf43p8kUQHu+4T2706PD4EbrcqWF/ggrQBn8vh7HXm
cNZMKJ0AmRgnRO+l4tr1Y3QAG6YhAl51Grg8jYDK8fGfTUUijLEvZCGdXDNnJDQh
7gcB5ySu2DVT2Wyzjwri0kXfv8pzWLZcsF1MVXPtb9ZOYgu0Vy24LdojaVeQhx0X
jUT2sJe8sUM76wpKrU2PTa5XdTbwvx8LfLu/0MCRCWl6mL/akYGzCmnEGMFgyLKJ
zzsImMorng2Dzyzt+oz5cur1FoheLmW5dqQmG2OICGNNo/zKjrby3cqN6FTF/IWg
jElQbUnbTzmCgBkl3y39yLalWt+brvvZHHamvDNj9ISkW4SqO9YwXCfjiH9zcvvU
sBz4GNoncByXPq94/WAAsce9xXz8gH/b1P89LjXDKuTrWb18GoNfb5pDShRjmCTq
EyZN2LRrtcvnU2jsFlWHCijTFVmfRAW/zTwbV8D+AlxjAW2WsVc=
=PnkN
-----END PGP SIGNATURE-----

--mj7r5vhaf7f6oxro--
