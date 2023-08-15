Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A3BB777CB2E
	for <lists+linux-man@lfdr.de>; Tue, 15 Aug 2023 12:35:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236453AbjHOKez (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 15 Aug 2023 06:34:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58634 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232464AbjHOKe3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 15 Aug 2023 06:34:29 -0400
Received: from mail-oi1-x22b.google.com (mail-oi1-x22b.google.com [IPv6:2607:f8b0:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EAF9ABB
        for <linux-man@vger.kernel.org>; Tue, 15 Aug 2023 03:34:27 -0700 (PDT)
Received: by mail-oi1-x22b.google.com with SMTP id 5614622812f47-3a412653335so3832204b6e.1
        for <linux-man@vger.kernel.org>; Tue, 15 Aug 2023 03:34:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692095667; x=1692700467;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+BcSMiTMg7YjytXktouip+GQrDdqMV7wBRMCoeSaC1M=;
        b=Ibopi+wUx0riTYUGLc7eAQWZAG98L8QLUZ8znr7/p5Uxjx1fk8/4UdZBXjbe4ICMhk
         TFst4SmlqTKTOYkwa6e2G2dLai4O33BBD/pdnD3WjqLYMPAfuiZpgo1++o4nwIN/xm+g
         tbGN6znP5fbhtId0zOkjDJUO4Wd7R2g8iGZ9dqabgmuqxWp1D81jpvQEE10z+WD8efv2
         Ao1lLFTvUifQWfeYMeKi5DJpLovdJFe3Va3xZzuQICu6rQuZjoiI+exdU9w3l0PSdoRq
         HKCytH3NhmuqXW97KSOv3G91CgNm9n77tHrHU4to0bfaVpZ9AFM6U6D4/Jwa49IiPRaz
         D9JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692095667; x=1692700467;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+BcSMiTMg7YjytXktouip+GQrDdqMV7wBRMCoeSaC1M=;
        b=CnYjRlY0Ut4iMFxo0aJo2U6/xHn0N1gLMBdnIBjrEqJ6Gfv2+jF3vjARu/dfaj/N0N
         bXV1nF2OGqzvfQFlQ3OdmXPQwIKZuW9NSv5wA/C6//hrrAPGxnGZkeiD2j3/hVQU9ZBL
         19omfbz8ZtiT4bIE1LHd+lwCaZhBwM4oqjsgKqrR0cBcaV/ingbgzah4OB2V/RNV/3To
         MsDTtcA3VUH9ZmcKFBFE0zitfOLDM5vIIb2idAGeR22dqNhuxP2BuP3pCZI4t8poOZgN
         uvA3WxiMQhS57SojnIMkFfK+sn//IlJVan0VL0fXCoaDwfXByK4Vt/xsfoMMex7iDt9i
         72Cg==
X-Gm-Message-State: AOJu0Yx5Fp+dTuVOVJ/W0ysYdSvIod7iDw9tVytFDXpgtXgTji3MFIUH
        8zhARDabmuAFvO9dFwPA7LM=
X-Google-Smtp-Source: AGHT+IESOAkafWQZnc9NaUB/wqQ1fMPQq7TiB63VZd4s/QCDSCvBUIzICmCMXMYrGgrcnrwZy9kgJw==
X-Received: by 2002:a05:6808:2892:b0:3a7:9e15:fbfb with SMTP id eu18-20020a056808289200b003a79e15fbfbmr12542022oib.9.1692095667217;
        Tue, 15 Aug 2023 03:34:27 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id 12-20020aca210c000000b003a7543bb635sm5259025oiz.22.2023.08.15.03.34.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Aug 2023 03:34:26 -0700 (PDT)
Date:   Tue, 15 Aug 2023 05:34:25 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Deri <deri@chuzzlewit.myzen.co.uk>,
        Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org, Brian.Inglis@shaw.ca, groff@gnu.org
Subject: Re: groff features for hyperlinked man pages (was: No 6.05/.01 pdf
 book available)
Message-ID: <20230815103425.sop5avhg2is4rhrf@illithid>
References: <4859011.31r3eYUQgx@pip>
 <8264634.T7Z3S40VBb@pip>
 <20230815005022.47vpqsjoczn4vyii@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="2tva7vah24klvmbe"
Content-Disposition: inline
In-Reply-To: <20230815005022.47vpqsjoczn4vyii@illithid>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--2tva7vah24klvmbe
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[self-follow-up]

Here's a quick note of self-correction to a point that is deep in the
grit.  linux-man readers can skip this unless they're concerned about
full disclosure, or (against all odds) interested.

At 2023-08-14T19:50:22-0500, G. Branden Robinson wrote:
> Consider a three-character *roff input document.
>=20
> printf -- '-\\-\n' | groff -Tascii -Z
>=20
> The part where the glyphs are written out looks like this.[8]
>=20
> c-
> C\-

> [8] It actually doesn't.  In GNU troff, the GNU extension command 't'
>     is used for sequences of non-overstruck ordinary characters when
>     supported by output drivers, and in AT&T device-independent troff,
>     the unnamed move-and-print command--a performance and storage
>     optimization tuned to the needs of machines in 1980 and explained
>     in CSTR #97--was used.  But 'c' is simple, supported by all
>     device- independent troffs, and works.

A sharp-eyed reader may detect the fact I hand-simplified the
device-independent output, manually replacing the `t` command with a
`c`.

=2E..because I forgot to add in the horizontal motion for the glyph
spacing.

So I commented out the `tcommand` directive in the font/devascii/DESC
file and solicited honest output.  Here it is.

$ printf -- '-\\-\n' | tg -Tascii -Z
x T ascii
x res 240 24 40
x init
p1
x font 1 R
f1
s10
V40
H0
md
DFd
c-H24
C\-
h24
n40 0
x trailer
V2640
x stop

The foregoing page description language is documented in groff_out(5)
and groff's Texinfo manual.

https://www.gnu.org/software/groff/manual/groff.html.node/gtroff-Output.htm=
l#gtroff-Output

Regards,
Branden

--2tva7vah24klvmbe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmTbVKkACgkQ0Z6cfXEm
bc7IRA/+KFygvhKSaTMDZmwdDDoq7W2vJDD98+HquVcW//3PSG3dbAyLRwtzpKBu
3d3sYua0RUTvejmnxkHEXNYmM4xOBppOwHRu5S1D4jFyWW4tvA8uGKu5Oje8vKG6
RBrpqoDSQms0L7e19CvJBh132M4KoUskL2hBqUkjxvTtoqSK+qkJgJjAvLprTSsg
ab8fNGByzrKl2TYzMr1LvRrZNUhkNEXyJiVGJYaO4BVeNTt/b4xey6CDVpHRMP29
H4oc3jd6Xz6JIVFPFKDv5JFDjLfYF5UzZr3GkHfOPxQVhnxadu4nqMaAyAOj4iIO
amzFt3EDn1feM6bAxAOKNBgExXMT//Ub+D6+r+UU++PR/Jrnrk/tyKqX0nTrXSkQ
YJZKzXPi3wDPXK9Of8eCnewR3EkWzMf4zqg1eEYpmkypZhX28F767fZ4JLIll0Xd
EnUrNibbMi/tpj83oSkdvg03qJcHXqJ+Ma47vZ1u7gpi7ASMoHWjia9D5VnwzDg5
Ysf4aaZZ9YBltLStV3LAoNru8FNUjwifL5Zcinv/opyihC2Hkc9hsBJoDzl2ork6
hT3XF6d9QHSDSNG0CWfkogCa1IFYSxVn/xyGgBlrIye3PzeD4iJS0HXZ8ATH5hC7
lex61CbokL9+JSsTI8B0CU2sZMpt5BffVwHWaewHiWfHHCILzdg=
=u3e0
-----END PGP SIGNATURE-----

--2tva7vah24klvmbe--
