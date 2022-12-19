Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EE8ED6510BD
	for <lists+linux-man@lfdr.de>; Mon, 19 Dec 2022 17:51:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231480AbiLSQvJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 19 Dec 2022 11:51:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37700 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231809AbiLSQvH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 19 Dec 2022 11:51:07 -0500
Received: from mail-oo1-xc2c.google.com (mail-oo1-xc2c.google.com [IPv6:2607:f8b0:4864:20::c2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1AE3CB58
        for <linux-man@vger.kernel.org>; Mon, 19 Dec 2022 08:51:06 -0800 (PST)
Received: by mail-oo1-xc2c.google.com with SMTP id o5-20020a4a2c05000000b004ac6ea6c75dso1300175ooo.8
        for <linux-man@vger.kernel.org>; Mon, 19 Dec 2022 08:51:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=P/q5wwv2iQ/gmWC0lkgz3RgOYvBjQ8/MHhnFx3d5CuM=;
        b=a17LXsBizxkNQivSm0TFeHDfHXUWsmjbfK+3hF+Xa47wItfeVhk92XcsPdmUW7tjJi
         xaWa8VPg6T94d50NnFN7/eJuAv5MhVBlKm+uIWFbBmqlfdpLu2RT8/l0SVwaYQz9QjCM
         eFFtmXWw5KUq0nhuaMY8zL7fmrid8VdFF6ntJgpFbANfO38Cax9xwHjNam3iAdPJrR5y
         QhYUsPCld/WBvQFpwjZ/wS5OhnTba4U9QF4QXe0lUScgd2K8a61JYG2bLPOR6l5Rxmks
         67vwB4sK5JxylEck8APpcRTUTCoUtdr0Rd3SpWmQiB4RgUHTKKfo+klfbBZTgMWf+0g0
         lutg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P/q5wwv2iQ/gmWC0lkgz3RgOYvBjQ8/MHhnFx3d5CuM=;
        b=umMX2uNVIqpDBN38FRgIQGu7ojiemlZwxRy4teLpUkfjSdBpCkmX/EnnHalZB89u7q
         n+4qe3+6yYGygarMb+0MUdC37maEJGXW0OJ3KmJJABQcs5LInpDZKlgLt14nkJIsBq8F
         p3R31Z8HxYSBVwRXs+cxpmJYz7V88L6X8l51Hl7PjuBmu5BSC+hCEuDPJG6mWNF9n9UG
         rf50YQr9Wv+ATQXC1yh9NXKY5cNnOFxz9s/e6zXv+HVnUQ/M8L3ScTzIusoRZMlcKg/9
         AX14AKta/1BXXXdG/RG4zgPD+YHgLIXXbRyWRpmL9a0yqIanvD7rjDA4RGVhctFBlrjb
         P4aw==
X-Gm-Message-State: ANoB5plquPAh6K2023Ynbar3K1aHY6C0GjfbREPhW8W3DPGOdr6nwhdX
        /lu9JeNwQw+Qrkp6WZR+3wtgwWwdiKo=
X-Google-Smtp-Source: AA0mqf4D3yZxcTzZwHOjvhGIylAZmTCzCE5bTMo4STgnlgfkM+DOaf1as8xLLGfBCbATRryF7aGoOA==
X-Received: by 2002:a4a:a684:0:b0:4a3:e420:f32d with SMTP id f4-20020a4aa684000000b004a3e420f32dmr14399483oom.5.1671468665463;
        Mon, 19 Dec 2022 08:51:05 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id c145-20020a4a4f97000000b004805b00b2cdsm4160596oob.28.2022.12.19.08.51.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Dec 2022 08:51:04 -0800 (PST)
Date:   Mon, 19 Dec 2022 10:51:03 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Deri <deri@chuzzlewit.myzen.co.uk>, groff <groff@gnu.org>,
        linux-man <linux-man@vger.kernel.org>
Subject: Re: groff 1.23.0.rc2 status report (was: [BUG] gropdf, tbl:
 Completely broken table)
Message-ID: <20221219165103.4nppaiwnidm3ynvr@illithid>
References: <20220906191320.447t5awx3rcb5d5b@illithid>
 <1719285.QkHrqEjB74@pip>
 <01989003-349f-fb6b-f460-89106b82bc34@gmail.com>
 <2176657.1BCLMh4Saa@pip>
 <af2dad8a-ef40-3e30-671e-0b0f5f125c75@gmail.com>
 <85c6b38a-be05-806f-528b-fe1c559dc1b7@gmail.com>
 <20221217160830.rcvgr65axz4hpcge@illithid>
 <5439523a-4fd1-e0c7-9116-6fd8c2a65c67@gmail.com>
 <20221219053245.j5omcuyxd7rnj4qt@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="2ubxbfcc3wdosqvj"
Content-Disposition: inline
In-Reply-To: <20221219053245.j5omcuyxd7rnj4qt@illithid>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--2ubxbfcc3wdosqvj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

[self-follow-up to clarify two points]

At 2022-12-18T23:32:51-0600, G. Branden Robinson wrote:
> I plan to fiddle various groff mdoc(7) internal register settings so
> that Courier is only used with ".Bd -literal" and ".Bd -literal".

Brainfart here.  I was thinking of ".Bd -literal" and ".Dl".

I observe that the list-begin macro (`Bl`) lacks a "-literal" option, I
suppose because without further parameterization there would be
ambiguity whether the typeface applied to literals should apply to the
definiendum, the definiens,[1] or both.  (If both, you don't need the
option; use one of the other macros above.)

> Probably not a lot of this will be visible to terminal-only users.

I will add that it's possible that some of the problems with the
groff_mdoc(7) page can be overcome with better use of the package's own
macros.  I would have assumed that the page was written in the first
place by an mdoc(7) expert, but I no longer have confidence in that
assumption.[2]  Some time ago Ingo Schwarze made some suggestions
regarding macro selection when I was making a small change to the page,
and while I did not understand his advice in detail at the time, I now
do, and agree with it.  It's a shame when a document about documentation
is deficient as an exemplar of its own subject.

Regards,
Branden

[1] https://en.wikipedia.org/wiki/Definition#Basic_terminology
[2] It originates in the mdoc.samples document from the BSD Net-2
    release.  Perhaps this was not written by Livingston (who authored
    the package) but by someone else.

--2ubxbfcc3wdosqvj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmOglm8ACgkQ0Z6cfXEm
bc6AKA//VhFQLKLjRmOqIa7eilKrg8dDqmaxsQCIlF+qdHn8pikSsFQbriw3rt6s
jXaO20MkDWg6V2Ff2zzoE/xgEflx0QHAU5Ji0My7SOX0LgrgBrpxf7+C0qBRndMq
dJ2Rpfdu7J/y7yeJw96WGk0112ABZN5DqOo+1scwSNb/iweZaoyJepUuiESYHfLr
rh2gJUnpHyKJWim8yvruptIhxxfWV+KWojMUzkePBqmgfm03Ix1GDc43DYsrJ4Ct
1riooJYsPvB048EJfY/lYvCkDsEZ3hWs/muI5N5Ak5meM124fF0u3V4YK+gJByL7
C9Iep+ShNIhMMguFWJqOFYQCuRghHo3WzdCwM8j3txQ2KnS9wE0KsLz4DiFEcEdP
f0xW1oJoaoFnZg7vRf5oPFq5qTxnz0wvmxtmO1+CpbiUtk10QEcBpbR0mSgH3pln
MrlgKpZd8t9sIsx2U+lqDL9j0JThjdkyCNX+rxERYPkBdoqhNSPWEu6RhxqWcme0
5c8Y4/BoYyVwqA99kwCnZ59AmyWGTnjyOEA10RRiH4R9ffDEwysiPI7dijlIJhBN
00Otf5rQp4/HWhApc4gitb1iXe29fhE7tWSa2zppVJgSmHwiaIgrc7hJ97j6p/U0
4IPC4BmGvUT8Cg3AYDRW+l0+/Q0iD/nreVNmnpU0vu2Fr3D5XH4=
=2fcs
-----END PGP SIGNATURE-----

--2ubxbfcc3wdosqvj--
