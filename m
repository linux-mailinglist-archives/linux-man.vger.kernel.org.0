Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B5AA4754D2B
	for <lists+linux-man@lfdr.de>; Sun, 16 Jul 2023 04:58:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229587AbjGPC6R (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 15 Jul 2023 22:58:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54358 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229451AbjGPC6Q (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 15 Jul 2023 22:58:16 -0400
Received: from mail-oo1-xc2b.google.com (mail-oo1-xc2b.google.com [IPv6:2607:f8b0:4864:20::c2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C99E91BE
        for <linux-man@vger.kernel.org>; Sat, 15 Jul 2023 19:58:15 -0700 (PDT)
Received: by mail-oo1-xc2b.google.com with SMTP id 006d021491bc7-563439ea4a2so2204471eaf.0
        for <linux-man@vger.kernel.org>; Sat, 15 Jul 2023 19:58:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689476295; x=1692068295;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4G/+FNT/DRWoC87PWvO6NMYeKvts5wy6tmoPBHMnFMI=;
        b=A6r4sy08ek6UpNE8K/ZzBZhc9ZZc2Tvs9YIbBXQ7Znx1pKXNlyzQAp0NsEFOLws6Ob
         ZNBojiFHlkPNQfWFi9UXaBqb8n02oZPuRssytX7sFa8harZ7cqp0wB+3Mcbf4P6etNqO
         llIfJUXgI+laBIPRIVWN0BlvCdebXZmrPw2O394oh9IElkbW1dwEO5pF/UDIhLbn3R4B
         FVxB1I58k4o5BYYg+2oeAIja+oKShsDUrxkigRdMppGbtvcfbjSrv+OlIEhil2BligIP
         uDrnKyO0sFLNbj3YYGXmdkycOuW2Qn/2L01sw4nyNECkQC6kUmpIvgHgD04laJNI4Ubw
         7YTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689476295; x=1692068295;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4G/+FNT/DRWoC87PWvO6NMYeKvts5wy6tmoPBHMnFMI=;
        b=JHL7zqnIT4V2xB5Xea96EhbQCGgnz/ubeCRwvBy7Bsd7b+JA8MwrJNiKNjzH1vv/cv
         TW+9ZD8xfjpbTAiDnABuu1ElQYuGDBYZCEWbBDV6NKVoIO/s6QU9VqYU0QRHqJKcGJqH
         dWdgPUTPhs2qcgV+YoD5KtCBPYv1ZkJls99HLjdcoQXHMJHXVI6+KNgDRI7piiHp+0pN
         gStLl2lLrBs/vhSSgxC0fM9Lf1sDN7frYhk9cbheQujkVQEHpXw4HOA8sgzjAZKQH8Ux
         v/9ETnniqWdG0QVNJWhal2h5Ic5qcQVXmFewXA+nWBhnfzdZrCLAPRBMZb02tWYdxnl4
         BkMw==
X-Gm-Message-State: ABy/qLZ9Z07GncE6ZIG65LFnpf0F07qZ/Z4IItRd3BGkUSFRIKiuFJ0Q
        CVZ8uZd3twH2AxCjp9Pfr+AZjgrAob0=
X-Google-Smtp-Source: APBJJlEnaL51WM4Es4R+0tpF0NCy1YI8bJck5RUaA5StGS2zQgbQQZmZriHXynP16FYLFTZBfsnWNg==
X-Received: by 2002:a4a:6b15:0:b0:566:fdcd:aac2 with SMTP id g21-20020a4a6b15000000b00566fdcdaac2mr2162576ooc.2.1689476294935;
        Sat, 15 Jul 2023 19:58:14 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id v7-20020a4a5a07000000b0056345fd33e4sm5679328ooa.34.2023.07.15.19.58.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Jul 2023 19:58:14 -0700 (PDT)
Date:   Sat, 15 Jul 2023 21:58:12 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man <linux-man@vger.kernel.org>
Subject: Re: Replace \f where appropriate
Message-ID: <20230716025812.3cssvd4lfnh7c23i@illithid>
References: <7111dade-2e26-eaf6-6ecd-13c3111d2b15@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="uzlaytzw72zrlzdu"
Content-Disposition: inline
In-Reply-To: <7111dade-2e26-eaf6-6ecd-13c3111d2b15@kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--uzlaytzw72zrlzdu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Alex,

At 2023-07-16T04:22:18+0200, Alejandro Colomar wrote:
> As you may have noticed, we're now using the recent SPDX tags, which
> were added in a recent SPDX release.  Next plan I have for the project
> is to stop using \f escapes where unnecessary.  I'll start tomorrow,

Hooray!  Let me reiterate, for those who are not man(7) experts, why
font style macros should be preferred, where possible, to \f escape
sequences.

* The macros integrate more easily with spell checking systems.
  Contrast
    .I length
  with
    \fIlenth\fP
  for example.

  Here, a text editor like vim(1) will mark the latter as misspelled
  because of the leading "fI", and you may not notice the actual
  spelling error within.  The many false positives frustrate page
  maintenance and lower page quality by increasing tolerance for
  spelling errors.

  groff's \f[] syntax for font changes is helpful here, but some
  projects want page sources that are portable to AT&T troff, which yet
  lives on Solaris 10 and possibly other places.  Such projects may also
  complain that the brackets require "more typing".

  Font style macros are less typing than both forms of escape sequence.

* In groff man(7), font style macros take care of italic corrections for
  you.  If you only ever read man pages at a terminal you won't care
  about this.  But if you want your man pages to look good in print,
  sooner or later you will start caring.

> Branden, since this may affect your work in scripting the change to
> start using the MR macro, I'll keep you updated about it.

I appreciate it.  I don't expect much frustration because my procedure
is as follows.

1.  Start from a clean checkout.
2.  Dump all the non-.so man pages as plain text[2] to a file.
3.  Execute a sed script.
4.  Dump all the non-.so man pages as plain text to another file.
5.  Diff the two text files.
6.  Revise the sed script.
7.  "git co man*"
8.  Go to step 3.

Eventually, I will be able to break the loop after step 5.

Regards,
Branden

[1] If a man page is updated more frequently than it is read, even by
    its sole author, I think it is likely to be of poor quality.
    Nevertheless, the world is not short of people who claim to produce
    perfect work on the first attempt, and groff attempts to serve them
    as well.

[2] groff -t -mandoc -T ascii -P -cbou

--uzlaytzw72zrlzdu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmSzXLwACgkQ0Z6cfXEm
bc5gLw/8CL67PAFBSYZCxP6Icn/Zt0pzSJPKUy5s88Uq2YZ2sJplDdS4zgwxTE/y
fHkavM+8Ggm9NQ7jg7xVVW6HIlZVqs+2XeXIYi4Ihs4ksZHtuOctBhhWmOTli5R7
qzOYaGNg8cj1u5WoEh0Cj1E4ioyQ3vEugmsykPEIGJRo+cV6EmzmdHAFu4kCq7R6
YgJB2Oa1gjO9WGGqK2sXms+0zkXGXAdmsj0TLRhPuUNoEXjbwdzhLLJsNh+s6l8I
Nwo66QzjnKCTebmo24Rk2/D58ifPHDPqx5JJrcndsVZl/uSG9nAi4o8ncQS8qi8Q
+U2lNVl08JJaaea5aTUzpgDDfplMmS2kT+pPb0i/5ZfW3mMUcRz7mFmh1obQj65+
6GImKnN+kLPEmVCoo6fD2WX1FyVL8gV2IABvLfeHsNQhomLiDUdmXMZFuhd19nzr
Qu7vK+cWifqOwVKjSFiFJ1KvyCBpyrk8+aGhaM3BTR+d0OyuNN7Ice5nXUMwyWGu
TPNHEJ2bc7aQVN0mHvewwIwGDITGDXQtvpwrujCpD2BZwbDl+QWnbyAymB/fpwk4
cCH+uh1Vkr06fHAmLbPvCR32WC1qf4LpTwh9B8i+jphXnxBuGti+tz6WdjHSFCq3
YYL3hdDCk/mgQ1fLtoTAi8HgHSYPCYWT5C2ROJDTu1C91XN4a3g=
=JTF1
-----END PGP SIGNATURE-----

--uzlaytzw72zrlzdu--
