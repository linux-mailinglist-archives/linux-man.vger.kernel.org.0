Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 625862727B6
	for <lists+linux-man@lfdr.de>; Mon, 21 Sep 2020 16:36:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726641AbgIUOgd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 21 Sep 2020 10:36:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42498 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727049AbgIUOgZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 21 Sep 2020 10:36:25 -0400
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com [IPv6:2607:f8b0:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2147AC061755;
        Mon, 21 Sep 2020 07:36:25 -0700 (PDT)
Received: by mail-pf1-x443.google.com with SMTP id l126so9413202pfd.5;
        Mon, 21 Sep 2020 07:36:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=zSfrj+3bs9sguc1QSl4SLJPp+UjGqMK1/8SE68suEvs=;
        b=ar5BRUxq1oC1hBjcryyD9FKmnVVVYpvOs3MnnmNl8q8w9m90qzhI6qk7vJwHqYyUxe
         aCEslOkys3v03XPCIs/CcblGzSesSp3DjYdqeqPKSf9oKNHL4hIaCtAj9HD/Nux8wjNo
         NFoaPQ/+0vw4gYUCUxhCt1erh9C5DbqIyT4raZzKCadJRiUaCcKK/2OiqoFY3Amb1rsy
         T4eamtx5AwvnwNpUaa5X1lroc9YxQy3M6n6+l/bfP0X/7xlB1LBgYcSdrUc0vVQkL6Vn
         4KpGXFHnJhQD2TjCqmK4bYJ8wqsdi+OYv7FZ3kbULcQKt79GPJbyy5WhVyn9JRUmZJTE
         e9AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=zSfrj+3bs9sguc1QSl4SLJPp+UjGqMK1/8SE68suEvs=;
        b=BT5QprwyUEnoAvFJOIz4Vi45EMW0RjvHYN1MzGM97mjvD9232m4bPA00I9xUbT8IQq
         fvE9Q5pspDeOE5ms6b1HcOnS+ZiJgCs2nuoyl0ypU4VAQDoAxxvR1WCaU6q+FweblPpP
         gJHbhHZGuKyfQfnfJNSuPO0V/FopHLnNfjQiNuEq9NsKes5HwT1lEbHkUBBAA5KXAQHl
         W9/9DtZ917vXeex32yhmoz8rHkrSEblBSL36DgT2V0piCzoVf9rAxvWHDlqlBrAhzSsc
         kU40hIH8cq3l1YUDQ7AeBO6fNXBiBEMmgw2/QpsfDeNQejovM9JiqleMIwp3D4tQ7/Oy
         BkUw==
X-Gm-Message-State: AOAM530+ZNUKJCYGPLHM7nb0SE5sT+U2oO7DKel/vaWATNJrNzyx/Hrg
        xI+0TBoPxeLxX0W+2j21cZLc0JiqMBM=
X-Google-Smtp-Source: ABdhPJwblvZRdBtLaYtrOyigdHm9lh+pppkIi+r81/+MSenIJRW174lVhuCdLv+l+XB6COw4VWenlw==
X-Received: by 2002:a17:902:aa02:b029:d0:cbe1:e7b4 with SMTP id be2-20020a170902aa02b02900d0cbe1e7b4mr169659plb.37.1600698984672;
        Mon, 21 Sep 2020 07:36:24 -0700 (PDT)
Received: from localhost.localdomain ([1.129.169.155])
        by smtp.gmail.com with ESMTPSA id j14sm11035358pjz.21.2020.09.21.07.36.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Sep 2020 07:36:23 -0700 (PDT)
Date:   Tue, 22 Sep 2020 00:36:19 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     "mtk.manpages@gmail.com" <mtk.manpages@gmail.com>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 22/24] membarrier.2: Note that glibc does not provide a
 wrapper
Message-ID: <20200921143617.2iskdncu3diginqn@localhost.localdomain>
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
 <20200910211344.3562-23-colomar.6.4.3@gmail.com>
 <4ace434523f5491b9efcc7af175ad781@bfs.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="gn4pjnbkmrfvlsqv"
Content-Disposition: inline
In-Reply-To: <4ace434523f5491b9efcc7af175ad781@bfs.de>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--gn4pjnbkmrfvlsqv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

At 2020-09-11T12:58:08+0000, Walter Harms wrote:
> the groff commands are ducument in man 7 groff
> .nf       No filling or adjusting of output-lines.
> .fi       Fill output lines
>=20
> (for me) a typical use is like this:
> .nf
>=20
> struct timeval {
>     time_t      tv_sec;     /* seconds */
>     suseconds_t tv_usec;    /* microseconds */
> };
> .fi
>=20
> In the top section you prevent indenting (if any).

The above will not work as desired for typesetter output, a.k.a., "troff
devices", such as PostScript or PDF.  The initial code indent might work
okay but the alignment of the field names will become
ragged/mis-registered and the comments even more so.

This is because a proportional font is used by default for troff
devices.  The classical man macros, going back to Version 7 Unix (1979)
had no good solution for this problem and Unix room tradition at Murray
Hill going all the way back to (what we now call) the First Edition
manual in 1971 was to read the man pages on a typewriter--a Teletype
Model 33 or Model 37.  Typewriters, of course, always[1] used monospaced
fonts.

Version 9 Unix (1986) introduced .EX and .EE for setting material in a
monospaced font even if the device used proportional type by default.
(Plan 9 troff inherited them.)  GNU roff has supporteds .EX and .EE as
well, for over 13 years, and its implementations are ultra-permissively
licensed so other *roffs like Heirloom Doctools have picked them up.
Therefore I recommend .EX and .EE for all code examples.

They are very simple to use.  In the above, simply replace ".nf" with
".EX" and ".fi" with ".EE".

Regards,
Branden

[1] Not completely true; variable-pitch typewriters (such as 10/12 point
selectable) were fairly common and some expensive models like the IBM
Executive even featured true proportional type.

--gn4pjnbkmrfvlsqv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAl9oulAACgkQ0Z6cfXEm
bc4nXg//a/pFLV+dC2pLWh48NQsSaQaYU0IMPK0FpdGYloetyPw2bo75WGukzVPQ
GJ5yzvvQmI812qMmVnbChOZAr31EiaJqAqynG5XtmYxGIDK5Tx9cfnk+11Ko8DPQ
orUaPEb5/u7rhtiQgOoYAYVewrF2ooTGEGRKIeRBhHRJHm3Fm2VRduDt5ZOJ1JsO
aIdOc16tHBeAPJUjMamyVcSIoWZsWCdhdA4l9h94MeSrYYtZc3duDaieT9YnoZpx
FKeKvmfR7fWBF8ZlIXSemYume2/wtC9x5SGoWz9EFlQVBM0rrUwjPtgdbri4Y/kr
iBxiLcEJ350pPXGII4mMl/HWCfivFJRk9hd7tUGRvRXrj7MB4qQy5Myu993G+5X2
LbF1lg3lvEv4zlaC1+Vx7ljnA5guGYqxq9v977VucyEWicSml5NczuzuBpgl8ynJ
tJsFs04GBbR+8NHlILly2LOaI/B/9aFhUMYq1ix8GRqJABXhYA050t9n4UmlYIjA
hulieVMLHDCVf9u+0+dE5ript5Ggqmh880AYZLYXQR0jEcGelJDYoxM0ushMogCx
fFiO7iJpg/dr8l981Xe6B5t6xLKxzi9WJuZJ89V4efEjh/SK2SohGvYtRepzhj3a
VRKZf+9Qamwt2PYrd5hgdryqsEpIs8335KQxpfUKYdzn4scuRsI=
=i8QU
-----END PGP SIGNATURE-----

--gn4pjnbkmrfvlsqv--
