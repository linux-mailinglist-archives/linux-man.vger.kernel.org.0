Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AEC6B6E53AB
	for <lists+linux-man@lfdr.de>; Mon, 17 Apr 2023 23:10:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229738AbjDQVKf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 17 Apr 2023 17:10:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56296 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229523AbjDQVKe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 17 Apr 2023 17:10:34 -0400
Received: from mail-oa1-x30.google.com (mail-oa1-x30.google.com [IPv6:2001:4860:4864:20::30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 766999F
        for <linux-man@vger.kernel.org>; Mon, 17 Apr 2023 14:10:33 -0700 (PDT)
Received: by mail-oa1-x30.google.com with SMTP id 586e51a60fabf-1879502e2afso15983501fac.5
        for <linux-man@vger.kernel.org>; Mon, 17 Apr 2023 14:10:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681765833; x=1684357833;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ksSreI6B0+Bb7jsmeda0hodNsrd++EWn6tWlcT/FrT8=;
        b=iYrBqqPAG+hW6C1qSB1wY3MKBmIsT+3001Z5EJ+1SymD9oBn+fApoKnfPRu6DBI3uD
         DFRtQZ0Ohc3XQOdNm5rlR47FnXTKcj9MTSwT0fyM8E5QI46b2Ov/Z2vTvFUQ32e+JD+7
         TIT/BrI7mQRCnQKC7VCZ+tfIDc1cKcGjSdVRtHxVVA8YcjsU5ZpHu/NuBzXksdpyu74y
         dYfqYfP5ju3aLHiWfAzVcx3HPkARZsk/chu9WLVcEN0E7yn6MSG2pS4WaiL683oi2rAh
         2jwDAg13HrFBmjRtg/+NVlSWayqUZSWfG1gkuafCsTjjs7CIaK95yCueEl7B+leA32j/
         lNKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681765833; x=1684357833;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ksSreI6B0+Bb7jsmeda0hodNsrd++EWn6tWlcT/FrT8=;
        b=MR7i2JlaOtYYTbCIbmaKyS1j5Pqyce6IkLEJnPwS1mJv2tGPLsTNcsMGN2v87Gr4TB
         rkWVOdZQsTiKgdyZS26hQWTKXBaRUOqz2L9MpvJYSsgQWJgjSb3e5ydQxnOuKseCYPCU
         q0igKWXAMFhm/qIbdhMNTZgpzqEhnU04p7SkwLj3Zt3UZVanI1ldz232tBXKSedvraEu
         Sa8iJJZ8oiyulD2qtdxQivnI1tbIUqENHnwtXicxY8gQzAxWvF2l9yVfQWzFVePLiQnO
         t3G47WYQzzTS3TiSJwzdA0Q2SHmjjdN6AeRiT5ZpwvN7hoEjsMQt9gIGHmFKhKfnr0QI
         06WA==
X-Gm-Message-State: AAQBX9f1X5JFl8ceL592juiX1RDS8/wDfuh4gZg3+W/IhxZ5Wg6w/vje
        HiVx2FZ4Qbiyl/2oxRjek1kCYdWztjy35Q==
X-Google-Smtp-Source: AKy350ar0ezwX/4UvW15oEEI4AT8srEOb27i2Bm+u18LdEh7io3/YBdGxgNLQOtDdVrMwX4bK2Mc1w==
X-Received: by 2002:a05:6870:60aa:b0:17a:b715:ab9a with SMTP id t42-20020a05687060aa00b0017ab715ab9amr9989445oae.50.1681765832664;
        Mon, 17 Apr 2023 14:10:32 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id i5-20020a4a8d85000000b00541269a2fcesm5148531ook.25.2023.04.17.14.10.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Apr 2023 14:10:32 -0700 (PDT)
Date:   Mon, 17 Apr 2023 16:10:30 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Guillem Jover <guillem@hadrons.org>,
        Alejandro Colomar <alx@kernel.org>
Subject: Re: [PATCH] man*/: ffix
Message-ID: <20230417211030.tzxakddee7qehrcw@illithid>
References: <20230416231916.281037-1-guillem@hadrons.org>
 <20230416235126.vdbiab5p5jwty4ol@illithid>
 <245b3f67-3686-a784-c0ae-d3e5db117a21@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="r7ztwu24q63rdjq7"
Content-Disposition: inline
In-Reply-To: <245b3f67-3686-a784-c0ae-d3e5db117a21@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--r7ztwu24q63rdjq7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Alex,

At 2023-04-17T20:14:42+0200, Alejandro Colomar wrote:
> What do standards say about formatting dates?

Nothing that I know of.

> Do they specify the character?

Not that I know of.

> I read some RFCs, but didn't see it specified, other than calling it
> literally '"-"'.  No name of the character, or ASCII code.

Most RFCs don't concern themselves with typography.  :)

> However, date(1) only accepts hyphen-minus, so it would be nice to use
> a compatible format, even if standards didn't mandate it.

Sure, and for an example you actually intend someone to copy and paste,
you should _typeset it as an example_.

In my opinion, the cases at issue weren't examples of things to be
copied and pasted, but _read_.  That is why I attempted to point out a
much easier way of getting date(1) to format the Epoch.

As another example, in the history section of a man page, I might say
something like the following.

  This system call appeared in First Edition Unix, 1971-11-03.

It would be silly, in my opinion, to escape these hyphens.  They're not
intended as command parameters, but for the enlightenment of the reader.

I concede that there are people who don't _ever_ want to see proper
hyphens in UTF-8 man pages.  For them, _every_ hyphen should be a
hyphen-minus.  I don't agree, but groff man(7) can accommodate their
desires.  That is why groff has the following in its "PROBLEMS" file.

---snip---
[groff 1.19.2]

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
.if '\*[.T]'utf8' \{\
.  char ' \[aq]
.  char - \-
.  char ^ \[ha]
.  char ` \[ga]
.  char ~ \[ti]
.\}
--- end ---

You may also wish to do the same for "mdoc.local".

In man pages (only), groff maps the minus sign special character '\-' to
the Basic Latin hyphen-minus (U+002D) because man pages require this
glyph and there is no historically established *roff input character,
ordinary or special, for obtaining it when a hyphen and minus sign are
both separately available.  To obtain a true minus sign, use the special
character escape sequences '\(mi' or '\[mi]'.
---end snip---

By analogy, we don't compose man pages to write "don\[aq]t", even if for
some reason a person might want to type "don't" as input to a Unix
command.  (I hope they've prepared for its potential interaction with
the shell's quoting mechanisms.)  People have gradually realized over
the years that typing "don\[aq]t" is derpy and awkward.  Typesetting
enthusiasts also note that it gives you a wrongly-shaped apostrophe in
DVI, PostScript, and PDF output.

> I'll hold the patch, to allow for some discussion, but I want to apply
> it.

I unflinchingly agree with the remainder of the patch.  I simply want to
caution against a robotic process of demoting perfectly legitimate
hyphens to the crudely compromised hyphen-minus character.

Regards,
Branden

--r7ztwu24q63rdjq7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmQ9tb8ACgkQ0Z6cfXEm
bc4x1w/9FrR5FIiy/ViO95pUvzOugDTMznnNlHs74qCiOtZgiwi65lfX+Xd5j/ow
OwvmYWPeS8drstmO3fCr2BR5ghWAzUftNilXo9WHsx+VkdxycgH+RZ05JJlgtBOW
X1rFexHgPyZGRr9LF9Pu/F9RyMOydy26x27hYHEgdHwkmdmuh+5LItYVImgsHcAk
6eOPRxM4kxKkXOUjMPimy8OlArC/V+uoguna+gMYd5ViCwy+LbwEO919GhvnpRx1
i0WgSzPmd5l2gKXsE6NVW+22bc2XuDE+Fxo7Dp8Qfa7wtBWSMrr2F9CSTEr0v3DN
ttXNiKHRzueEfawN8TcKv5Uzo0Y813VeuBU3e6yc/x23Pohpk2szeEvhhpZVsMNm
M+APN+bPXFvat3jIyRAdZkXViyV37XsbjRM/v5wwXF7nOyDr7KVzFMrBDvbQX/Mv
h6uRcHWSGDhbM0k2ekNI2p2UX+DNHNKdgYaY857J0GUfPtEBRoZhOVSZC3k90t9u
YW9K7rUkN7Koh45JIz7Txz/ZJuJOcyr86YwiHD4+GkWDoLrc4+KaHAUSEgGXn+MY
dPJxfVt+q93RNsDmplViwXbe7fPgvA4rrSFshHDOaJqPrh2aCWjJD4n/OmcANnkF
izSyR3y07AvSM4tfHEGHbRgp6SzBi/N/7EAkJCQbNkABRKyDbkA=
=nyB2
-----END PGP SIGNATURE-----

--r7ztwu24q63rdjq7--
