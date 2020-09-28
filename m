Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AE81B27AC79
	for <lists+linux-man@lfdr.de>; Mon, 28 Sep 2020 13:14:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726565AbgI1LN7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 28 Sep 2020 07:13:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38058 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726477AbgI1LN7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 28 Sep 2020 07:13:59 -0400
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com [IPv6:2607:f8b0:4864:20::543])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AAA69C061755
        for <linux-man@vger.kernel.org>; Mon, 28 Sep 2020 04:13:59 -0700 (PDT)
Received: by mail-pg1-x543.google.com with SMTP id 5so566450pgf.5
        for <linux-man@vger.kernel.org>; Mon, 28 Sep 2020 04:13:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=7vJo21bRtXD/dZcYlK/dMc6IjCdFnhnDdJEMw5ty/4U=;
        b=HS998WzWpJkk01H6wiWhHL7f0YkGCePSEr4kRkUrysEinWybiu3efqmCRtuODkIRst
         P/ur3YPWP6LfIjjuxKNWSEL0DTWaRzjmnfCGFEMlL5/aDlrCi4fw85+s/cVGNoWk8q7C
         oy/5zpNvqtJDOVGgeGaqchz9t3BmtTJzXLmTN3sdIxE2icfsDICp0jqo+7NVeQFJNcdT
         mQKXyRZ9qb1gGOYrmYKghhUXvMX6w0PPY1C4CcU22gNN7F/YJwK4xJRLH5flb6WkHHWo
         xnm89xNqjZw58p3eSXpeSa0YBwSZUuY40KIdVwvb2Lx+SUyTLVUvpsW8+c66csUYVRat
         Pdlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=7vJo21bRtXD/dZcYlK/dMc6IjCdFnhnDdJEMw5ty/4U=;
        b=kOty97NdvJKvL9y5Tcu+xT7txTyJVK0Hsa6oaHzOR6SsMPYRfXJB1d8P5I97fzkpwE
         zKZfO4h2XRv7vZA+vCwHz7DlGFkielPQXXNp+i5X6KJp0W+K1PEeAUCKygtxVDkhu7Ea
         V3xX63N/FsjU1nLAUNo2CWNhXL+7d1gQ0HS8ECcl4aY7EvzoVTlSHz+WU1T1O/shu7C8
         NjX4l7Va0Q25hXjU8oLbtALWz6FOl9qb1kuiolqWuh6hLASFIwV6xyof85vu+Q7JEJlr
         QThs8Xxxs6n62MF/WvF3MnsDNVcfayU9fYsZUg5Tvz+UzrBs0P9GuJB4DAQA4qg39Kzn
         gdng==
X-Gm-Message-State: AOAM5301B9/f9NZU3lT0TSeAitcEGb1IoPyGx3Iz2nJltzALXM/ohz+/
        WhlRRGpB0vtG9NES9AnJ7Y9kblvEzI0=
X-Google-Smtp-Source: ABdhPJx5TQpoNTh7rP/7gKgQh9WX7iKWDZeqkB+xis19VnTPxt/1vHAGavq9KcYeHLa2unXbtq2Pxg==
X-Received: by 2002:aa7:8084:0:b029:13f:b82a:1725 with SMTP id v4-20020aa780840000b029013fb82a1725mr9816509pff.9.1601291639021;
        Mon, 28 Sep 2020 04:13:59 -0700 (PDT)
Received: from localhost.localdomain ([1.129.170.236])
        by smtp.gmail.com with ESMTPSA id d5sm1434974pfq.72.2020.09.28.04.13.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Sep 2020 04:13:58 -0700 (PDT)
Date:   Mon, 28 Sep 2020 21:13:54 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>
Subject: Re: [PATCH v2 1/3] system_data_types.7: ffix
Message-ID: <20200928111349.ifuc456mwfvvchyt@localhost.localdomain>
References: <836b6d7d-4433-18d0-78aa-542c419c02f2@gmail.com>
 <20200928090322.2058-1-colomar.6.4.3@gmail.com>
 <CAKgNAkjOX27k+RFvJC+icZp3dC2bK7aQiTb4Qj4Oc=NfDYZP5w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="k2vgg2rbs2ladanm"
Content-Disposition: inline
In-Reply-To: <CAKgNAkjOX27k+RFvJC+icZp3dC2bK7aQiTb4Qj4Oc=NfDYZP5w@mail.gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--k2vgg2rbs2ladanm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Michael and Alex!

At 2020-09-28T12:34:40+0200, Michael Kerrisk (man-pages) wrote:
> On Mon, 28 Sep 2020 at 11:04, Alejandro Colomar <colomar.6.4.3@gmail.com>=
 wrote:
> > I had been using .PP because I hadn't seen .br before.
> >
> > I think .br is the correct format,
> > following the pattern in already existing man pages.
>=20
> I don't disagree with the formatting change, but I am wondering if
> there's a better way to do it.

There are a few ways to skin cats in even the restricted dialect of
man(7) that I advocate.  (The other groff developers seem to generally
agree, but I will admit that I am probably more puritanical and maniacal
than most of them. :) )

> I tend to consider (perhaps wrongly) that the use of .sp and .br is
> unidiomatic,

In my book you're certainly right.  There are a few reasons for keeping
the lexicon of macros/requests appearing in man pages small.

1. man pages, far more than any other type of *roff source document, get
   parsed by things are not *roff typesetting engines.  The less *roff
   they have to simulate, the easier it will be for them to achieve
   intelligible rendering.  mandoc(1) is probably the premier example in
   this respect, and I believe I understand from its current developer
   Ingo Schwarze that it handles rather more *roff than we would prefer.
   There have also been numerous "man2html" processors developed over
   the years, typically of somewhat dispiriting quality.

2. Even in the world of *roff typesetters there is diversity.  For a
   long time groff was the only freely-licensed game in town, but
   nowadays I know of Heirloom Doctools, Plan 9, Solaris 10, DWB 3.3,
   and neatroff implementations.  The smaller the language, the easier
   it is to get consensus and parity around portable constructs.

3. A smaller language is easier to learn and easier to retain for
   people who are part-time documenters.  A person who only tackles
   documentation maintenance once every four to six months, say, is
   going to have an easier time with a language with maybe two dozen
   tags, several of which fall into groupings with a predictable naming
   pattern, than they will with, say, the 417 tags of DocBook[1].

   For groff 1.22.4, released in December 2018, I made sure to
   front-load the groff_man(7) page with a quick reference for all
   non-deprecated tags.  My hope is that man page writers who have been
   around the block with the man(7) language once before can type "man
   groff_man" and be refreshed after having to hit the space bar at most
   twice.

A corollary of point (3), especially when it comes to the mixing of
*roff requests with macros, is that their subtle interactions can be
frustrating to learners--and even to experienced users.  Someone who
leans what .sp does may be surprised to find it not working between a
section heading (.SH) and the first line of text afterwards.  Similar
frustrations can arise with the .in request when mixed with .RS and .RE.

> and over the years I have replaced a large of them with alternatives.
> (For example, in many cases, .sp was being used when .PP should have
> been.)
>=20
> If Branden does not tell us of something better, I will just apply
> your patch as is.

_Personally_, I prefer system_data_types(7) as of
efbe7900b931789849a978c619106a8973e679cd to any intrusion of .br
requests.  And as a C programmer I find it clear enough.

I do wonder about the huge list of header files providing `size_t`, but
I guess my raised eyebrow is better aimed at the ISO C committee than
here.  :)

Regards,
Branden

[1] https://tdg.docbook.org/tdg/4.5/docbook.html

--k2vgg2rbs2ladanm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAl9xxWYACgkQ0Z6cfXEm
bc642A//UOsRJB7Pcv/hjLFG9GCxi5XCCBk5d4Q/Ui0ZGoodASFnml5lwn//lL3L
ZIoEN2NevdYGYALf+UPpKkDpGqHpdSLPU04W5W5U53xdIqleDlZXsZu+tJ/pPd44
KQquGPlZ+0Zdp03SE1O/vz7tA8HKHszLh0ednm1HrsbIcD7z8LGs5fhEwohOaR1o
sU3xm9IanosAgd3trsgOsYlzeH8V2I6JbCSQ25aKGXXAU/15dzro2gZts0/iGTyg
N/ctMw+jGiAZkBM1FK+xS7K/3VNkEhj6ttBljupPt6nqOHlkRxbnDnLuEU53gnCQ
4QLXKuhkdQKbFeYZBsCGb6YoIATGC52jOcQHrknKu7m7xL2t63Z7nQtX+dALXf3e
MM6HnfmPuvWdyu2eFhut4dyai0kXf4r7Agzjw3ZmKta3TfnFhHN8eyaRmQNjEhhV
ZrGNaO0qIMFV0TW2hgf+ObLUvw/Fe2sHM5y/Op/Hb5zQTodetBOc+10goVx2d5P3
jiYMeUKg293inyMt/u+CuJ4t8Rev+wwAmNI9mxnyz/1qx8ZXaJesD47aht3gZmdE
i2+ZhTzT6vL3TyP3kS0vgVJbwi4RNZ5w35GsTQkeO84RfYAAXd2shKYC8z/9XUiL
OYTqd9OjaAuaG4jce75usQJ9wPl5Q35f5iAMnBm39puTN1pwgO4=
=Ceh2
-----END PGP SIGNATURE-----

--k2vgg2rbs2ladanm--
