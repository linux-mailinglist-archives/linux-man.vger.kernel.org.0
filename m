Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BB1DA27E829
	for <lists+linux-man@lfdr.de>; Wed, 30 Sep 2020 14:02:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729801AbgI3MCt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 30 Sep 2020 08:02:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38690 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729798AbgI3MCs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 30 Sep 2020 08:02:48 -0400
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com [IPv6:2607:f8b0:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD66BC061755
        for <linux-man@vger.kernel.org>; Wed, 30 Sep 2020 05:02:48 -0700 (PDT)
Received: by mail-pl1-x635.google.com with SMTP id f1so901433plo.13
        for <linux-man@vger.kernel.org>; Wed, 30 Sep 2020 05:02:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=GjGOIKhq5vbaWQfOsSjhgwXce2olLSXEX6ZI7jyEhpw=;
        b=XbBa+KjVQX5K0nWF43izCyW5YDGpB3QfzQp2ZHgB5caJruLOri66A9FftSFhTVe/4r
         A17cpXuSjyWslFMprACjnPIaqBF60i/MBqJ+HvX8aYXhXwpZyfif7yMUzQAsTlCBGnUN
         eMzKjhgmDwse/Rv6mRk0FNBjE03R9A4JpoQqxQ4cGTYy/aFuN8therLi+UE8lljNIHlc
         dIUNLRt/K2wIiG/K/iZisBZXF24hlg1ZZcurbhGumNl9/L9G1oayOJa7qfrk8YVS4H7T
         3WgNH8in/rXz+UCoGjsGvgTQUSiXDP/Cb6ij/IM8ZfoHifN2B+kpFjN+6fC2DDEhMdUz
         zxRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=GjGOIKhq5vbaWQfOsSjhgwXce2olLSXEX6ZI7jyEhpw=;
        b=W67VEvhTC7UJbqf4NfXJbJuo6fKOLbWRR1Dtfq74KlVQ/pxXs3HONnKmaQt0C5MfqS
         kIkSFlAxRgZACu+QcyUmXuzPMVxawJMgvkw5V9gX8jSyrYrqY7ahKB60ugJf+b1qalah
         Nr1S6lzFUw0RPqplbZWVZZs+CrVd8fTgbRSWTJFXBJadVeQzn07M4zlfFufgDkc4sy21
         OXqUc7kxaYYhayNJKXdgJfkzNEDcN+ub/oA+h9i99vU0bl3mfQy1IRQabEbQK43so3CW
         lctkVLH2jRvb1KopuTAmBAOL9ClC8plGRmcuVjHCJ+xbI2j+hO8t3CgTN1PAYW13ciPF
         OL8w==
X-Gm-Message-State: AOAM530eY+skFfMi972vaP/qdJWH11n5nOyvFiDci0AvaRsMn+iwOneV
        9Jhv1VNFNn4iZOlPFUiQBjw=
X-Google-Smtp-Source: ABdhPJy06ogn5AReSmjrDXoNqeHOx9T/MOD3zUoKXO5m2mM/SMzwi/+8SLJD50/MLx9VCLra1SpK1Q==
X-Received: by 2002:a17:90b:1812:: with SMTP id lw18mr2133477pjb.133.1601467368153;
        Wed, 30 Sep 2020 05:02:48 -0700 (PDT)
Received: from localhost.localdomain ([1.129.171.63])
        by smtp.gmail.com with ESMTPSA id w5sm2369374pgf.61.2020.09.30.05.02.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Sep 2020 05:02:47 -0700 (PDT)
Date:   Wed, 30 Sep 2020 22:02:43 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Subject: Re: man-pages.7: Simplify indentation of structure definitions,
 shell session logs, and so on
Message-ID: <20200930120242.vylnz5khajri5sz4@localhost.localdomain>
References: <20200920214012.454410-1-colomar.6.4.3@gmail.com>
 <61f4e2a4-d468-ceba-2ccf-ce0c061aa20b@gmail.com>
 <f70c7f62-9d61-71aa-67cf-43501a29bccc@gmail.com>
 <CAKgNAki7=AJ7p2AwPkf9+4AkYKdOL6b4D0NyVdwZzu-qHFvGiA@mail.gmail.com>
 <20200921141552.tpuhdxo24lc6e7dh@localhost.localdomain>
 <35b5a9ff-4133-8301-bb75-4b13f7861c9a@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="f6uhviy5uhgeveag"
Content-Disposition: inline
In-Reply-To: <35b5a9ff-4133-8301-bb75-4b13f7861c9a@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--f6uhviy5uhgeveag
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

At 2020-09-29T22:15:18+0200, Michael Kerrisk (man-pages) wrote:
> Hi Branden,
>=20
> I want to circle back to a point you raised...
> If I understand what you are saying, then iif we are at an indented
> level (.TP, .IP), then we can use your idiom:
>=20
> .RS
> .RS n
> ...
> .RE
> .RE
>=20
>=20
> But, this idiom won't work if we're not at an indented level (?).
> In other words, at .PP level we should not use .RS/.RS n/.RE/.RE,=20
> right?

Not true.  You can use .RS/.RE "almost everywhere", as topologists say.

> By contrast, ".in +n/.in" works regardless of whether we=20
> are at an indented level, right? (I'm not saying this recommend
> the use of .in; I just want to clarify my understanding.)

=2ERS and .RE are wrappers around .in.  .RS applies a default indentation
if one is not given, and in any case stores the indentation amount in a
register named for the indentation "level" (roughly[2], how many times
you've called .RS since the last .SH or .SS).  That way you can call .RE
without arguments, or as ".RE 2" to say "go back two indentation levels"
without having to track or remember any indentation measurements.

Does this help?  If you can think of any place in groff_man(7) or
groff_man_style(7) I can make this clearer, please tell me.  Until today
the only two "FAQ"s I had in (what is now) the style page dealt with
relative insets.

And you're not alone in misunderstanding .RS/.RE.  My frustration
with it back in August 2017 it is a major part of what sucked me into
the groff project in the first place[1].

Regards,
Branden

[1] I wouldn't try it inside one of the macros that uses an "input
    trap".  I don't think it would occur to most people to even try, so
    I'll save my experiments for _after_ I've sent this mail.  :)
[2] .RS and .RE work like nested parentheses.
[3] https://lists.gnu.org/archive/html/groff/2017-08/msg00028.html

--f6uhviy5uhgeveag
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAl90c9IACgkQ0Z6cfXEm
bc6PDQ//djCKosj8E49PvtNOB/ummSylv8ZSayhrR1Qwshfy8PamKW6Jz6+AzjsC
mIcsO8s2uuUK6HKnhg+SLHvEw0FBywzA34AsEspj9tpxyosIXAFErVST9Jumb+rH
2D9w5lHJ7NVad/t5NiwMYAXgQ0aHKgCgNtrfDmzNNpJXkTS8CmpdWWe8imU5oV0f
hd4j5lOnbdo3SXEb3nzIQ0FkbcDt8b8rVSfHLI+LgLM5stEb5vX/tHeD76zk9mZn
pyuvQ6braqEorJ421UhJgdfejkzkM80A8LKKbrQ+YOBbI+EYageYZgcDy9lwek4w
GqkxfeJvnXVGCQCxyFlAueMXCM2z4Cqm0rEn9Ul6hCAeWZ09ptSXDTrIczCrdPa2
Y4aiUMZ/W6y/WsKaWXwMIYw2gRp0Afl9tvXw7trq6/+aRswvRd2hducfaUz9ya65
kx0UWv3DyTAy8KlX0ul0R1MprP7wR7tPnbwKETd/6VSMGY7SrHoYm+xs3XZp2xqX
L+bv2FpO/owxaQDuIS15pEGioIL8JN4oR726xohDp/f9cJ7itDm4YY2gxgQ0fuX8
+whsX15t2BnVBiyfFvMVGtSEF+H4ichdvsE4GIeGTnXxULXGoQ52tIaeK2Z4FPzl
O7VDEQCpzkLm/wFtTOoMX65kYyPWVemNeCb7e7bCVMsnWl133r0=
=1P8f
-----END PGP SIGNATURE-----

--f6uhviy5uhgeveag--
