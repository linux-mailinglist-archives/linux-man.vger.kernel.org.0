Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D3BB66A0113
	for <lists+linux-man@lfdr.de>; Thu, 23 Feb 2023 03:10:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231952AbjBWCKp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 22 Feb 2023 21:10:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41856 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232540AbjBWCKo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 22 Feb 2023 21:10:44 -0500
Received: from mail-oa1-x31.google.com (mail-oa1-x31.google.com [IPv6:2001:4860:4864:20::31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9FFB936FFA
        for <linux-man@vger.kernel.org>; Wed, 22 Feb 2023 18:10:42 -0800 (PST)
Received: by mail-oa1-x31.google.com with SMTP id 586e51a60fabf-1724d65d002so5674986fac.4
        for <linux-man@vger.kernel.org>; Wed, 22 Feb 2023 18:10:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=xHURhlnlct5VXQSmB2gqZnKiKNqC6V6mGM0H8nzzdOY=;
        b=cTMi4BhG0rzLBdhNtXN9/Km2nbRfLpJYBM6acCxQ6dJTJFWvnxs52Y9ZGPHUEFHC/G
         ucAXQdtsqWqO2/10kTcCwxrIhky4iBhPA3RTJrXXju6/Nl4U730Po4doHDbkWxa6hivC
         32UbVc4L9VmM7T5hIyMZAQf7bbl42n76YFnhGwXU6rlZ4vPmWuch+cuV9eVr4d3QZ5vL
         YmqUw4P0YseP84S0wtw9ywZW8WSJRcjo/D0qQLvCyTPECguGL5Aza4ES1C6y3YZ8PM2X
         Wv7HSQKHu/74Xm61FLaV7HKLnZZvcQ/G6fVy/Er4Xq3Jw9vo63KkevL4V8ByrODOnVG/
         RvUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xHURhlnlct5VXQSmB2gqZnKiKNqC6V6mGM0H8nzzdOY=;
        b=G5HndQmVfLwfFyftAdkncaLmXdJe2HZjUd61BgAlz/grJ14GCDDoY+uFNMmoNp63mR
         e3bXWoToYCYLKvMdVXic3kQL+vfcqUSlyXT/KcYs4eW3itdFm7XCC7b9KyDFDE1ZAjLE
         hKhMyXiA4Z3y/+IZqfy5voAGjCMmux/tY8eqjye/sMlEBku3JUgwtb9Z9As0GhO8S28Z
         b6jrO2+dCzsZAUvDpVh+cxiaaCDLXRflMSL2SCuyspGD/xQVxqmdT4L7Ri87yfGcojYg
         /pt5Kf5m860XcYKYgwKBAWPPBopeLxVWJuFDu8EnyM+Sd3g5ehDG+phWlBbYS0s8Av0Z
         5Efg==
X-Gm-Message-State: AO0yUKUcAf62/5bXYPypDAHBwMVe0AyxrQd3URkaWyszW4me4j5D1yo2
        yUcRvLy04Ygi5CProW/STWk=
X-Google-Smtp-Source: AK7set+dMCjiZxG+CaL0hlg8au3ucjPYMPu6TO1U8xE/XhGDngdvyzuEwnJ1UuLzzJ2rAiUYue+VUg==
X-Received: by 2002:a05:6870:211:b0:16e:1aeb:d750 with SMTP id j17-20020a056870021100b0016e1aebd750mr9698631oad.25.1677118241978;
        Wed, 22 Feb 2023 18:10:41 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id g14-20020a4a250e000000b005250d9f51bfsm1510776ooa.32.2023.02.22.18.10.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Feb 2023 18:10:41 -0800 (PST)
Date:   Wed, 22 Feb 2023 20:10:40 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     "T. Kurt Bond" <tkurtbond@gmail.com>
Cc:     platform-testers@gnu.org, groff@gnu.org, linux-man@vger.kernel.org
Subject: Re: groff 1.23.0.rc3 available for testing
Message-ID: <20230223021040.kndtqanxa7id2dza@illithid>
References: <20230220223904.sxw4peeov64gtinv@illithid>
 <CAN1EhV-2FB+8o0Qx56Gn534a0d=xbs6tfpB5C78_Eb-r4MYKtg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="mofzlsd6cuixrt5c"
Content-Disposition: inline
In-Reply-To: <CAN1EhV-2FB+8o0Qx56Gn534a0d=xbs6tfpB5C78_Eb-r4MYKtg@mail.gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--mofzlsd6cuixrt5c
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Kurt,

At 2023-02-22T10:46:29-0500, T. Kurt Bond wrote:
> Since a prebuilt PDF version of the groff manual, groff.pdf, is
> distributed with the release candidate tarball, wouldn't it be useful
> if it was installed with the rest of the PDF documentation?  Or at
> least mention "make install-pdf" as installing it in the INSTALL.extra
> file?

Yes, this is a good suggestion, and I've taken it in modified form in my
working copy.  I had to consult Bertrand's "automake.mom" document and
the Automake manual to get myself spun up on some of this.

commit 5245c8adf2ac103762ea3cd360433236dd932cc5
Author: G. Branden Robinson <g.branden.robinson@gmail.com>
Date:   Wed Feb 22 15:14:03 2023 -0600

    doc/doc.am: Fix install-{pdf,html}-local targets.

    * doc/doc.am (install-pdf-local, install-html-local): Enable rules to
      work in out-of-tree builds.

    These rules aren't made by default (and so weren't causing failures);
    that's a separate issue.

commit 691fc701089875239485dd9e3e80d0735a4fd5e2
Author: G. Branden Robinson <g.branden.robinson@gmail.com>
Date:   Wed Feb 22 18:20:55 2023 -0600

    [doc]: Handle Texinfo output formats consistently.

    [doc]: Handle output formats of our Texinfo manual more consistently.

    * doc/doc.am (install-doc): Add dependency on (Automake standard) target
      'install-dvi'.

      (maintainer-clean-local): Remove our Texinfo manual in plain text
      format.

      (install-data-local): Add dependency on new target 'install-txt'.

      (install-txt): Install our Texinfo manual in plain text format.

      (uninstall-local): Add dependency on new target 'uninstall-txt'.

      (uninstall-txt): Uninstall our Texinfo manual in plain text format.

    Thanks to T. Kurt Bond for noticing the discrepancy.

commit 7d3fd4990f4645c526ddde4fb8d437c18c4ccb21
Author: G. Branden Robinson <g.branden.robinson@gmail.com>
Date:   Wed Feb 22 18:49:04 2023 -0600

    [doc]: Uninstall groff Texinfo in HTML better.

    * Makefile.am (uninstall_groffdirs): Remove "html.mono" and "html.node"
      directories corresponding to HTML version of our Texinfo manual.
    * doc/doc.am (uninstall-html): Uninstall HTML version of our Texinfo
      manual more reliably.

Regards,
Branden

--mofzlsd6cuixrt5c
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmP2yyAACgkQ0Z6cfXEm
bc5PNA//UEcRelmezwBGlNS3pyyb9wonup2/+2iehxqJjB/GJ8zRGVvaQ7mAeejI
7by9xcWcjZzeENe4ia+KsA24sLCXveDfNfVZPgg8OOSyVtJlKbLpmwzmr87Hxlms
uVQWLaIbD1pwpTXQMcR6EPpO8pyZoaR/ePtXqZNoYo4fgVzuqEOkYJ3jG+7oTBK3
vXCSpPjzmW/JeBm/9/Bpv6yRsK6LH8mzgvAw3ZTSO4oLV65XXC3TZx90HejNoTOk
vsW9aNUoQPGK46ykYXQQb7tmOr36XR9OU3WOuzNeQeXbTKEIaiDUGY2CM0C47LxR
7Uu4kun7Tv7GRy2ktFBoVYg9ZsIvmdBARyJEDACdLXASkg9X2veB2N6Ee6gFMumb
BRigJPcpsDBcjaE9fozv9kFzXLfqshA5VayXUfAmhPX1IsRoj6pFDy0VbcQsi58c
96B2mITx/9xK5ipbmVhjhUp0H1AmEfzHg+pwPxhIUGC9ixJcdyH87euncv/4MQj2
TsvQ/B7D3VOirU3rnPo0uHKJIRqZPTrJ7/hLP2TeF3Q8jE4ztwHYAcwYGSSKYccp
oTC9kuoacl1M8/J4g/zt7YG56rtZrGE5XSMxuMYVFO9nvgMZgSHS7Ql2N5URWO8d
yuv6bNex2G3j0KWn37Fs0TU4uWUin36VoR/4Lftkn1Ovl1rbg7o=
=oKHk
-----END PGP SIGNATURE-----

--mofzlsd6cuixrt5c--
