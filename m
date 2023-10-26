Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 227EC7D853E
	for <lists+linux-man@lfdr.de>; Thu, 26 Oct 2023 16:51:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345347AbjJZOvq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 26 Oct 2023 10:51:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34978 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345349AbjJZOvp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 26 Oct 2023 10:51:45 -0400
Received: from mail-ot1-x32f.google.com (mail-ot1-x32f.google.com [IPv6:2607:f8b0:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4CDAD1B8
        for <linux-man@vger.kernel.org>; Thu, 26 Oct 2023 07:51:43 -0700 (PDT)
Received: by mail-ot1-x32f.google.com with SMTP id 46e09a7af769-6c496719a9aso496615a34.0
        for <linux-man@vger.kernel.org>; Thu, 26 Oct 2023 07:51:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698331902; x=1698936702; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=vwSZb+YIqhEh3XZMJNbXVeHJfMbUb03yEyQjy9xHhgo=;
        b=La82DBkiodYNJo1gtNdBQMOIqCepa2D2zBfM5DvvdLPK0k9gKW6EB+1OjSVYsroVsw
         QiQ5QZOnpDX9qmNcxlmXk62TTn4ihq69vBqlXNOLptS0XMy2HNuVMnyiZM0FF+tYgvsA
         oUowhzBmGL4TtlUMUcqoyiTi0vrVY4pcz0qTBkZQW0ge7VH/b6MInlW6M0xFnJV5LWaK
         v2tEG+ncUfqn4fHuyzf6VaTJaOgCyHzOriXZ4umYfbMieNJMKo0HpGqNNwEukbSrKcMB
         gNQzVOiCcVF6Jcnr6mjUOHqGgXvEyGl4i397J0nUl5Wa4lqWeh/g0Qk5oKXh3qBcsMld
         W9aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698331902; x=1698936702;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vwSZb+YIqhEh3XZMJNbXVeHJfMbUb03yEyQjy9xHhgo=;
        b=xQJ5BxOZtjYrHDkJpA/2MaduYtwMdrxPT0EEMf3iGYvfsYD8GPZiztLNy1XhyFqNOL
         Z5++AZC6U4dPPJGFcTV3qr+JrZDxSqAlCG/4ReeV56Ebkq3vwJiAE8QUXbTOMcakbXTp
         k4UmBzPirnIZg2tNEfToqFzlbIkOu65OIb1/vN3JAaP53tG84WRQ0wd79WXhn1UB5QfS
         an4abcHL3AWwlfictV4l3wZ/eUJ1El5v9wujmuCUJ5+c9iDkPrWhU7OWYbodjdQrygmy
         XdVqdaGp/CeEa6ftz8USGveq6m6DoI37uo3mzbzfJyOfO2dd9fXCVtskUsLTnT+qR/H/
         e6Ug==
X-Gm-Message-State: AOJu0YwoD0mlQHaYdz7TIiHL69rsL6f9nHHvEVwjoGwC+nB54qYPAHy1
        Ally7JAR4gZmD1jecIHTxBM=
X-Google-Smtp-Source: AGHT+IHN+50l3cZD+SBCLdR0IEuZtrkCc9oW0zAOGIC70vb6eKLgZLzRxLx/tbzQUpF5z7aMFhadkw==
X-Received: by 2002:a05:6830:12cc:b0:6b9:cfc3:65d1 with SMTP id a12-20020a05683012cc00b006b9cfc365d1mr1649569otq.17.1698331902582;
        Thu, 26 Oct 2023 07:51:42 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id i14-20020a9d624e000000b006b8b55297b5sm2736693otk.42.2023.10.26.07.51.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Oct 2023 07:51:42 -0700 (PDT)
Date:   Thu, 26 Oct 2023 09:51:40 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org, groff@gnu.org
Subject: Why does man(7) have 3 paragraph macros for the same thing? (was:
 `\c`, mdoc(7), and man(7) extension macros)
Message-ID: <20231026145140.qyl4lsfhp3644hmh@illithid>
References: <20231025185424.txreg7q47zigo24j@illithid>
 <ZTlu2r8N3nrCnMpa@debian>
 <20231026125835.phpfjhz6xbsde33d@illithid>
 <ZTpz3A0yijoxDvip@debian>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="2unuoz4ghyt5q4pp"
Content-Disposition: inline
In-Reply-To: <ZTpz3A0yijoxDvip@debian>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--2unuoz4ghyt5q4pp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

At 2023-10-26T16:12:36+0200, Alejandro Colomar wrote:
> Regarding PP, LP, and P, what's the history of them?  Why do we have
> the 3?  I'm willing to reduce them to just one.

I invite Doug McIlroy to go on record, but my surmise is that they were
introduced as crutches for people already familiar with ms(7).

Doug's original man(7) (1979) didn't have `P`.  But Unix System III
added it in 1980, and 4.3BSD followed suit in 1986.  This information is
in groff_man(7).

In ms(7), `LP` sets a paragraph that is left-aligned, and `PP` sets one
with a first-line indentation.

In man(7), all (ordinary) paragraphs behave analogously to ms(7)'s `PP`.
A first-line indentation is never used.

My opinion is that one should use `P` exclusively for a few reasons.

1.  Its name is short and it is frequently used.  Huffman coding FTW.
2.  The existence of both `LP` and `PP` is difficult to rationalize to
    anyone except a seasoned ms(7) author, of whom there are almost none
    writing man(7) documents today.
3.  It's been around long enough that everything supports it.  `LP`/`PP`
    have no measurable advantage in this respect.  Anyone running early
    BSD in 2023 has more interesting things to do than the composition
    of legacy man pages.

Incidentally, mm(7) would have already had a `P` macro as well by 1979.
Its call syntax is different (it interprets arguments; ms(7)'s and
man(7)'s "plain" paragraphing macros do not).  Maybe this, and/or some
friction between Bell Labs Research and the constantly reconfiguring
series of departments dedicated to deriving revenue from Unix (and
troff) commercially accounts for man(7)'s omission of it.

Nowadays, we can be confident that no loon is going to do something
crazy with mm's `P` macro such that it would trip up man(7) writers.

<an evil grin spreads slowly across my face>

Regards,
Branden

--2unuoz4ghyt5q4pp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmU6fPQACgkQ0Z6cfXEm
bc55vhAAnVPAg64F+h4XZ3cgui6TfVU3N4cUwJtvyGsjc9EppCzIU/ZOD+3q3HGB
a1A/EVWvMS+kWC9oDMfIrNqkNjG/fXT0IZ6rRTHhjpj0mmVCEiVtV4k2DOHZKhf9
3wiyCv3XrS4o5y1xvX1dn+8nnMoeukhtvl+Ll+le3OX08VfoXWpsJNYfWiOaaV8u
G/bEqtGxADxbHIY7GpWcoBYoil/+rCGFhvGjFvsflDjQZoMOZbVHsem/dX6IB0Ye
wsKyREpwRTFJ9NtI6W0DRjAaTEVE1Z53j4Tnnw9bH7jcpQ8J4OU7rqj5dvnpZ8xG
4A6fFQCpWQNdNkV+ZGeav1a1EwHYRmrE+4ENtsFDhATMXxGAF/zw7bw2pWI3n4vj
yhgeYheah/+F8NYLp3Zj5lMn2Jb66NwCUvFkv7RLYPzvfsX/TuauQm8PEohx1OA+
8zGRx9j9D/5fNDyYks3i+IJ+wZsLgFY6q5pTalMCEXdhNb78Z8yGE29r0IwS2UNf
+QrO1131zNNmkaZcz9kjiizQeTIQRAh7P3JmMicrVQ7W7bKamGT/yKhlrgmQ7CsR
2LSUtv3IIl6oDcX82TqkBOZgpzEDINsGez9I70QM2G7vDaqIqMEOFjnKyv4EGxcz
uxmGXyf8eA40kXhthpMUWWqjl7azjcI/FU1i28dxeOVd/LJEnTk=
=WfNG
-----END PGP SIGNATURE-----

--2unuoz4ghyt5q4pp--
