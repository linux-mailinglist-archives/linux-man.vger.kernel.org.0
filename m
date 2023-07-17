Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AE478756ECC
	for <lists+linux-man@lfdr.de>; Mon, 17 Jul 2023 23:09:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229541AbjGQVJc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 17 Jul 2023 17:09:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51506 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231340AbjGQVJb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 17 Jul 2023 17:09:31 -0400
Received: from mail-ot1-x32f.google.com (mail-ot1-x32f.google.com [IPv6:2607:f8b0:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC9D795
        for <linux-man@vger.kernel.org>; Mon, 17 Jul 2023 14:09:30 -0700 (PDT)
Received: by mail-ot1-x32f.google.com with SMTP id 46e09a7af769-6b867acbf6dso3596640a34.0
        for <linux-man@vger.kernel.org>; Mon, 17 Jul 2023 14:09:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689628170; x=1692220170;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=r7ckJTo+uD8ZIQAC4blMiIvWrZKpBQ1895bVRSPaPGA=;
        b=ff4W5y5XbfBuFNjsmaDy8yQKLaUZJ2reBXpVnYh02d4AZuKBD/sWP/em/VC3zRg/t1
         LgXpNJQmhj6v1eikECX4HYrf1rOyk9LEi8D6jYp7XHNY9KT+XWWb+sx+ol0ZMOl2KkYB
         5LtpUZRuDT6XRHH7EjxZHclDXz2rPd9Y5RnKJTr22IX5P3c0DRdXwoEDPfUz/qxZOBkF
         ZnAstX0hmu0ZpsGnwW2V9eFz+3MJcECm56Sk5/Y916rbmDHBRHNe6KqXmjUWjkm7KwG+
         jwPwQPtGXEt6pLwtvGHa+ZHGbAZkKVx4cOZ3CRfI2cFLVKUBUBUf1Wktw6691nco4Yoh
         H2OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689628170; x=1692220170;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r7ckJTo+uD8ZIQAC4blMiIvWrZKpBQ1895bVRSPaPGA=;
        b=A9s7Ls4Ey53bNZVaR4rAdrbwdgn6lLAaLpVCG6MLQc4vYzFW4wm1v0GQ0XY4uwoUvh
         X2XRxf/TsIZtRSenzScMN6jsmBxLjf051YOCO5rWh+j8OPknyYYFi0NGz8Sao/DQ79Gb
         OrMTwDt5iObEgsTVY/EFORYzHs5j6ChPO6n6YJvy/fKXlypGlq6083IOFIY5LcTNAMNx
         ltecazkU4U4O16iHdLWFfln3g4ErxF1fBRinnjef5m2wsSyOi73C9Z3cb3xW70APfQmb
         HuGR1KkeKiVDLKdVfj4xKeIon6RiQXrGmbrjzsylaqgQR5Nr3rZp35ex1rXbMukllhdi
         2kiA==
X-Gm-Message-State: ABy/qLYXf4LL8mFm3mD5k9AOIIxpKAlfplJCwQJRE+Pd//rLCqmV3gIQ
        oO7TPqNMrwl3k4dBjjymX3Ub3QSfDCs=
X-Google-Smtp-Source: APBJJlEZ1M0EnBKJdYaJJ8Tv8Mhc7MhULSG6jo1jsHCwmmQHODOkqtC2N85dP8g2Sp2ubGje7+6QSQ==
X-Received: by 2002:a9d:6641:0:b0:6b9:cfc3:65d1 with SMTP id q1-20020a9d6641000000b006b9cfc365d1mr3687844otm.17.1689628170171;
        Mon, 17 Jul 2023 14:09:30 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id n16-20020a9d7410000000b006b96680b813sm277317otk.81.2023.07.17.14.09.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jul 2023 14:09:29 -0700 (PDT)
Date:   Mon, 17 Jul 2023 16:09:28 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man <linux-man@vger.kernel.org>
Subject: Re: ffix proposal
Message-ID: <20230717210928.gw2727o5dqpvbksl@illithid>
References: <53f8b39e-aec2-3abc-d2fe-5b437068cd7d@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="md3xs7zhba65gp4e"
Content-Disposition: inline
In-Reply-To: <53f8b39e-aec2-3abc-d2fe-5b437068cd7d@kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--md3xs7zhba65gp4e
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2023-07-17T22:36:28+0200, Alejandro Colomar wrote:
> Please check if you like this ffix patch.  Things I'm changing:
>=20
> -  Use .RI instead of \f
>=20
> 	Uncontroversial.

Right.

> -  \%
>=20
> 	I guess this one is uncontroversial to you.  ;)

Also right.  :D

> -  \:
>=20
> 	To make the previous one not so horrible.

Agreed.

> -  Reverse what is in italics and what is in roman.
>=20
> 	Path names should go in italics.  This wasn't being done,
> 	which was a bug.  Now, the variable part is in roman, to
> 	differentiate from the literal path name.

Also a good change.

> -  \[dq]
>=20
> 	We need it 'cause of .RI.

I think you don't.  \[dq] is only for "neutral" double quotes, as in
when you really mean U+0022 (in code examples, for instance), and you
don't mean that here.

I would either leave the file name unquoted, and trust the reader to
figure out that the period at the end of the sentence is not part of the
file name, or use real quotation marks.

> +.RI \%\[lq]$LD_PROFILE_OUTPUT /\: $LD_PROFILE .profile \[rq].

None of the special characters \(dq, \(aq, \(lq, \(rq, \(oq, and \(cq is
perfectly portable to historical *roffs.  DWB 3.3 troff supported the
first two for some output devices but not others.  Version 7 Unix troff
didn't support _any_ of them.  ("ASCII ' and " ought to be enough
quotation marks for anybody," someone at Murray Hill must have said.)
The good news is that the Linux man-pages project likely does not need
to target historical *roff implementations.  groff, mandoc, and Heirloom
Doctools troff support all of these special characters.  (I didn't try
neatroff or Plan 9 from User Space troff, as they are harder to run in
my daily development environment.)

The only (arguably) live troff implementation I know of that is likely
to run into trouble with man pages using these special characters is
that of Solaris 10, which recently had its execution date postponed to
January 2025[1][2][3].  (Solaris 11 ships groff.)  But how many people
are going to be viewing Linux man-pages documents on Solaris?

Also, it is easy to update any AT&T device-independent troff to support
all of these special characters.  groff_font(5) describes how.

Regards,
Branden

[1] https://blogs.oracle.com/support/post/extended-support-for-oracle-solar=
is-10-operating-system

[2] The previous EOL date for Solaris 10 was early 2024, and I was
    planning on dropping support for it in groff 1.24.  I am as certain
    as I can be that Oracle made this decision solely to spite me.  :P

[3] And even if that troff, a descendant of AT&T troff, is technically
    "live", I'd be surprised if it'd been changed in the past 10 years.

--md3xs7zhba65gp4e
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmS1rgAACgkQ0Z6cfXEm
bc4vLg//STp5I8S2uEY3gXPmsd3ITHKvSltGbgS+59V8fB2hdwWLwtJXfI9RS/oa
JRhsYitVf+8GPWxLP/N90m7j2PZmAGp2sY13HfOfx5++wy/SvvYHhI3icS5wkpNA
x4plaqxQ1LEmH+jz/7NdiaQMQVwVG/S+2THyjx6d43+FS4SNAK/iZJTZERZVhrl+
i+9f73JZlj6Sc16VF+ymVFhaf7ierE0MJrjSYxZcP0B26ON/sdyoxq4wKwbIHzvT
PNP3O3qy9Ea9GBsYHIs7fUdByJbGNBr1cq+63O9465fcmt5e2CYIO4TJgkSho7pA
00/Yc3628ymnywsPCL24HfLB51lU4vNvJVkZFdZghy7lT7pfxnStRgGYs9R4Gd+1
PNdHtosve//hhIuGe4va7G8p13rSWGQYk2086tQJiuK6DG5mG6hELQ09cycftoNw
NqJeiUYnCHngQaJ01/TGEqo1Mu8ZsOayLi1U5YxdDtXuT/FaxPNvICuk5JyxzOT1
haCdG2CPWlbYvm9EJcJGd46ffx3lqk8FP7MSQNXu2QnDIbWJSfoX+xONmhyc8+Cu
GD+4OyzYY9uMRiW4vYARKRjVBtdPHyhhoAknX3hARC4XsLkXLETaHpR7Y6q/Aykg
ooDESOVC2I8Y4Du34KgdQXBsIgpT0Ot1Y3+O72C2knteYTjkOyQ=
=mmoo
-----END PGP SIGNATURE-----

--md3xs7zhba65gp4e--
