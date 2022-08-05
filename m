Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EB14E58B168
	for <lists+linux-man@lfdr.de>; Fri,  5 Aug 2022 23:51:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241511AbiHEVvm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 5 Aug 2022 17:51:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37444 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241594AbiHEVvT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 5 Aug 2022 17:51:19 -0400
Received: from mail-oa1-x31.google.com (mail-oa1-x31.google.com [IPv6:2001:4860:4864:20::31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AAA0879EC4
        for <linux-man@vger.kernel.org>; Fri,  5 Aug 2022 14:49:52 -0700 (PDT)
Received: by mail-oa1-x31.google.com with SMTP id 586e51a60fabf-10e615a36b0so4359469fac.1
        for <linux-man@vger.kernel.org>; Fri, 05 Aug 2022 14:49:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc;
        bh=TNumwqJ1/zooKKcdTVCtVmRNMf4Dwiotb2s8Em6XSYQ=;
        b=QtwWgyWdUbF2uPqVn+s49uyN/uAc+TYBrIHIhGOyhYKgRPfQJAfC3BYEcABIoMqDES
         jFTfl7OeguMaRsRE8jnHshY781Vyx9AJcNtCEOGWRWp6147nJ2tXBigTsSRMToaTt9IP
         TZyH3RBJ9d9MC7SayXJdtXqr31fktY1oSIvUIczmfaGncrd5iEhVNnZhjtHqYrCq6iAE
         ryXy/XBmoEOOkI/5yIgyn3KynyZfgxUwGA+NNCqStUqyZdsWbKM42wM+unrlvcreAsP/
         HeCglc7WHCRAj8gm1bkVR5f4FFb2OVEWBwNSsnbDLPcsIirB4h8+huCltg79Ceyl6v7j
         9QSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=TNumwqJ1/zooKKcdTVCtVmRNMf4Dwiotb2s8Em6XSYQ=;
        b=A7cfBLJzP1xFifd1dwkG/xGjPGnyIH8wcH18NhGO5Ezl0KI5lbwJDNKMGMCUD7us0B
         yke0zutannKTpTxsnFKJ55L46iltrmVWTGB6qmsB4EPpBdNNXG49rMHCAln/yAuBcBvA
         3KfsXG9/eU04y0/VvAKAIloum0Fb5FXhqkIkvul0OMEef9J/Yu4k7HZrxSD35puMQ7We
         AVMjsqNB9PGzoJ48NNfJm/b6PNBQ9zkxRKKfNVzU9WiWf59Nhf8goWqvcwWxPQdJlqaa
         k9VqAv/LgGKHEmPNGJKaQ+Yrc4dgtFZNZa4aXNFChuHCNSZtkKk2c169TcQ5TcDIY3WF
         CTBA==
X-Gm-Message-State: ACgBeo0hPijvWGyx5AK6OIuZ0KYPctiQs1qNU8pFgzh2IFVN1/I74AlO
        fq8jzj6nMy0t2hugG2+/Gf0aTKzhZtU=
X-Google-Smtp-Source: AA6agR5Tw6LiNKLy866PmyqQByUrFln5PyDB6aKmFXsuNsC0l01md3Zbw46q6IoGEltrN6Ojh1uxFA==
X-Received: by 2002:a05:6870:79d:b0:10d:8416:e59d with SMTP id en29-20020a056870079d00b0010d8416e59dmr3907281oab.85.1659736191939;
        Fri, 05 Aug 2022 14:49:51 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id j14-20020a056830270e00b0061c731fc92bsm902298otu.64.2022.08.05.14.49.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Aug 2022 14:49:51 -0700 (PDT)
Date:   Fri, 5 Aug 2022 16:49:49 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>, enh <enh@google.com>
Subject: Re: italicizing pointer stars (was: [PATCH] getline.3: wfix.)
Message-ID: <20220805214949.jsdjstxsftk6mw75@illithid>
References: <CAJgzZopm7h_0_4j=grKiOu5tWr87ik4-nNvMRy1gxxH_b5b7dQ@mail.gmail.com>
 <3d4a4b63-99f2-1d9a-f496-aa4ee68775be@gmail.com>
 <CAJgzZoq1AUJO3wrk3a4OA3Kb2z5yW1otHnmsDWk2GHJbRDafoQ@mail.gmail.com>
 <20220805192007.iwwu4e2n45hqw4cn@illithid>
 <d53c704c-c02a-7361-2cef-5cd97c5aa282@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="vlo3qqe2tglsqu34"
Content-Disposition: inline
In-Reply-To: <d53c704c-c02a-7361-2cef-5cd97c5aa282@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--vlo3qqe2tglsqu34
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2022-08-05T21:40:06+0200, Alejandro Colomar wrote:
> On 8/5/22 21:20, G. Branden Robinson wrote:
> > I'm wondering if we should really be setting the dereferencing
> > operator in italics here.
> >=20
> > In declarations, the star is part of the _type_, not the identifier.
> > Similarly, in expressions, the star is an operator, like "+", not
> > part of the identifier.
>=20
> Let me escape out of this a bit sideways :P
>=20
> *foo, as a whole, is an expression, consisting of an operator and an
> identifier.  So I won't apply identifier rules for highlighting, but
> expression rules.  The rules for marking expressions up are:
>=20
> man-pages(7):
>    Formatting conventions (general)
>        [...]
>=20
>        Expressions,  if not written on a separate indented line,
>        should be specified in italics.  Again, the use  of  non=E2=80=90
>        breaking  spaces  may be appropriate if the expression is
>        inlined with normal text.

Ahhh.  I had just reviewed that page while pondering a bunch of
miscellaneous suggestions I might craft into a patch series, but the
foregoing utterly failed to sink in.

> And the deep rationale why I would like to avoid having the star in a
> different font is that it could be confused with the glob-like
> expressions that we use for example to refer to SYS_* macros.

That makes sense.  I think instead of adopting glob syntax, I would use
quotation, but quotation in man(7) is so awkward that many people act
like it's unavailable.  This is just one of many reasons I think man(7)
should have a `Q` macro to facilitate it.

> Did I dodge the bullet?

I think so.  :)

Regards,
Branden

--vlo3qqe2tglsqu34
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmLtkHQACgkQ0Z6cfXEm
bc40jw//YzpzYDPbxRtIEcGcdxZk0injZz4PvZsyW4XqynUwQSIdHwyvU0HBnLk2
qtHMfhJ3mw7ih3AduyYm8bd0nRghCcoJvwGyD5UCIJPJDW+bSSYNdB0sNKrnD4nl
j4OqQoQ6xFtjSXNfzEJbkg9Om7e3p9pDwNZr0IdkkN9wo+K32/Xw/BUsJrR3tWjJ
ECs6TY6FXNl0RDFHZWj5u1qa4zy6okNAbE2+DrSW6Ax8BuFkNarKd/KZEtQWOAZ/
TY+hz3eWvzbGKle96e2w93ybfsaFze3WGILPFQDoiSEwT44+jf5/JTyHPF1u4iu/
7uQJmRLwzryEqRmlv+MQ0gzqj8e7cjrIiCqsllwHHCPXGa/gL8iW9W4bdWoBfaZ3
jT/UbqeBXPa7ijBGsCNGet3TGOMQqw4L+YCrWsGfU4tQrIakjJAnvQRMQn+2aA+H
bXww9nlk/JSAI939XWRzCe6oU/+sgPRT+7dev2L2k46d+DbUw+4Lt31m1a2aFdME
mFQcRYHV6jFkXxBf/9Af2Nmrjkj8dLYpum0LOazrrsejFYeKjwcCbYTgrAMWgL8m
W3jLbLrU05GfkfJjGjjD87xpjYOajEp6yVLPFj+qWs+whdE4sSew+MRNHjDMWzhC
iDw9ZMIWR75pm0GiE8Nna6fhPwKAgxKzZJDtJ43wxoawvy/nrhU=
=0Fdh
-----END PGP SIGNATURE-----

--vlo3qqe2tglsqu34--
