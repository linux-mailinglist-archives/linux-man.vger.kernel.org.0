Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0FD766519B4
	for <lists+linux-man@lfdr.de>; Tue, 20 Dec 2022 04:41:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232912AbiLTDlH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 19 Dec 2022 22:41:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58626 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232920AbiLTDlF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 19 Dec 2022 22:41:05 -0500
Received: from mail-oo1-xc35.google.com (mail-oo1-xc35.google.com [IPv6:2607:f8b0:4864:20::c35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 27F4B260C
        for <linux-man@vger.kernel.org>; Mon, 19 Dec 2022 19:41:02 -0800 (PST)
Received: by mail-oo1-xc35.google.com with SMTP id e12-20020a4ab98c000000b004a081e811beso1733289oop.2
        for <linux-man@vger.kernel.org>; Mon, 19 Dec 2022 19:41:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=JITB/IcMKUYrrXodIM5A5ZHYOqRpdaDb4bzA7478QvM=;
        b=CjygTjdXdhJ7XRhTvR/giLmAVJyUxErcP3Ul8r4rXIxOJjbQFuX7i7JPT5n+2SkSkX
         fmEV55nsjEfQx6NQe663XNc+8UQGQTYt4xz+R4YLPF0uuEfGHL4hP+dTjNuiItbjyArH
         kaRCGrI+FnKSQqDV1L77qFBoaaRhTEtRlZTaJo5IhgdPvLKxTGakur8Ekp4ip/ee34kx
         Lx42o/oew9vF3RyWUZUcgmOTOqSG+9IL/7PROaAgG0caP8bfWRc8Ewj6THEwEoLrxnav
         FH2vbzsjAOSlhpFqC7E0EVL+PVvyfiZEXqs4fR/MFhPTmILw5st4KclT+v2UESX8sPyq
         1YIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JITB/IcMKUYrrXodIM5A5ZHYOqRpdaDb4bzA7478QvM=;
        b=sBvO+1fxxuX76x49UgNFshae9SQo12s9oRAaZEFiYasESPNHYkWkwmxbrTYhJkwTkW
         g/KGhNHQhp7N3JhLHLhBGJI8zx+u93BlogWyCY3SMs4wN4cRnZC4DPGooH59olCr1R4u
         uJvnTcw15lWHoyQ3cAWcF+XQmY6gYjeP0IrqWfcMsUXVRHNZDufE7djaABX6bSv7zcad
         w8pXCKFEAoBzr4cWrYeXQJMSSCavKYlvEm2P7k2O0N+IGAzRciLx6f2VriI7e196eLFV
         Hua4UJncCR9DC6smHHX8GR+cqvVchKbf5TUrmVYvOv1j6dHAia08gKUls/0mjb2FHMhy
         xGpg==
X-Gm-Message-State: ANoB5plNBruI5Uc2/y14GsKKMIEvmuAYn4DRW5cM8SKh7F9nL+iNEd6A
        oLfzRVaW75wHm/DcW6zlAKGJj63v26Ossg==
X-Google-Smtp-Source: AA0mqf4K8/bbYby8ET90ZURs9UtQuMCLACtJ2D8bTIYwkaYHeBLgsN5XUKDRcL0WW5zmFB52M1mG9w==
X-Received: by 2002:a4a:ad81:0:b0:49f:dec4:10db with SMTP id v1-20020a4aad81000000b0049fdec410dbmr17277762oom.0.1671507661437;
        Mon, 19 Dec 2022 19:41:01 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id h18-20020a4ad012000000b004908a9542f8sm4613304oor.31.2022.12.19.19.41.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Dec 2022 19:41:01 -0800 (PST)
Date:   Mon, 19 Dec 2022 21:40:59 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Subject: Re: patching suffixes(7) (was: groff 1.23.0.rc2 status report)
Message-ID: <20221220034059.piz7qsu3r67j2np3@illithid>
References: <01989003-349f-fb6b-f460-89106b82bc34@gmail.com>
 <2176657.1BCLMh4Saa@pip>
 <af2dad8a-ef40-3e30-671e-0b0f5f125c75@gmail.com>
 <85c6b38a-be05-806f-528b-fe1c559dc1b7@gmail.com>
 <20221217160830.rcvgr65axz4hpcge@illithid>
 <5439523a-4fd1-e0c7-9116-6fd8c2a65c67@gmail.com>
 <20221219053245.j5omcuyxd7rnj4qt@illithid>
 <839023e9-cbe4-8039-d51e-e2df581644e2@gmail.com>
 <20221219165900.dfgjj5spciy4cqlt@illithid>
 <acebbd20-d235-7668-5481-2f043cb2c9cb@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="l525jqvvankqjbkz"
Content-Disposition: inline
In-Reply-To: <acebbd20-d235-7668-5481-2f043cb2c9cb@gmail.com>
X-Spam-Status: No, score=-0.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URI_DOTEDU autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--l525jqvvankqjbkz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

At 2022-12-19T20:10:25+0100, Alejandro Colomar wrote:
> On 12/19/22 17:59, G. Branden Robinson wrote:
> > [dropping Deri and groff@]
> >=20
> > At 2022-12-19T17:39:37+0100, Alejandro Colomar wrote:
> > > Would you mind sending a patch that I can apply with git?  I could
> > > manually edit the file you attached, but I'm feeling lazy for that
> > > :\
> >=20
> > Damn.  Our lazinesses are duelling.  :P
>=20
> :P
>=20
> I actually wonder how producing such a diff was simpler than just
> copying the output of git diff...

I don't find "diff -u <tab-completion>{,.new}" very difficult.

(I often do that in repos that I mostly read as opposed to contributing
to; that way my half-baked ideas don't get in the way of a rebase pull.
Branching doesn't solve that problem, and if I git-stash something in
such a repo I'm likely to forget about it, or not think to check there.)

> BTW, I still plan releasing man-pages-6.02 in a two days, and feel
> confident enough about the string changes (modulo a few tweaks that
> I'll apply) to ship them in it.  If you have any comments about them,
> please voice them :)

I have weak preference for the name "string_copying(7)" over
"string_copy(7)", but leaving the summary-description the same.

Apart from that I have no comments, apart from encouraging you in your
effort to reform common practice to something less sloppy.  I think you
will get pushback from people who (1) don't appreciate how horrible the
C string library is, in part because they have mazed themselves with the
notion that the engineers at the Bell Labs CSRC were all infallible
giants who deigned to walk among us mortals for a while; and (2) would
rather wait until some total replacement solution comes along, which of
course they would oppose with at least much passion.

Nevertheless, once in a while they'll make good points.  Take that
opportunity to anneal the quality of your initiative.

The standard I/O library is a disaster, too.  Much more esteemed people
than I have made this point, such as Korn and Vo, who presented their
case at USENIX in 1991.[1]  Of course, they did the smart thing back
then and didn't FLOSS-license it, possibly under direction from AT&T
management.  Thanks to that shrewd advice, sfio.h stormed to success and
ubiquity instead of being nearly forgotten.

But even a permissive license may well have not been enough.  The
average programmer will happily drink from a pool of dioxin as long as
it is a familiar one.

> > was David Wheeler (no, the other one)
>=20
> Didn't know of the other David Wheeler.

Well, David J. Wheeler (computer scientist) passed away in 2004, so
possibly David A. Wheeler (computer scientist) gets mistaken for him
less often now.

I've been making this joke for years.  It hasn't worked once.  Like the
average programmer, I learn nothing from this.

> According to wikipedia, pkg-config(1)'s initial release is also from
> 2000.  So, yes, probably it wasn't widely known at the time.

It was an innocent time, when packaging was still young and exciting,
and before JavaScript people getting paid a lot to work in e-commerce
decided they could do it better than everyone else.

Regards,
Branden

[1] https://www.cs.princeton.edu/courses/archive/fall97/cs595/sfio.ps

--l525jqvvankqjbkz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmOhLsQACgkQ0Z6cfXEm
bc54kRAAhSnUWyFj21g/rRYJnanzU+Mb5zEPXn6qloQjHfCq2N7Z3aFFYFtamj5w
5tMxm3H1sSSfxmXQy6lyHqbOm9eb+vbEmMrmf3lA5JJvXjXUBQX0R/wse7EPpyIF
6A1FRWz7FZT3wmB9f9ncsBxAnPdMQNpf+jCA6EVwXFxRRStezksQypKOLcQkSuN0
qnF3P4UzJIH48XVFieBd74g5qiKNFWKq2/1ur7cGBPt3bbfuP9PTPs4zJSXVTitm
ZgswAdofTRP5p16Ovh7MGMNTK/cEfzL2cF61KqMcpEnOpj5NX3Iy4hZ1pcypfysk
muCFglM478isjwlGdopZ6zQTchcw5PDSAs6UwyZczwjbsDsQmOPgm0IScM9KblpD
6Ri3nJM5Tyeyh4OicbfVq+QVv2AFz1o3e7s/zjWN0IYwMRd9eDqTKbm/OAF2wQrV
8l6tXYkRoEo4Rbchg79+0zxjfEwynr3HoZVbcLiY155O1fkDGRRzRm6ng24Kk7cS
erIC2O1h6ODS49tqCItN4fKB/NxtMINRSTAmtqfZLTRm5fpCLxfFWdONC0W8aQor
GxM9zY8vN1Kz/wrhZV4Z7iBKsoH1hPSs4Yg+zZZyGiljD+//+kn1y/cBbdu4fl+N
hS92RFi2q8N3mWwQ8JwXeqz79mVJS2JeE6mhOdKgxEt5Q8yGLfQ=
=/rGh
-----END PGP SIGNATURE-----

--l525jqvvankqjbkz--
