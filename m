Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3063F6393C5
	for <lists+linux-man@lfdr.de>; Sat, 26 Nov 2022 04:52:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230121AbiKZDw6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Nov 2022 22:52:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50642 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229514AbiKZDw5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 25 Nov 2022 22:52:57 -0500
Received: from mail-ot1-x329.google.com (mail-ot1-x329.google.com [IPv6:2607:f8b0:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C510C1A39D
        for <linux-man@vger.kernel.org>; Fri, 25 Nov 2022 19:52:55 -0800 (PST)
Received: by mail-ot1-x329.google.com with SMTP id a13-20020a9d6e8d000000b00668d65fc44fso3753200otr.9
        for <linux-man@vger.kernel.org>; Fri, 25 Nov 2022 19:52:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=y3184JRPIBNVqtcyBNVcEIxMu+3RALNI5pO3zqvT/2U=;
        b=VKqa9lhULAXM/2kGUpHyOcKPZ3jlI2X9k4pNQ02wjiX6Mliw3CMVzEfilQFDsnlwh1
         FqjwfxFYEZ6CtsCJqz/Zcsv5ph24TvCkwHCCZcPUiYg+EO3Zohpp/HaGBrz44ZjPvGDu
         KBqljb0CRDGMMH+bj9hnVbKckqBf0Wr91wVyhVDMpW2ZKhr+R+ejEY8PM69Cm/rZlm9U
         CE/TCDKYu8NWnoPgzFpn5Dg70NYwQY68oSCYckB/02krHAbY+61CH75oNaib2sb8XB+4
         le46yqs31po87Jjy93iaa0es2rK20HfKBV6G3SFBbjHqgTWpuTnmBOvC3HhWTCwGWPsT
         SMjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y3184JRPIBNVqtcyBNVcEIxMu+3RALNI5pO3zqvT/2U=;
        b=qc0hFR2J79Q/dE+ca2NlEsEfqvwULMOTnZoNcM44WKqCjBzStPumnfUo3XKnRYFYiM
         a0eo9a63VHbeUl52wAB2oqvEJdkIhSu6WCSGdQd3tSNTsaveC3/ymd+2fbcXfc814Sn4
         kDTS8q1pf6sGEKgFoVNIB3dzFGchRoBotIfSCxx1DFO2stDPUBGrOPh5WRU9hbVoTEOy
         g24OtaQe3jrBxfKjgvwVwM4m/bQ464VzbyRfjPzhq2uiMFXmakod+HG8qycBLJTrbkds
         qOfXeFe5o/EBrSZ4nK3dUtzAytMEj8XvN6cBvjE4fe0L65GBBs0vr5xwoHhufUXUWatA
         wl6w==
X-Gm-Message-State: ANoB5plOz9IsvIN7E6t7cIYICzlDpvLOeHldZnr2Fvkpcf6bJXIduSoJ
        3MatRsH/nLPWKNNCqwH/jmQcaS+P3XEtMg==
X-Google-Smtp-Source: AA0mqf4/d+eg7vDSd5u9Lk8EVOBbXv6H6JpwiZe4dPgI8XFe1ntktl8XvftEVgSa+CtrnXjwRvT3dA==
X-Received: by 2002:a05:6830:608d:b0:66c:3394:86d3 with SMTP id by13-20020a056830608d00b0066c339486d3mr10622734otb.145.1669434775069;
        Fri, 25 Nov 2022 19:52:55 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id l27-20020a056830335b00b0066da36d2c45sm2415797ott.22.2022.11.25.19.52.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Nov 2022 19:52:54 -0800 (PST)
Date:   Fri, 25 Nov 2022 21:52:53 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Paul Eggert <eggert@cs.ucla.edu>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Time zone mailing list <tz@iana.org>,
        linux-man <linux-man@vger.kernel.org>, groff <groff@gnu.org>
Subject: Re: Doubts about a typo fix
Message-ID: <20221126035253.pli53qzgfx6tbax5@illithid>
References: <842adff8-8d8c-b189-8e6c-34be111b8b19@gmail.com>
 <20221123214019.6w2cv525fmr3akdr@illithid>
 <b91ea285-22f4-5f13-beb2-b0c74cc4db10@cs.ucla.edu>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="7w5zkrplskcamm6b"
Content-Disposition: inline
In-Reply-To: <b91ea285-22f4-5f13-beb2-b0c74cc4db10@cs.ucla.edu>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--7w5zkrplskcamm6b
Content-Type: multipart/mixed; boundary="3bdtmpb3xz4yh237"
Content-Disposition: inline


--3bdtmpb3xz4yh237
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Paul,

At 2022-11-25T18:18:46-0800, Paul Eggert wrote:
> Thanks for the info about groff. You're right, tzdb man pages are
> supposed to be portable to both groff and traditional troff. For the
> latter I test with /usr/bin/nroff and /usr/bin/troff on Solaris 10,
> which is the oldest troff I know that is still supported.

I'm curious to know what that support looks like.  Is there evidence of
any _development_?

> If we did that, Groff would set a source string like "\*-\*-help" as
> "=E2=88=92=E2=88=92help", with two instances of U+2212 MINUS SIGN instead=
 of U+002D
> HYPHEN-MINUS. Therefore people couldn't cut and paste code examples
> out of HTML or PDF, and into the shell.

This hasn't been true for PDFs produced by groff for about 10
years.[1][2]  You can copy a U+2212 minus sign and it will paste as a
U+002D.

> "\f(CW-\fP" is used instead of plain "-" because when the output is
> PDF, it is more clearly visible to humans as a hyphen-minus instead of
> as a hyphen (U+2010 HYPHEN).

Okay.  It's a shame that's necessary.

> > Most people won't see a difference because groff 1.22.4 (and earlier
> > releases going back to, I think, 2009) the man(7) macro package remaps
> > the hyphen to the minus sign on the 'utf8' output device.
>=20
> I noticed the abovementioned problem with PDF output, and I still see
> it with groff 1.22.4.

Some distributors do violence to the man.local file.  But I am not a PDF
expert; for this I'll have to turn as I often do to Deri James, who also
wrote the gropdf output driver.  Deri, what's a good way to root-cause
the issue Paul describes?

If I prepare the following document:

$ cat EXPERIMENTS/minus-and-hyphen.man
=2ETH foo 1 2022-11-25 "groff test suite"
=2ESH Name
foo \- frobnicate a bar
=2ESH Description
Copy and paste me: foo\-bar-baz.

and render it with "groff -Tpdf -man" using either groff 1.22.4 or groff
Git, then when I copy-and-paste "foo-bar." from the document to a shell
prompt, I get this:

$ echo foo-bar-baz. | od -c
0000000   f   o   o   -   b   a   r   -   b   a   z   .  \n
0000015

> I see a different issue with groff 1.22.4 on Ubuntu 22.10: I cannot
> easily see the difference between "\f(CR-\fP" and "\f(CR\-\fP" on
> output to PDF. If I cut from the output PDF and paste into Emacs or
> the terminal, the former is indeed U+002D and the latter U+2202 and
> the difference is readily visible in Emacs or the terminal;

That's odd.  This definitely is not consistent with the groff 1.22.4
behavior I'm familiar with.  I find the minus sign and hyphen glyphs
fairly distinguishable.  I modified my example file above to switch to
the CR font.  Attaching (cropped, 7.7KiB) screenshot.

> but it's not readily visible in the PDF. However, this glitch is not a
> serious issue for man pages since examples always contain
> hyphen-minuses not minus signs, so I didn't worry about it. I assume
> that it's yet another font thing, since the problem doesn't occur in
> the default Roman font.

Possibly; when fonts aren't embedded in the PDF, we're at the mercy of
whatever the renderer supplies.  groff 1.23 will be shipping a 380-page
compilation of all its man pages in PDF, and it embeds the fonts; I am
hopeful that this will provide a reliable basis for comparisons so that
we can better track down issues like the ones above.

Regards,
Branden

[1] Commit: https://git.savannah.gnu.org/cgit/groff.git/commit/?id=3D453667=
8ce5713907304ad1695e907f6888c44aa3
[2] One explanation: https://lists.gnu.org/archive/html/groff/2018-05/msg00=
076.html

--3bdtmpb3xz4yh237
Content-Type: image/png
Content-Disposition: attachment;
	filename="minus-and-hyphen-courier-roman.png"
Content-Transfer-Encoding: base64

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
bnNob3TvA78+AAAAAElFTkSuQmCC

--3bdtmpb3xz4yh237--

--7w5zkrplskcamm6b
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmOBjYwACgkQ0Z6cfXEm
bc7tLw//etFP+BPRZmZEDfIkH9TqiYHhKoA5//fR7uvERQwzkdaNy3U8hOlLLkb3
eGSaWxAQ3XsUxI9vEQR9c9B9a0qbM2E+gq3zipPg3pAE2rs1i+tx1xh0/xNqErAy
RWKffXMejyOL/ULCzhJMJVM0cDmn6L5Vv9N4jDuWWVNVm4KTJMcmEvzNYC2Jy6zh
CCHrnEddNotadi6dpTQP5Rtl5Z6pGIJvcjwao6OEjPn7tyBqfm9SGxtIax5MnSCy
yGBH10+4gCBM5Jo4wxRQ+fCR2TWTXBZ92xCqYu2VrM4lG9Bc9R4uZOmiXIDCCSp8
0Lz90RTKp/lxOg6DenpQmV+E8fbFK4xkwWKuFs78uMVCSksbOz+5ziWPDaXxfLdm
HjWVTjHBR6X/CfCIwSWJ22wplLUhf145saHpjp18zaDJR5W0EJF7u0Ew32UEjchv
g/2bFMLMGbCojG/Hx8cO0KGsLYi0ULG7N2Z0Cx2OdaoWHyB48EhoQRSuyc4UEiUD
/psuozGEqyteG/G/Dc3R40qOCD/0iC0ptrYiKoFhTZEqqli8Ev0vVMN3ky3z8Az6
HyC9fjcFaGPwEhVZ0qDBXfbM2q5Ei0LTafiucttX6UswWUBMGQ1XKTgDOOcXNRcM
NHclfiqozuN+buN2c8sYt1arTmumbWMwC34m7UyY3shBQPytqAg=
=//IJ
-----END PGP SIGNATURE-----

--7w5zkrplskcamm6b--
