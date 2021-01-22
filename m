Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 357C52FFB72
	for <lists+linux-man@lfdr.de>; Fri, 22 Jan 2021 04:57:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726166AbhAVD4q (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 21 Jan 2021 22:56:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57214 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726558AbhAVD4p (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 21 Jan 2021 22:56:45 -0500
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com [IPv6:2607:f8b0:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 02776C06174A
        for <linux-man@vger.kernel.org>; Thu, 21 Jan 2021 19:56:05 -0800 (PST)
Received: by mail-pf1-x436.google.com with SMTP id u67so2850006pfb.3
        for <linux-man@vger.kernel.org>; Thu, 21 Jan 2021 19:56:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=bXmmSxVsSndZKIz7UiccilknEJUaHPOY/HZbNWab8fU=;
        b=ezzGsnx3tm22nfLvMP5Aym8bjy8+Ez6/iWUQH+9Wp0feXsQbdPVcBTqvclJacAJ6IS
         ck4723jw1iV/4DEhL4lzwe5XS6TUgQDlEHSb7+aDPd4JKV4FX/VnQsFXIa8VlebAUCw5
         dwvo47wKXKwmFnccAFb3F4yAdzPqJbN5OP1rUMM1lk5QJ6c1AC+tFZXZooRfZ+FAPYiC
         T5lHIzE/NR9M5WeFHQULpr0xWLq3TTmlCWCUkJ36jUcNydBFgD99ioA/QxmbWxoVj4gG
         Do7P/UZPGTSCT4P+7c+Fw6gdak3AXB4f2MO4Tbw+XMwuXPNdQj5m2k9uEGhhwSAJEFwI
         M+6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=bXmmSxVsSndZKIz7UiccilknEJUaHPOY/HZbNWab8fU=;
        b=qHq0o2Z8AkFkmWgXADjXLROimXLd7ho/GJ2yxaMm4rDn3BVAbV//agNu+jav/bvzoH
         ZZVX7V1PG3G60r46WzeMDdwc68pwA+BeLJiAXq5Z8NLRED5Y5hs0uM/4VTr2coftU9Lk
         jw0pFt9EaveiW07/8z/apCwcYa5KBapneiniAFsEpYGmWoFL8Ty95KuQeM/PHzBFCpyy
         pb7dvGWGIx0xyuI8e8/aT0CilUbJWZqphpiFNqK/q8BFHtudyJkseCrgcjOg3vO05R5w
         GWF4d+cVRj5Fs5P0tIqDB8YbQNYEz8IT9rhrRSr0kWVxv8MB0BYbzc03dGzIf9BCwnIx
         v6jg==
X-Gm-Message-State: AOAM5331L1qNj/qkUWCOcJDMql36Ga5RW+KzrxoWQmBaGDbrkdzwsPEe
        s58KP5bFLnFBhiROC2vw9C8=
X-Google-Smtp-Source: ABdhPJyUtuYAoMciK6RLrSRLj5bIB+IAmx5fJuUEzdO+wzrNjCXBnHweDk+FJCCqYRpL+IJ/X7bNmg==
X-Received: by 2002:a05:6a00:158c:b029:1bd:ea8:6d6d with SMTP id u12-20020a056a00158cb02901bd0ea86d6dmr2756593pfk.16.1611287764593;
        Thu, 21 Jan 2021 19:56:04 -0800 (PST)
Received: from localhost.localdomain ([1.144.182.204])
        by smtp.gmail.com with ESMTPSA id k31sm3307250pgi.5.2021.01.21.19.56.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Jan 2021 19:56:04 -0800 (PST)
Date:   Fri, 22 Jan 2021 14:56:00 +1100
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>, groff@gnu.org
Subject: Re: Escaping hyphens ("real" minus signs in groff)
Message-ID: <20210122035558.ny2u3ddel2mltrve@localhost.localdomain>
References: <CAKgNAkihGY5W178QYHcRvs0f0E4HMQdWir9KOJsEzVF=1wi-sQ@mail.gmail.com>
 <20210121061158.5ul7226fgbrmodbt@localhost.localdomain>
 <a1af3f5c-f3e9-4bf3-cad5-389571c45d27@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="ue5cilyz5dm4hzad"
Content-Disposition: inline
In-Reply-To: <a1af3f5c-f3e9-4bf3-cad5-389571c45d27@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--ue5cilyz5dm4hzad
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Michael!

At 2021-01-21T12:03:13+0100, Michael Kerrisk (man-pages) wrote:
> I appreciate your long answer *very* much. But, I'm glad you started
> with the short answer :-).

Cool!  But beware, from such pressures is the practice of top-replying
born...  ;-)

> > Another issue to consider is that as PDF rendering technology has
> > improved on Linux, it has become possible to copy and paste from PDF
> > documents into a terminal window.  In my opinion we should make this
> > work as well as we can.  Expert Linux users may not ever do this,
> > wondering why anyone would ever try; new Linux users will quite
> > reasonably expect to be able to do it.
[...]
> > And I mean copy-and-paste not just from PDF but from a terminal
> > window.
>=20
> Yes, but I have a question: "\-1" renders in PDF as a long dash=20
> followed by a "1". This looks okay in PDF, but if I copy and paste
> into a terminal, I don't get an ASCII 45. Seems seems to contradict
> what you are saying about cut-and-paste above. What am I missing?

The gap between aspiration and implementation.  I don't think the
"copy-and-paste from PDF to terminal window" matter is completely sorted
out yet.

I'm a strident prescriptionist about preserving the distinction between
"-" and "\-" in roff documents, notably including man pages in part
because it affords us more room to design around this problem.

ASCII and ISO 8859 unified the hyphen and minus characters.  AT&T troff
and all of its descendants distinguished them.  Unicode also
distinguishes them.  But Unix has a habit of calling ASCII 055 (45
decimal) a "dash", and moreover, to much software, only the numerical
value of the code point is important.

It's quite possible that for man(7) documents rendering to PDF, we
should perform the following mapping (in the man macros).

=2Eif '\*[.T]'pdf' \
=2E  char \- \N'45'

This didn't come up in my argument with (mostly?) BSD people because (1)
the immediate issue that raised concern had to do with the grave accent
and apostrophe instead and (2) everybody in that camp who spoke up on
the matter said they seldom, if ever, render man pages to PostScript or
PDF.  By that token, the above 2-liner may not be a controversial matter
to the people I was arguing with.  :)

Consider what would happen to the appearance of PDF-rendered man pages
if we encouraged all \- escaped hyphens to be rewritten as plain hyphens
in the source first, and did the following to mandate uniformity.

=2Eif '\*[.T]'pdf' \{\
=2E  char \- \N'45'
=2E  char - \N'45'
=2E\}

=2E..just as is currently done for the 'utf8' output driver, whose second
line I want kill off.

I feel that responsible stewardship of the groff man macro
implementation means considering the needs of diverse audiences.

> I don't really have any other questions, but I have tried to distill=20
> the  above into some text in man-pages(7) to remind myself for the
> future:
>=20
> [[
> .PP
> The use of real minus signs serves the following purposes:
> .IP * 3
> To provide better renderings on various targets other than
> ASCII terminals,
> notably in PDF and on Unicode/UTF\-8-capable terminals.
> .IP *
> To generate glyphs that when copied from rendered pages will
> produce real minus signs when pasted into a terminal.
> ]]
>=20
> Seem okay?

What a "real minus sign" is is a fraught issue[1], but if for the
purposes of man-pages(7) it means the ASCII/ISO hyphen-minus, then yes,
I think it's good enough.

Regards,
Branden

[1] especially in light of the \[mi] special character escape and the
    existence of U+2212 :-/

--ue5cilyz5dm4hzad
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmAKTLwACgkQ0Z6cfXEm
bc6Gaw//ctJbLkEEISWgETWzPs3uJJiDdYEK36UBjUnavQNkcMCKwYTGJEkq4w5i
kP4SqlhohWwvLZ3Nq0laLwsvVH8pEounJ/mXPDnDTVWmx0pXDhWkEBEXSayUNdzq
HXr2/NmEGDdiGVdQJnFWwAYCwEPcfrqnZbgT8TVSqMAusGQpuldlxuDz/OPQ8jGZ
9MjVoMKsKq8m4/An4w80/0nz/L2asjKYtFAQqXecJgLsh8dB407n2QAqwhJ/w9qC
oadN/X9+nOOi+GqTYJze3fxH0hff1gN54xUtjYq7SytPJiD/BrIO6G301tT89HDT
hC0z0e1Le5Bj2dC+hr3oM/NgyS/0/AkyCAQ+u9r663PvT9iyFqEP9i8nhMa6pwKz
sQytYL+XuOibln8Ut1bWEm+2bJL+uQT9SKBtLOBjOZ3i46jVOPldugmrDO+r3puK
/YKFjGIFJlaMOdHZKtfnvfraetxeP2ijgePcBhGq1WDaZHveoXOqvIneQ9G0XwKJ
Yrtf7GmfWc6djNDzGY4vQjXQQhL82MqNEHbB+3un4TsBdOsEOdRX54Bwr8TYh6N6
OkXfg+SINx0XJ2sYI6LUc/LmuYHTk6ygdQ3k6TpAM7aDMbz5lgWSqf+Gc7QDsj/B
J1pEsuN/oG6ZxzcJ44kOJHOUx11c3X+nqhT9Qe5jLCS6dXarMfI=
=sTqK
-----END PGP SIGNATURE-----

--ue5cilyz5dm4hzad--
