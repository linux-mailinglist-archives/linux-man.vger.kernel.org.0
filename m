Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 55BCA27E646
	for <lists+linux-man@lfdr.de>; Wed, 30 Sep 2020 12:12:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725823AbgI3KMU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 30 Sep 2020 06:12:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50038 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725779AbgI3KMU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 30 Sep 2020 06:12:20 -0400
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com [IPv6:2607:f8b0:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5026DC061755
        for <linux-man@vger.kernel.org>; Wed, 30 Sep 2020 03:12:20 -0700 (PDT)
Received: by mail-pf1-x443.google.com with SMTP id b124so832681pfg.13
        for <linux-man@vger.kernel.org>; Wed, 30 Sep 2020 03:12:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=qR1FJVXOhU6/g+m4SoSco3vMtV+CNvRvNyXS1xuG+T4=;
        b=Osm9Pn67G380QiA1ORltntJShSHlKg/KZZfKV8ebvfEXJw9893EO0N6J6GDR+zkmHi
         TOQuIe7x9y95Pipm54rWWEW33U3gwoXRHsPc2Kivm6L8Ixb+f0T0rMPKw/FOkL8OGo9t
         WmmSvnlErAXHqBq9aRAJJsf2bSlDgdAyYY1Qe6PSq2hKi2rg+sOy1Vaj4RqZ6jTK/DWY
         tX28Ql0XS3kKWp0Lc8MNsSP+SXlcdwHQYll5LeReAg1oi++hICgWphuMmo3OH+2B1WtO
         hMH7VuUONqbuE1aLoZ6PyyUlCeN1soJd8bKY0cmY0TKCsw0Jvkuh/XzYDVNi6wOSM6Ez
         okpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=qR1FJVXOhU6/g+m4SoSco3vMtV+CNvRvNyXS1xuG+T4=;
        b=TJU+duGLhruSES/5sJy4y1wfcltfokDpA58edkSUJyasvsooUo67VNtOB3ZK49iHm5
         C/cjy0ExxTECB0aM6p+B1jcePdWoPUaVBY9bVd/Q5DNhm4KhTO8ON96gB43d2rLWLOiK
         /Y1vCu+MwOpY0JQTojbC140s/JYccR/KPapTmbUkRzrpmeoYqw8CbBPV60rQxYCn9GUu
         FeCXJY5q9OfaYW1viQZoBL5n1IMMpJDVa61Q8gZ33b3wRCvQv/x1eZCsVlYpjcqf7Umc
         /Amx3i27cxvo8pSvvwiTzrlJHJv0Gkytz13i7s+zW+XKzZRyzy3yirtU2DFTGat6FeMn
         H8Ig==
X-Gm-Message-State: AOAM530Yon7xNOW6kiuy6bVpbpwbzR/9pldRB49OtZaSAHAZg7Gyf7qE
        JXgAH20rZzYlwqOZyeZCeAwtWh09PeI=
X-Google-Smtp-Source: ABdhPJxzyZAVDBtMwQ5+dUqVg37y/LgZByrSaTxvhS6wnx6sJuG8ROItw0CwDAg939XUVADeje/nZQ==
X-Received: by 2002:a63:c547:: with SMTP id g7mr1563654pgd.234.1601460739764;
        Wed, 30 Sep 2020 03:12:19 -0700 (PDT)
Received: from localhost.localdomain ([1.129.172.177])
        by smtp.gmail.com with ESMTPSA id k14sm1804437pjd.45.2020.09.30.03.12.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Sep 2020 03:12:19 -0700 (PDT)
Date:   Wed, 30 Sep 2020 20:12:15 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     Jakub Wilk <jwilk@jwilk.net>, linux-man@vger.kernel.org
Subject: Re: [PATCH 1/2] system_data_types.7: srcfix
Message-ID: <20200930101213.2m2pt3jrspvcrxfx@localhost.localdomain>
References: <20200925080330.184303-1-colomar.6.4.3@gmail.com>
 <20200927061015.4obt73pdhyh7wecu@localhost.localdomain>
 <20200928132959.x4koforqnzohxh5u@jwilk.net>
 <9b8303fe-969e-c9f0-e3cd-0590b342d5bf@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="jg2hlfugxpumieke"
Content-Disposition: inline
In-Reply-To: <9b8303fe-969e-c9f0-e3cd-0590b342d5bf@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--jg2hlfugxpumieke
Content-Type: multipart/mixed; boundary="wl6i3r6gpq7ibouc"
Content-Disposition: inline


--wl6i3r6gpq7ibouc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Jakub and Michael,

At 2020-09-29T14:13:26+0200, Michael Kerrisk (man-pages) wrote:
> On 9/28/20 3:29 PM, Jakub Wilk wrote:
> > Hi Branden!
> >=20
> > In groff_man_style(7) you wrote:
> >> Unused macro arguments are more often simply omitted, or good style
> >> suggests that a more appropriate macro be chosen, that earlier
> >> arguments are more important than later ones, or that arguments
> >> have identical significance such that skipping any is superfluous.
> >=20
> > After 15 minutes of gawking at this sentence, I still don't
> > understand what are you trying to say here. The sentence should be
> > either thoroughly rephrased or removed.
>=20
> I must say that I too found it hard to parse. I presume, Branden,
> that you mean:
>=20
> [[
> Unused macro arguments are more often simply omitted, or good style=20
> suggests
> EITHER (1)=20
> that a more appropriate macro be chosen,=20
> (2)
> that earlier arguments are more important than later ones, or
> (3)
> that arguments have=20
> identical significance such that skipping any is superfluous.
> ]]

You got it.  But it was too much work.

> But it takes a few scans to work that out. Perhaps break this into
> smaller pieces, or add some explicit structuring elements to the
> sentence?

I was trying to be comprehensive with respect to several anti-patterns I
had in mind.  However, using the anti-patterns concretely is premature
at that point in the page.  So I both expanded and relocated the
material.

I'm attaching what I've just committed to groff git.

Further feedback is welcome, of course; revision of documentation is a
process that is never completed, only abandoned.  And I haven't given up
yet.  :)

Thank you both for your reviews.

Regards,
Branden

--wl6i3r6gpq7ibouc
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment; filename="excise_standardese.diff"
Content-Transfer-Encoding: quoted-printable

commit dd2c4cf05a659ae7127e342924668ff0fa0deaa1
Author: G. Branden Robinson <g.branden.robinson@gmail.com>
Date:   Wed Sep 30 19:56:38 2020 +1000

    groff_man_style(7): Clarify empty macro arguments.
   =20
    Rewrite some ersatz standardese I had managed to concoct regarding why
    empty macro arguments are usually not needed.  Put an expanded
    discussion, with anti-patterns and remedies, in section "Notes", with
    forward reference from subsection "Macro reference preliminaries".
   =20
    Thanks to Jakub Wilk and Michael Kerrisk for the critique.

diff --git a/tmac/groff_man.7.man.in b/tmac/groff_man.7.man.in
index c62d97ba..b96cbaf4 100644
--- a/tmac/groff_man.7.man.in
+++ b/tmac/groff_man.7.man.in
@@ -281,23 +281,8 @@ but the
 package is designed such that this should seldom be necessary.
 _ifstyle()dnl
 .
-Unused macro arguments are more often simply omitted,
-.\" antipattern: '.TP ""' (just '.TP' will do)
-or good style suggests that a more appropriate macro be chosen,
-.\" antipattern: '.BI "" italic bold' (use '.IB' instead)
-that earlier arguments are more important than later ones,
-.\" antipattern: '.TH foo 1 "" "foo "1.2.3"' (don't skip the date!)
-.\" antipattern: '.IP "" 4n' (use .TP or .RS/.RE, depending on needs)
-or that arguments have identical significance such that skipping any is
-superfluous.
-.\" antipattern: '.B one two "" three' (pointless)
-.\"   Technically, the above has a side-effect of additional space
-.\"   between "two" and "three", but there are much more obvious ways of
-.\"   getting it if desired.
-.\"     .B "one two  three"
-.\"     .B one "two " three
-.\"     .B one two " three"
-.\"     .B one two\~ three
+See section \(lqNotes\(rq below for examples of cases where better
+alternatives to empty arguments in macro calls are available.
 _endif()dnl
 .
 Most macro arguments are strings that will be output as text;
@@ -3235,6 +3220,63 @@ Some tips on troubleshooting your man pages follow.
 .
 .
 .TP
+\(bu Do I ever need to use an empty macro argument ("")?
+Probably not.
+.
+When this seems necessary,
+often a shorter or clearer alternative is available.
+.
+.\" antipattern: '.TP ""' (just '.TP' will do)
+.\" antipattern: '.BI "" italic bold' (use '.IB' instead)
+.\" antipattern: '.TH foo 1 "" "foo 1.2.3"' (don't skip the date!)
+.\" antipattern: '.IP "" 4n' (use .TP or .RS/.RE, depending on needs)
+.\" antipattern: '.B one two "" three' (pointless)
+.\"   Technically, the above has a side-effect of additional space
+.\"   between "two" and "three", but there are much more obvious ways of
+.\"   getting it if desired.
+.\"     .B "one two  three"
+.\"     .B one "two " three
+.\"     .B one two " three"
+.\"     .B one two\~ three
+.TS
+c c
+lfCB lfCB.
+Instead of.\|.\.	.\|.\|.do this.
+_
+\&.TP \(dq\(dq	.TP
+\&.BI \(dq\(dq italic-text bold-text	.IB italic-text bold-text
+\&.TH foo 1 \(dq\(dq \(dqfoo 1.2.3\(dq	.TH foo 1 \
+\f(CIyyyy\fP-\f(CImm\fP-\f(CIdd\fP \(dqfoo 1.2.3\(dq
+\&.IP \(dq\(dq 4n	.TP 4n
+\&.B one two \(dq\(dq three	.B one two three
+.TE
+.
+.
+.IP
+In the title heading
+.RB ( .TH ),
+the date of the page's last revision is more important than packaging
+information;
+it should not be omitted.
+.
+Ideally,
+a page maintainer will keep both up to date.
+.
+.
+.IP
+In the last example,
+the empty argument does have a subtly different effect than its
+suggested replacement;
+the empty argument becomes an additional space character\(embut it is a
+regular breaking space,
+so it can be discarded at the end of an output line.
+.
+It is better not to be subtle,
+particularly with space,
+which can be overlooked in source and rendered forms.
+.
+.
+.TP
 .RB \(bu " .RS" " doesn't indent relative to my indented paragraph"
 The
 .B .RS

--wl6i3r6gpq7ibouc--

--jg2hlfugxpumieke
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAl90WfUACgkQ0Z6cfXEm
bc5raQ/9GhXG/5U7McaEEu+aW1IgaTYTMbsMpew5u3tBlj3/IenGzsy8wDO912BD
aHPSedYoc485k1Vh/Kowyx569RhyIXiMtH7uINCEtheMSUNgITNFqXo8mhaqVMlU
3JoV12btQddOIqHnGX6c5V9Z38KXFmVctD6CxjLaWGLp/Bu9tSKwSaHOOmtUYyOv
fYpMzr0amd4z9f+O8PPnToqBhwUitEvis1ZHYU6gIj8VwOjD0gNsWjA9HR3uC3c9
GK/R5przMANrNejzSgofm0/yAL6a61WhqhYEtzLUYu2NFnsyNJWzITNsNnoxzgQ5
liKL0Onmw0YWjOo4Z9Zht9Iyd6JhJxW0uRwlpFhE6UlCkFHK8nbv3NbHT2xlx/po
rxY5jDC3Ap3+mdYHY8k5o8vFd4QOXc2bSTuDRZoWtFZQsjnl4Fpkqks1W54Txq4y
o3Vu9aOPx//Jfi8sDc/qD/mFnyUu+AMFWjIj8UxQN4HmbrbXg/DEczRfP68DjOiX
ssy/0Rmm/H1cu7oBMoSss63mpk/NvPTSzzCR+VhU4PHQ7rxSZYS105tzkBVfe37e
hSS00rQVWe2YnI1KkfJHFjzveHiPXf+IxC0Z4PpJuLhl+pIZ/FgxJ5yEkX0XVUIy
aYRzKI3JaJktYl6WvulKSBPzQxIyOgrqVkZW4lv/uTh64pE6E5w=
=oeam
-----END PGP SIGNATURE-----

--jg2hlfugxpumieke--
