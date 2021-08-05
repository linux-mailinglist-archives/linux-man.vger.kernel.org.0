Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 30FE93E0F63
	for <lists+linux-man@lfdr.de>; Thu,  5 Aug 2021 09:39:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237044AbhHEHjN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Aug 2021 03:39:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60506 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232323AbhHEHjM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 5 Aug 2021 03:39:12 -0400
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 37DB3C061765
        for <linux-man@vger.kernel.org>; Thu,  5 Aug 2021 00:38:58 -0700 (PDT)
Received: by mail-pj1-x102c.google.com with SMTP id dw2-20020a17090b0942b0290177cb475142so12800522pjb.2
        for <linux-man@vger.kernel.org>; Thu, 05 Aug 2021 00:38:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=a5sKO+a/Ukhqy1AT2qm8a6mK3NKhxvA+xd2GRNCn9rc=;
        b=ClHhk0YbKRO73QOtH8j47r6hpZBlFGNJR26XxutmneQpbVQs8Y3Uu+fvdmvikBx7oq
         975KyAejfszIbN/Wd+riRGuLqOpqSMsSi0HsP3/kaAfODrltbyNKflhO6BlCmMDV3QWT
         Y8hPbTAULkJ+mddra6086LduENn1ZWY2OJVdM6T2Z1zrr/+3hhTZRrXS65SCl5Y2n3lY
         xPCZxRPHtDPff356POiUbSBDYK5Lj4TvEoMp9neYHxcIlh9BzgAISxpgw98k1StJdsSw
         h61mM1duAUUSr8/1idpXvggF41xdGX9QfPT4JVSIIeLgfNCle7M2bHJ+usTlXFcosUld
         hpsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=a5sKO+a/Ukhqy1AT2qm8a6mK3NKhxvA+xd2GRNCn9rc=;
        b=Q7I1tZD1rjC9ux3IS1U+2bSBwYfj5cWgXwEq+bQreuBN65arGuLqwte+XMGTKVzyPN
         ksDePVR4IWP9/atXn+4I30dgcOa93wcp+ef/wbOrCL/ple3M87Nt6yhL71pEDWiDi1Ek
         JeX0OO6JkbKTk1IkBlIyF8Ic2O3fyfj+hxZMNsbyBKydRD4sTq3TOTLGwi0rZjyZh/FO
         QMP0o1wdAijneMwHX4siZwwhY9K+VZ5+jCAKvF/QhN00BW5ykcXMBRiHbSr1NQhPucyE
         fIx2KHdnf4ZwVNivUwcZRkhV1rx22vbdRd4DyuJBI+p4bZVs3Rubg3U0AEe6olSdjGj2
         0BJQ==
X-Gm-Message-State: AOAM532G5DQIv+9Gg5oZwf8o5Zl26/WE5HhhFIfam3xt0mLgUJ3laqfW
        ibu4bR+ejn471or7klB41WE=
X-Google-Smtp-Source: ABdhPJyNsmclinunchTfNsG7QFchc54tX1GlxauPSaR4/MFFVxUaLIyFebrdOTwr1mfNqdt8N8E8hA==
X-Received: by 2002:a17:902:b10f:b029:12b:c1d9:1ed2 with SMTP id q15-20020a170902b10fb029012bc1d91ed2mr2845777plr.85.1628149137745;
        Thu, 05 Aug 2021 00:38:57 -0700 (PDT)
Received: from localhost.localdomain ([1.144.147.165])
        by smtp.gmail.com with ESMTPSA id k5sm5418839pfi.55.2021.08.05.00.38.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Aug 2021 00:38:57 -0700 (PDT)
Date:   Thu, 5 Aug 2021 17:38:52 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     Greg Banks <gbanks@linkedin.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>,
        DJ Delorie <dj@redhat.com>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Re: [patch] nscd.conf.5: describe reloading, clarifications
Message-ID: <20210805073851.e2n33a3d4hkmhbpa@localhost.localdomain>
References: <BL0PR2101MB13161790A220976723139258A1E99@BL0PR2101MB1316.namprd21.prod.outlook.com>
 <cca56558-7749-e15b-3f97-85a304674a29@gmail.com>
 <BL0PR2101MB1316FA480EE808D34FA523EEA1F09@BL0PR2101MB1316.namprd21.prod.outlook.com>
 <02da5334-1635-8aa9-c4e6-deb0161a848d@gmail.com>
 <BL0PR2101MB13161815183CB7E6F5D8E61EA1F09@BL0PR2101MB1316.namprd21.prod.outlook.com>
 <d2de0e56-8feb-24dc-fc92-ebdc3647bee5@gmail.com>
 <BL0PR2101MB13161650B82F826B74E5DBD0A1F19@BL0PR2101MB1316.namprd21.prod.outlook.com>
 <01329467-8747-ec5a-6f92-a5466ed64eed@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="lcltfg73op53t762"
Content-Disposition: inline
In-Reply-To: <01329467-8747-ec5a-6f92-a5466ed64eed@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--lcltfg73op53t762
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2021-08-05T08:58:33+0200, Alejandro Colomar (man-pages) wrote:
[...]
> > > >> +.PP
> > >=20
> > > That's not correct.=C2=A0 Did you copy that from another place?=C2=A0=
 If so,
> > > please tell me because I should fix it.
> >=20
> > No, it's a habit left over from the last time I contributed to this
> > project (in 2008).=C2=A0 It seems the rules have changed.
> >=20
> > > We use that between paragraphs, but not before the first one nor
> > > after the last one.
> >=20
> > Ok, sure, but in that case the description of .PP in man(7) is wrong
> >=20
> >  =C2=A0 =C2=A0 =C2=A0 =C2=A0.PP =C2=A0 =C2=A0 =C2=A0Begin a new paragra=
ph and reset prevailing indent.
>=20
> That's something that I had pending to address from Branden.  That
> page is a mix of things that should go into man-pages(7),
> groff_man_style(7), and groff_man(7), and then man(7) should be
> removed and replaced by a link page to groff_man(7).

I should emphasize that the foregoing is something I _proposed_ for
discussion.  I don't have any reason to suspect that it is something
that has wide buy-in yet.  I'm particularly interested in Michael's
opinion.

> For now, You can read groff_man(7) (provided by the groff package),
> which tells us that .SH already does what .PP does (start a clean
> paragraph) (and it does more things, of course).  The thing is that if
> you add .PP after .SH you will have a blank line (and this an exercise
> of my mental groff, which I hope doesn't fail me this time),

Sorry to disappoint you.  :-O

A PP (or LP, or P) call immediately after a SH call[1] will not add
vertical space because the SH macro definition puts *roff into what is
called "no-space mode"; vertical spacing is suppressed until turned back
on manually, or glyphs[2] are sent to the output.

> and it would be a bit weird to have a blank line after the section
> title.

Yes--as style advice I think this is quite sound and solidly
precedented.

To develop your *roff intuition, I suggest using groff as a REPL.  Yes,
it can be done!  For instance, while composing this mail, even though I
am familiar with the man(7) package sources, I attempted to protect
myself from the embarrassment of making an incorrect claim by testing
my knowledge with this short shell session[3].

$ nroff -man
=2ETH foo 1
=2ESH Name
=2EPP
Foobar.
foo(1)                      General Commands Manual                     foo=
(1)

Name
       Foobar.

                                                                        foo=
(1)

This quickly verified to me that I was right about no-space mode.

I so strongly advocate this method of familiarizing oneself with *roff
that I recently added a section about it to groff(1).

   Using groff as a REPL
       Those with a programmer=E2=80=99s bent may be pleased to know  that =
 they
       can use groff in a read-evaluate-print loop (REPL).  Doing so can
       be handy to verify one=E2=80=99s understanding of the formatter=E2=
=80=99s  behav=E2=80=90
       ior  and/or  the syntax it accepts.  Turning on all warnings with
       -ww can aid this goal.

       $ groff -ww -Tutf8
       \# This is a comment. Let's define a register.
       .nr a 1
       \# Do integer arithmetic with operators evaluated left-to-right.
       .nr b \n[a]+5/2
       \# Let's get the result on the standard error stream.
       .tm \n[b]
       3
       \# Now we'll define a string.
       .ds name Leslie\" This is another form of comment.
       .nr b (\n[a] + (7/2))
       \# Center the next two text input lines.
       .ce 2
       Hi, \*[name].
       Your secret number is \n[b].
       \# We will see that the division rounded toward zero.
       It is
       \# Here's an if-else control structure.
       .ie (\n[b] % 2) odd.
       .el even.
       \# This trick sets the page length to the current vertical
       \# position, so that blank lines don't spew when we're done.
       .pl \n[nl]u
       <Control-D>
                                  Hi, Leslie.
                           Your secret number is 4.
       It is even.

The above example gets into many *roff concepts that man page authors
typically need not worry about.  Nevertheless the technique works with
macro packages, too, as shown earlier.  Macro packages often need to be
initialized.  man(7) is no exception.  If you do not call man's "TH" as
the first macro in the input, it will be unhappy.  That is why I had the
".TH foo 1" line.[4]

Regards,
Branden

[1] with arguments, technically--most people do not use the other legal
    form of calling SH input trap, which accepts input in the next line
[2] or drawing commands, but that's mostly irrelevant to man pages
[3] Full disclosure: my command input fibs above.  I actually used, not
    "nroff", but a shell alias of mine called "tgu", which runs a
    bleeding edge groff from a working tree, since I'm a groff
    developer.  After alias expansion, what I ran was
        ./build/test-groff -b -ww -Tutf8
    but that's not very useful to people who don't have a shell window
    that lives in a built groff working tree.
[4] A real man page would supply additional information to the macro.

--lcltfg73op53t762
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmELlYIACgkQ0Z6cfXEm
bc546xAAojkWrWl3l8Z/W5nkokKjj5Dxbjx0Rjte2xIVinsQibIz6Y5E8smjr3K4
NsowviqiMFIgy3HoMTOs6itJRFUP2teV6rYSnM8agli3CtEBbZMSJ3B4ODrAEScz
UFK/B8nllAXXUEzQbnKrM+EXZO9usqRe7kzZxzW981fGCvFi8Sos9Y7umx87BfsB
H5Tag+qaR3ZPT8NPPsNQJiB+ql6P0kWz/9+b6ExicA1sy+le3ZsO2lADHzHFrLHD
TvWDncYufmyfSPSOZY0cYT9piB44qM/srtzWE+pF+od0bCCtnEWxSIieraoUpyBu
CZu8ZbbfIyYvAG6DEMKBcPhlMYdIDTotZzEMww0rRd7WGNx2HSuEyFR5n8ujZRoa
+rdo39bShPigcsIgMZi3mLM0fGFCbhn6X8p6DxuZXb2J/fmpTvs0StZuffWKo9/C
cT46EHxar5+7sK1QFeaiYAvb+Dbx7wiF535IHv244h6auq4eFBWJ1LTTiexXVPKR
hQ0hgDUxl+RaCfCgvylw360PJAGcc2sh7YJzk0xy8xppQ3B+iMtmJYTiFdCmC9xX
Il5OjmkNNLAGfjHPIm3Q9ROXwXkUrgwUNKfDgOmT7b+Nz3wF1wzKxvTnJJyc3bCS
rHK4HypQr2Y7WYUfZn0Qrax7SLSj6KqjjvEeKSX/TEa7kXVrOmk=
=pWrX
-----END PGP SIGNATURE-----

--lcltfg73op53t762--
