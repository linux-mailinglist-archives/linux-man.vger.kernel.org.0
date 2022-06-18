Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 23CDD55061F
	for <lists+linux-man@lfdr.de>; Sat, 18 Jun 2022 18:39:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233209AbiFRQjN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 18 Jun 2022 12:39:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50466 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231359AbiFRQjM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 18 Jun 2022 12:39:12 -0400
Received: from mail-oi1-x22e.google.com (mail-oi1-x22e.google.com [IPv6:2607:f8b0:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7F657FD05
        for <linux-man@vger.kernel.org>; Sat, 18 Jun 2022 09:39:11 -0700 (PDT)
Received: by mail-oi1-x22e.google.com with SMTP id w16so8904597oie.5
        for <linux-man@vger.kernel.org>; Sat, 18 Jun 2022 09:39:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=TrVq32/VGKQOQyQxXlXGyJUX8XWGWTm1bNY7yOk2PQE=;
        b=eKK44ecgEvUXsbB/LTTimjufqtV6DcCAoMupt5Xo0B2ETgdJGeSAbUxNIUk1kh0JHt
         N4TJNAvMSZgVW6RJkUD4Y2TorCOj4/RfjD88st+Upu3ejuPfgczFPN6aFlVCb8Vbeviv
         dZAdTPp7BzpZHxYDtSUX31Mu9I6+bsnBafT7S+OkO6C/lnGSJD6Zf189roLvbIfu19r2
         h+1A2k54uHz21+KSchTxiq5B+eUKo7Sntje9Y7ohHw8nh8oek6FaFoaTdfn2f8n1mmDV
         mdsGTLRenkBXVA49fVNsJtQjgjOXyfYxcjvJl7Pbk/NK/39nXbRs0gpT3zOrIv5I1ZuR
         X7kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=TrVq32/VGKQOQyQxXlXGyJUX8XWGWTm1bNY7yOk2PQE=;
        b=cHbkU/XNrS4rhbhThr5REsRX3vX08NlSwXKPl1a/3RxEcLKfnofDjRbOReln/Rq2cM
         QGn5r0H3scn0CaRkAbkTf1HCs4eirkAh8a/xV922BI9GpOnyy+VZkdbnKMm6yKtmMlm/
         dvevU0giwDxKRV3y9fqhGhPHO//5zGmtfcR3LvN3bUFcsZ+VvaapA/1Tfwsz13NpBeLJ
         QZF1L5ZHWgkdvea4r+U6dGynqwLriVaMrRZb5UjF9udyyMV4ApRK+6SWavuXPbnOshjx
         DAHLDcYzCCbERPNZpuU1Jdpz8narW6FWVsOVSWrLrJwOcUSd85YwGk8PoxlIT6e9GE2K
         I51A==
X-Gm-Message-State: AJIora++DRS2klsvmmIPcX5XKKJJPhlliDvIjQh+cYCkJu7xQfWl/Pi3
        xMct9VHPzPqMCNcvFDtzYMCSSas+ocU=
X-Google-Smtp-Source: AGRyM1sCgKWzi/xdtuCBNK20Ou0LC6uctRWnXFQB9CwfWDDIgCM7TMdLgEgImYrb2cOBEDgFpVMXog==
X-Received: by 2002:aca:c004:0:b0:32f:2601:b1a6 with SMTP id q4-20020acac004000000b0032f2601b1a6mr8283209oif.130.1655570350828;
        Sat, 18 Jun 2022 09:39:10 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id n22-20020a056870349600b000f5e89a9c60sm4261790oah.3.2022.06.18.09.39.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Jun 2022 09:39:10 -0700 (PDT)
Date:   Sat, 18 Jun 2022 11:39:08 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: manual pages for types
Message-ID: <20220618163908.rjpvhqqih5yiflks@illithid>
References: <761bb12f-31e0-369d-8315-d2e1545505c7@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="muri3yb7h6rtrvt5"
Content-Disposition: inline
In-Reply-To: <761bb12f-31e0-369d-8315-d2e1545505c7@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--muri3yb7h6rtrvt5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Alex,

At 2022-06-09T10:57:07+0200, Alejandro Colomar wrote:
> I guess you remember the discussion a few months ago about pages of
> the form statx-struct(3).

I do!

> I'm still not convinced by that, because it means more typing, and
> because it breaks with existing practice.  libbsd for example just
> puts timespec(3) in the global 3 section, with no -struct.  Also, some
> other UNIX systems don't put -struct, but move the pages to 3TYPE, a
> subsection of 3.  I think I like that way most, and that also fixes
> the concerns that Michael had about shadowing other more important
> pages, because we can just tell man-db to specify that 3TYPE should be
> one of the last things to check.  What do you think about it?

I think we're bumping into (1) inherent limitations of manual
sectioning; (2) the growing diversity of implementation languages used
in *nix development; and (3) long-standing practices of incomplete
library documentation.

Points (1) and (2) are coupled.  A Perl programmer often doesn't need to
see manual pages about C libraries, so the practices of (A) prefixing
Perl-related man pages with a "perl" prefix in their names and (B)
putting those man pages in a bespoke section called "3perl" have arisen.

Neither is a wonderful solution because, as you note, they can require
more typing.  I therefore have some mild reservations about a different,
new section suffix called "type".  C isn't the only language that has
types.  So I think this practice pushes a problem to the future, where
addressing it via the same means will become _more_ cumbersome.  Imagine
a future where we have section suffixes "perltypes" and "pythontypes".

These problems aren't as bad as they could be because factor (3) rides
to the rescue.  Faced with a difficulty in placing documentation
sensibly, fast-moving developers make the decision either to not write
documentation in manual page format, or not to write it at all.

In a fantasy world, albeit one where I'm curiously confined to the C
language, I would document the data types and global non-function
symbols exposed by a library interface in a man page named for its
header file.  I would also include there a list of functions exposed by
the library, possibly with some synoptic information.

stdio(3) and ncurses(3) are pretty good examples of how to do this,
though in my opinion neither of them does enough to help the programmer
organize the large number of provided functions in their brain.
(ncurses has categorical pages, but unfortunately doesn't make them
visible until you visit them, and its API, largely for historical
reasons, has multiple orthogonal axes--sometimes you need a "w" prefix
for window addressing, and sometimes you need a "w" infix or suffix to
indicate the use of a wide character type in the argument list.)

Nevertheless, I don't think moving things to "3type" is a choice that it
will be painful to unwind later (should the need arise) in terms of user
experience.  Most people won't want to mess with typing "[-s] 3type"
before the page name they want, so they won't.  They therefore won't
develop a habit they have to be trained out of later.  Where "3type" can
do the most good is probably in the manual section search order.

So even if it's not an optimal solution, it can still be a good idea.
I'd judge it like this: does the change bring order to chaos by
improving topical coverage and/or discoverability?  Does it impose
technical debt?

> I think I'm going to move all type pages to 3TYPE.  Also, I don't know
> if I should use a separate directory for that or use man3 and just
> change the extension.  What would you do?  I see that debian just puts
> everything in man? and then only changes the file extension, but there
> are other systems that also change dirs, right?  What should we do
> upstream?

I would ask that you not put "type" in full capitals.  ;-)

In the abstract there is no problem with having all of these pages in
man3 upstream, if you aim to reflect the section suffixes in the file
names.  There will be no name collisions.

Historically there have been problems with file system performance when
directories accumulate a lot of entries.  As far as I know this isn't a
problem on any modern, commonly-used file system.  Further, my Git
checkout says that the Linux man-pages project has only about 1,700
files in the man3 directory.  The performance problems I've heard about
arise when the number of dirents is greater by an order of magnitude or
more.  No matter how diligent you are as a technical writer, it's going
to be hard to swell the man-pages corpus to that degree.  :)

If distributors need to change the arrangement to suit their performance
requirements, they are better placed to do so.  It is a choice that has
most of its impact at run time anyway, and distribution packaging
systems are well practiced at rearranging their upstreams' "make
install" results.

For development and maintenance of the man pages themselves, I think
retaining the existing directory structure has the virtues of keeping
things simpler and not confusing new contributors with an organizational
distinction that doesn't communicate any new information.

These are just my opinions--I'm not an oracle.

Regards,
Branden

--muri3yb7h6rtrvt5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmKt/6QACgkQ0Z6cfXEm
bc5F6g/+L6W9A7L4gNH9FLY7Q/ki3ZdHESo1IPcdg64gyq6e0G+a5W+Nzf0DPLNL
orHQek4OaNvgHAHDWD7XggVI0lSKRrYj/pF1GLRIZfWesy0DY9IDkE4PA7tHvsY/
8koG3gnIHhD9QZDUzl+O2R3vyGBF1tjaywlO6sxoD9O0X1M36loul/J9TgCgVshu
ssIodSDxchn6diHweRRC7XYYPdD4dnfuUBU40BtuEhcZqW0g6O378pTY1otmw0lu
uH/ERxkqj50fWhE9AjOQCp8FvRWFMCqjhohghy/IsL4FxUgpyG55RsN4aFU958VF
vYkbxw+Bpj6bRRyafe1R1my1ZdcrE+hK36gHT1NEqObPqJ+vGL0a6OmwwYPHrjcq
Z9TxEW4IAdECsTFhXCnhH7xado+IICITdfOoDDVTTATGnEz3hPY2kWMrx754EkAH
J/pNDunSqzOszUIDLCvNEQildJJ4PmurdbPtHzVoPKv51nHi6KSFz1pUmWgziR7c
HCoIhH08lkDk82pDZdZFYqDNeoIkx/outcQWdYXo9ebqmFNk+K7YPx7sV5n1OJ79
3eKUulloeoWSEJtNF4iu+nD9/vbqGU3Tx5de0UutFPTT+z6uukxGWA9JAvzNeHGY
qOdr8RonPmYZ8wuZA3ISfByPtMOINIz+BBOUrbjjP/7kjBcWyCM=
=UeV5
-----END PGP SIGNATURE-----

--muri3yb7h6rtrvt5--
