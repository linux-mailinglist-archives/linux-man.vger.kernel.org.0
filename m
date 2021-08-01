Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BE2BC3DCAFF
	for <lists+linux-man@lfdr.de>; Sun,  1 Aug 2021 12:03:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231621AbhHAKDE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 1 Aug 2021 06:03:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33906 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231461AbhHAKCv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 1 Aug 2021 06:02:51 -0400
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 97D2EC0613CF
        for <linux-man@vger.kernel.org>; Sun,  1 Aug 2021 03:02:40 -0700 (PDT)
Received: by mail-pj1-x102b.google.com with SMTP id q17-20020a17090a2e11b02901757deaf2c8so20869015pjd.0
        for <linux-man@vger.kernel.org>; Sun, 01 Aug 2021 03:02:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=jY5MxU21MasxBNShbguYxLOGfzkl3h7SRL5gjtYkfcw=;
        b=q/QsystEKd8zpVLOpt6w8fCzuJgVi+YyQnaVo2lHlBOeZ40nHDb/YRze/h2o5EiWZo
         8Hm9aTEwLRPhMswjSRYU7wt8ickqgOfn98bTyl6e/F/6zduSLfWLIYPKLBdmMbLwD+CK
         o+d5j5E814zGWgDrDDcZWnh+thVoQHqazvULnCGz0NbzqE6lJz/XPvYPGt3XcDwwAu2W
         xPiFu3Q0XzGtfPRixKQ9QL5ylzgKhd0nXFvWUgqZP1KUwdhy9JVHBZi/w1LSuKDH2MoZ
         YsZSwyjwNahZ1yLzlpB77Pg5EZBoDrK58f5VGWxPlqWRctXM/mw7OBQv/vL5vzY1LEWm
         xUvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=jY5MxU21MasxBNShbguYxLOGfzkl3h7SRL5gjtYkfcw=;
        b=O7fnzEAZo7v+hDh91oHWSc5YohI5mb/EAdG3KXeRMDtPjDD+Q8CpH6ME1aPgLJLdIb
         jp/IivYYQ3KXRZPaYaudt3hWS0e0KU8j+9QxpU8vyN9VbG6LkoJEA5rzmyOqwbmDLmXK
         HAifbq9EaqSo93K/HV5eCBHD37OBnzFjjBVgRuMlNLZStxZKImSl4VV0HK3QDacYbF74
         SmuLpQTaL9uoPJHL6YD7J9Gr8EJMSD3uwASJDJ+0b+85+C8+ZKnEaPi5b9Uy2xz68Pbr
         cLjT/Ux4Q17wRzmItckiT09r8URLjT4s+QKzsp0RLQcGFfmuis7UkClReCZIL0jL4XID
         XdkQ==
X-Gm-Message-State: AOAM531jYRwiyXndDjxfSBIK12r5Z6gwrVtX3vv8aCtyG9eojwv4ClWx
        pieWO29+cN6zVUoKdqmBTd8=
X-Google-Smtp-Source: ABdhPJxYpXGsdkInpVRpv4O0yCmKcUsScanp09GNZdljTxmde9D8Hn+1NRPStDtL0+Ys9Y1CPfCPlQ==
X-Received: by 2002:a17:90b:14e:: with SMTP id em14mr12030646pjb.208.1627812159711;
        Sun, 01 Aug 2021 03:02:39 -0700 (PDT)
Received: from localhost.localdomain ([1.145.37.91])
        by smtp.gmail.com with ESMTPSA id u62sm8210794pfb.19.2021.08.01.03.02.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Aug 2021 03:02:39 -0700 (PDT)
Date:   Sun, 1 Aug 2021 20:02:35 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v2] mount_setattr.2: New manual page documenting the
 mount_setattr() system call
Message-ID: <20210801100234.mcgwwxr42wxwe7gf@localhost.localdomain>
References: <20210730094121.3252024-1-brauner@kernel.org>
 <9ba8d98e-dee9-1d8d-0777-bb5496103e24@gmail.com>
 <20210731014251.whqfubv3hzu3mssw@localhost.localdomain>
 <00d3c648-bdb5-3005-807f-ec2d3360f16a@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="4ete7hxopoxgm7i3"
Content-Disposition: inline
In-Reply-To: <00d3c648-bdb5-3005-807f-ec2d3360f16a@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--4ete7hxopoxgm7i3
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[CC list brutally trimmed]

Hi, Alex!

At 2021-07-31T13:20:59+0200, Alejandro Colomar (man-pages) wrote:
> On 7/31/21 3:42 AM, G. Branden Robinson wrote:
[...]
> > I recommend:
> >=20
> > .BI MOUNT_ATTR_SIZE_VER number\c
> > \&.
>=20
> I also prefer your way (at least in cases like this one (maybe in the
> synopsis \f would be more appropriate)).  It is more consistent with
> our current style of placing each identifier in a line of its own, and
> normal text separately (punctuation is placed wherever it's simpler,
> but in this case I think it's simpler in a separate line).

Another benefit of using the font escapes that I was reminded of today
while doing a big revision pass on groff_man_style(7)[1] is that you get
italic corrections for free with them.  This was already true to some
extent in groff 1.22.4, but I refactored the implementation of the
macros earlier this year to be brutally consistent[2].

I would say that I like being able to tell man page authors that they
need not learn the italic correction escapes, but I'd probably hear from
many of them that they had no intention of doing so in the first place.
I might get threatened with defections to RST and Sphinx just for
bringing it up.  =F0=9F=A4=A3

[...]
> > groff -man -rCHECKSTYLE=3Dn
[...]
> I'll try it.  Thanks!

Cool!

>=20
> > > > +.BR open_tree (2)
> > > > +with the
> > > > +.I OPEN_TREE_CLONE
> > > > +flag and it must not already have been visible in the filesystem.
> > > > +.RE
> > > > +.IP
> > >=20
> > > .IP here doesn't mean anything, if I'm not mistaken.
> >=20
> > It certainly _should_--it should cause the insertion of vertical
> > space.  (It would also cause a break, but .RE already did that.)
> >=20
> > The interaction of .IP and .RS/.RE is tricky and can probably be
> > blamed, back in 2017, for irritating me to the point that I became a
> > groff developer.  I've documented it as extensively as I am able in
> > groff_man_style(7)[1].
>=20
> Yes, indeed there are 2 consecutive blank lines, which is incorrect
> most likely.

That sounds like a bug in your man(7) renderer, and it sounds badly
violative of the semantics of these macros in _any_ implementation.
(You can't stack adjacent paragraph macros to make additional blank
space; you just get the one.[3])  This stuff has been stable since 1979.

I do not get _2_ blank lines after the paragraph ending "visible in the
filesystem."  Just one.  None of groff 1.22.4 (Debian), groff Git HEAD,
nor mandoc 1.14.4 misrender for me in that way.  What's your tool set?
If it's groff, I'm intensely curious to know how it's screwing this up.
I can likely help you root-cause it.

> Probably a glitch of copying and pasting without really understanding
> what each macro does (not to blame Christian, but that the
> groff_man(7) language (or dialect actually) is not something familiar
> to programmers, and most of them legitimately don't have time to learn
> it well).

There is a wealth of terrible examples to follow, which make the
language seem harder than it is.  A large part of my work on groff's man
pages has been to make them good examples to follow--but as, at my last
count, groff's ~60 man pages produce 364 pages of type on U.S. letter
paper, this is a process that is taking some time.

I acknowledge that you and Michael are wrestling an even bigger bear. :)

> If there's any difficulty that I should/may address, please tell me :)

It looks like my latest effort was as ill-fated as my past ones.  I'll
follow up in the appropriate thread.

> > I think it bears restating that code examples in man pages, whether set
> > with the .EX/.EE macros or otherwise, are not "literal" or
> > "preformatted" regions[1].  .EX does two things only: it disables
>=20
> s/1/2/?

I forgot what I meant to link to here.  :-/

I don't remember having a link to a Version 6 Unix (1975) troff manual
handy, but if I did, we can perhaps all be grateful I failed to include
it.  ;-)

Regards,
Branden

[1] https://www.man7.org/linux/man-pages/man7/groff_man_style.7.html
[2] https://git.savannah.gnu.org/cgit/groff.git/commit/?id=3De58e32ea308ac5=
d344b3c79b20d7f4ab2456377b
[3] This is because the man(7) paragraphing macros activate *roff's "no
    space mode"[4].
[4] https://www.gnu.org/software/groff/manual/html_node/Manipulating-Spacin=
g.html

--4ete7hxopoxgm7i3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmEGcScACgkQ0Z6cfXEm
bc5/Tg/+JUGcJGy/bifQYb7wy2SRndnFZMjosEQBiLznQcEIxktG460XhYFDSg/N
qixPXpbIOK1ewySLle4YopbLl6qnsZrsnyzmgXXB7zUMomezXHecJjPCywUxgSMJ
9UL0f+dm4H83T7QnStv6IKiCyAgEBUi6ORUk/vvJutbOhoCVXmDn9C75FmB/6hDL
Tjs+3d07pSYPr//8nbhXfLzSEYbQ1PftVuFyKIDenoWnSRpC+/0x879JfsF2fftp
1oX1gV6PuFeIFyPUb0HTYnya1WvpZpS5dWsqhJW1ul9oQkiPzjO0g3SVWL1NCQWp
VhB3owYI3u0qJdXbnHPEguMc6BdlZLyU4Y1tUWipRGJndxMADguWZyGYNqkiiU4R
1FfGsiSJBPnUIoQwT9YOCqHkvkFOpaUTZBMe17G7jOw90pyWG4GTgDKPiLOX23zN
9QlY1kLL/z4vEV8z9zmJbkjVHNRekyAIHPdAr0iizXDvDu/eBvdI6sGbci4DeaRY
TKSgoGSFEI5GdjrLstiBsCr1DF40NoQVV18IxrVP2U4Nmikujcd+ku6vf1Ix/jVq
ssOlPmjo5JADWpGSgZlEA6XfJBIvAgUZnjlVoV4l8Mdymwi0bygEudO0SAxydM/E
L5t+zdpW3ZfLXp1dolInGum4M0JxT4VeZiMVOUjhJd8S5vsRiI8=
=CgTf
-----END PGP SIGNATURE-----

--4ete7hxopoxgm7i3--
