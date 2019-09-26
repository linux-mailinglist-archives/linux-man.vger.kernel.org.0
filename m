Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D4A92BFAB4
	for <lists+linux-man@lfdr.de>; Thu, 26 Sep 2019 22:45:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728846AbfIZUpH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 26 Sep 2019 16:45:07 -0400
Received: from mail-qt1-f194.google.com ([209.85.160.194]:42135 "EHLO
        mail-qt1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728816AbfIZUpH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 26 Sep 2019 16:45:07 -0400
Received: by mail-qt1-f194.google.com with SMTP id w14so4559153qto.9
        for <linux-man@vger.kernel.org>; Thu, 26 Sep 2019 13:45:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=2DsqF2yRVeGg6vE9ynoMiVVMCD1zsH+SgL+z5GvT2Gg=;
        b=OQCTXuCpOX0hQ2u/rsLctRAmkPGeC0BFRw4/RjpDigyE/sh+GoF84a6ay5riUQGZ1i
         t3VWGHCzvEByWlCW5gXl5LvVtjhwVtxYIQnPGKezwXfz+p4tef+gS+I2BeKPjFAz80ek
         tezwtOrAXJAggZA0kuzXkKxp+5hWucOwp8knEuRmzeGMrElUqNIIJKAjkQnF7dl/Jvma
         smmN3jnBJOsh8Ged+Ih8iS21RVKoRLegTH5To/rarlIK45bb+czUfAjRwQZsUGfpeZVd
         PV5vTZUd09J503lH1m8z4CJcqU5b1U/vBRhAA8Xn9cbB54bdJfpi8bigsAc7+MaD9/26
         l4GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=2DsqF2yRVeGg6vE9ynoMiVVMCD1zsH+SgL+z5GvT2Gg=;
        b=in/Oxl8bzF5NcdlVyMb2upI8gytzi3bl6Qyj4HFTgWHb7BdBgX5fiFLXAkLdAyymOn
         oQWBlLG24rDoP9SnORU2S4KoBCwwIDIn0qE8B6PhxMTZKdJw1NssYa/KiOwLGw7bC7Vr
         gbo14TziecLPURqUymH+iKi/q8+k/c95H5gNbOlsFX7rjr6BqBHLlKqK+WzSZy+LEiFN
         V2KavpzfA+N9imDnLdDtFSz8uTtsfwxR1d5KmY7BYAauNnIXZriNZmewoEg18FWWNpFQ
         LZRDyzFHLuqDDcS2qYWaIPxIr9IfWT5FOpIMaTFSsrRxrOIMs5wAEl1PsyBd6RhpinwO
         gZSg==
X-Gm-Message-State: APjAAAVEFf2lpM6HDnFUfc5TU/d9wOBpQxpcTMqYU0jAc8RcT6Gl8KLQ
        ONKwLSFq9rdRGrRm64P7oI4=
X-Google-Smtp-Source: APXvYqy3JDGMG0wHZEzP619+mb0jexDnA92Ipwog4/DY8wC+8EYffzXtNcrEurKGuUkDUdUtcSo9UQ==
X-Received: by 2002:a0c:e94b:: with SMTP id n11mr4585580qvo.11.1569530704932;
        Thu, 26 Sep 2019 13:45:04 -0700 (PDT)
Received: from localhost.localdomain ([38.127.166.254])
        by smtp.gmail.com with ESMTPSA id j17sm2085456qta.0.2019.09.26.13.45.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Sep 2019 13:45:04 -0700 (PDT)
Date:   Fri, 27 Sep 2019 06:45:02 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Ian Hunter <ian@ianhunter.me>
Subject: Re: Error in read.1p
Message-ID: <20190926204500.yywdgn3dnxnkzigu@localhost.localdomain>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="edfdnjvhj7vd2sfc"
Content-Disposition: inline
In-Reply-To: <20190926181754.GA15754@comp.lan>
 <20190926182357.GA20390@comp.lan>
User-Agent: NeoMutt/20180716
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--edfdnjvhj7vd2sfc
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Ian & Arkadiusz,

There are a few issues here.

At 2019-09-26T20:17:54+0200, Arkadiusz Drabczyk wrote:
> On Wed, Sep 25, 2019 at 09:41:30PM -0500, Ian Hunter wrote:
> > Hello,
> >=20
> > The man page for read.1p incorrectly uses a unicode minus ("=E2=88=92")
> > instead of a hyphen ("-") in places where flags are being used or
> > described.

First is that the above pages are not maintained by the Linux man-pages
project.  They are maintained by the Austin Group, the folks behind the
POSIX standard.  They have an issue reporting site[1].

I believe you will have to register on the site to actually file a
report, however.  (Issues can be _viewed_ anonymously.)

> A quick ag '\(mi' done in man-pages-posix-2013-a.tar.xz shows that
> a lot of manpages in this tarball have this problem.

Yes.  Using the character escape for "minus" is a bad idea in prose
contexts.  The nroff and troff of the 1970s defined this to be a minus
in the "special font", i.e., one used for equation displays, which may
not have the same metrics as the so-calld normal fonts used to typeset
prose.

Long story short, writers of man pages and *roff documents generally
should use the escape sequence "\-" when they require the hybrid
"hyphen-minus" character that is used in programming languages, the Unix
command line, and for similar purposes.  The hyphens used in phrases
like "mother-in-law" can be typed as-is (i.e., ASCII 45).

I invite readers to the groff mailing list[2] if they wish to know more
about the complexities of typesetting, the myriad variety of dashes and
dash-like symbols available, their semantics, the reasons why the *roff
authors made the choices they did for the input language, why these
choices are sometimes surprising to or frustrating for man page writers,
and related issues.

At 2019-09-26T20:23:57+0200, Arkadiusz Drabczyk wrote:
> ... but it can be solved by setting non-UTF LANG:
>=20
> $ LANG=3Den_US  man ./read.1p

That solution gives up a lot of output glyps ("man groff_char" to see a
large list).  There are better ways to get these hyphens to output as
ASCII 45 characters without having to patch every (or even any) man
page.

For instance, adding the line:

=2Echar \- \N'45'

to an appropriate configuration file (like /etc/groff/man.local) could
do the trick, but this is a crude fix and I think I can come up with
better solutions if I know a little bit more.

What *roff implementation are you using (Ian, Arkadiusz)?  If you don't
know how to ask the system, try "troff -v" at the shell prompt.

Regards,
Branden

[1] http://austingroupbugs.net/main_page.php
[2] groff@gnu.org

--edfdnjvhj7vd2sfc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAl2NI0QACgkQ0Z6cfXEm
bc7fNhAAl5nazZofx+OZV1ILXCG6qD3yf1c0kAo1drEC8DClOouLScozemBcCsxs
gpWQnOGCTlOQf8yqOi1MJE/kgvRSHlItPD5iLGmWW8mXvrJgrTKTc81FGSRTZTrF
+UeVgXqr4cz+cMxDoWLjbnqDLB639wRkfjJzd259Z5Hfa73nOtZDExWHTCZii4bS
IW1AFQp0qh33KboqXJz0dGqhbIe12HwFLhU+m6dwpCZOBsBrVc9sMFN40Ta+oLV6
ad7WdOLo7hskcYC5nSkQNkRFSgP7PWi+msLKOX0Ci9cx2tMPE8TlHyEEhon0XyHT
LBnxDKt9rMBLqDLJOoiLwWx7spRM+9idmLXotzIc5HUN6Sy78t9ILqFtK5JZNgR5
VcV57V58j8LqkZcK7MTrNTb1UJCiNhKq9CrENTrxld7p8NHCDFIFcsEwUAUK7Ozk
BtFuysozCInpswWgYh/IJ1b0EEvRkfF2S/XvnkHAZkj50wqj1UfQQjXeEbaft90A
9B5NxVCdCkPfsXGoI7g5vIVQyvql/d5mhWS/bwjUL7ZEHT0iFI1wjO+nzOHXnFKs
pnbloadkrkieFkFswqBW76IFhLz2/EMseG+WA1yjLCpM9Uoqj6TqR6Qvc6oAQ9nM
s+CORHXYV6xL7x00NUgNOZv++oyMvAPIk2JG4wi76qa1sOULudE=
=fPSw
-----END PGP SIGNATURE-----

--edfdnjvhj7vd2sfc--
