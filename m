Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4B9F63DA5F5
	for <lists+linux-man@lfdr.de>; Thu, 29 Jul 2021 16:11:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239161AbhG2OKN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 29 Jul 2021 10:10:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54610 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238618AbhG2OCB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 29 Jul 2021 10:02:01 -0400
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com [IPv6:2607:f8b0:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B822C0619C7
        for <linux-man@vger.kernel.org>; Thu, 29 Jul 2021 06:58:35 -0700 (PDT)
Received: by mail-pl1-x62e.google.com with SMTP id t3so4970140plg.9
        for <linux-man@vger.kernel.org>; Thu, 29 Jul 2021 06:58:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=gbBydsDXc4C6FxERaTrYgdLhuE9xlO83HT51Jla3uIU=;
        b=n+0gdjRpPfjmyi4xTwK6nrztq96+pytM8u93u0iCDdyJst6Q84jgl9deCcEEhhrfS8
         hi5IxnDFZCLzTT5vHnRX5nMbEk0/aMAsv1DeiJI0bd5GVoVZ/Ln1hkejbI8fJnKEWFzy
         BC5+fHtJy1WtXQXODZwmGUogeguuM1DQl7963ABWF45yN/gvUCjw21I9d9gNhzvid+sl
         i/uMffzu4IDubYRgOy2RLsnoE0BHmWiLZNv3qFqa3og+n4HwJ2ieSxQqtCeGCxzm5OLE
         gwlajND/5I7aZT2skVFqtuG3LL9HEspjNXSFuH136HXY+MGqyCyA5xe5tfD0su6yb4Mq
         Y1yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=gbBydsDXc4C6FxERaTrYgdLhuE9xlO83HT51Jla3uIU=;
        b=qsALSWDm5NTBiObH5wzJU00aRB0MA9c327if0qOaqEnfxXwEywImQfYEfTFEqt4VLH
         3/2UjVU+zOi6vrREwaQg9nElUFa9BiBIhnBbZDi8eEaqj6LH4L4o+gmXzLjuE5hhEVQX
         IvXLYq53VhwfiI6gLfgN3X6wwAjSl6k+GuPl6peZr1ODn040r9fN0lMDcpnC9mAkJC0I
         Ej05zk8SKCkKC1NU9+AYGUX1YcSfW7KbfxDGx0GkvTZhnK7jXfZ39X7+KxZNfGgvBAqI
         CychCOUSXwYJR6CexqNSxakMPoqoJDUBKv0ej06AfpdK6k8uTRfB+KNAlcxDmgin3cyX
         LQHQ==
X-Gm-Message-State: AOAM530xFbnFM984m8RvyJoKjyIzXjxcSxepStzLbo0A1/+29EphQWCy
        R89MCgl/QSuqxZWO46Tm7w4=
X-Google-Smtp-Source: ABdhPJytP3bE5BOU5YgDYZPqmVTGJm3jzOQfX0DO6qVp3DuMRdRuB1N+JzcU5WOk7SutczJUEmO97g==
X-Received: by 2002:a17:90a:6e41:: with SMTP id s1mr15009001pjm.109.1627567114968;
        Thu, 29 Jul 2021 06:58:34 -0700 (PDT)
Received: from localhost.localdomain ([1.145.37.91])
        by smtp.gmail.com with ESMTPSA id k10sm3700160pfc.169.2021.07.29.06.58.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jul 2021 06:58:34 -0700 (PDT)
Date:   Thu, 29 Jul 2021 23:58:30 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Re: nonbreaking spaces (was: [patch] nscd.conf.5: describe
 reloading, clarifications)
Message-ID: <20210729135829.jpylwkatquhpn53o@localhost.localdomain>
References: <BL0PR2101MB13161790A220976723139258A1E99@BL0PR2101MB1316.namprd21.prod.outlook.com>
 <cca56558-7749-e15b-3f97-85a304674a29@gmail.com>
 <20210729115508.pt6btsqd7g5tuhg6@localhost.localdomain>
 <594e480c-96d4-669c-081e-d3075d5a6e7d@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="t6gn4dhwenawjcqw"
Content-Disposition: inline
In-Reply-To: <594e480c-96d4-669c-081e-d3075d5a6e7d@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--t6gn4dhwenawjcqw
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi, Alex!

At 2021-07-29T14:18:30+0200, Alejandro Colomar (man-pages) wrote:
> On 7/29/21 1:55 PM, G. Branden Robinson wrote:
> Can you provide some examples of rendered output with '\ ' and '\~'?
> I think I understand it, but a graphical example might be better.

Sure.  Here you go.

[[
demo(1)                     General Commands Manual                    demo=
(1)

Name
       demo - an illustration

Description
       Observe  the  distinction  between the handling of the =E2=80=9C\ =
=E2=80=9D (backslash-
       space) and \^ (backslash-tilde) escapes.

       Today I was troubleshooting a segmentation fault and  had  occasion =
 to
       run    the    =E2=80=9Cps -fC troff=E2=80=9D    command.     I    al=
so   had   to   run
       =E2=80=9Cgdb  ./build/troff  ./build/core=E2=80=9D.   Here  is  some=
   filler:   XXXXXX
       Mandatory  for  this  illustration  is the filling and adjusting of =
the
       previous line.

nonce 1.0                         2021-07-29                           demo=
(1)
]]

In the foregoing, the spaces in "ps -fC troff" do not participate in
adjustment, which leads to somewhat jarringly large inter-word gaps on
the rest of the line.

> > It's also, in my opinion, confusing to see and to write and speak
> > about.
>=20
> I'm not sure I understood this sentence :)

I mean that it "\ " can be difficult to recognize in practice; you
_have_ to quote it or describe it somehow or the syntactically
significant space (to roff) gets lots among the regular word-separating
spaces in prose.

> I'm not sure I understood the difference completely, I'll comment
> about it when you provide some examples.

Sure.  I hope the above helps.  Here's the source of the example.

=2ETH demo 1 2021-07-29 "nonce 1.0"
=2ESH Name
demo \- an illustration
=2ESH Description
Observe the distinction between the handling of the
=2ERB \[lq] \[rs]\~ \[rq]
(backslash-space) and
=2EB \[rs]\[ha]
(backslash-tilde) escapes.
=2EP
Today I was troubleshooting a segmentation fault and had occasion to run
the
=2ERB \[lq] ps\ -fC\ troff \[rq]
command.
I also had to run
=2ERB \[lq] gdb\~./build/troff\~./build/core \[rq].
=2E
Here is some filler:
XXXXXX
\%Mandatory for this illustration is the filling and adjusting of the
previous line.

Regards,
Branden

--t6gn4dhwenawjcqw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmECs/oACgkQ0Z6cfXEm
bc75pQ/+M8Alhcw4V7e5k+L2P6F2JhoLpH5KHeA+HKa9DEoWO9FHIXlxxMA93mQp
37K7Hk/nj4KsodyjuOGlktULT7UNzk2ufBFdb6K4C9Dexkvzo1PbBowTSnWMd6KB
Px0ltAJ/3ODSzxTs4eG2BVN5BsLkqwEOhEGeLDOzKR8Ga6yC4mtYihMrt2klJy1A
wAiJ19Sp8I7CJ0R7+lp1aboNX9U6wvc1FTrYlEBULAZhlxsbKBac7wry3JsmV7js
wHHW9Yixu0CM/aFUfthm82XarQWrqBxfnCc3tZ24UEDIzcSNH60UtD553w5MBnqd
9+f5iXj0RIsuRBOaYZ6jagTTMBzF7IqdKPYQE/drLqT4LfQOuHwup7BMto5Y2/he
yCQLJkMGBzoUvSymj0Za5qI+4uRmjXOKZ2d7Qfbgtnxgp1cPp2u434/amkCKRkAm
ZrPQedjloTVxC+7/OStGru0dVu0t7D/lN42IEQwb4I/GVurFIN9aC6rGCQbR+kaw
ehzt+AZ5thrsQyHcIWGpbbEm/Rfz+AsNUE7XA8BnEFhOQDneIPZqpn0srWPhn1JR
oSa8OSz0ZLOrf7ekg6Ok9k/TvgU5ADXVRuqFlIbzEYWxK53991ceRGQEYM7TXh6F
7Swp+xyBwjXcgULVjdoW26v/EDLgJmOF9N33VwsaU5U1uCfXuIA=
=25rO
-----END PGP SIGNATURE-----

--t6gn4dhwenawjcqw--
