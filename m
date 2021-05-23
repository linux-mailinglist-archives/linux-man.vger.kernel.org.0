Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5700E38DB68
	for <lists+linux-man@lfdr.de>; Sun, 23 May 2021 16:26:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231771AbhEWO1p (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 23 May 2021 10:27:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51936 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231766AbhEWO1p (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 23 May 2021 10:27:45 -0400
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com [IPv6:2607:f8b0:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A21C0C061574
        for <linux-man@vger.kernel.org>; Sun, 23 May 2021 07:26:17 -0700 (PDT)
Received: by mail-pl1-x634.google.com with SMTP id t9so4876413ply.6
        for <linux-man@vger.kernel.org>; Sun, 23 May 2021 07:26:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ryIjpjSgYqoQcigrmAWsoCCzpeNsPXeR2H3eihGr7NA=;
        b=PDUM+ZmJ+RglNnPqlJOnjUNK+xwQJE4Ys4kFsg6MJY5+didY45+Nl0CINITpIdgMX2
         RHJ7975XYz8cLZx3zhAjW5V/qeuL+N2nBPioAS8b54sd5pbMTOBGNM6urJHGMNPO465o
         bXaNEupUFyafb1QUAJlglNiSAlAaSHv2QqEl/nvoQA3HwVnE6bgJcSV9iWf6F2J4da+3
         YmpFWPbdl7A7YAvZFzTjLcaDvXuxLJNsqmPisiLpTjobsh+KtqStNyh6rRjAa+J+4wEl
         tYKt5FV1xvVxiCIsCqaR0LTac0A5gjKLk9LjqBpbkNSbVtyebr/YMrv/c5xJfe5tTRmg
         QuQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ryIjpjSgYqoQcigrmAWsoCCzpeNsPXeR2H3eihGr7NA=;
        b=LjYj3u1S3FncEWDAN6DJ3i8tLPNjNyglrz/cVF1uktX4m/tQnH+5N9Yd45k/JUaxvm
         uqcY4Q170djhA4KJS6MifdK9nZJA/Pn4T8woOoi3wMQDbwLARQLtB6AUzrbuUSly9sUZ
         BxADyVBKtcY4heCft0a41vcr37DPFdxE+R3RD7PLObZLC+xst5rUnwW+lyUEspJkEWmY
         y3OnIvioFMikMBs4bRoAqQbg9U/x6Hz7a4UrknsnbvgIxeIrbFKDCUJ7JhVygGEZ9f8d
         PB6CseuWDivkVlkIMJ0acWO2rh7d/io9CNHv/35SGyz4Oz2JesmamSyBOQfP42y8ShRQ
         kHBA==
X-Gm-Message-State: AOAM53180ttUyOrEmygF1qub0AQ/msgZ6uaP9NYFnpjwvSHtrjZ9Q3nY
        /vMsLjIZTDDOKK4ZKVsUNDc3M5cuFgw=
X-Google-Smtp-Source: ABdhPJxzSNFALzWWeRPELMw1yuw7Iv+99mOSOEQqcx2RlJuA1WniLVwRri6DpjSW1j4f7W0IRwTq3Q==
X-Received: by 2002:a17:90b:14cf:: with SMTP id jz15mr20798922pjb.105.1621779976785;
        Sun, 23 May 2021 07:26:16 -0700 (PDT)
Received: from localhost.localdomain ([1.145.58.187])
        by smtp.gmail.com with ESMTPSA id a21sm8775514pfk.152.2021.05.23.07.26.15
        for <linux-man@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 May 2021 07:26:16 -0700 (PDT)
Date:   Mon, 24 May 2021 00:26:12 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     linux-man <linux-man@vger.kernel.org>
Subject: Re: Adding struct-xxx link pages for structures
Message-ID: <20210523142610.vycmifmrznf7oqlk@localhost.localdomain>
References: <5872e635-1b61-6193-55fa-0a26e59afbca@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="luloce5zrmi4jw3o"
Content-Disposition: inline
In-Reply-To: <5872e635-1b61-6193-55fa-0a26e59afbca@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--luloce5zrmi4jw3o
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2021-05-23T16:03:30+0200, Alejandro Colomar (man-pages) wrote:
> Hi Michael,
>=20
> We have some structures defined in system_data_types(7) for which we
> don't have a link page, because it would have shadowed other more
> important pages.
>=20
> I've been documenting 'struct stat', and it happens the same: I'd
> shadow stat(2) with stat(3).
>=20
> But I need to refer to stat(3) (or whatever link page we decide to
> have) from stat(2).  So I need one (referring to system_data_types(7)
> isn't very informative).
>=20
> How about adding struct-stat(2)?
>=20
> However, that means that we should also add struct-xxx(3) /
> union-xxx(3) for all of the structs/unions we have documented there
> (one might reasonably expect to be able to find struct-aiocb(3) or
> union-sigval(3) if there's a struct-stat(3)).
>=20
> What do you think about it?

You didn't ask me, but I'd recommend reversing the order, to put the
most important information first, and that's the structure (or union)
tag, not the "struct" or "union" keyword tag itself.

I think the common use case is someone who has the tag in mind (or needs
to know it exists) and is looking for it.  It is less common that
someone is going to want to browse every such page.  We don't want to
discourage such curiosity, but I think such people can be accommodated
easily, say in the libc(7) man page.  (In fact, I think that page could
be made even more useful by giving a synoptical view of the C Standard
Library, but that's a digression and, like a good intro(1), no small
task.)

Putting the tag first will also help in the tab completion case, because
the tag name will be less ambiguous than "struct".  We can easily
imagine someone typing "man struct<TAB>" and getting blitzed with a
menu of dozens of items.

If I do that for "stat" on my system, I get this:

$ man stat
stat      stat64    states    statfs    statfs64  statvfs   statx

Seeing "stat-struct" in that list would leave me with little doubt as to
what the page will cover, even with the manual section missing.

The use of a dash/minus as a separator "feels" unorthodox to me, but
perhaps that is just the pull of blind tradition.  I think it's actually
a better choice than an underscore because of course "-" is not valid in
a C identifier, and "_" is, so ambiguity is avoided.

Regards,
Branden

--luloce5zrmi4jw3o
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmCqZfoACgkQ0Z6cfXEm
bc6rLRAAhaR2R4f3BMFi9P2qIYH5AwiPVgjOUhThrOEFDesYgdPJMnhwOQV6tXQG
W1fqeBV0H/Tb+9PF8D9ixchPeMiLERHYhTOfRe/UQKNjVStb3P2wx9XDzHz9KzK5
bYV11O00hcFjnQU8gSp8ZjDG4oWC/T0aa2FTFabcGuqc1kEgspjrPW9WGoZjQEka
06tefUi3IBp9G1TbmDjCo1c3VUkI+r4KOfKa9tpZVwMTcy75kRIRab8V2EMmVZt+
rn2KLWOl4xgFNHlJwlFDJ2P6t/QsTkHcsINfKQvkLcVyvQY1FH9UXDQyGH+wO3zA
Blj6quMIZzA9mTi1VjUweM6IWRMB4j2wtcnEsycIhjEqqgA2iCSeBuhQ93Ae67i3
Li9KNo7sbA6t0+AQr3bpjE5mjRLXMfAkar/S79WcY+0kVu289D8T4RKzEm60Mkj5
7rqEztGHEWoKIsogC4gVvU4ClX6iUzjdLHoI4WaTA4WGcTlltChD9MMwvgwGPBV5
7zLqwo50uW7zC3EtJD9ArGAytjrOvfFhSbyldhGLPx4HS7bznooOg13LqLI1QNgf
fv/pTQy9DufF0Kju1HbC9QZSyiHuO8pe6boato1wSBAx+ra6+PLENGg4CoF4Yv5Z
kT8JpDVccXB4KxHMDZEaUItdrS5wKhZRm3WkqsDaiDRoO67UG14=
=flQR
-----END PGP SIGNATURE-----

--luloce5zrmi4jw3o--
