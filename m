Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E300364C08A
	for <lists+linux-man@lfdr.de>; Wed, 14 Dec 2022 00:25:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236570AbiLMXZI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 13 Dec 2022 18:25:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38534 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237128AbiLMXYr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 13 Dec 2022 18:24:47 -0500
Received: from mail-ot1-x32e.google.com (mail-ot1-x32e.google.com [IPv6:2607:f8b0:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9075C275DD
        for <linux-man@vger.kernel.org>; Tue, 13 Dec 2022 15:24:10 -0800 (PST)
Received: by mail-ot1-x32e.google.com with SMTP id x44-20020a05683040ac00b006707c74330eso816985ott.10
        for <linux-man@vger.kernel.org>; Tue, 13 Dec 2022 15:24:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=OULe3Ib/ZD1jIXAKql+xgg1caBpNXdvPnFOkaFGpWGA=;
        b=nzhbQHXIaDMhYzRr9b8yy73u110gdjbrxBriWOXTNSIu8EQmRIswovyYuZ6i1bhhfR
         Tz5VEJpIJdggqVe+OwTU0wCvJWsK8+snHXVZTdCQHE0fW8o9tnHGhdIUy1lD6bAE0j5f
         2a6rFdg85CwAnA+KcoL8mjjykiUroOQiIyMYwtJSZmXoRVszyeOTsPQbmdCoKtVl26Es
         EAcQcQsii2j2t9TYZUJV9RiWP/C/aL7gIKGJREK5Q9AFCJPIBkZog+0omFVnTrZqtwV9
         Fb0LzjvwE9wWE1VspdMukumdmBtLZ3Kg7bSXJO3Z2jXUaQaraRR0LmW96RD8ZK7en+R4
         RN8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OULe3Ib/ZD1jIXAKql+xgg1caBpNXdvPnFOkaFGpWGA=;
        b=p5hFtJq+1HEBo6awTaoe0aWbKv2GI7FClLC0cVb/W7SpkTDuMEGXbm9XnORCk9vyfH
         I+iTaIM7qxWTMue06Wr1QnzIGn8Fj31wbrHE0BW7zkWtaSHQTsF36vF+BJuZXaiwz7fF
         TZg8suGu+vJoGKjWtQgHzX+HCxzQ9j4CxGeQI9uAZ9FTG/m1hELb6S2fAhHhYm++ulFc
         X4dRpbp9bc0xl0KlMqTIcsieapZDcico8WXb764R63//K7vUay7PSvbgr4z+kl8cyRmz
         05zcui2CDfzqKgIfuA3s7v/Ibst7JeTZY07l60UCXTeIg113yqu3MQaBSK78cB0isUXY
         8OxQ==
X-Gm-Message-State: ANoB5pmC9n9rOIdTJFzvB6ZLxKXO+2Kd9pIQ2AP+E2zVO655q6Ip2XMt
        oYAeBCp/IfncKnjpt00TGqjakP4ToaX6ZA==
X-Google-Smtp-Source: AA0mqf53rrpn8qbNmramaVRhO/6F5lh1CEQG6htaytJS0GHZnZ6i14U2HT8GPuYThse3R0DLM6OnSw==
X-Received: by 2002:a05:6830:9c2:b0:661:dfeb:ae27 with SMTP id y2-20020a05683009c200b00661dfebae27mr9591426ott.30.1670973849799;
        Tue, 13 Dec 2022 15:24:09 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id bq20-20020a056830389400b00670679748f9sm1771514otb.49.2022.12.13.15.24.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Dec 2022 15:24:09 -0800 (PST)
Date:   Tue, 13 Dec 2022 17:24:07 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Paul Eggert <eggert@cs.ucla.edu>
Cc:     groff@gnu.org, linux-man@vger.kernel.org, tz@iana.org
Subject: Re: [PATCH v2 3/4] zic.8: Use correct escape sequences instead of
 special characters
Message-ID: <20221213232407.walpi6jmhbbtis3c@illithid>
References: <20221123134827.10420-1-alx@kernel.org>
 <20221123134827.10420-3-alx@kernel.org>
 <2dc9b4ee-83c4-9a23-82d5-fd314efd648d@cs.ucla.edu>
 <f8fa5d28-034c-4080-98d7-a142f467b45e@cs.ucla.edu>
 <20221126211947.wzhb6zopmbsxqapj@illithid>
 <aaab0674-6e77-6f60-0c1a-1cc2188f5ece@cs.ucla.edu>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="4kl2jkidlxj4awzk"
Content-Disposition: inline
In-Reply-To: <aaab0674-6e77-6f60-0c1a-1cc2188f5ece@cs.ucla.edu>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--4kl2jkidlxj4awzk
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[dropping Alex and Geoff Clare of TOG, but keeping mailing lists because
Paul corrected me on a significant point and I won't have anyone
claiming I don't own up to my mistakes; still, length warning: 189
lines]

Hi Paul,

=2E..finally getting back to this, with belated thanks.

At 2022-11-26T16:12:25-0800, Paul Eggert wrote:
> On 2022-11-26 13:19, G. Branden Robinson wrote:
> > I would attach scans of Tables I and II from "NROFF/TROFF User's
> > Manual", the version dated 1976, published with Volume 2 of the Unix
> > Programmer's Manual (1979)
>=20
> Thanks for looking into this. It took me a trip down memory lane as I
> believe I was the first person to submit a computer-typeset PhD thesis
> to UCLA.

Cheers!

> I used 7th Edition Unix troff along with the C/A/T phototypesetter
> that was troff's main target in the 1970s. (As an aside, the C/A/T was
> why stderr was invented; see Diomidis Spinellis's "The Birth of
> Standard Error" 2013-12-11 <https://www.spinellis.gr/blog/20131211/>.)

I'll bet a lot of readers didn't know that one, but I did, and when I
found out about it via the TUHS list I was so tickled that I added a
link to groff's Texinfo manual.

  standard error stream.  The notation then serves to identify the
  output stream and does not necessarily mean that an error has
  occurred.@footnote{Unix and related operating systems distinguish
  standard output and standard error streams @emph{because} of
  @code{troff}:@:
  @uref{https://minnie.tuhs.org/pipermail/tuhs/2013-December/006113.html}.}

> Solaris 10 /usr/bin/troff is largely unchanged from 1970s troff, and
> supports \(ga but none of the other escapes you mention, I expect
> because they were not present in the Bell Labs special font version 4
> and Commercial II that Unix assumed on the C/A/T.

I admit to some shock here.  The 1976 version of Ossanna's nroff/troff
manual, CSTR #54, explicitly documents--

--wait, no it doesn't.

<blinks>

[Some UTF-8 follows, because it's essential to the discussion of
glyph/character repertoire.]

Apparently I outright hallucinated the presence of \(ha and \(ti in
"Table II: Input Naming Conventions for =E2=80=99, =E2=80=98, and =E2=80=94=
 and for Non-ASCII
Special Characters".  \(ga is there like you said but \(ha and \(ti are
not.  I managed to sustain this delusion despite acquiring a paper copy
of the HRW 1983 printing of both volumes of the Version 7 Unix
Programmer's Manual (typeset with the C/A/T itself), and reading it with
especially loving attention to the troff material.  By God, I told
myself, I'll figure this stuff out.

Hrm.  Vexing.

Lest some readers think this is a ridiculous thing to have gotten wrong,
permit me to quote one of the paragraphs interstitially present in
"Table II"'s 2 tables spread over 2 pages.  Times--and the Times
font--were very different in 1973, when the Bell Labs CSRC took delivery
of the C/A/T.

"The ASCII characters @, #, ", =E2=80=99, =E2=80=98, <, >, \, {, }, =CB=9C,=
 =CB=86, and _ exist
_only_ on the special font and are printed as a 1-em space if that font
is not mounted."

So why did I use so much non-Basic Latin Unicode to quote a list of
_ASCII_ characters from the CSTR #54 document?  Because that's what they
_look like_.  Some material in the groff_char(7) man page speaks to it.

History
    A consideration of the typefaces originally available to AT&T nroff
    and troff illuminates many conventions that one might regard as
    idiosyncratic fifty years afterward.  (See section =E2=80=9CHistory=E2=
=80=9D of
    roff(7) for more context.)  The face used by the Teletype Model 37
    terminals of the Murray Hill Unix Room was based on ASCII, but
    assigned multiple meanings to several code points, as suggested by
    that standard.  Decimal 34 (") served as a dieresis accent and
    neutral double quotation mark; decimal 39 (') as an acute accent,
    apostrophe, and closing (right) single quotation mark; decimal 45
    (-) as a hyphen and a minus sign; decimal 94 (^) as a circumflex
    accent and caret; decimal 96 (`) as a grave accent and opening
    (left) single quotation mark; and decimal 126 (~) as a tilde accent
    and (with a half=E2=80=90line motion) swung dash.  The Model 37 bore an
    optional extended character set offering upright Greek letters and
    several mathematical symbols; these were documented as early as the
    kbd(VII) man page of the (First Edition) Unix Programmer=E2=80=99s Manu=
al.

    At the time Graphic Systems delivered the C/A/T phototypesetter to
    AT&T, the ASCII character set was not considered a standard basis
    for a glyph repertoire by traditional typographers.  In the stock
    Times roman, italic, and bold styles available, several ASCII
    characters were not present at all, nor was most of the Teletype=E2=80=
=99s
    extended character set.  AT&T commissioned a =E2=80=9Cspecial=E2=80=9D =
font to
    ensure no loss of repertoire.

(Nit: one character, the broken bar =C2=A6, got lost anyway.  I guess no one
missed it.)

> The source code of 7th Edition Unix troff agrees with Solaris 10
> behavior here, and this also agrees with 7th Edition Unix
> /usr/doc/troff/table2 which documents \(ga but none of the other
> escapes you mentioned. I'm a bit surprised that the printed manuals
> you mention disagree with 7th Edition Unix,

Imagine how surprised I was when I found I had deceived myself!  Usually
my vision sucks this badly only when reviewing my _own_ work.

None of these three appear in the 1992 revision of CSTR #54 (revised by
Kernighan and documenting device-independent troff extensions).  I would
say they are GNU extensions, but two others that one might impugn with
such a descriptor are \(aq and \(dq (along with \(ga) appear in
Documenter's Workbench (DWB) troff 3.3 font descriptions for its
PostScript driver,[1] which I have no reason to believe isn't about 10
years older than that version of CSTR #54.  Device-independent troff
made it easy to specify your own special character names; people did.

> but anyway it doesn't matter all that much since Solaris 10 is what it
> is.

Agreed.  And even though someone could have added special character
aliases of "ASCII" glyphs in Solaris's font description files 30+ years
ago, they didn't.  Perhaps the reason was a feeling that nothing good
ever came from GNU; a more likely explanation to me is a dedication of
religious intensity to the principle of inertia, similarly to why
Solaris kept the World's Worst Bourne Shell implementation, compliant
with no published standard ever, as /bin/sh for something like 30 years.

(Think I'm kidding?  https://www.in-ulm.de/~mascheck/bourne/segv.html )

> On other words, on Solaris 10 if I take this file 'foo':
>=20
> 	.nf
> 	default font
> 	aq |\(aq| |'|
> 	ga |\(ga| |`|
> 	ha |\(ha| |^|
> 	ti |\(ti| |~|
> 	.ft CW
> 	CW font
> 	aq |\(aq| |'|
> 	ga |\(ga| |`|
> 	ha |\(ha| |^|
> 	ti |\(ti| |~|
>=20
> and run the shell command:
>=20
>    /usr/bin/troff foo | /usr/lib/lp/postscript/dpost >foo.ps
>=20
> I get the attached file foo.ps, and 'evince' says only \(ga works and
> even there it's barely usable in the default font, as shown in the
> attached screenshot foo.png of 'evince' displaying foo.ps.

Right.  With the undefinedness of \(ha and \(ti as well as \(aq now
clear to me, nothing about your output surprises me.

> > .ie \n(.g .q \f(CR!$%&\(aq()*,/:;<=3D>?@[\e]\(ha\(ga{|}\(ti\fP .
> > .el .ie t .q \f(CW!$%&'()*,/:;<=3D>?@[\e]\(ha\(ga{|}\(ti\fP .
> > .    el   .q !$%&'()*,/:;<=3D>?@[\e]\(ha\(ga{|}\(ti .
>=20
> With Solaris 10 in mind, in the second line of your proposed code the
> \f(CW...\fP and the \(ga are OK but the \(ha, \(ga, \(ti are dubious
> so I installed the attached patch instead.

Quite sensible.  As we discussed elsewhere, Solaris troff is scheduled
for retirement in January 2024, and groff 1.22.3 succeeded it.  While
old, it certainly supports \(aq, \(ha, and \(ti.

Thank you again for knocking the scales off my eyes here.

Regards,
Branden

[1] https://github.com/n-t-roff/DWB3.3/blob/master/postscript/devopost/R

--4kl2jkidlxj4awzk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmOZCY8ACgkQ0Z6cfXEm
bc6hmw/+IMvPEooIBGXYW8oQFMyBs+vKveU43iT/y8VtckQxliiG5NvFhLAn/qkl
uZhMR3ACQXLWjy+unR9kNHErucNBSuUZkLWpMWc8wq/sbdvPGkhMF9x7MmMlu2yh
uB6I5s2k1gmL6C25hjAaFIDwikdppZHZWSQwD1Ez/DXvS7uE5kYqOv1nynfNkarj
N0dQJSTtGRx74swmsJRjJDTChNmj6Mgy50QSWkx61x3rS5XnWKiBhMmbptS/GFik
jmfgvGWzpOKVK8CRzpEeQbuBayTqjKkZbAYJizmyQ+ch6yZRJMsraQhQo+zCOBla
NhFWxi9ry0FHsDAA1/Z9CYZuXMZzrOE9JBsY6oYmTYTVexMMh1MHmEUHcaEzGYyo
ZmSOOl+3/+ffPszJBIWhG7Q8GzmvVwpXAdgGFn3SnJfws8xRgo/s2D2Q1TdDjePk
je27vhTL+R8MljZFTvPcYSDXMvExovn+Zr9Oc4Uill6YATTJGYnQOhUU4W1oXaZc
iUhqdHLj9qgZz1qO46FILZc4dceG4mr4DONDKqGcj6B56GL1T5xaULuD1ClPHAFc
OSfgE2NL5RRhuZOyHd0Ytc3MfpZry9Oct/wMi4scbM4zbay+uj13TnqrBFXvHNoO
Yha1yQhUJm5aVzczhf2AOsOj142I3Z3BvVeuuAkx7VajahX4adc=
=QWwo
-----END PGP SIGNATURE-----

--4kl2jkidlxj4awzk--
