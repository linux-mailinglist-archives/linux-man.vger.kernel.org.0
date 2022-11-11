Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AD4A06252CC
	for <lists+linux-man@lfdr.de>; Fri, 11 Nov 2022 05:46:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230043AbiKKEqp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 10 Nov 2022 23:46:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44674 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230181AbiKKEp4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 10 Nov 2022 23:45:56 -0500
Received: from mail-oa1-x35.google.com (mail-oa1-x35.google.com [IPv6:2001:4860:4864:20::35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BDBB46EB5E
        for <linux-man@vger.kernel.org>; Thu, 10 Nov 2022 20:44:28 -0800 (PST)
Received: by mail-oa1-x35.google.com with SMTP id 586e51a60fabf-13b103a3e5dso4402801fac.2
        for <linux-man@vger.kernel.org>; Thu, 10 Nov 2022 20:44:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=YyLSoOzFmoCNAHInCM8zeSuXAJvqaXiy4kC1sFQWDnM=;
        b=Oyi8Qn9MpzAe3NUSOgTcv9Eyd10GY6jd2MwQFVIa4C8zTxH+jBdUnAPaqu3OmpzYee
         RXab7KdyNryRkyzMTV3LvvFQoBAYKxmsXs1gCM0qHB5D6o/lpwbPor4Ilpd+/pA8jsxy
         ipvEfMiOC+xhjX1VJ9U1bZtCAxWQ3fOwtr82TVArP9cFssxMx7YbmyWJ5hVW601bhnvc
         35OB0f3AwHLMrAgDAtmv095EWWsJIQEMm88FrvSlR7/ch5Z4/ltji4kQgd5iKFB3D406
         WQsfJVd8TBXmz1+pIrno8Qox2mojZLX6FEv9ZvHdULtdwLkYgOK4I/0WFwEUQWXIof11
         IWJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YyLSoOzFmoCNAHInCM8zeSuXAJvqaXiy4kC1sFQWDnM=;
        b=hZ9sYiXoHOy7PP40AReARbpWILJw0PS25NAsSvkgcswrFxfLm62iov70PxqaEdvKEg
         7OloqTVsOy/VceENG9zHpXhJklwmZBTyS51NKROOADkTeCHwvXgmLeQ0KmBy5LZywGG5
         Rbd1GTErCgfjBKWDISjRTgA0gNNlSLXCOdQ4kyC8o5utYOHp9Q3CMbmXxWQQ1N8/NVx8
         uxI5d2dIP+G9syUxRY0MgAw9bFW/i2bQbzX/CE8ZwX/aqi1tsGt/alO4DQ/S5ehWIYIx
         izMw1xSs0gdsypfTyDNzGcPxhl0XCh6QOonAjwderOYuCeaiR9IxvwACk50RAB5O46pf
         sWvg==
X-Gm-Message-State: ANoB5pnyorLva/EOkksJOou1qC8mY1++3EgMMuf2j2U7mW4SbO87jMIy
        shmzX2b8nmGx4KP1d4VSsG9xyqkkmO0=
X-Google-Smtp-Source: AA0mqf5zCVVEPAmmW8TCZHCCIU1iTZD6DNgivBLlauDbFZ6v+qvON1Bh2CLeJvhm/uld3zkEVUkMSQ==
X-Received: by 2002:a05:6870:17a5:b0:13b:7793:444c with SMTP id r37-20020a05687017a500b0013b7793444cmr20770oae.59.1668141868070;
        Thu, 10 Nov 2022 20:44:28 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id h7-20020a4aa747000000b00492f9f46aa4sm94352oom.36.2022.11.10.20.44.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Nov 2022 20:44:27 -0800 (PST)
Date:   Thu, 10 Nov 2022 22:44:24 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     groff <groff@gnu.org>, Ingo Schwarze <schwarze@usta.de>,
        linux-man@vger.kernel.org
Subject: Re: MR macro 4th argument (was: [PATCH] Various pages: SYNOPSIS: Use
 VLA syntax in function parameters)
Message-ID: <20221111044424.ohbhmhqni7pukuf2@illithid>
References: <d524528c29f806b763a2d394abc1241f6b2dc0cb.camel@tugraz.at>
 <51f5a2f2-84c1-bc75-cf94-0cdc1771d37f@gmail.com>
 <4e3fee795769544738b3dc793aa95d6b34b72047.camel@tugraz.at>
 <e9ba79ff-fb73-c4d4-b966-d8d15062f7b7@gmail.com>
 <20221110094033.ptpfsqpvvx2yd5xs@illithid>
 <8cca79d4-f31d-1508-0775-cef54e3755c1@gmail.com>
 <01da77c7-fed2-0fc1-ae6a-770885057a27@gmail.com>
 <5e3a103d-2aff-511a-e819-96dafb640c24@gmail.com>
 <20221110225524.hiojzgiiid5d3k65@illithid>
 <8f7162fd-cefb-dc31-cb0f-ba4b76ca5011@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="zve3umj34lvgd226"
Content-Disposition: inline
In-Reply-To: <8f7162fd-cefb-dc31-cb0f-ba4b76ca5011@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--zve3umj34lvgd226
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

At 2022-11-11T00:55:18+0100, Alejandro Colomar wrote:
> Hmm, will need to parse that.  Anyway, I think now that I have the MR
> with 4 arguments, moving the 4th to the previous line with sed and N
> should not be that difficult.

Okay.

> Well, being a compatible extension to the others is not that bad.  How
> does mdoc(7) solve it with Xr?

I alluded to it: the `Pf` ("prefix") macro.

man(7):
=2ETH foo 1 2022-11-10 "groff test suite"
=2ESH Description
pre-\c
=2EMR exec 3

mdoc(7):
=2EDd 2022-11-10
=2EDt foo 1
=2EOs "groff test suite"
=2ESh Description
=2EPf pre- Xr exec 3

> One of the biggest issues with this is that it breaks what would
> otherwise represent a single entity, into two lines, so it hurts
> readability.  See as an extreme example the following change I did
> with my scripts (from posix_spawn(3), if you're curious):
>=20
> @@ -129,7 +129,7 @@ .SH DESCRIPTION
>  Below, the functions are described in terms of a three-step process: the
>  .MR fork 3
>  step, the
> -.RB pre- exec ()
> +.MR exec 3 "" pre-
>  step (executed in the child),
>  and the
>  .MR exec 3
>=20
> Having 'pre-' as the last part of some random line, separates it from the
> other part of the word.  The \c alternative would be:
>=20
> step, the pre-
> .MR exec 3
> step ...
>=20
> Not terrible, but I'm not in love with it.

I personally find the derangement of word ordering more disruptive to my
reading than a mid-word line break...especially after a hyphen, where
years of experience have prepared me to expect a continued word on the
next line anyway.  ;-)

I would also note that I don't think it's necessary to hyperlink every
single occurence of a cross-referenced man page topic, especially if the
same page topic comes up repeatedly in a section (or even paragraph).
IIRC Ingo doesn't agree, and you might too.

> I hope I can come up with something, but yes, if not, I'll call you ;)

My bat-shaped phone is plugged in.

> BTW, so far I've never found a case where I had to use the hold space.
> I wonder if I may meet a case where I need it in my life.  This week I
> came up with some script for inserting an element into a JSON array at
> a specified position, but N is all that was needed:
> <http://www.alejandro-colomar.es/src/alx/nginx/unitcli.git/tree/bin/setup=
-unit#n969>.

Multi-line patterns solve a lot of problems.  A person knows that they
are no longer a sed(1) beginner when they use those effectively.  :D

> I've met a few more-complex cases, but not really that much.  I always
> come up with some combination of filters that allows me to avoid the
> hold space.  Sometimes, two scripts run consecutively also helps keep
> it simple :)

I've resorted to this too.  It's just that sed is such a small language
(even in its GNU dialect) that it taunts me.  Surely mastering it should
be _easy_...

Regards,
Branden

--zve3umj34lvgd226
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmNt0yAACgkQ0Z6cfXEm
bc5rMQ/8DIrwfXIGXYJrBdN1aJ8/RVCdAQdPWsTHMRqlBYEQHM9xtDDQNAHOuAsN
ccNT++3kskiUGDN/kCfTeRkKWd2IZ9CVWoDV/5y4T0QZWSb6UQKBqgqQdnEg1tTo
SA2KeaG4RpaFanEqCb77O/ye62UCGyqrpD0wVsOdoRcZkL/51EV/EMuMQ0ukYF/R
Vt0Wiy49L0WW+d0nDcYvwSrFJ75J9qJIhDAyLmoO0Z7w/6wVK6FD795Hi/stlCGz
yfYxz3m3XJNS5pZUrl/JzUJDYx9L1ZdAphvqW6Q0JEQjnmWquvVaH0vioMd5gw+S
mv0fmKgrE+cYqOSv3e8WiQ4Bii2ysGWbwAwaJCa3B3vECUXa4gh0tQFPr0ijHnmQ
bJDoPvTT20uDm2DO8H0qaPjXdgPhAOFPfD7QlyRBg6SJOsE7qGA6wcZr03BnAzuq
/RXVl9akoITlhkXXdqnrsmXW1LGxdcnzbTcvvoLUzccKLJO/7Y3jca1aofuJmbMO
+MNOH51f5GH7xuyoahLh5AdGDDZMJXaphL41236OSubKWHIL6yXTDQVp6ZqOxoEg
ikMN8K5JREF0IxyexnE1kvt35+oPDr1XQOT+J+yTE5dZSnVvd8tMepQoNxg1L8Ch
78PWHQy6RjW/AMKJb34PZqAZuuZHoUlj9JvWcPNRHaVWFwGJuKk=
=g6kR
-----END PGP SIGNATURE-----

--zve3umj34lvgd226--
