Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A48532F05BD
	for <lists+linux-man@lfdr.de>; Sun, 10 Jan 2021 07:51:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725385AbhAJGvM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 10 Jan 2021 01:51:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56618 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725267AbhAJGvM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 10 Jan 2021 01:51:12 -0500
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com [IPv6:2607:f8b0:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1C6EC061786
        for <linux-man@vger.kernel.org>; Sat,  9 Jan 2021 22:50:31 -0800 (PST)
Received: by mail-pl1-x62c.google.com with SMTP id s15so7830936plr.9
        for <linux-man@vger.kernel.org>; Sat, 09 Jan 2021 22:50:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=9Rq1QLl98Ihmsp0Fsbbs7ch6lzkBj9gklAPmvwc3Oq0=;
        b=pnh2ylDRUx9rkK+wc737GkJySsyM7Y5cnOOT1USJP4+6Q74+Y8o/Ae74FnR0uxN+PD
         9OcecueQ1ljnMMCI+OQG1ZR/so2CRnP5IlkQ8PlHq+RnYGjhyylU+oP4bKLqdY43Hyqi
         h4wb5gM1oRvSblFHNGZN/JaSqhlk9+33o7NGhvmn3oTZF2sUW7ZUY1w9IKMv+4YwjYCE
         eog8fk4VxVa4asivfp8rcQ1Dvk3qHSp5kCE9qDgVtOHWFP1Xzs+LlqfWwhjbaOWAUdDO
         y9CFZ+q2Qqy+Enac7GucQajlE4NfXU27MhEKaGdx3z/Qw9I4yMfASLi2+vcBSDTyLNZl
         9eHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=9Rq1QLl98Ihmsp0Fsbbs7ch6lzkBj9gklAPmvwc3Oq0=;
        b=SEh8UZ5vgXL3s9KpikmLxLngnj+6PoARrmmkXq55EYW7flXh6AXlpN7/YLiGwfZjMU
         Xg/9r7QvamPkZh0Gkh1qc94vVp8is1MxsPIpOOWt/Zlj6LY3xyNs7QeZm7QceyHDT98S
         MzNTv9Ns540CdJpMnTj9cBxZFpR2LkS4aSY2/Jt3Oi283jmatnCfQB4IznOHIL2pb6Pr
         mFay1CZn8d1AVGzDUtwlz8czwk8AeuAu2BfXO0DXQ6MTAusO7ULHjmURx+JildfbIEpV
         AFmwbosebt7VYykKmFVhz/S5f8RGHVmcXa68XqqaUDfC7tZpX20B5aOeWimwNvV/NCZv
         jTiA==
X-Gm-Message-State: AOAM533EMVDQFaV8B4tOiDjhXW3+YFbUZ+JDo3Gu8YZCbLPunF3m9FR9
        mXdCIyzXRHzfw1e/fX6slzE=
X-Google-Smtp-Source: ABdhPJwUXHYciad7P4IQz6wdshBFWyGqFGZnOVmpnm9IYOx0rQduevvDV3jKKfcWfZVI+j1sS9Uwwg==
X-Received: by 2002:a17:902:ed0d:b029:da:c83b:5f40 with SMTP id b13-20020a170902ed0db02900dac83b5f40mr433202pld.20.1610261431144;
        Sat, 09 Jan 2021 22:50:31 -0800 (PST)
Received: from localhost.localdomain ([1.144.183.38])
        by smtp.gmail.com with ESMTPSA id p4sm10098135pjl.30.2021.01.09.22.50.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Jan 2021 22:50:30 -0800 (PST)
Date:   Sun, 10 Jan 2021 17:50:25 +1100
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     mtk.manpages@gmail.com,
        Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH] posix.py: ffix: Correctly format URIs
Message-ID: <20210110065023.olvhi2gqjbmv7243@localhost.localdomain>
References: <20210109195840.74472-1-colomar.6.4.3@gmail.com>
 <a1d2172c-3880-ac79-7df7-0f5fb0bc65af@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="4g7drpfw3jo5s7rk"
Content-Disposition: inline
In-Reply-To: <a1d2172c-3880-ac79-7df7-0f5fb0bc65af@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--4g7drpfw3jo5s7rk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

I've noticed you've started formatting your emails like recommended
*roff input.  ;-)

I have, however, taken the liberty of reformatting them conventionally
for brevity.

At 2021-01-09T22:07:09+0100, Alejandro Colomar (man-pages) wrote:
> Hi Michael, Branden,
> On 1/9/21 8:58 PM, Alejandro Colomar wrote:
[...]
> > Enclose URIs in <>.  It is especially important in this case, as the
> > URIs are followed by '.'.  From "" or <>, I prefer <>, as they are
> > less used in other contexts, so they are more easily read as URIs.
[...]
> > Also enclose them in [.UR/.UE].
>=20
> I was wondering if, instead of hardcoding <>, it would be possible to
> make .UR/.UE embed those characters.  It would make the code more
> generic, but I don't know if it is feasible or desirable.

Not only is it possible, but the groff_man(7) .UR/.UE extension macros
have been doing this automatically since they were introduced in January
2007.

They use left and right angle bracket special character escapes (Unicode
U+2039 and U+203A)[1]; the output drivers degrade these to less-than and
greater-than signs if the former glyphs are unavailable, or if the
formatter is not groff[2].

Here are some of the relevant portions of tmac/an-ext.tmac.

[...]
  .\" groff has glyph entities for angle brackets.
  .ie \n(.g \{\
  .  ds la \(la\"
  .  ds ra \(ra\"
  .\}
  .el \{\
  .  ds la <\"
  .  ds ra >\"
  .  \" groff's man macros control hyphenation with this register.
  .  nr HY 1
  .\}
[...]
  .\" End URL.
  .de UE
[...]
  .    nh
  \\*(la\\*(m1\\*(ra\c
  .    ie \n(.g \&\\$*\"
  .    el \\$1 \\$2 \\$3 \\$4 \\$5 \\$6 \\$7 \\$8 \\$9\"
  .    hy \\n(HY
[...]
  ..

The macro has a lot of conditional logic to support multiple formatters,
include non-groff ones--it attempts to be usable even with old AT&T
troff.  For the same reason, the register and string names used are
short and unfriendly.  It also does special things when formatting for
groff's HTML output device, which I do not show above.  But the heart of
the matter for terminal output is the line

  \\*(la\\*(m1\\*(ra\c

which uses the left and right angle bracket strings defined previously.

Let me know if you could use the above in annotated form.

If something in your test environment is preventing the angle brackets
=66rom being rendered, maybe I could help you troubleshoot it?

Regards,
Branden

[1] https://man7.org/linux/man-pages/man7/groff_char.7.html#Glyph_tables
[2] Technically, if the formatter does not claim groff compatibility by
    setting the .g register to a positive value.

--4g7drpfw3jo5s7rk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAl/6o5kACgkQ0Z6cfXEm
bc4N5g//Tuzswysdv7PpxUEob7iIyRnlTG1OSh9suuF4RN+HrOZJaPrH8wc84c7U
qqqurPWieOeHLFI3koFqQbqUXfjJPfXwNvOXNstuTqZyoUxlZxlIxlhr7XjxTtPa
GcTIjrGSX78DReRkzVUBt/V1OfVHFcgcAP795XEZPgByFgzzXd51o+QpmE594hcT
KFOJ4+MRo+NAY75JL2034s6EsxF9N69tJiAIDKcfYpQJ9IvKgx859q2gF8GT3sr/
WoqrYwklb41Lk9XlnWZMOZ40s2meuWvnQ1nDgTcwqXEApxxF66xam1AQbSTkeEz5
AU3nsZ7vO7fsgPQdFRjxA9nBsVbo1A6fIN4/D8rnva7asdhLigpcRHYyt2rlDi7U
r8l1yOoEE+WARK1W7AV0rcTpL2vTVnpMhpIHInR484Xak/nbF3rxyO/eZ+0uEY0k
I5Ndm8BXdNmWftBam5OgoE58QJXDzRJbgA/RRDiuUUW56TBFxfvTBEN39ARgJAFt
O+94RdImJXDALs7rv8fgnpQiRLqOZjDn3V24JBjqzWXyDeXEIGcxw5JeFuOki0IV
pkzyIf0evwQe2MUfgPQTSXfwh3+g/0eyyqaPMCRdsbgCIJaiKsCOpWu7RUFDaTnk
4S0P1vIMVaBiETkx0I7sTnm5Y4dCcHQ8USOr1LcWfJmnx2JVzhU=
=OM6x
-----END PGP SIGNATURE-----

--4g7drpfw3jo5s7rk--
