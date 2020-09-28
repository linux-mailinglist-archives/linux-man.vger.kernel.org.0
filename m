Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9BB6227AE3C
	for <lists+linux-man@lfdr.de>; Mon, 28 Sep 2020 14:52:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726583AbgI1Mwi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 28 Sep 2020 08:52:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53344 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726559AbgI1Mwi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 28 Sep 2020 08:52:38 -0400
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com [IPv6:2607:f8b0:4864:20::1044])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ACA0BC0613CE;
        Mon, 28 Sep 2020 05:52:36 -0700 (PDT)
Received: by mail-pj1-x1044.google.com with SMTP id mn7so605998pjb.5;
        Mon, 28 Sep 2020 05:52:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=zhY90fj6kROkZ+LIElw8VKqtyrqqKdD/BNmOEHg9tZ4=;
        b=j7LQJXWloUQDuf3xZYh22xooImioNw9NlZLmK4HSdh0WkFiP1ttUrviwPxC7l8QLru
         PuPzIlM2MhosduS9QZ+craxopXKoBu/D6bEJia2BWWNhvDV8otsv7vSX1fov9C27LIRz
         51RAokvfM3uZx3ZLyJUtbL4GcWJ1VvPPmEh//nOeAt7yiZ31q388MjDUh47gdF2Py51Z
         9lveMEPztsqf7RumAf4ALQK7ah/x1PwcVUsSR4puvcg4v7y1MYHhceFvGOJfEKdTg45Y
         4+oCzLhLANgE6E4BC1KSBKFBYD/aHRHigHfMtoi+LTjZrUOjVZIaWr7g1WVIfJvYG+rA
         V8/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=zhY90fj6kROkZ+LIElw8VKqtyrqqKdD/BNmOEHg9tZ4=;
        b=Z9Spw2lIv5ER5XQIFLZ4ZQsQkz5MTNJIIZWCDRJ2DLXuSbnrf3QE38pK/LecNFICTg
         uI5bvXgmkmdbaDrQueYKKg7+ZchgkAHelojFNViIXNagQpfoHT4zsaVrZR2RbR0ZbYqF
         qJfFWAffnxsXad53JhengNDB09TVnPyf/zq+ZnHCYFZQLY15Qm+/g11b1oPKQRuL33oM
         kBJPZ9Zo4EY/Glf4rMoLpQmoAwbe3zaHK46zZaNNBlMZ1xPYqBvP85fEIRh4QH1cRirA
         FK6LUiIDlHFSCG7FF8w7Z8yuIKjoCp4tBnwqnDFXB987tlvrJ48ILy2QS+k3LejHXqyT
         FseQ==
X-Gm-Message-State: AOAM5316eXjL3Tlv9KV6IDlT2WXRLOlHsuH40SCcY8K3NhLrm6kqzq/D
        tNTjQGX9Q+bLcu8fPaxczTI=
X-Google-Smtp-Source: ABdhPJw1QdIyOywVoetqbWDE4NRTWKHI1M3hxbjSdbJTQmtn3LErFFIk5MVBto5IICtjK9KRVlPwBw==
X-Received: by 2002:a17:90a:cb0f:: with SMTP id z15mr1162841pjt.76.1601297556306;
        Mon, 28 Sep 2020 05:52:36 -0700 (PDT)
Received: from localhost.localdomain ([1.129.175.39])
        by smtp.gmail.com with ESMTPSA id r1sm1394823pgl.66.2020.09.28.05.52.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Sep 2020 05:52:35 -0700 (PDT)
Date:   Mon, 28 Sep 2020 22:52:29 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     linux-kernel@vger.kernel.org, linux-man@vger.kernel.org,
        mtk.manpages@gmail.com
Subject: Re: [PATCH 22/24] membarrier.2: Note that glibc does not provide a
 wrapper
Message-ID: <20200928125227.yr2ugl23ib6mid76@localhost.localdomain>
References: <20200927054657.ea2zaiesle6hwjit@localhost.localdomain>
 <562859fd-6740-1068-d9d0-9562140cec33@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="bxnq6uigh25hfq4e"
Content-Disposition: inline
In-Reply-To: <562859fd-6740-1068-d9d0-9562140cec33@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--bxnq6uigh25hfq4e
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

At 2020-09-27T22:05:14+0200, Alejandro Colomar wrote:
> Hi Branden,
>=20
> * G. Branden Robinson via linux-man:
>=20
> 1)
>=20
> > .EX
> > .B int fstat(int \c
> > .IB fd , \~\c
> > .B struct stat *\c
> > .IB statbuf );
> > .EE
>=20
> 2)
>=20
> > .EX
> > .BI "int fstat(int " fd ", struct stat *" statbuf );
> > .EE
>=20
> 3)
>=20
> > .EX
> > .BI "int fstat(int\~" fd ", struct stat *" statbuf );
> > .EE
>=20
> I'd say number 2 is best.  Rationale: grep :)
> I agree it's visually somewhat harder, but grepping is way easier.

I don't see how (2) is any tougher to grep than (3)...?

If I'm grepping, I'm usually concerned with things like
variable/function names and not with punctuation, so if I were grepping
for the above function signature I'd probably write:

$ grep 'fstat.*fd.*statbuf' man2/*

=2E..which would catch either of the above just fine.

Am I missing something?

Regards,
Branden

--bxnq6uigh25hfq4e
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAl9x3IsACgkQ0Z6cfXEm
bc52tw/9HKtno49CUQ4+ViAvR6viNlcMwHVxJrJJc22XkN2A9aGUAw8+z0Y6Pt8S
9QxdQl2WNZ+MOdAmUUH+WIBUVbMrbWUBgqPsJ6G/G0BONqDTc7rMmJsVKXQw2S+I
hDs4yHq7EnYSXjtwSvZP79gYke9YDQItIfCoa915kn8BNbg67/Ps2uYx4Q9GacOM
2weUV7gN5SaZErlPHrWCKsxP3pRslIgdcgBj/jcwdLb1v/NguihDW+rQj6qxvvDs
yqybmf244RIP73v18KOCcgot7SuwTjgl0/ybyMaSWt49y0drXzYjXIiDzHuB6Hl1
EF9ZWjte68CzFHP0rRloCPbdYh/PaerNa5+yNU2v/LOmf7E+yjrV9Zb2HwTY7qDg
lRWsX8DWSRc6LD9xdbDeUASRrjbeOhqyX0KAfmAg5vn/b+DbiUZ6hadrt6O8TPO1
ZOZGTuNsCc5fiR1MOhAfl5AmWaNxYKWJk7XAp8l+6WqWqXFdzIdwtOgEzAErilZv
R17UYCyqLOqSxUXLeHpNbZL3X7L2LXnWnNMg+10O2wlbT7FUqn7OEixmT/M1GGUa
YtilI020FMH3JAOXH/Z/xwFP+Ni8GPorHxWxR12ahC5BmlvuUNwKRdbpX2cWQVpQ
xgClqT/edX7q2DLJrrqjt7m5WS6ABAIMUHrgQDce80uw5F14tJ4=
=dzTk
-----END PGP SIGNATURE-----

--bxnq6uigh25hfq4e--
