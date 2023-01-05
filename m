Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 50D4F65EAC6
	for <lists+linux-man@lfdr.de>; Thu,  5 Jan 2023 13:35:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233231AbjAEMfx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Jan 2023 07:35:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60752 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233134AbjAEMfm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 5 Jan 2023 07:35:42 -0500
Received: from mail-oi1-x235.google.com (mail-oi1-x235.google.com [IPv6:2607:f8b0:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1CFD744C6B
        for <linux-man@vger.kernel.org>; Thu,  5 Jan 2023 04:35:41 -0800 (PST)
Received: by mail-oi1-x235.google.com with SMTP id e205so31828348oif.11
        for <linux-man@vger.kernel.org>; Thu, 05 Jan 2023 04:35:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=U89GNe4c2DKmyQHIAUY/VgjFMCsvPuYKbPc4kaJgaNs=;
        b=gM7kBh7CXa91+pM141MyoUKQLTumdZkWGwteAarGdmrLo0IePEG605D3RuuP/xNi5H
         bCRkWjX8IjemlSIDSaxGsQwfC8+zGELtUanT74/VM7euXRb24IZCjShiSLssTK8Prqzz
         JjgABS5n5PRO1YSoUSzpwt0WgEl+eBZN/IoojV4ImiDfmRk4tuo2320siOmvc2a+N1aY
         Zx7EJE8HEnJR5KxbcpyjMAXFKFawmskvN+El4JMs0eedQYFnDBsTISLuiX+EdTgyeWny
         N5tAdTpB3T7b8TmrMraPibuX2ZDZfPQ0zsW6DiyResC4kU2sjQz96KifGp++Tbpsj6V6
         2weQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=U89GNe4c2DKmyQHIAUY/VgjFMCsvPuYKbPc4kaJgaNs=;
        b=suWoLKV7sHnvkM5Ebo6eiyXE6DU5NqNM1hJL90HVz8930lyOLBgu1s6LSYWm27go8l
         rIwcg90X/cEg0ewnc/cfEdplRTG7GMj6uI61JG6lyagXt0SBWemNfrL/zg2fzBV3Vu5J
         CLeP8z2qm07/CzVdjI3twiCGcCJQ02m09fA9UwaH0GQWGH1KfGn6JrzvLXQgOaii6aEZ
         HITo2YSrIA/xxpLmjLCQAcLuLgbzyi/8irH8EpKtRt8QG058eLFBmwJNpLOg6Qtnm+PE
         DzREHfk1TcxjKM3MnQ9vb9qYZtud6ecYxt1AvWkPjDUUFB4BV+XzxzIMI7T1r0YkgluT
         C7rA==
X-Gm-Message-State: AFqh2krimSI6CoxKIw1GKzvxN19mx9qs6IyN7VNS87qkpf/z5+Gn0dSo
        ZWy03kpBKTgCeN6j7gfWDW2bzPcRsE0=
X-Google-Smtp-Source: AMrXdXtbuFb242UzKML6A3x6AKwKGLT4LUKjAKtxm4V2POqmNNeONsbkIop8bB0sOJOVTweQMHtl8w==
X-Received: by 2002:a54:470c:0:b0:35b:d4a2:c4d9 with SMTP id k12-20020a54470c000000b0035bd4a2c4d9mr30864515oik.11.1672922140357;
        Thu, 05 Jan 2023 04:35:40 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id 17-20020a544191000000b0035ba52d0efasm15293527oiy.52.2023.01.05.04.35.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Jan 2023 04:35:39 -0800 (PST)
Date:   Thu, 5 Jan 2023 06:35:38 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH 2/9] ldconfig.8: Fix style nits
Message-ID: <20230105123538.kkg53yge3e2fhxjk@illithid>
References: <20230104073851.h6kg265ev5v4gmjl@illithid>
 <f5b81092-fb68-d57c-0686-c1b3e482f35b@gmail.com>
 <20230104200451.vxgnuunzztnkifig@illithid>
 <ee241821-34a4-a5a3-f757-dc7018241bc7@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="4mk77bac3xws4ttf"
Content-Disposition: inline
In-Reply-To: <ee241821-34a4-a5a3-f757-dc7018241bc7@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--4mk77bac3xws4ttf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2023-01-05T13:03:01+0100, Alejandro Colomar wrote:
> On 1/4/23 21:04, G. Branden Robinson wrote:
> > Official GNU resistance to man pages is broad and deep, but not
> > universal.
>=20
> Is there still resistance apart from written?

This is hard to me to judge, but I also interpret unorthodox man page
typography as constitutive of resistance.  I credit Albert Cahalan with
giving me a formative experience in reading a man page that was written
with resentment.[1]  Countless thousands of Debian ps(1) page readers,
often under stress trying to figure out how to identify and kill a rogue
process, attempted self-help and found themselves served a dinner plate
of steaming documentary hostility, innocent bystanders caught up in a
pointless vendetta against a text formatting language.

When Mr. Cahalan passes, I hope his family has the funds to engrave the
first comment block from his ps(1) rewrite on his headstone.

> Most contributors to GNU today seem to use man pages.  There are still
> a few projects, like make(1) which would be better with manual pages
> documenting the language, but most have useful manual pages, don't
> they?

GNU programs whose manuals have Invariant Sections or Cover Texts under
the FDL tend also to lack freely-licensed man pages.

Fortunately groff doesn't have this problem, because it's all
dual-licensed GPL.

> Maybe Debian helped get there.

I'd like to think so.  I was around when Debian still took a lot of crap
for adopting that stance.  Now it has users who weren't born yet when
that policy decision was made.

If you don't have further comments on v2 I'll make a few more changes to
v3 and submit it.

Regards,
Branden

[1] https://gitlab.com/procps-ng/procps/blob/7ac9a0e1f5606696dc799b773d5ec7=
0183ca91a3/ps/ps.1

--4mk77bac3xws4ttf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmO2xBIACgkQ0Z6cfXEm
bc6E6w//UzUhCv4/BG7wQYgH8o7/KPW7+T4XluMbAjdXRqCX+hVF1i7Tw7+TN4Wl
DWtAjsnjA0P9+o2d1i+Q+gbDXzGSqeEDKfw11OwdNqAY2FHc7I8Dz/iXyEG+0FSD
BNpW0AwPXTbdbASmT9HAKDyDpBwbY29GvMrbGxZymBzTmrUsBl8QYN9WZKTWBv0G
DbNFinLUVkwhS1r8riBjkpHaSuRv6m/G6fK1hMlh41gyFgfdu9RmqQhWJ7sWqdk8
sqNi4v7932AIRfOrPv4ShUbx2oijInO09YbbPoG871jMDdjJHle0wS7RSYmUZVGP
U5TDRiRIIVz19D9t92dpxR2JWZcwiBGFamucRQKyQk0FxTjy354zmQ9G6O0khBof
myLt8Fq2rPVH0pj/dIcT0oCRhEBx3Pi6/u80G0WVgm5nKyG/R1UHe+xGoIftt2jO
jR/RL4QEschQR7u9DVQL/OkSA4YeUKevbC/nhXh6+n/xTQwzessToqmF44KryDa8
bCVedYX1eNemw6VVjeMwt9HLVadk/6gq5lFYfUB9wcwRxvvIyAB+OsHOloMtSt8O
ivGDAQbHRNkl/paehf+Masek48c36Zunpy7G8ZAh21L3ganPnz9FDrYhlV020LLW
vbmjDH5NlZQprLGTu9UHCaX9D1xfk/qUeBn2wtMGglfHpNBRDCY=
=Brmw
-----END PGP SIGNATURE-----

--4mk77bac3xws4ttf--
