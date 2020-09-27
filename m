Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D0205279E93
	for <lists+linux-man@lfdr.de>; Sun, 27 Sep 2020 08:10:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729291AbgI0GKV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 27 Sep 2020 02:10:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52816 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729125AbgI0GKV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 27 Sep 2020 02:10:21 -0400
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com [IPv6:2607:f8b0:4864:20::1042])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A6A15C0613CE
        for <linux-man@vger.kernel.org>; Sat, 26 Sep 2020 23:10:21 -0700 (PDT)
Received: by mail-pj1-x1042.google.com with SMTP id mm21so1734052pjb.4
        for <linux-man@vger.kernel.org>; Sat, 26 Sep 2020 23:10:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=zEHoa0DK34tGFDN064/YtMpTMToqc6tregB8u1Qmkj0=;
        b=WcDtPHOJvOVo7ERJ0oJlsrFreOdLjT+YPjMAexcj9+9tn29bEdve2BfnQi1V7vLeWN
         0xUstxxvuQEqCKzXTy3gEujmcX+Yfzk+fhzddPrCY93JPyIh5b5q5Ubxup+rPy2id/t8
         0zjkRBxf6zyKgyySOvnwe+P5L6xoi2dZIfGrZzQUGK9eJwbfArPoomrIPQuzqedqBHHY
         3qK52iOSFAOWwBdQZ7GI7sIGYXhpWlJd12yevPsywn9bGqZrfU4YL3S3bHGLzsLbAxA2
         RkmwLVWgk8h3Rouk9c8amFFCG+N6nxx96laJql0toCC6qQg3Qz0EgMgZGitmKwMLKe2/
         sYyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=zEHoa0DK34tGFDN064/YtMpTMToqc6tregB8u1Qmkj0=;
        b=kkaF4Ji8+VxaZr2DIbAcrofcdiiErAbQd25PLgHi31TWoBq9MGy9VzitAWW+/MhB8x
         PGNGNORXd8PryPdcW4DJBd6J+Bx1kaJEnwKqogTctqqb1A2kVat6R6D8Rc8bQ1xJT1WL
         kqpU9j209BCd4u/ytw8enojHptamu028RTgPo3HaJ0OFREMZzG7p49In2tvLmvzKyq3R
         CiJ4Q2TGInXbUHrMBiuxpomw0nyteCONz4ait3o/i/M2fWNjU3P13x94Wgn3KlOv37C6
         AdWkros8ZwD/1PizGHNBA0WyjGoAGTxTbyGT3cSYTB0ibsoUiOvL+DfmsM457IZPicFB
         CyeA==
X-Gm-Message-State: AOAM532xzirhUTxuxFBaTrnGhknWBzz5gzMO8zmHxsdG/gdcACqz5WhQ
        L0Vb56zAp9NucOXs73OC5uM=
X-Google-Smtp-Source: ABdhPJyGDFy5SLcShdEibCly5zxVBHDtXwR7xJO8bZS+kJZiS+ZQsb9GAnRePnn7fahpNQZbx+usgQ==
X-Received: by 2002:a17:90a:d304:: with SMTP id p4mr4619231pju.138.1601187021287;
        Sat, 26 Sep 2020 23:10:21 -0700 (PDT)
Received: from localhost.localdomain ([1.129.171.2])
        by smtp.gmail.com with ESMTPSA id 31sm5976403pgs.59.2020.09.26.23.10.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Sep 2020 23:10:20 -0700 (PDT)
Date:   Sun, 27 Sep 2020 16:10:16 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 1/2] system_data_types.7: srcfix
Message-ID: <20200927061015.4obt73pdhyh7wecu@localhost.localdomain>
References: <20200925080330.184303-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="qcpf7cnnsxagkw6k"
Content-Disposition: inline
In-Reply-To: <20200925080330.184303-1-colomar.6.4.3@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--qcpf7cnnsxagkw6k
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

At 2020-09-25T10:03:30+0200, Alejandro Colomar wrote:
> @@ -454,7 +454,7 @@ Used for a count of elements, and array indices.
>  It is the result of subtracting two pointers.
>  According to the C language standard, it shall be a signed integer type
>  capable of storing values in the range
> -.BR "" [ PTRDIFF_MIN ,
> +.RB [ PTRDIFF_MIN ,
>  .BR PTRDIFF_MAX ].
>  .IP
>  The length modifier for

Ooh, thanks for that.  The deleted line is a terrible anti-pattern and
you're doing everyone a solid by removing the temptation to copy it.

groff_man_style(7) attempts to lead people to the light:

 Optional macro arguments are indicated by surrounding them with square
 brackets.  If a macro accepts multiple arguments, those containing
 space characters must be double-quoted to be interpreted correctly.  An
 empty macro argument can be specified with a pair of double-quotes
 (=E2=80=9C""=E2=80=9D), but the man package is designed such that this sho=
uld seldom be
 necessary.  Unused macro arguments are more often simply omitted, or
 good style suggests that a more appropriate macro be chosen, that ear=E2=
=80=90
 lier arguments are more important than later ones, or that arguments
 have identical significance such that skipping any is superfluous.

=2E..but alas, groff 1.22.5, or 1.23 or whatever we call it, is not yet
released.

Regards,
Branden

--qcpf7cnnsxagkw6k
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAl9wLMcACgkQ0Z6cfXEm
bc4pRQ//ZbMxQGRWj2ifDXyMXRkeViFhZPecSAPQ6mg4dtgj0nfEiO8dhjaVeNim
tUzvQKLQ5t2KRPC4vzlhKpxk6Ht9xnnnMJH4LtYwiRwJg22nQ9J1jo1hzMzhtXLi
rIrNcFNFtiLoV88WjzjfrQxWRWIlJoOMld47dCeUsn2nHHYaI+JfezJQqjibzcGv
sC5Dw6kCXpxJ1NHIfot26rDvUCDgOug+cN685rFBbVm+Zgq+7VqsjDjmGJat32PO
EaCZeh2hwKMN0HMPXsljZVeWNop6EtB822CmaUSO6Q0EJslzLnSnUqUF17SG6NqQ
eLE/7EJzHyCr5HOMwda926yQ1qaEHJV4LDeN57PKrc74YhIc3D0P6l2m9dCDDdid
SZJjrufmPdJwZeRvLR5dCVsf+EUnhyzCLEKEWKuQnM/xHhBDNUnSzFJS48BBvM8S
V9kSoTSUfUcROTAIB5Y2L+A4sXtxzrjeptD3b2RLu0Ah5Toa3aaYeoGTmZ9t9j2E
3YSMVKrlmBaeR1ymXgVL3yJ9W5VPRbTTAzmXVVr/vZ/qDXV4CfYIiFvgQFCWt2GQ
WFWs6ngMgfCXfp/OahryiAZAIt/UlZ0cqFbX3XBuRICjluRiJQZd2KUi7yil3gVy
3rkYI91B6vtuPT4kTBuxYrb3l/M5xTj8lIQKMbKBF0xdzSzYLcw=
=0rQD
-----END PGP SIGNATURE-----

--qcpf7cnnsxagkw6k--
