Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 608FF1B7F1
	for <lists+linux-man@lfdr.de>; Mon, 13 May 2019 16:17:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729176AbfEMORy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 13 May 2019 10:17:54 -0400
Received: from mail-pg1-f196.google.com ([209.85.215.196]:41990 "EHLO
        mail-pg1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729272AbfEMORy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 13 May 2019 10:17:54 -0400
Received: by mail-pg1-f196.google.com with SMTP id 145so6853434pgg.9
        for <linux-man@vger.kernel.org>; Mon, 13 May 2019 07:17:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=87GsnQnGYmWqh5Sj71C/SZeWeJixyHER0e500PYdzWM=;
        b=NDKWYABlVfmn1TBe7hecf8OMpt5Cn5bZ9uywoGbBDUTXEzO747R1PslqoMWo3oKPtO
         lVh1JWCAVdBWA3nI1OihodpnxqhW1lhHpDt2LlWHe8fTeJn+6Z2Ohzfzjjp541BPsCWv
         oJul8DKwZfLP0BOn7gwMGxtSzh7g/mKODLPI8kW7PoXawiGCXEc6NyZPmjSMni5MyPNZ
         TK+MlPs89WfUKjSd39OoegL/pmhvBr3R7i0ggYCKPqzoV3vB9zhMSFJ4xmQwHJHgCyTL
         De7Bz4sbq0gu6NPsKaD35nOMObLjhkllOnmP3GSgf4g7dBm3mxN773KerENL5mRbXT0Z
         VM2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=87GsnQnGYmWqh5Sj71C/SZeWeJixyHER0e500PYdzWM=;
        b=R7R4nhGStXgOYWD0BsQiQkc2E33yymPnOgytgWuSSCMt0UyoqDBsmZFtEz0cShmpfb
         neo6QQY0fn2CU4mRXpD5l41k5Xwfnj5PoiT9j7T7TNgGVG88x7kONZTq2aFoDcQAv3Lf
         oVGBP6TSsx+ZGIk5Fdwy8yOClGfZzfEEyxnKLPwXvlT5G/ehNM3VbauSo103H09ween3
         prJ9AFM2AP7Cr4gBdfrPvgQb40GWfmRsrUld27PZxpyYBGfgxFpWYzqyd24aHeVvAQdX
         K3n/3gwjepazNBnrLtAiyxA7LSHIoj5paOxYN2tg4Oj783LHwNIHOXPTMCJMSnKzvWj0
         K1Gw==
X-Gm-Message-State: APjAAAWupAQozeeW1490SaeX0K07i7BKf3AdHfyhJ37nMVMjaHVZK2HJ
        2mLGG15uXJVz2zvdbYrJCRU=
X-Google-Smtp-Source: APXvYqxPzfy0e87In7lVHM/H0Ic38aHhXfCPE7BuNAQX4z/uHsHh3D3IxtmNxXf6ol1rl6pWxR7oog==
X-Received: by 2002:a63:d512:: with SMTP id c18mr32006692pgg.252.1557757073833;
        Mon, 13 May 2019 07:17:53 -0700 (PDT)
Received: from localhost.localdomain ([1.129.195.58])
        by smtp.gmail.com with ESMTPSA id e12sm15146531pfl.122.2019.05.13.07.17.51
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 13 May 2019 07:17:53 -0700 (PDT)
Date:   Tue, 14 May 2019 00:17:48 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Florian Weimer <fweimer@redhat.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH] pldd.1: Document glibc's unbreakage of tool.
Message-ID: <20190513141746.mail6ny43wh4t5oj@localhost.localdomain>
References: <20190511072049.2w7pp723iszp3gra@localhost.localdomain>
 <8736liit24.fsf@oldenburg2.str.redhat.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="qg2gktptlxzbtlgc"
Content-Disposition: inline
In-Reply-To: <8736liit24.fsf@oldenburg2.str.redhat.com>
User-Agent: NeoMutt/20180716
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--qg2gktptlxzbtlgc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Florian!  Response inline.

At 2019-05-13T11:48:19+0200, Florian Weimer wrote:
> * G. Branden Robinson:
>=20
> >  .SH BUGS
> > -Since glibc 2.19,
> > +From glibc 2.19 to 2.29,
> >  .B pldd
> > -is broken: it just hangs when executed.
> > -.\" FIXME . https://sourceware.org/bugzilla/show_bug.cgi?id=3D18035
> > -It is unclear if it will ever be fixed.
> > +was broken: it just hung when executed.
> > +.\" glibc commit 1a4c27355e146b6d8cc6487b998462c7fdd1048f
> > +This problem was fixed in glibc 2.30.
>=20
> I'm not sure if it makes sense to document this in the manual page.

It might not; another resonable approach might be to nuke the "Bugs"
section of the man page entirely.  However, see below.

> I expect that the fix will propagate to affected distributions fairly
> quickly, now that it is available upstream.

True for fast-moving distributions; as I noted in the commit message,
Debian 10 has already got it backported to its glibc 2.29.

> It's certainly more likely that users will receive a glibc update with
> the fix than a manpage update with this change.

Desktop systems will get both; stripped-down systems will likely follow
your scenario.  On the other hand I generally read man pages on my
full-blown {desk,lap}top, not some embedded or target system.  So I can
imagine a scenario where somebody is targeting a "stable" or legacy
system with glibc 2.29 or older and is wondering why the F "pldd"
doesn't work.  They type "man pldd" (as a last resort, of course) on
their dev box, and lo and behold, all is explained.

Michael K. is pretty diligent about having man-pages track behavior
changes as they come and go in the Linux kernel, and my patch is an
attempt to match that tradition.  However, it might not make sense or be
his preference for the glibc-related man pages.

My primary concern is to get what is now a false statement corrected or
removed.  pldd is not still broken.

I have an update for the fiddly third patch, but once Michael follows up
I'll continue that branch of the thread on linux-man only; I'm confident
libc-alpha does not care about the fine details of *roff markup.

Regards,
Branden

--qg2gktptlxzbtlgc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAlzZfIEACgkQ0Z6cfXEm
bc4L1A//U0OWpdKWAFbsL9Jz4xBTg90r4l6S61jcnVp5/o0CiG9bLondvf+OWMyR
nJYU57HCKJG1laqEAHU0YjyIZG3CLTgJvJ5RPKE4Wa5diW4tTVh+Fi3RNTR08Tyf
yaaw9m6eHM4i1ScdOIlgGFgLERzuxmz/pMz1Z4cvkk15vvtAiNWEKNZ2Iwdrupvf
PANEKsYsmLx8jSZPcd87N5YjfgK0GyhlXhaTqAnHuxQzTZOFaa7mH6PH3TTP7Mij
UiZbWtDVzi4ZlI6iaOUOYgRpzBRz2gI96If6ZCvxFT4G8ml/NBNHA5qHqniw88dm
Yd+b+kFyaNcWqsvx88a1VacX6G1I+Sy/qOlPX9Wwp20nmEln4na5hN7nVg/hpG37
3p0a38OB969DB5GW1cEHEuPft436L7akHuc5ewd8/HCfEX+Nwv9/YUnekdbPdV9h
vnM23m4VaIrceu4pL33KEJ4hNxGwvAiL4ocpLBfoMmIBDdrbSB52qKpzJjDXXv+M
4Kjc64wDXZOlNiL0t78vHIyl3w5YS4LZZPG1nRq31hDc8tloO3Wbn8HU3GASzykr
aicRlQzMU6HwqWIM/iDisqg2KenOs1G83g7TPoUVlTCdE245cu+XcRb7WGG+lACw
Dbdi+lJs32qnDPkJaYTxjWTR0taTRCmzUMhK27q6qmS66pPGmjg=
=yka0
-----END PGP SIGNATURE-----

--qg2gktptlxzbtlgc--
