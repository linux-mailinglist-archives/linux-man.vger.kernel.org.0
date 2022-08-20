Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C41A059ADDE
	for <lists+linux-man@lfdr.de>; Sat, 20 Aug 2022 14:21:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346258AbiHTMUH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 20 Aug 2022 08:20:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49260 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345238AbiHTMUH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 20 Aug 2022 08:20:07 -0400
Received: from mail-ot1-x330.google.com (mail-ot1-x330.google.com [IPv6:2607:f8b0:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 435AF7B2A7
        for <linux-man@vger.kernel.org>; Sat, 20 Aug 2022 05:20:06 -0700 (PDT)
Received: by mail-ot1-x330.google.com with SMTP id t11-20020a05683014cb00b0063734a2a786so4696957otq.11
        for <linux-man@vger.kernel.org>; Sat, 20 Aug 2022 05:20:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc;
        bh=7SqWFbylC1/bdbbdQ4PSeP3kSx1MMOqs8w9mu2uWloc=;
        b=UdvKaFgNTCpsTw1+lAtQdKZITDtmiTY+C0sgj36POhpPH6Z8+HNdsg/5H1LcndOkcz
         +Frz5LAuk9ahSfSHCd2KEPplcy/qwebBuwsbk4rB7ElTQZEPwTUr/XmcbTfWvr1y/JCR
         55KF8MrV61HuOupyw5bQ3vfIgPXo9F2eUfTLarL1kSNqZo0Kf8jUXgNQRG8XOZTIuow7
         6g6C8rnChs9TEnrIv5QKIPeIw4NakMbI2XhlmF5p5H7u/qyGCrMoVeGC7AIPtYFBceKS
         DBz8MprZnwM7VUbEVWHld3Hwj37Kty9+efSioeiy5z+x+Har9DF/cB9VpAEsj4vr9j8N
         EIJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=7SqWFbylC1/bdbbdQ4PSeP3kSx1MMOqs8w9mu2uWloc=;
        b=7jgGUXKFMdtTdQD0IdoeHuCKA+NJuqFVgg0l/RCzf3QQo3DRcYbM4C/ldjbQxROwBg
         7ck5vmzvdtnin1g0J+1DMFRSWneceiYY8O/4F6mmmj+QN9gZxmKsj6HhBZN5T8OisWkw
         3SKpAGTpv+39ZSZlYQ/Ibct84S89ejXcFodO2Z0K8Ckrit9Q7wKd1KI0vnS2iyUxnTkT
         KE4kAwHWztXx5/vyZ+otdleV/nQ1Q/nY7US5uPImCccbwPpPRZ3+Mm+jXJkkfZ3t9c66
         j84IwFCx3UlEPTf+x/L2ZPQbl5PSax4j6FLWR/AWnJSefDV83rG59VDUNjtGuV+HOck6
         J0MA==
X-Gm-Message-State: ACgBeo2OY7FgBOIr0+ybMQmLF+ESr1mmeV8Po9S/RU14pm864ql6i7QH
        vD/0R1TCxfZivbNvdu9lA40Fd4Vp6LA=
X-Google-Smtp-Source: AA6agR60uqymWPscMgYcpEF6WT0OzfQVH+PX7GHmjOfVHSImMhuBuA7avHP7uiNHAsfqfciBLk480g==
X-Received: by 2002:a05:6830:22e7:b0:637:3879:3d5e with SMTP id t7-20020a05683022e700b0063738793d5emr4664916otc.111.1660998005570;
        Sat, 20 Aug 2022 05:20:05 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id w9-20020a0568080d4900b00334c2e81dfbsm1668020oik.0.2022.08.20.05.20.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Aug 2022 05:20:05 -0700 (PDT)
Date:   Sat, 20 Aug 2022 07:20:03 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Jakub Wilk <jwilk@jwilk.net>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: .TH 4th field (Was: [PATCH 1/2] system_data_types.7: srcfix)
Message-ID: <20220820122003.qeldeox7hlcy6dw7@illithid>
References: <20200925080330.184303-1-colomar.6.4.3@gmail.com>
 <20200927061015.4obt73pdhyh7wecu@localhost.localdomain>
 <20200928132959.x4koforqnzohxh5u@jwilk.net>
 <9b8303fe-969e-c9f0-e3cd-0590b342d5bf@gmail.com>
 <20200930101213.2m2pt3jrspvcrxfx@localhost.localdomain>
 <20220819180323.dbsgxh5qvcjabjm6@jwilk.net>
 <20220820054306.hejc3awpxvoajghf@illithid>
 <96f9777f-326f-baee-2894-eb070498863d@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="l7azqrbyc6t6vvwj"
Content-Disposition: inline
In-Reply-To: <96f9777f-326f-baee-2894-eb070498863d@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--l7azqrbyc6t6vvwj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex!

At 2022-08-20T13:57:15+0200, Alejandro Colomar wrote:
[migrating `TH` 4th argument to something like "Linux man-pages 5.13"]
> I thought about it in the past...  That field was the only thing that
> said where a function came from.  If we removed GNU (or something
> else), how would someone know where does the function or whatever
> comes from??
>=20
> I guess that's also why the colophon was appended to the pages by
> Michael.  Since we couldn't use the 4th field for that, we had to have
> a COLOPHON section.
>=20
> However, the addition of the LIBRARY section seems to fix this issue,
> and so now we have an even more precise way to determine where a given
> function comes from (including the library file name, and the linker
> option).
>=20
> This gives me another argument for those who don't like to have a
> LIBRARY section for libc stuff (since -lc is unnecessary), and
> consider it noise.
>
> > Further, as the libc-related man pages in this project expand
> > coverage to other libcs than GNU's, the alternatives to the empty
> > string proferred in man-pages(7) seem less and less appropriate.
>=20
> Agree.  LIBRARY seems much more appropriate for that purpose.

Yes.  I endorse the above reasoning.

> For the date, I already reported a bug to rst2man(1).  For the 4th
> field, I guess we should specify Linux kernel and version (so I should
> patch the kernel to pass that info to us).

Maybe the glory of seeing "Linux 6.0" in the footer of the bpf-helpers
man page will inspire more kernel developers to follow that page's
example.

> Now that I'm convinced to fix the 4th argument as something like "Linux
> man-pages 5.13" for all pages, I'd like you to help on this.
>=20
> The script for replacing them all was easy.  I produced the following
> temporary commit in my tree:
>=20
>     All pages: Replace the 4th argument to .TH by "Linux man-pages
> <version>"
>=20
>     Scripted change:
>=20
>     $ find man* -type f \
>       |xargs sed -i '/^.TH /s/\(.TH \+[^ ]\+ \+[^ ]\+ \+[^ ]\+\)
> \+"[^"]\+"/\1 "Linux man-pages 5.13"/'
>=20
>     $ find man* -type f \
>       |xargs sed -i '/^.TH /s/\(.TH \+[^ ]\+ \+[^ ]\+ \+[^ ]\+\) \+[^"
> ]\+/\1 "Linux man-pages 5.13"/'
>=20
>     Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Looks reasonable to me, at a glace.

> Now, we should decide what to put exactly in that field, and when/how to
> generate it.
>=20
> The project name, I think it's clear that it should be "Linux man-pages"
> (are there any voices against?).

You've got a license named for you in SPDX now--you're stuck with it. ;)

> As the version, for releases it also seems clear: the version number;
> but what about unreleased pages?should I write a generic placeholder?
> Or maybe keep the last version number? Or maybe put the expected next
> version number (that's risky).  Or put the git version (i.e.,
> man-pages-5.19-rc1-173-g6620898d3)?  The git version would be the most
> precise, but it's also the most complex to do: I'd need to modify the
> _installed_ pages, since of course I'm not going to edit the original
> pages with that info.

I would add " (in preparation)" to the string, and have the script that
finalizes a release strip that out.

But even if you go with the garrulous output of "git describe", I have
good news.  In groff 1.23, overlong header and footer material is
abbreviated with an ellipsis.  (This was an educational experience in
string processing with groff.)

Regards,
Branden

--l7azqrbyc6t6vvwj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmMA0WsACgkQ0Z6cfXEm
bc7mOBAAmqtLaaSJx5psMf4/U7/ubVF3hIrIhtiQZEbUux9AwuK7DDYC7LCcmYXy
maxZ22VSQAjGA7jjt+oU3L68e2CBsAUnehs5rNYjQmIb6IooFnvseFxJI3sOoliW
KH3qTMc6FtABlAnK9be5YKshzOXysi2+S7OhMsoFNIVBN1AGDq6jChTffHSsEedX
J1FnVE1GnYjnqnhR5xxDTbWHUuR2CZlbZYdbaWvaRsVKmK1satoaGHsrf9qnvSad
EjXNV8pX6xImZAISjgosMmO5NFKgmyIjPtAyTgqoHcdPK/eehm66wMJ9ToFWQ44U
MJvId3+UPb9BwrXk8oyQJVwDjBMmk6RN36m1BxBYFe76MjygA4Y/4fJQC2Pb+h+u
n2XIaJfnj1oR7Z48SI25Mk4AhuVVXa81cyYXBdMs8WLKItnZdtVLfVhvf825XV1j
+AVgJsFXwjjqvUxmdOmBGrAQymFBAwPGtBqGHmnVuL0anSMB9wr5j8QKxuQqU3dz
xPGoT9RsnM0IiG4USzkG5wnCE6KZ7MShlD+61NNbuLRrVBJ5HWMsDqk36wXwOJ0N
Qts/vtTO4MR1f1z885VYTQrnA6mojbTiwfQZQ3AAj+yA7Fa5hEeRSrnP+wyv90c1
SFpROEIfMk0n10SS3sfizM3b8KQMouWjeKrzv7T96TUHZDdQXkc=
=Fu8q
-----END PGP SIGNATURE-----

--l7azqrbyc6t6vvwj--
