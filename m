Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6998E279E81
	for <lists+linux-man@lfdr.de>; Sun, 27 Sep 2020 07:47:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730224AbgI0FrE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 27 Sep 2020 01:47:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49286 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726382AbgI0FrE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 27 Sep 2020 01:47:04 -0400
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com [IPv6:2607:f8b0:4864:20::1044])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6A124C0613CE;
        Sat, 26 Sep 2020 22:47:04 -0700 (PDT)
Received: by mail-pj1-x1044.google.com with SMTP id mm21so1712379pjb.4;
        Sat, 26 Sep 2020 22:47:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Oh85co0zbcwlZmDPJE9u61S6JFBf6lbe4OdIe+v1VZM=;
        b=l3gAMzLys2lBYOpV7hP8tp7xRufF59ilHSXgAPaCTXACuoMY1SohS3r/4yJHmsAU1C
         MWyyOaI5WP0RTjBeUvjqq49CLMfea/48n5D0EzRqeoEt79hmQ4yeP+JRcW43wqI0r16T
         QqSh2nxiRiCJi9EZSCT5vZmv/XAEXj/Sub7whOj9Noin/Oh+EuQ15R7rIDh6dFC+lFlv
         e0/C/nsjnzJ5z9BA+D3aVfzY3qA7G+4+wQ0oF95mXsQP/9CFGFxoM71zRyYkSn1ys5eI
         BsuXQLIry/QYcrnDO5tYLDYx1Sxj1AnPrSYINCpp9GHbUhLJMUorUg31C+4QfHkDLUh2
         TGCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Oh85co0zbcwlZmDPJE9u61S6JFBf6lbe4OdIe+v1VZM=;
        b=dNzLwpl8AIArMhNSmv5fUFdrtoJggL3aWxtDNaSlBWHmI/VsJ1d2YmAOQ2f0OitnRc
         l+Lr4mwVSSR2wu1BFDFYozO/ZSQSmpOOyzocoLLPb8jkt5U04DkDV6MDtEicRdUrUspY
         t+vxDRuJfuq24tUbG2WrzjPaqPQQ/MBc7QnP96VQi0tYec9PegwR1EhsL1vL6T/Tzty1
         3Xfhsoou+MbsWjnhf5vAQemymjW/u1jpQwAvqvajhsU691D5/8KF1FUIpT4B9dkASJNI
         7TQXgZ8MSnWgLlv4k13HYJkUlc/wOUg0nOwWxSLjP3CGWV8qdVAFxjf9B8+4ZtZivKqq
         soPQ==
X-Gm-Message-State: AOAM5330lIoDY1OdF44LzGlEdVjCm75Os1ZtEqD/SPascZ3Rrixb9k1B
        WC5TbrkMiJgOW/5MfWh85tTheOUIUK8=
X-Google-Smtp-Source: ABdhPJxF7gHV+pVfmQWft3qx/2ktmrDpTzkEOb7N2NnSrLxeztandvWyqqikCqCZgyGEEGh0PXKn3Q==
X-Received: by 2002:a17:902:b481:b029:d2:686a:4e1f with SMTP id y1-20020a170902b481b02900d2686a4e1fmr4464939plr.17.1601185623981;
        Sat, 26 Sep 2020 22:47:03 -0700 (PDT)
Received: from localhost.localdomain ([1.129.174.171])
        by smtp.gmail.com with ESMTPSA id il14sm3041261pjb.54.2020.09.26.22.47.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Sep 2020 22:47:03 -0700 (PDT)
Date:   Sun, 27 Sep 2020 15:46:59 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 22/24] membarrier.2: Note that glibc does not provide a
 wrapper
Message-ID: <20200927054657.ea2zaiesle6hwjit@localhost.localdomain>
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
 <20200910211344.3562-23-colomar.6.4.3@gmail.com>
 <4ace434523f5491b9efcc7af175ad781@bfs.de>
 <20200921143617.2iskdncu3diginqn@localhost.localdomain>
 <2862c745-a23a-95d2-157e-7f91f671f839@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="2hncy56xijbjxjbt"
Content-Disposition: inline
In-Reply-To: <2862c745-a23a-95d2-157e-7f91f671f839@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--2hncy56xijbjxjbt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

At 2020-09-24T10:06:23+0200, Michael Kerrisk (man-pages) wrote:
> Thanks for the interesting history, Branden!

Hi, Michael.  And you're welcome!  I often wonder if I test people's
patience with my info dumps but I try to show my work when making
claims.

> From time toi time I wonder if the function prototypes in
> the SYNOPSIS should also be inside .EX/.EE. Your thoughts?

I think there are trade-offs.

1. If you want alignment, the monospaced font that .EX/.EE uses is the
   most portable way to get it.
2. For typeset output, you'll generally run out of line more quickly
   with a monospaced font than with the troff/man default (Times).
   _Any_ time filling is off, output should be checked to see if it
   overruns the right margin, but this point strengthens in monospace.

Here's something that isn't a trade-off that might come as a surprise to
some readers.

* You can still get bold and italics inside an .EX/.EE region, so you
  can still use these distinguish data types, variable names, and
  what-have-you.

The idiom for achieving this is apparently not well-known among those
who write man pages by hand, and tools that generate man(7) language
=66rom some other source often produce output that is so ugly as to be
unintelligible to non-experts in *roff.

The key insights are that (A) you can still make macro calls inside an
=2EEX/.EE region, and (B) you can use the \c escape to "interrupt" an
input line and continue it on the next without introducing any
whitespace.  For instance, looking at fstat() from your stat(2) page, I
might write it using .EX and .EE as follows:

=2EEX
=2EB int fstat(int \c
=2EIB fd , \~\c
=2EB struct stat *\c
=2EIB statbuf );
=2EEE

Normally in man pages, it is senseless to have any spaces before the \c
escape, and \c is best omitted in that event.  However, when filling is
disabled (as is the case in .EX/.EE regions), output lines break where
the input lines do by default--\c overrides this, causing the lines to
be joined.  (Regarding the \~, see below.)

If there is no use for roman in the line, then you could do the whole
function signature with the .BI macro by quoting macro arguments that
contain whitespace.

=2EEX
=2EBI "int fstat(int " fd ", struct stat *" statbuf );
=2EEE

As a matter of personal style, I find quoted space characters interior
but adjacent to quotation marks visually confusing--it's slower for me
to tell which parts of the line are "inside" the quotes and which
outside--so I turn to groff's \~ non-breaking space escape (widely
supported elsewhere) for these boundary spaces.

=2EEX
=2EBI "int fstat(int\~" fd ", struct stat *" statbuf );
=2EEE

Which of the above three models do you think would work best for the
man-pages project?

Also, do you have any use for roman in function signatures?  I see it
used for comments and feature test macro material, but not within
function signatures proper.

As an aside, I will admit to some unease with the heavy use of bold in
synopses in section 2 and 3 man pages, but I can marshal no historical
argument against it.  In fact, a quick check of some Unix v7 section 2
pages from 1979 that I have lying around (thanks to TUHS) reveals that
Bell Labs used undifferentiated bold for the whole synopsis!

$ head -n 13 usr/man/man2/stat.2
=2ETH STAT 2=20
=2ESH NAME
stat, fstat \- get file status
=2ESH SYNOPSIS
=2EB #include <sys/types.h>
=2Ebr
=2EB #include <sys/stat.h>
=2EPP
=2EB stat(name, buf)
=2Ebr
=2EB char *name;
=2Ebr
=2EB struct stat *buf;

Regards,
Branden

--2hncy56xijbjxjbt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAl9wJ0gACgkQ0Z6cfXEm
bc7RNw//bP2N4/59BTgqzmXdwBXrI+q3+Gq2NdGuvqaosEDjNYSm1quCwbvz3DCS
00WatIZiJl07UN5Z9857QFC/SuYKSkD6x4+jVy+JKBtoZF7tXtI/no/JR2jTK83q
apZcGjSSA6Rs8DHsaZp4/8FkH94Jxjuing8MjABDXE6j3areGxJtcwRwsBybemwj
d2DLBiBJB/My26TL6v+mdXJUxalz9VD4JD1Zy8WVjFc5ju5VpstxmGUtw12jECSF
+Apd/BvB5JOLMi59HtM0BwHo0gkgyCg9DGVLEdAxpGCpGmD5bX3lECyvXodybDFS
TzilNO1lou3db6V23Huo27vOy9+/cmOn8M3R/oO4bnrzylLYNVSvwr2UqkX3R6OP
fpKIvwx861zcgGJVdnymhij1gKvz6P6SgNUG8057Xkbbz5DC8ZGNQ/Q34ZDiUmjn
dBHp3/GnSktAhYdIg7CaMyy11ehFyPjcJQalTeB43JUF8y1LErzIargCwVuHlW55
JQp4PqQXzGEPXUUPb3KllVILKPSzSrsI+u0QNAl6Jf9OelZwrlhguKoEh7ixgjVr
S31pBQPU63upQ8r0V1QBbOVmwezKefLv9ItlVDxTI6avPDgahZR2oxq/xAKIh2Us
RuF0JH+K6YYrG7wWHHz8xuk3F90//7mqc+ha84wj/Rc1uCaKGW8=
=MGre
-----END PGP SIGNATURE-----

--2hncy56xijbjxjbt--
