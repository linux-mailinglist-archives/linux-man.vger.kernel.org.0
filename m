Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2988869BB81
	for <lists+linux-man@lfdr.de>; Sat, 18 Feb 2023 20:04:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229499AbjBRTEA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 18 Feb 2023 14:04:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49322 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229472AbjBRTD7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 18 Feb 2023 14:03:59 -0500
Received: from mail-oo1-xc34.google.com (mail-oo1-xc34.google.com [IPv6:2607:f8b0:4864:20::c34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D4F1D14E8E
        for <linux-man@vger.kernel.org>; Sat, 18 Feb 2023 11:03:56 -0800 (PST)
Received: by mail-oo1-xc34.google.com with SMTP id w9-20020a4a2749000000b0051f842ba672so97687oow.4
        for <linux-man@vger.kernel.org>; Sat, 18 Feb 2023 11:03:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=x9WsaZQ1NxFobLCvR6T6aLMv9v4+YqnBoFlcMbWNXWI=;
        b=nPz2szj4JIpNT0SKQeB9OmY6sevmxJuIbBWSkrJnBrIZHJ4kTFo01w6PXbF3oGBJk1
         IXX4FAtOMwH/WZr6FRTnZS1GdLjKJNXuAOsncbjlIoVwspvRiqR+Nod6g7BnHH/RjuTj
         Yh45xg6y4XZ9HKRDs72gm31BxcfzBA91XCAnE0ppkmlk5ElaQpJWefyVxiQ9dbKqeiIx
         zu6x4GKdn2ZflSg3TRx7/95cg6oZn1NjHOiBVSuzGq4oX3Yd7eoHW1Gf8IPhTGkAp/A7
         SkMI893oqb/IEg0OXeCu2gYbyEvaQvaxv/wLgkdJoFBJ9q4kBKcYSISjMw/imBxEhesQ
         Q3sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=x9WsaZQ1NxFobLCvR6T6aLMv9v4+YqnBoFlcMbWNXWI=;
        b=fsy9HZcW+WRhvZjFpjYiA2HIKG328PDMos6CIwLyPZR1Bj1qLKcbWLiZlDuUp7BAAT
         Ht9g7rVNEUtTM+TtP332KxpiEa0bJNC0MbTcJCN9G70guxUwimL2H179+LwNHjPfKTVe
         /UPkCqsVgaEME1zjkN6oJmpeiNO5aH4FhBHsE0Ghz0ya07j82ZLBy8z1l8PiLv9L5ecK
         8FS/bM0AfbUPjlV3pLViLd30j254Oh/8nawj+mUr/zQjlpTb0Im8IIvzKHdRxxYH5X0K
         iBCTvRzb1/FD9Edn07x/V0IYWXwDVIEKJn+Kd05CZwEcnLtX+EQ7/cr5yAgWpIBtf8fy
         MWgQ==
X-Gm-Message-State: AO0yUKXYSpf4axWUVonScR/kbK5L5O/CoZKnQ89IjhuFrR3LkJVhaBC5
        QejWeOPJyQ5hA4AXX1QS1S/1rnKA+3A=
X-Google-Smtp-Source: AK7set9pHa2U6FusLDwdjlAsd398KwmlDa5C63m7pqeU29dHc6YQoziHOr5g3Ybsee9Az0Xi70n8Mw==
X-Received: by 2002:a05:6820:1a08:b0:517:3f56:d292 with SMTP id bq8-20020a0568201a0800b005173f56d292mr4588849oob.1.1676747036175;
        Sat, 18 Feb 2023 11:03:56 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id k4-20020a4aa5c4000000b0052037988717sm978342oom.4.2023.02.18.11.03.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Feb 2023 11:03:55 -0800 (PST)
Date:   Sat, 18 Feb 2023 13:03:54 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Tom Schwindl <schwindl@posteo.de>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Brian Inglis <Brian.Inglis@Shaw.ca>,
        Linux Man Pages <linux-man@vger.kernel.org>
Subject: Re: [PATCH v3 5/6] man2/chmod.2: add C digit separators to clarify
 POSIX feature release dates and long numeric digit strings
Message-ID: <20230218190354.supiu6teaby5el4l@illithid>
References: <cover.1676489380.git.Brian.Inglis@Shaw.ca>
 <4c53ab820fbbeb3f3170f8d1d81a14713f256dd9.1676489381.git.Brian.Inglis@Shaw.ca>
 <804a2b6d-e1d7-3d23-7768-d0ee4933dd68@gmail.com>
 <CQLVH6DLAYFQ.T4VQOGPPW8CP@morphine>
 <20230218180803.be44sughf62klrjw@illithid>
 <CQLWIYCOY3P2.3EHP3RAE6LJTD@morphine>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="zneefl264b4ajjzf"
Content-Disposition: inline
In-Reply-To: <CQLWIYCOY3P2.3EHP3RAE6LJTD@morphine>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--zneefl264b4ajjzf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Tom,

At 2023-02-18T18:31:25+0000, Tom Schwindl wrote:
> > Do you expect C programmers to be more likely to copy and paste from
> > the man page source document or from the rendered page (probably in
> > a terminal window, but possibly from a PDF)?
> >
>=20
> I expect them to copy & paste from the rendered page but I thought
> writing out "'" is a bit cumbersome so I refer to it as \[aq].

Ahh, that can be a bit confusing without clear context.  :D

> My "worry" with this was that new programmers could potentially
> execute a command like the following:
>=20
>   $ cc -D_POSIX_C_SOURCE=3D1993'09L test.c
>=20
> and wonder what they did wrong.

I see--that is a good point.  But I don't know that there is much the
man pages can do about that issue, apart from having a better intro(1)
page.  The scenario you imagine is an unfortunate consequence of the
grouping character WG14 selected.

New C programmers on *nix are going to have to develop some
sophistication with the POSIX shell language as well, and that will be
even more the case now--a cost of letting the Swiss win battles...

Mainly because Alex is reading, I will point out that Ada did this, and
several other aspects of numeric literals, right--40 years ago.

>> Numeric literals are all introduced by an initial digit. A
>> requirement that has long been recognized when printing numeric
>> tables is for a character to break up long sequences of digits: in
>> Ada, the underline character serves this purpose. In contrast to
>> identifiers, underlines in numeric literals do not alter the meaning,
>> so that 12_000 naturally has the same value as 12000.
>>
>> A simple sequence of digits is an integer literal written in decimal
>> notation. For other bases from 2 up to 16, the base is given first
>> and is followed by a sequence of digits enclosed by sharp characters
>> (#) or by colons (:), the colon being used as replacement character
>> for the sharp, but only when the sharp is not available. The enclosed
>> digits may include the letters A to F for bases greater than ten.
>> Thus, the conventional ways of expressing bit patterns in binary,
>> octal, or hexadecimal are provided.
>>
>> Real literals must contain a period, which represents the radix
>> point. They may be expressed in decimal notation or with other bases.
>> Finally, both integer and real literals may include the letter E
>> followed by an exponent.

http://archive.adaic.com/standards/83rat/html/ratl-02-01.html#2.1

But C programmers have long indulged in the sport of ignoring every
lesson any other programming language had to teach, whether through
careful design or blundering mistake.[1]  C'est la vie.

> But thinking about it a bit longer, copy & pasting from the rendered
> manpage might be the bigger issue.

This prospect was a major factor in my efforts to get groff's own man
pages much more fastidious in this respect, and to promulgate the usage
of appropriate special characters in man page sources, an initiative
that I'm not sure has yet taken flight, although Linux man-pages is
rapidly improving in this regard.  The real test is whether such careful
practice percolates elsewhere, where disinterest in (or outright
resentment of) writing documentation, in man(7), mdoc(7), or any other
form, is rampant.

Regards,
Branden

[1] Thompson discarded type checking and "//" comments from BCPL; the
    latter came back relatively painlessly (though only in C99, which
    Ritchie refused to endorse).  The former has been resurrected in
    fitful stages, and only where the suffering imposed by careless
    typing can be discerned as imposing engineering costs in defect
    resolution greater than in initial implementation by a factor of
    1,000 or more.

    https://www.bell-labs.com/usr/dmr/www/chist.html

--zneefl264b4ajjzf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmPxIREACgkQ0Z6cfXEm
bc4JqQ/+MA3ZN90LQJuw9UZyjmZnnM1TuN+iEdpfT7dYY/h+27NFopCg+V8keboH
/3IBfDZr+e/XUN/1V44E4OLGC8SWCV9LFLhkHeTNKpaECK46bflTBvuV5GQMOdht
XnYecBRxQqp/BAvWRVJqka7OGaB+TsBbQIbBmcVQSDVWIqTEDrdLI+tINWIpKCOb
Tt1Hmo5VOLscdFSww6dNhLKJiSBoxMiuuR0bsZV5vS5GqIuqgXVj9jgUv0Gu5+Oo
laT3T5dbUbhtkzLe1AAOQPf2oEAWkuzUYtDcPLr24tYyfmadDlL0y2tWAG/fJK2u
gZKdTsXEhEmuL/OzIZYIoeWoazGXbjxXH4lF74LUuK0uvjlpN5ZMryNhkehG97cY
nENfA2o7zBggoilgexTsGtTyFFPYbZq9tlil2Ca6K4wtSBAMBWyijYL1UfOvBz8s
dbtAbojDYn+S7MouQueyaSo01GUhKy1h3G6s0P1z5yKRCkAbY77eSp6ARUzrHn3P
iIY5pb1McQ5iw6kGE29sJudH/H18wyv4lMjRMMnWu5xtaWfn44C9TTCrCjAfT2bu
874FzrzZb/dJYyfgkuKAIx9B6PGld/QfQBVj2EPC/04/YRqvT8r7v3oyPGWvJRtj
YI+a9qRplODUJVfIqplAanxerIjnr/4NX9cJT0Vi1VAoc4z/vpo=
=7KXy
-----END PGP SIGNATURE-----

--zneefl264b4ajjzf--
