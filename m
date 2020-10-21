Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7A25029540D
	for <lists+linux-man@lfdr.de>; Wed, 21 Oct 2020 23:19:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2506034AbgJUVTI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 21 Oct 2020 17:19:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43916 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2437117AbgJUVTI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 21 Oct 2020 17:19:08 -0400
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com [IPv6:2607:f8b0:4864:20::542])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 62B1EC0613CE
        for <linux-man@vger.kernel.org>; Wed, 21 Oct 2020 14:19:08 -0700 (PDT)
Received: by mail-pg1-x542.google.com with SMTP id n16so2228405pgv.13
        for <linux-man@vger.kernel.org>; Wed, 21 Oct 2020 14:19:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=R/7xdFigitEdO/dtmCrQrqbH3q66fGSUMn+XQgBJhg4=;
        b=YU/Gt9WiZlz2GLFPFvpNiflhlaLL37XakPKqx6uZW8Yo6ohi/O/whsmgavB+MfF5Uv
         Gfez28Uv7JaDSy8SsdtTcaFjR/uHFNJvHGPEHlxiSLQQiKs7piqzIZ/PEGjp1veTLcal
         4GZzb9SRlu27bj2LqyFP6UdDMPp11obPZRNAcQ6bDzPgZr3nxLVEQsZI9paqBsaXoDuh
         xZxz7WBBJXNRPgDLQtPHKi0bCnjm0MfoOePMfzJ29sljQ3fHDV7wSW8naIHRxj3B5dKa
         XbXGGAer6OUe5OVOJAc26b6Au9GQRcAoZ08q6eMuU9ZAd5l+BfV0/oJnr3Ssj6XeAJW+
         1F3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=R/7xdFigitEdO/dtmCrQrqbH3q66fGSUMn+XQgBJhg4=;
        b=sVJ50x5t2u6BJzxsqGZXvWdpilHnO043pkOvEAY2xfGIJGsL/+HIuxOaFgRhynoXQk
         m8/ltBU4u+Vq2YqhwgwQzEP1m6VzLnFo7ZoxHBzkgxLBzaR3Bfy/XaJhbjJ98F1mieil
         KtStkl+O9nJ99ak6/5M/hBcTxCdSHiuf75jVUddlWjRQxWsrwjvS7LIUxDvQ5rCEWPkZ
         al7Ux3l+9EDsQYqvr7e/5m8YqY30ShOCnZo4R574/P7rnZUrbcIVxs2l3JTVj+WN6j7r
         h48ID9x4tKEZK2lSKehs0ij/AaWQoYeXj1h2yTttGjsURyFnBVE0MnL6j+cK46hHy6Qo
         HA4A==
X-Gm-Message-State: AOAM533yixYmumjrbn2m95yM2N8gX4fSNfnBUY+tFCKut8KuSK0BgNMI
        9rI56BZH6w1csuVUtSoOdqFRHx3UnvsTtA==
X-Google-Smtp-Source: ABdhPJyyfYLSg7Xzh44SX71WWjp1qh28HCwJ/yO+lKI2vCEsabN9WKcnSPbSnfbehT+d6CMYsRz6LA==
X-Received: by 2002:a62:1844:0:b029:152:80d3:8647 with SMTP id 65-20020a6218440000b029015280d38647mr5340905pfy.18.1603315147579;
        Wed, 21 Oct 2020 14:19:07 -0700 (PDT)
Received: from localhost.localdomain ([1.129.229.65])
        by smtp.gmail.com with ESMTPSA id e1sm3259386pfd.198.2020.10.21.14.19.05
        for <linux-man@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Oct 2020 14:19:07 -0700 (PDT)
Date:   Thu, 22 Oct 2020 08:19:03 +1100
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     linux-man@vger.kernel.org
Subject: Re: \- vs - (Was [Re: [PATCH 2/3] system_data_types.7: Add
 'clock_t'])
Message-ID: <20201021211901.ynp774quj4igisso@localhost.localdomain>
References: <20201017213758.9270-1-colomar.6.4.3@gmail.com>
 <20201017213758.9270-2-colomar.6.4.3@gmail.com>
 <e9162722-25f4-6d00-00c4-73ffb4fb6528@gmail.com>
 <706d3eea-60f8-c208-0cd4-3412ebfef263@gmail.com>
 <20201019181047.palj3nbvozlvnoqg@jwilk.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="2lk4fknfdvvkxked"
Content-Disposition: inline
In-Reply-To: <20201019181047.palj3nbvozlvnoqg@jwilk.net>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--2lk4fknfdvvkxked
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi, Jakub!

At 2020-10-19T20:10:47+0200, Jakub Wilk wrote:
> * Alejandro Colomar <colomar.6.4.3@gmail.com>, 2020-10-19, 19:40:
> > Then, in the following code (taken from printf.3)
> > the escape is wrong (unneeded) by those guidelines?:
> >=20
> > [[
> > .SH NAME
> > printf, fprintf, dprintf, sprintf, snprintf, vprintf, vfprintf,
> > vdprintf, vsprintf, vsnprintf \- formatted output conversion
> > ]]
>=20
> From the typographical point of view, the most appropriate character
> here would be \(en (en-dash);

I agree with your conclusion below, but I don't believe the above is
correct; there is a long tradition (that I learned from Knuth's TeXbook)
of using en dashes exclusively for numeric ranges[1], though I found a
source[2] that advises its use for non-numeric ranges like airline
route expressions, sports scores, and "complex compound adjectives"[3].
In none of these, however, is the en-dash surrounded by whitespace.

> but for historical reasons, you're supposed to use \- (minus sign).

There's a very _good_ historical reason not to use the en-dash, in that
it was not supported by the AT&T nroff and troff systems used to compose
the earliest Unix manuals[4].  There was no special character escape
documented for it in either the 1976 or 1992 revisions of CSTR #54, the
(Nroff/)Troff User's Manual[5].  You motivated me to do some quick
research; \(en was eventually coined and made its way into Documenter's
Workbench troff, Plan 9 troff, Solaris troff, and Heirloom Doctools
troff, all of which are source descendants of AT&T troff, and of course
GNU troff, which is an independent implementation.  None define it for
all of their output drivers, which makes sense as like any glyph, it's
dependent upon font support.

The Seventh Edition Unix man pages (the first to use the man(7) macro
package), as far as my greps can tell, 100% consistent about using
"<space>\-<space>" to set off the page title(s) from the summary in the
Name section.

mandb(8) implementations are generous in what they accept; the
lexgrog(1) in Colin Watson's man-db package accepts any of:

  --, \(hy, \(mi, \(en, and \(em

=2E..plus the groff forms of the special character escapes (\[xx]), and is
similarly tolerant of whitespace abutting them on either end[6].  Only
a lone hyphen-minus is excepted from the above; I assume that is because
it is too hard to reliably disambiguate from occurrences within page
topic names--like man-pages(7).  However, this generosity is no reason
to over-interpret Postel's Law and advocate chaos.

Given that style authorities are divided over whether em-dashes mandate
or forbid whitespace around them[7], I think it best to regard the
topic/summary separator character as _sui generis_, and \-, which means
nothing in ordinary typography is consequently an excellent choice.

Regards,
Branden

[1] http://visualmatheditor.equatheque.net/doc/texbook.pdf (p. 4, PDF
    page 15)
[2] https://www.grammarly.com/blog/en-dash/
[3] Apparently, one example would be "I prepared an old favorite
    beverage of his, a vanilla ice cream=E2=80=93India pale ale float."
[4] More accurately, the v1 Unix manual (1971) was composed with roff
    ("old roff", as it was subsequently called).  nroff ("new roff") was
    not written until 1972[8].
[5] The title was changed over the course of its lifetime.
[6] https://git.savannah.nongnu.org/cgit/man-db.git/tree/src/lexgrog.l
[7] https://www.thepunctuationguide.com/em-dash.html
[8] https://manpages.bsd.lv/history/mcilroy_21_10_2011.txt

--2lk4fknfdvvkxked
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAl+QpbEACgkQ0Z6cfXEm
bc6mkRAAk/tRHU0CFsQn8cWOYnHNoS4dTI1/1RMRGIITb3lCuSFQ6it8SePKw9nC
BJqG77njkFeMcF6+KL7Hx7hw6UvLmciqsf0Eq3YrBzgFF1FrNrjlCWNATAR8Qf12
DQRmg67U0bzAa3Wc6Ci70yT3X5sZZT/v6jChePHTFLgPxtlHi3L2fQrXG60w/adn
V1EbcnfQaHJXZ0+Z76HEYUTYhhTRh0PTGZd2Xv2/KkH++XihdTfq1tRCN6lRgqlV
sLH9ZswGNDTHYwVl3ntDO0qQ9HKdUJGdlcZQR2+SWbIGZ+IayagMGc0QkqcOQ6mu
DKoRBv20kLbiuJ7pzcw1C4rzTmDhn8+3/AcSAfAqFlRziPIQJwizB5d6PIUZiCq5
9hd5L+iDUpXhyRN8kerQkTBgQAUFO3iWy4T3pJgJntd4sTMCHMWi0Sw/jNFakdGC
QspYiS+D1dOUAKlrEG/tkwOInDx6lcD61UHO6NOSAgxsRT8CmdToPhys32QQ7K87
JfMBU3avHY+ZymVGGF5GimXNcWd/Om3L678k+QfEEAcmfo1X18uTPiq9bBhmbTUY
kwtVjFDEqTDpN3BD21Jh4xQl4EodD99JuFyEzTpHTtdbZ5R8HdBEt6vvBNr3+ELw
vBEYhVAUBqrqXUa5u82leK/Zk+/y3jqbCFyS5dBRASlrGtcyFnM=
=Z9VO
-----END PGP SIGNATURE-----

--2lk4fknfdvvkxked--
