Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 160154E1D0D
	for <lists+linux-man@lfdr.de>; Sun, 20 Mar 2022 18:18:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245670AbiCTRTZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 20 Mar 2022 13:19:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45108 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242321AbiCTRTY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 20 Mar 2022 13:19:24 -0400
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com [IPv6:2607:f8b0:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5ED2E2DD9
        for <linux-man@vger.kernel.org>; Sun, 20 Mar 2022 10:18:00 -0700 (PDT)
Received: by mail-pg1-x535.google.com with SMTP id 6so8748515pgg.0
        for <linux-man@vger.kernel.org>; Sun, 20 Mar 2022 10:18:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=/S6vr//EZLMm3kjhBWAR+NmOOb9Yrw0sgxLyNCaAUVI=;
        b=BEfiXQXJNDesLTBOm2sjke3xwoXU3fdo7DnPqvZ9LBE7O6XUW5bc1OuOiWkQvYMEP9
         bGTIuOsDEoNw49LAik7Mp+5EGr49thB8GxOZ9n0zMhizJ8TUfpiD1RgmTDNY23RgwOPJ
         QZczVd6HLaew6sJzQWHvncsn9w9F1dEj/e79vIOo85bakJMIEmY+WaLahD+g/fTrJY3U
         23Mqhkwvjyr+ppNKlS6s/j7HL3+WcDS6joeslc4SbaLaiSEP16e2xtGhKfubXY03N6xf
         sgSdkhJbaYMB4MsPDlf2BTa2jbH7De+RfaKFSYzhMyPS4VIxNXF5Cr6KFGek8tDy3/zF
         hjyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=/S6vr//EZLMm3kjhBWAR+NmOOb9Yrw0sgxLyNCaAUVI=;
        b=Jgw25nS7B2YVtm2MBJ36J3UhA7zssziJhPlKQatW1A6tsvogz3ql1qY4sHjNzJ0yuM
         W3xz2ziSWuEYHAKAMSJd0QPiK6LcyYJiLcEERREn/OBRxzSRSR0KoDhZ0prLjdSCHLCm
         c7RkUkFaBjzFNgXd+uCcjnWzinWJxMJMXOaoXFPHvzTQeO45VijCe3WDFdtke90EZl+c
         MKIxoVl50xkyJv3FxwY60P8yAghheVI1YFgnFIOJZnyPZeK2ZqaijP4EE38JukdZeiWS
         GbeqWICEZ0aZyi3oTFlgttdKHbxoXJQyIEbkTKyIZ0h+6ZVOaDB3L0d4PUPCmenJhgpZ
         GV/A==
X-Gm-Message-State: AOAM533kWob16ELrFZ2shk86t8hURuo7qVUgTvLXPJNphirxmObyTZ3Q
        Xsvwx79IAozxlN/t3xaB2KnN5QB7cmJ8qA==
X-Google-Smtp-Source: ABdhPJy/2N8/Mx8vij8HgsC3b4HhhYiNokREJY0zHIO3eu3XZMzDDc3rYCWdhqz6xCz4SwIGZDVyiw==
X-Received: by 2002:a63:6942:0:b0:380:153e:63f9 with SMTP id e63-20020a636942000000b00380153e63f9mr15620410pgc.212.1647796679777;
        Sun, 20 Mar 2022 10:17:59 -0700 (PDT)
Received: from localhost.localdomain ([1.145.30.29])
        by smtp.gmail.com with ESMTPSA id z23-20020aa79597000000b004fa3634907csm13242895pfj.72.2022.03.20.10.17.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Mar 2022 10:17:59 -0700 (PDT)
Date:   Mon, 21 Mar 2022 04:17:55 +1100
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Ingo Schwarze <schwarze@usta.de>
Cc:     alx.manpages@gmail.com, linux-man@vger.kernel.org,
        mtk.manpages@gmail.com, groff@gnu.org
Subject: Re: Review incorrect man-pages commit
Message-ID: <20220320171754.omftwyr6drmtdmes@localhost.localdomain>
References: <9e2a2f6d-d086-4570-2d22-f218fdb0e686@gmail.com>
 <20220320105236.zsjiafuru5hjk2uw@localhost.localdomain>
 <YjcS6F8/0zOZVAVL@asta-kit.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="gvbt54ev5p6j3rdg"
Content-Disposition: inline
In-Reply-To: <YjcS6F8/0zOZVAVL@asta-kit.de>
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


--gvbt54ev5p6j3rdg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Ingo,

At 2022-03-20T12:41:28+0100, Ingo Schwarze wrote:
> G. Branden Robinson wrote on Sun, Mar 20, 2022 at 09:52:37PM +1100:
> > If you wanted to write this without using any aliases,
> > you could adopt groff syntax.
> >=20
> > +to "\fI[a\[a aa]\[a ga]\[a ad]\[a a^]\fP", that is,
>=20
> While that is arguably neat, please be aware that it is significantly
> less portable even when considering modern formatting software only.
> For example, consider this:
>=20
>    $ mandoc -Wall=20
>   =3D=3D\fI[a\[a aa]\[a ga]\[a ad]\[a a^]]\fP=3D=3D  <enter> <Ctrl-D>
>   mandoc: <stdin>:1:29: WARNING: invalid escape sequence: \[a a^]
>   mandoc: <stdin>:1:22: WARNING: invalid escape sequence: \[a ad]
>   mandoc: <stdin>:1:15: WARNING: invalid escape sequence: \[a ga]
>   mandoc: <stdin>:1:8: WARNING: invalid escape sequence: \[a aa]
>   [...]
>   =3D=3D[a]=3D=3D
>   [...]
>=20
> Arguably, not supporting the groff multi-argument form of \[]
> character escape sequences might be a defect in mandoc, but for
> now, that's how things are, so if you go that way, you have to
> accept that some (even modern) formatters will drop the accented
> characters from the output.

You have to be prepared for the characters to be dropped in any case,
since they might get rendered on an output device that is limited to
ASCII, or (I suppose less likely?) using KOI8-R...or ISO Latin-2, which
lacks code points for any letters combined with a grave accent.

> That flexibility is precisely what makes the feature somewhat hard
> to implement (though not impossible).  Admittedly, for typeset output,
> any accent can be placed on any character, and for UTF-8 and HTML
> output, zero-width combining Unicode codepoints can be used, but for
> arbitrary output modes, the formatter would still have to contain
> a complete table of all character-accent combinations to map them
> to combined glyphs available in the output mode - and users would
> probably have to accept that some combinations can't be rendered
> in some output modes.  All that is less than ideal in manual pages,
> where portability generally trumps typographic elegance.

It might be wise for the page to include a disclaimer that some of its
glyphs might not render.

> > +.q !$%&\[aq]()*,/:;<=3D>?@[\[rs]]\[ha]\`{|}\[ti] .
>=20
> I agree that nothing much is wrong with using the \[] variable
> length character escape syntax in manual pages nowadays from
> the point of view of portability.  Then again, i'm not convinced
> that \[aq] is more readable than \(aq.  Why would it be?

We get used to delimiters being paired.  :)

I regret Ossanna's choice of a parenthesis here.

> Quite to the contrary, in the other example above, you wrote:
>=20
>   ... \[a a^]\fP
>=20
> forgetting the trailing square bracket; it should have been:
>=20
>   ... \[a a^]]\fP
>=20
> So my impression is the \[] syntax introduces additional opportunities
> for markup bugs, if there is any difference to \( at all.

I would attribute that more to my haste in trying to get the email done
to watch a movie, as well as my reliably and severely attenuated
proofreading powers _before_ something I've written becomes irrevocably
public.  Nothing humbles me more than my first draft.  Or first six...

> The rest of your message beautifully explains what is going on.

Thanks!

Regards,
Branden

--gvbt54ev5p6j3rdg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmI3YbAACgkQ0Z6cfXEm
bc7ssg/8CNOXZXpq6VUHxrJbAdDd5UI0kL/IOBLa+dBFx32Vx+VWhfvTbbW2NTdU
+0ORXKZTYLhwZfOtBOZgsncRvmDYIjqzPKM1AfzLI+OE6w/EAZcnUJ19jjQlnKlR
VII7qNixpFrAULcpakiQY731Ykwc6HAtStgGLaOxlVZUMc/AETkRAD0Fm9mo00JP
aNv6deFil9OnBaAazBz0sulGLBKH4smnoOrgCyTEL29osX9JUhzaZp1s/5TWLG0l
JuGaVYZnIJ+NnpOUzjng4cBhQlHI9KGQ7S4BUBTphIheNLcADjkWkTWgO46GINIp
ADQt9eyb08Lye6tppv7zfkUBoaFSedhPH2hLPZBvxO0SZmPqlhnLCzxDm7O5fn+W
KhzV6W8V/EwjNsB0I34kGBi9XCBYUVidfN8FB/ZJMxN77DIaWefmMJuL4+F+fEi1
TZ1jtv21nsjHeGh3cPywRbEns5v2ymh4tyAVj6jdBku98fMk2NBL8Vl4WUN5w5wk
bEJe0MyixnDcufN8RyiyjDiwfR2Zm6yT1V53GysEyERG6c5GPfKMU0TAfesrNQPK
7btqaWB6kHu3IE7St0eY9gt3IzabO7j7ADxopMGuWf4+v02qH5MCrbV4wtUry9Uj
elH2xic0GH/99I/zcTgGMVnyNU3jSfz9Ukc4EqjjkQxohGgu+5I=
=AkZv
-----END PGP SIGNATURE-----

--gvbt54ev5p6j3rdg--
