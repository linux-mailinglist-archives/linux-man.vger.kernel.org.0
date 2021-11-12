Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 97A8D44E3E6
	for <lists+linux-man@lfdr.de>; Fri, 12 Nov 2021 10:35:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234729AbhKLJie (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 12 Nov 2021 04:38:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58470 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234800AbhKLJie (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 12 Nov 2021 04:38:34 -0500
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C006AC061766
        for <linux-man@vger.kernel.org>; Fri, 12 Nov 2021 01:35:43 -0800 (PST)
Received: by mail-pj1-x1035.google.com with SMTP id v23so6269755pjr.5
        for <linux-man@vger.kernel.org>; Fri, 12 Nov 2021 01:35:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=6n2g6/rw6xHViLpXxWrGtor5Us2TZM/PqCrJpz300h8=;
        b=m8WIk5PIcpoZsQNHabmCvUj7zv0BkUOXY1brmjfRXx1nhOxvvUhuN2s1S+8dakgWs0
         m+rMi5+Nk40KQOIVUDXVFB5dnmsztnr1/STOIhDJ0GYOP+7HC/MxCQ9aLvSTLqZJFF1m
         65+vVGyfqcEnNWng+zED1mB8pbMtBUOri42kAphOYBBjaRom/WP8+M4mZXjj2S4ARLkx
         NGVUxdckvgj7HixAcJV3VxAjW2VRT1aqzfnE+JieNa+PVKL7dexhq+3ZPPF3vHfx54V+
         rNur4H2vkSiF2EslVUz+Nyfgkr4/cM66fvYI4UpMdNPjeuFiAnLYt3Ag90plxjHDvbpC
         eB+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=6n2g6/rw6xHViLpXxWrGtor5Us2TZM/PqCrJpz300h8=;
        b=0btRbgAizXy8kGgymlF160gbLRGPLmtGDXl2lokTvFntkmSmpZZZAnF/bZaOs1qdkt
         ENwSEyZaJhGhah9wUEPsTT1+uQ1LWkZi4msFvL0w18J+7ZE/2PKfkdm8AntotgoShl/x
         iPiSJTHS9Pci9lH5VaXLdGWHcMgB3izPAwNKDALw5OIH3TTOwV6lwAjQo3YOUyui2jaY
         dPEvEbfGRcSPP92/4nPWRILc+uJ6tkJKa+V19cJrSay9hiZcPfCWT7LI5JxqEj8mSogS
         EI2M97eg4kc/RQXchWSyf0eMg5PmOJdXqyy5yoe8l/4sbeK6ty/8wNLuPT+ONutxhnOq
         9i+Q==
X-Gm-Message-State: AOAM532AD2n1b5rUnr1Sz/y8oh41AmTSorr4JSfhnIb3EC4e0DUjFSwu
        19QKKgbYY4x9Xdz2upBalUp/LTf4Y1c=
X-Google-Smtp-Source: ABdhPJxgMbGsZOa+yelg0R84CFYJzvvmceWWhZ7drmlLHaCjXiL389slzYwWqDVPwaCVOXpNu56wWQ==
X-Received: by 2002:a17:90a:6886:: with SMTP id a6mr16364091pjd.78.1636709743155;
        Fri, 12 Nov 2021 01:35:43 -0800 (PST)
Received: from localhost.localdomain ([1.145.54.80])
        by smtp.gmail.com with ESMTPSA id p20sm5898389pfw.96.2021.11.12.01.35.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Nov 2021 01:35:42 -0800 (PST)
Date:   Fri, 12 Nov 2021 20:35:38 +1100
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     Jeremy Kerr <jk@codeconstruct.com.au>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH v2] mctp.7: Add man page for Linux MCTP support
Message-ID: <20211112093536.hvifxgdtb2y6jzge@localhost.localdomain>
References: <20211111015323.3542313-1-jk@codeconstruct.com.au>
 <76dd85f7-ab8a-1dcc-5b1a-5eb9a87d23bc@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="hppifxkq7bhht3b4"
Content-Disposition: inline
In-Reply-To: <76dd85f7-ab8a-1dcc-5b1a-5eb9a87d23bc@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--hppifxkq7bhht3b4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi, Alex!

At 2021-11-11T22:38:43+0100, Alejandro Colomar (man-pages) wrote:
> > +Messages may be fragmented into packets before transmission, and reass=
embled at
> > +the remote endpoint.
>=20
> Break at the comma.

I use "/[;:,]." in vi(m) to help myself find these quickly (you can get
false positives in comments; a more sophisticated regex that one might
want to bind to a key can rule those out).  Breaking input lines after
commas, semicolons, and colons is considered good style by *roff
veterans going back to Kernighan in 1974[1].

"/[!?.][^\\]" is more important--it's an un-semantic-newline finder
(though again with some false positives).  Those have a real impact on
the resulting typography (due to inter-sentence spacing).

> Types should be in italics.
>=20
> Branden, I thought this was specified somewhere, but I can't find it.
> Do you know where it is?  Or maybe if your more up to date
> groff_man[_style](7) pages mention that?

Nope, apparently I never made a prescription in this area.  It's worth
making explicit note of, since it deviates from the "literal -> bold,
variable -> italics" mapping that people overgeneralize/overapply.

So I'll queue this up for my next revision of groff_man_style(7).  Thank
you for catching it!

> groff_man(7) (groff 1.22.4):
[...]
>               Use italics for
[...]
>               for  names of works of software (including
>               commands and functions, but excluding names of op-
>               erating  systems or their kernels),

As an FYI, I'm feeling an urge to drop the foregoing item of advice.
Exceptions are often also made for names of software packages (both in
the loose sense and the technical one--who italicizes "TeX", for
example?); usage is so inconsistent that I despair of providing
comprehensible guidance.

Now that groff man(7) has the 'MR' semantic macro for man page cross
references[2], most of the instances where people would fail to
italicize will be taken care of without the foregoing.

> Anyway, for you Jeremy, I have other pages to follow for consistency:
> For example, gettimeofday(2).
>=20
> > +Packets between a local and remote endpoint are identified by the sour=
ce
>=20
> Break after "by" (or perhaps just before it).

Phrasal semantic newlines!  :D  This 180-proof Kernighan whiskey is a
stronger prescription than I would write (mainly because it requires
natural-language-aware grepping), but if your contributors don't rebel,
I think we will all ultimately see the benefits in diffs.

> Something similar might be good for this page.  Maybe "trailing fields
> may be added in the future to this structure.  The structure should be
> zeroed before use, so that future fields are zeroed" or something like
> that (I'm not very inspired for the wording, sorry :), and then remove
> the pad field.

The idiom is `memset(mystructp, 0, sizeof(struct mystruct));`, isn't it?
If so, then maybe the point doesn't need to be made.

> Only for Branden:  I just noticed a difference between man-pages(7)
> and groff_man(7) advise:  groff_man(7) advises to use italics for
> preprocessor constants, while man-pages(7) recommends bold:
>=20
> [
>        Special macros, which are usually in  uppercase,  are  in
>        bold (e.g., MAXINT).  Exception: don't boldface NULL.
> ]

That was a deliberate difference on my part, motivated partially by own
preference for reduction of what I regard as excessive use of bold in
man pages since the '90s, and partly due to precedent.  The 4.4BSD book
by McKusick, et al., for example, uses italicized small caps for some
things enumeration constants (like open(2) flags) and upright small caps
for others (like errno(3) values and signal names).  man(1) output to a
terminal just doesn't have enough typefaces to go around.

"If in any doubt, use bold" seems to have become the prevailing wisdom
in the 1990s due, as far as I can tell, to a historical accident
involving the (lack of) capability of VGA hardware and text mode console
drivers[3].  Some readers might remember the days when getting an X11
server working on your hardware was considered an achievement.

> I find it better with bold, since that differentiates variables from
> constants.

Would we then also bold constants that are C objects with the "const"
type qualifier rather than language literals emplaced by the
preprocessor?

My intuition is that this distinction isn't worth making with a
typeface; the use of bold is not necessary to cue the user that they
should not redefine a symbol, since there are plenty of other things
set in italics that the user _also_ shouldn't (try to) redefine.

I'm certainly open to hammering out a reasoned basis for typeface
selections, though.  Much of current practice arose in an ad hoc way.

Regards,
Branden

[1] https://rhodesmill.org/brandon/2012/one-sentence-per-line/
[2] https://lists.gnu.org/archive/html/groff/2021-10/msg00012.html
[3] Warning: lengthy.
    https://lists.gnu.org/archive/html/groff/2021-08/msg00023.html

--hppifxkq7bhht3b4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmGONU8ACgkQ0Z6cfXEm
bc5ZQhAAoViGlSM57q3LE7qVXR60ltQayCcRgg1da80m513b+jtmL72wLP7P4KI2
MdiOND36DOGAtxA61awuvD0L/0l10z97m8QtUS7AqkD5suLWuHUWXSJrhWSN10PY
bGhsYsGahhMmtlOXQNK7Oc65bjKp+lz1AkTVccub1opiAkmuayPC+l84zHSmsRzt
P/jVeoSKHkIq49GTr+hCDdvIqXdjx5E3jSxrjEFvrNyqbGGJqqc6nh1n1GPNnLUR
Na/7xPFiPk4xv0lpyVmSMHXUEMEQwGdabIJKVfDz4JniHMFz8EsdeiW6gKkfCXXX
iKQ8E2Uz9Mok1YoqtEKM9SZgIcaLk2b3oy8qXNArIgLqkPGcHFaXMHdv0U+oW29s
PoPcguCNhcHiOiSTeJ6W4TMEjV/ovbJcwKuvtIT9sXMvyDOYRI/bDD/v1q5bfHLn
qoVvg972X+EexdKbBO7Poj2ZtWgxB5D2eCXihQFl7QrrpZM4jjs4s/aKViL4kA1j
7FLGFekdWoeiJGRRanzllrELmyshU7ocGfFFN8fMll7N1kt6aLNjLD3vppsuDo8q
kCYPLUxljgeIO8L9UIls77NOz/IftENmggPcVAos/1bYjli0KX56TSMHJG1ptnFa
RNVN//Ad5lp5Cy6tvdHaECY4ELMMBTSqoP92T4kWw3XKt9Ygg/s=
=/5i0
-----END PGP SIGNATURE-----

--hppifxkq7bhht3b4--
