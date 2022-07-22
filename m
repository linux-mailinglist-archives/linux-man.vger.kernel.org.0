Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B4DA257D868
	for <lists+linux-man@lfdr.de>; Fri, 22 Jul 2022 04:16:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234135AbiGVCQT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 21 Jul 2022 22:16:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55122 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234140AbiGVCPx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 21 Jul 2022 22:15:53 -0400
Received: from mail-ot1-x32c.google.com (mail-ot1-x32c.google.com [IPv6:2607:f8b0:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 07C6697A2B
        for <linux-man@vger.kernel.org>; Thu, 21 Jul 2022 19:14:56 -0700 (PDT)
Received: by mail-ot1-x32c.google.com with SMTP id g19-20020a9d1293000000b0061c7bfda5dfso2514801otg.1
        for <linux-man@vger.kernel.org>; Thu, 21 Jul 2022 19:14:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=W2vxoTxKMXrZFED1mqsxwmBNXKLXSfqvmAqpddEXY9M=;
        b=oYbTPRg672g4fETT+pwUmfXjpdR84ISeh0o7J9GOKo0gcW6HlHno7W4I0pgsIiGugD
         Wc9KUhUdgTlkOmv3t+cBjHzuMZwvngMvkByQxrqdLjWSOsZGcL91vrBy+5PJd+eyGkSt
         WDosL71k0gJR0ivWsSnBEX2XsYob0bEHr16FSnD0f6faLYQ98NDyF1OAG8gqoKpqYZLq
         C4I6BweHViMssWHuRtcuVYZKAYGbAKq991dVB9FeBeNGOVUg2EBg0/C89eXq9sGmKg/v
         VoIE4ZWChDo5nHXDeM8Grmq5LMKP03GuX3RSmM+tbf7Lid3qjjt7CJdmRcCwoARBoXx5
         s21w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=W2vxoTxKMXrZFED1mqsxwmBNXKLXSfqvmAqpddEXY9M=;
        b=fWtolbZzFZE7N4Gj7lYia2kaQyENms9+IELXt1RcrvOi1vlBP8DEwpECcdJAqbtkjV
         oDtWEAP6fskLbPxud4QgKq81f6SriPoB8lXePrwOkhZnHElikNXAFYddT2KvwXAeBdXn
         5T5sJvyLpI8GT6cbvwJC/KnwuEjqBT2BsNPSr0o3JkgIOKo19rxKeSx1NO/MHtT2ZOn7
         ELHfWQho8TIMllOR890xcZaACTzzhEENOEfx+4McvOwQMlp1G1kPMHvJaWoRQxo5era7
         YKjeIxtfQbTeBUSq9xbH5F/MB5FCtSK5fiW5Txdgpz7aH5Fld8gPMs3lMpGR7atHxhFp
         an6A==
X-Gm-Message-State: AJIora8f6IoTuza3If0JihAWa5FOUt03mit/9tfNkoP2tffwdLwRSGeH
        Im6n2uAMUMaDspk3VY7HxrbCAtIIh+4=
X-Google-Smtp-Source: AGRyM1tQdZNmPvPvsratKhAmpVqfkfUGz2lazo8c53sBfJfeY1R9bnuvWvbLzXjoVUnGPO6Rvx9tRg==
X-Received: by 2002:a9d:6657:0:b0:61c:b0ca:b1ec with SMTP id q23-20020a9d6657000000b0061cb0cab1ecmr487313otm.133.1658456095279;
        Thu, 21 Jul 2022 19:14:55 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id i9-20020a4ad089000000b00435b0a84995sm1439900oor.24.2022.07.21.19.14.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Jul 2022 19:14:54 -0700 (PDT)
Date:   Thu, 21 Jul 2022 21:14:52 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>, groff <groff@gnu.org>
Subject: Re: All caps .TH page title
Message-ID: <20220722021452.5k43or5uwj2eiouh@illithid>
References: <66c19a09-ef0f-0d85-0380-37a67ac483dd@gmail.com>
 <20220721183620.hdvgwwef66hmrgln@illithid>
 <1e1f9197-a013-0d6b-6bfa-853fe28102cf@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="qfpfci452h2jh7rh"
Content-Disposition: inline
In-Reply-To: <1e1f9197-a013-0d6b-6bfa-853fe28102cf@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--qfpfci452h2jh7rh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[Colin and Ingo dropped from CC since I know they read the groff list]

Hi Alex,

At 2022-07-22T01:16:49+0200, Alejandro Colomar wrote:
> On 7/21/22 20:36, G. Branden Robinson wrote:
> > At 2022-07-21T16:29:21+0200, Alejandro Colomar wrote:
> > > I've never been convinced about the page title being in all caps
> > > in the .TH line.
[...]
> > > I'd like to know why this has been the case historically, and any
> > > opinions you might have about me changing the man-pages to use the
> > > same caps as the actual identifier that I'm documenting (most of
> > > the time that would mean lowercase).  Basically, the same rules as
> > > within .SH NAME.
[...]
> > After that--the V4 manual was the first to be typeset with
> > troff--the practice of full-capping the page titles in the headers
> > was retained.
> >=20
> > How deliberate a choice this was is not something I can answer.  The
> > decision was made in 1972.  You could ask some of the surviving
> > principal Bell Labs CSRC figures on the TUHS mailing list.
>=20
> Is Doug one of them?  I've seem him on the groff@ list from time to
> time.  I added the groff@ list, in case this is of interest to someone
> there.

Yes, Doug McIlroy follows both the groff and TUHS lists.

> Heh!  You've never tried to clone the Linux man-pages in Windows or MacOS,
> it seems :p

No, can't say I've had the...pleasure.

> At least, _Exit(2) and _exit(2) point to the same page.  nan(3) and
> NAN(3) don't, though!

Pretty gross.  A useful counterexample of good practice, though.

> We can't blame the writers, since the identifiers have those names in
> C.  Luckily, man(1) shows you the right page if you specify the right
> string.

Yes, and at least they're closely related and from the same project.

This is the only man page I know of that documents only simple (i.e.,
not function-like) C preprocessor macros.  You're more conversant with
libc-ish man pages so you may know of others, but this is the sort of
content that, as a user, I would prefer to find in, say, a "math.h(3)"
man page.  Having these constants in a page by themselves does little to
situate them within the context of the C math library API.  But I know I
have suggested this to you before.  ;-)

I observe that the most popular simple macro of all, NULL, has no man
page.

> I feel a need to fix this lack of precision in the page titles.
> Unless someone opposes to it with some strong reason, which I don't
> expect.

You never know.  But keep in mind that a strong objection is not the
same thing as a strong reason.

> It'll take some time to do it, but if no-one speaks in a reasonable
> time, I'll start doing it :).

We should all practice our scowling faces for anyone who dares to
promulgate man pages named "lS", "prIntf", or similar.

Regards,
Branden

--qfpfci452h2jh7rh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmLaCBQACgkQ0Z6cfXEm
bc4V3g//c3NU1rc8vj79gO37+GS3+9gdZEHNzZgZfYnZNKIP/s0BKvmoKjfb07JD
YnHRe+wsl/3TzfrLwOZnJs82uFwBmvxQm2OMFeR7KDFOSGovRfhOhjdEbnEqstmg
TwnKkWR5MgmH1/vZ61mdvbnissTBI0og9jY8KvtOhEBt472TRU4KUc0SvbPr4OPa
Rh6fKyXrkCszYDUIDNXUH7lb1/44Wvdjm4dSkEWIk3PAl71Zs1cpTvQDrin7P1Vw
hCSrmAQYaAMZmsb/I5zYMevxf7ox/PWwphzRbWrdtZ+yYYIHi6TkBcuBCcu0LDQG
V3Nl4dlXP21ZAo5yzh8aJGgpWLqQOZDHPnVT8SjOXCECl2ndbxrcs2MkyTqPclYF
JmnLCGXsJIvO5i+BQxvRwiyApg+U9qYqXxMSYhY5c0M2M/cFRjByvYKjdPGwNokJ
kEmMEQApjyBiGQdRyQXWRyE3NK1d7MH0r7Etoca4pX+GSVgFbGtuCIBoGM2FHzFb
xxrIWMowNF9jko2FMogWC8El0WjzujmPWO+QcPc1GCoFouDXTpJYkkeZL5wyxx5z
Yoc+sASuyCCNxPbzy2WU6SzzGpUicImN38HKwkwlV54iu7sx4npBBz3ofV5soJIn
96Z/30v0NlHEqkkQWf40uMTeAGElc28BDnMrKSzZZAS3sLCLhu8=
=FZIA
-----END PGP SIGNATURE-----

--qfpfci452h2jh7rh--
