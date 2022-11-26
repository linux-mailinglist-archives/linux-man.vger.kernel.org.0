Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6DEDE639861
	for <lists+linux-man@lfdr.de>; Sat, 26 Nov 2022 23:07:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229491AbiKZWHr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 26 Nov 2022 17:07:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55450 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229453AbiKZWHp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 26 Nov 2022 17:07:45 -0500
Received: from mail-oa1-x31.google.com (mail-oa1-x31.google.com [IPv6:2001:4860:4864:20::31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 97A26647A
        for <linux-man@vger.kernel.org>; Sat, 26 Nov 2022 14:07:43 -0800 (PST)
Received: by mail-oa1-x31.google.com with SMTP id 586e51a60fabf-14279410bf4so8994360fac.8
        for <linux-man@vger.kernel.org>; Sat, 26 Nov 2022 14:07:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=awz7TeaWs0OtTWez9uZIRkRg0b66SiEY+jcNTZmFj64=;
        b=J3n7VoB0DKAaLrZbdsA/ACu561cnt6djb2+DN1CGXzUxK/xLn0DSxRuYwoxjoO+FQk
         0pIL5XL5NVtlF7nb0Q6aoYPl4fahKs7Pb58f9UkDu2n0i30xqsoNTqWg+vXwchQFj8U+
         0tDgwhEIoY5GQOBKDQrOLOp1kpEHHBVA+tfOw6qVcDFVX6boYGLOR1m40++u+dDG4x6O
         onegkUJATLncv/Mun/95mK1mfhRmoZy4Ew7/piVN/kFfiks53qMoI5HiZHfETogebIgG
         QrAhUBcMfPLQ+NJBZyK5Si3ia5JqHdNneF6fc3O6x64oN7g2C64RUw5Hc5YKKKyKSUDA
         KcGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=awz7TeaWs0OtTWez9uZIRkRg0b66SiEY+jcNTZmFj64=;
        b=OhWAn3Kb7KH8Sz3F+VvOn0Q12PsYRjAz795R7tQZtlDIjOS95NifuWiXWLfIz3d835
         UbU7UHw7qtWLEYk1mzAJynyx9D0m9XcUS4wmMH8YtkkJ7cfcX5UuXmGMEQpd+OWQC2Aj
         AXv89udl1w6MGvRQjiMXcewX3RuxKiUMJ945u+rCHU7eimNlTHiLgKQ6xwODb7GcVn+A
         NveZErDMClNJKHtO+j040MLlm5KgMbsOaKTnqv91+71t9ZIpiKyXgTGHzZEBjNihXJ8q
         dNVYoLfikTtKVbF4eGw5K5t5o6HlQFheeQDv+fIVapv2gnjtg0k3OPwHQUvDJVkrsFHP
         PSIg==
X-Gm-Message-State: ANoB5pkDGLWQPWr7k2I3fmMpP67HkSxm/eP1q0xChf8PbHiSgBuLtDTJ
        uuNEsoADptcZaV3MP52zV+OJ29TM8biEEQ==
X-Google-Smtp-Source: AA0mqf4LfuSl2R/PLt7FxCmXoZ5jDSxiCLo+Vc+OLCF33zaSQ9fh7yPXinaF0gc65FSSkMeKCN0IGQ==
X-Received: by 2002:a05:6870:a2cd:b0:132:8d60:358f with SMTP id w13-20020a056870a2cd00b001328d60358fmr17674917oak.102.1669500461965;
        Sat, 26 Nov 2022 14:07:41 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id p23-20020a544617000000b00353ef11d6c9sm2877335oip.19.2022.11.26.14.07.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Nov 2022 14:07:41 -0800 (PST)
Date:   Sat, 26 Nov 2022 16:07:39 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     linux-man <linux-man@vger.kernel.org>, groff <groff@gnu.org>
Subject: Re: Doubts about a typo fix
Message-ID: <20221126220739.jlwnk5jay6ju2j4l@illithid>
References: <842adff8-8d8c-b189-8e6c-34be111b8b19@gmail.com>
 <20221123214019.6w2cv525fmr3akdr@illithid>
 <b91ea285-22f4-5f13-beb2-b0c74cc4db10@cs.ucla.edu>
 <20221126035253.pli53qzgfx6tbax5@illithid>
 <20221126212023.tAYzs%steffen@sdaoden.eu>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="2w2rr7yf4gvbbydy"
Content-Disposition: inline
In-Reply-To: <20221126212023.tAYzs%steffen@sdaoden.eu>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--2w2rr7yf4gvbbydy
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[dropping Paul, Alex, and tz@iana]

At 2022-11-26T22:20:23+0100, Steffen Nurpmeso wrote:
> It would be great if groff would release adjustments to grotty so
> that one could again use copy+paste also in manuals.

One can.

> And now please do not beat me onto that hyphen-minus for options, and
> that one should do this or that, but it is for many other characters,
> too.  If i look at bash manual for example, hyphen-minus is ok, but
> caret is not ^ but U+02C6 MODIFIER LETTER CIRCUMFLEX ACCENT, and i see
> U+2018 LEFT SINGLE QUOTATION MARK instead of single-quotes.

Those mean ^ was typed when \(ha was meant, and ` was typed when \(ga
was meant.

> That is cool and maybe milks the shit out of the typographic
> capabilities of modern UTF-8 terminal emulators (i think i quote you
> here, more or less),

I don't think so.  When I milk something I emphatically do not
anticipate the production of excrement from the orifice.

I try to keep my cruder wise cracks off of mailing lists.

> but i always have to use "LC_ALL=3DC man XY" to enable copy+paste for
> myself.

That's not necessary.  You can employ the workaround documented in the
PROBLEMS file, as I believe I have told you before.

---snip---
* When viewing man pages, some characters on my UTF-8 terminal emulator
  look funny or copy-and-paste wrong.  Why?

Some Unicode Basic Latin ("ASCII") input characters are mapped to
non-Basic Latin code points in output for consistency with other output
devices, like PDF.  See groff_man_style(7) and groff_char(7) for correct
input conventions and background.  If you use the correct groff special
character escape sequences to input them, you will get correct output no
matter what device the input is formatted for.

However, many man pages are written in ignorance of the correct special
characters to obtain the desired glyphs.  You can conceal these errors
by adding the following to your site-local man(7) configuration.  The
file is called "man.local"; its installation directory depends on how
groff was configured when it was built.

--- start ---
=2Eif '\*[.T]'utf8' \{\
=2E  char ' \[aq]
=2E  char - \-
=2E  char ^ \[ha]
=2E  char ` \[ga]
=2E  char ~ \[ti]
=2E\}
--- end ---

You may also wish to do the same for "mdoc.local".
---snip---

You can edit one file (or two, if you care about mdoc(7) pages), one
time, and never have to worry about typing LC_ALL=3DC before your man
commands again.

> But hey, it is only me, i am not a prof at an University who is prowd
> of dozens of Noble price winners and other such prices, many of them
> still worth something aka based upon scientific grounds.

I don't know who you're aiming at with this status-oriented gripe, but
it doesn't sound like me.  I am relatively unlettered person,
academically (can't you tell?).  I enjoy university classes but I'm not
good at being graded.  =F0=9F=98=85

Regards,
Branden

--2w2rr7yf4gvbbydy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmOCjiIACgkQ0Z6cfXEm
bc52og//bWFwwii06z2xqSW2uBNogdPoD24UlrBFeKMY51smuGNPMfwoe5THkc/C
CRLmKHT3vW3M1OnkH1+Tvzl4GvuabPop3OE1rYrOoZicDRmmkoT9g9HUFSW4U02E
zNhJ+60OTYpXRuPBJ7RaWsniTjmg28aFEfYduADInIi5omJ4ApD2gNuUNNgg68HY
SrKPFqaU//8BKj0CXPVloE4AEElVRS2bWo0i8S/83K61PBf48z3ecRnohYHv/BtH
gyoE4ofuSwsM89FHfl0tXMjSkEo0xN4IE6QJAlZmWnOYjDay3HSISWwby6cIWU5p
Acidiu8iutuzr9zRUOPSqduBmb7vpB5tDJPdHSDvZO+dDXpAadawwwy83kS3GP9a
sKoJ63DXC7zNWJ6R5BSy/iegEJRE3aH4hiFUW45kM+Jwh1XZ9bJBIzbZ5491aYIL
0uvBAZHCkoEKzHH0SQ32Vxa/CPghqAJD+hZTVLphbawdRZxHIdBuNygBdsexmPLs
aPPXD7T20cdDDZTIBozTkXk8frMYIei9CKL9AXbOSYh3pcIJ0pR1KwZ9DSi6eV7o
2+lC2mlaYOcv9vFw9C8qIct9tXEyiepvczbBqsR42FS1sm5iSpWYkkTk1Cdz1G5g
JFo51VKVYXDoq4/5Xw1Jb11N6RvSEaNZB6WA/eIc6sS8+jWbLFI=
=TkWK
-----END PGP SIGNATURE-----

--2w2rr7yf4gvbbydy--
