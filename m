Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3134964B8E8
	for <lists+linux-man@lfdr.de>; Tue, 13 Dec 2022 16:48:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236225AbiLMPs3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 13 Dec 2022 10:48:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44140 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236353AbiLMPrs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 13 Dec 2022 10:47:48 -0500
Received: from mail-oa1-x2a.google.com (mail-oa1-x2a.google.com [IPv6:2001:4860:4864:20::2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2638622B07
        for <linux-man@vger.kernel.org>; Tue, 13 Dec 2022 07:46:02 -0800 (PST)
Received: by mail-oa1-x2a.google.com with SMTP id 586e51a60fabf-14455716674so13029997fac.7
        for <linux-man@vger.kernel.org>; Tue, 13 Dec 2022 07:46:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5FKPPVjfT5NUfQpbGN6eOYaIwyJsdHEYz0ZTu3l1b6g=;
        b=pSFDZhaJOUMDA0e4r0vJk19CdqYMhwv9mu7goP8mS6q8w4AFWrClSO4MyvJq6o9z3c
         HN1rdBtwT3W+rFvjVUEQkZnecOvouNTqCQuMolm2/bPj0vFmLhFqikjXB7NgehnKkmz3
         QF9CYNbUaydDhvCKCad55bAz16beyE8VpK9uWkilAFEoRERIzKYFoJZnZaDorbH3crWz
         mD9KgxodKAhVlfCMarPcZf3Ub6TXcx8GPVVspVxM045sE6K1A4GyWELXV7vDmqi0u1Iw
         vgSfLGN6B9IFHM+GpE+GWvZnthMF91/Wy/VdbKgf1/ZzYXf0HfvO+O2JaGasXYu10rXn
         DPuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5FKPPVjfT5NUfQpbGN6eOYaIwyJsdHEYz0ZTu3l1b6g=;
        b=hh/Mha9ToymuT5+dsGARFUdvfpDkrEslmCMB3ydpHGuBv8MYWC2t7PMSZTRyxzyKjY
         flEDHQiFfUn67vYpRaXIYDVZYCnjYpXSMdFhkLtcN0bGlKdT330hUlJObxDdTOxNM4TC
         h+uPMWDpkOb7frb1Rie74jOSz5/jHRCgCU7V11Dssb77CmZzaVA81lsJwo5I/t4vzyQG
         zH92BS3Ca51FPhgsZ2c2GSRZXTpnGrYICiuWL50aXRenB19NlpnPMqGJlT1B89014/Gi
         FYlpn8+kXWRO8DOPX3BwJCDUchpAfaWurOD1xxmhUM4OLhVMHnQnDe4/s++m6saDmGzu
         81yw==
X-Gm-Message-State: ANoB5plM+J/NH9CMATG74OeTrMptzgC+Ytu03yCsOV+ENWznvoVLrmWT
        w+NrDlkD1mm6L8Ae2p58UPFbNdHc2OM=
X-Google-Smtp-Source: AA0mqf5W6EorIVGrglyXYHTD416M+RVkuJfCd46oYLI4ek/kopNBdRCrpXf6OyUcgeq23TwkeShqHQ==
X-Received: by 2002:a05:6870:588f:b0:13b:f650:f0b4 with SMTP id be15-20020a056870588f00b0013bf650f0b4mr10673808oab.5.1670946356029;
        Tue, 13 Dec 2022 07:45:56 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id q16-20020a056870829000b0013c8ae74a14sm1529759oae.42.2022.12.13.07.45.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Dec 2022 07:45:55 -0800 (PST)
Date:   Tue, 13 Dec 2022 09:45:54 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     groff <groff@gnu.org>, linux-man@vger.kernel.org
Subject: a Q quotation macro for man(7) (was: groff man(7) extensions)
Message-ID: <20221213154554.zmpdso7j4eht53pd@illithid>
References: <176225b0-4b0e-698b-b79e-f8ed78b4cf8c@gmail.com>
 <20221212142418.27615-1-alx@kernel.org>
 <cfb105a2-4bdb-c317-60b0-0771cc6201e8@gmail.com>
 <20221212183840.jhkgkxllwmxr5p3p@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="trfcs6psjjxx2iy2"
Content-Disposition: inline
In-Reply-To: <20221212183840.jhkgkxllwmxr5p3p@illithid>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--trfcs6psjjxx2iy2
Content-Type: multipart/mixed; boundary="ntwl3q23fgnkpjog"
Content-Disposition: inline


--ntwl3q23fgnkpjog
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[self-reply]

At 2022-12-12T12:38:42-0600, G. Branden Robinson wrote:
> Here's a list of man(7) extensions to which I have given consideration.
>=20
> 	KS/KE	Keeps.  Easy.[3]  Harmlessly ignorable by other
> 		implementations.
> 	LS/LE	List enclosure.  Throws a semantic hint (e.g., for HTML
> 		output) and eliminates final use case of `PD` macro.[4]
> 	DC/TG	Semantics at last.  Sure to rouse anger in people who
> 		decided long ago that man(7) can't do this.[5]  Having
> 		looked more closely at mdoc(7) since writing that, I
> 		think `DC` should accept a _pair_ of arguments as its
> 		second and third parameters for bracketing purposes.
> 		But again, most man page authors would never need to
> 		mess with `DC` at all.

There was one more.

	Q	Quotation macro.  It's madness that one doesn't already
		exist.  Its absence, the imperfect portability of
		special character identifiers for various types of
		quotation mark, and the bad ergonomics of introducing
		*roff strings just to serve this one purpose have made
		quotation such a pain point in man(7) writing that
		authors have tended to not bother with and instead abuse
		font style changes for it, putting things that should
		simply be quoted into stentorian italics or screaming
		bold instead, when these faces are already heavily
		burdened by other uses.

I experimentally implemented `Q` at one point but ran into a corner case
I wasn't happy with.  Looking back over it now I see that I got it
entangled with an extension to `SY`/`YS` to support arguments to help
the formatter compute tab stops.  I'm attaching "clone.man" so you can
have a look.

I've also pondered having private strings (i.e., not for use directly by
man pages) for opening and closing quotation marks that localization
packages can set.  This might save Helge Kreutzmann and collaborators
some tedium.

Even with that wrinkle, a `Q` macro would be dead simple.

Here's an an-ext.tmac portable version.

=2E\" Define opening and closing quotation marks as appropriate to your
=2E\" language and/or output device.
=2Eds oq \(lq
=2Eds cq \(rq
=2E
=2E\" Quote first argument with second argument immediately following.
=2Ede Q
\*(oq\\$1\*(cq\\$2
=2E.

Regards,
Branden

--ntwl3q23fgnkpjog
Content-Type: application/x-troff-man
Content-Disposition: attachment; filename="clone.man"
Content-Transfer-Encoding: quoted-printable

=2ETH clone 2 2022-08-05 "groff test suite"=0A.\" BEGIN stuff that would go=
 into a future an.tmac or an-ext.tmac=0A.nr an*in-synopsis 0=0A.\" Begin sy=
nopsis.=0A.de SY=0A.  \" If already in a synopsis, start a new item within =
it.=0A.  ie \\n[an*in-synopsis] \{\=0A.    br=0A.    ns=0A.  \}=0A.  el \{\=
=0A.    nh=0A.    nr an*in-synopsis 1=0A.    nr an*saved-adjustment-mode \\=
n(.j=0A.    ad l=0A.    nr an*saved-indentation \\n(.i=0A.=0A.    \" If giv=
en arguments, use them to set up tab stops measured from=0A.    \" the begi=
nning of the output line, wide enough to hold each=0A.    \" argument plus =
1 en.  This handles C function synopses.=0A.    ie \\n[.$] \{\=0A.      lin=
etabs=0A.      ds an*tab-stops \" empty=0A.      while \\n[.$] \{\=0A.     =
   as an*tab-stops " \w'\\$1'u+1n=0A.        shift=0A.      \}=0A.      ta =
\\*[an*tab-stops]=0A.    \}=0A.    \" If not given arguments, set up hangin=
g paragraph for command=0A.    \" synopsis.=0A.    el \{\=0A.      HP \w'\f=
B\\$1\fP\ '=0A.      B "\\$1"=0A.    \}=0A.  \}=0A..=0A.=0A.=0A.\" End syno=
psis.  Restores adjustment.=0A.de YS=0A.  in \\n[an*saved-indentation]u=0A.=
  ad \\n[an*saved-adjustment-mode]=0A.  hy \\n(mH \" defined in an-ext.tmac=
=0A.  if d an*tab-stops \{\=0A.    ta=0A.    rm an*tab-stops=0A.  \}=0A.  n=
r an*in-synopsis 0=0A..=0A.=0A.=0A.\" Quote first argument with second argu=
ment immediately following.=0A.de Q=0A.  nop \[lq]\\$1\[rq]\\$2=0A..=0A.\" =
END stuff that would go into a future an.tmac or an-ext.tmac=0A.=0A.SH Name=
=0Aclone \- create a=0A.Q child=0Aprocess=0A.SH Synopsis=0A.SY "#include <s=
ys/syscall.h>" "/* Definition of ""CLONE_"" constants"=0A.B "#include <sche=
d.h>	"\" tab=0A.I /* Definition of \c=0A.Q CLONE_=0A.I constants */=0A.=0A.=
SY=0A.B "#include <sys/syscall.h>	"\" tab=0A.I /* Definition of \c=0A.Q SYS=
_=0A.I constants */=0A.YS=0A
--ntwl3q23fgnkpjog--

--trfcs6psjjxx2iy2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmOYnioACgkQ0Z6cfXEm
bc55MxAArm81irbWTj9OHpSXE6m1lGzf5iVekwSZRmJlMECVl390GBbBV9yTUDw8
KvAtHwNLYYeR67iyUxme0TNxlmv7Mm93yDtHWdeLieauwS8L58dlNb38J5jnCJL9
J/oLcwW6/NCAkdfGnDhl3+ixBRCJfVoUGBVnin/7EohicRYDzLPnanwd9B3R6ZkB
sXAU+SFiWOBcQrbdaRm8+svyyC3Y68lWkT3f2lhuV9+o1K9RUnsnrLoIyKntVclm
HyTOA2n2HQR1PV9hoe9RVHshlmtT1Os1mFEOS3T5F4ZjhWwSqld+YnnD5DtG3ydp
bDlseQPhQbetfnAlpSVAnOq464RlmPm9HkC7JocASlwKsj0C4nXQL4/q8JgutK3O
mW9FTyIUkAbD/RC1rqjB674Xb69/rfrwKTZCCQRUZnr+iRbj/l2LCdg0Q3Gb78EZ
7OqOqyM4/hbpbGkx6WdvGVUZEjeQQrCo4HWtomzr6zcGrFzY6LZpue0cON3NkMmo
1tPt/tmWkQXkWgxeYbEAKd6KyrEdBA9sye4l1H8vlisBcU+m3CHFsfENrq44rOq4
xZe2MFKFYiar2E8e3hhB4thcd0EU2ZTkUbjgeEPx/oFIHFy3kPXs+sHPlYZGqa55
8e8/CCFd1hCR40DQTPDwhBgYg3+6HfFH/2gaZqk0GqflCTGHHT8=
=y129
-----END PGP SIGNATURE-----

--trfcs6psjjxx2iy2--
