Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A96C92E2945
	for <lists+linux-man@lfdr.de>; Fri, 25 Dec 2020 00:39:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728945AbgLXXiq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 24 Dec 2020 18:38:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56854 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728930AbgLXXiq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 24 Dec 2020 18:38:46 -0500
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com [IPv6:2607:f8b0:4864:20::1031])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 717E8C061573
        for <linux-man@vger.kernel.org>; Thu, 24 Dec 2020 15:38:06 -0800 (PST)
Received: by mail-pj1-x1031.google.com with SMTP id b5so1848064pjl.0
        for <linux-man@vger.kernel.org>; Thu, 24 Dec 2020 15:38:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=x8rX+gyAqNB3/KxmpQrXTf2rAZ/K4R8br2uje5lO7Q8=;
        b=vH3od8FQNvjeAZe2Kg9oZqkwxzFAuOpzJ8MIv/XBvmpCWyBkmIOBwDdLXk89rSO9hO
         B02gpc7orU665PLvjshlQqdMYNG+NLyo1Moj5EAcw62LzM5CAHsGbVcaQEyEyVdmV4B/
         dmmc1cOgeig8sFP5a54NVODDL8Z/OrRLV5A/P9k22bsAWI+K+hD2qXyJT38uRDcGiGFK
         Wr0frw9zCGW/grnH4J+SKRfMrAyGNjpxw1LXogNgdJror1o6pynT+zrdTgr3KImkQtPU
         i4+Q6X7WZ8tWNkpKXGZVlyCZTzEdOxVEsawiCALrhjErKw8y+/xOYaNOb6YMq7DQIPjd
         o15w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=x8rX+gyAqNB3/KxmpQrXTf2rAZ/K4R8br2uje5lO7Q8=;
        b=nSvak5BkZiUHlU+1TIb0oqTcdelXOZy5g1G9VwcGRZgknA3uDuqgNDeroVY4LgCvNa
         0GGPFEv20cvPVwa4YNJCWajl1B4MWleGjc+EvxHzSHDKNtyV5e6IaT8Li0GUd8w9gD2i
         vj8Pt0RNkhitYVjhgvaoAt9UOKBRWBAeSJi542VGJX8qLBGzD9s8git2wg78C4q9kdW8
         3bPFxHRafc4jColLBU6FrGUUDHjX0WTJFfu+hps6XVGBaMgkERYytFSdiY5ivbFxRQS4
         cjLvxMeBFkeLZrZuoI3mvkqmscF3uOYE9se4l0LrLUUlOf4VeAHhJCnZbDlAi/gszZ92
         y88Q==
X-Gm-Message-State: AOAM5301y2C+0pnxE/Q4Z0UGq2hGUIo311u6EyEgzQRqT/sps3DnvXYZ
        OgBWAInD+v3L8gkygKjdzgXJWeGogE4=
X-Google-Smtp-Source: ABdhPJyFKnHRJIBFM0ZFNPqdZcxEm4V9RCwNffR1c3vuTszB9YUfAMMxov6ur4RkDo9b4GIW4bxBLw==
X-Received: by 2002:a17:90a:d502:: with SMTP id t2mr6071305pju.131.1608853086088;
        Thu, 24 Dec 2020 15:38:06 -0800 (PST)
Received: from localhost.localdomain ([1.129.159.43])
        by smtp.gmail.com with ESMTPSA id g6sm3819263pjj.48.2020.12.24.15.38.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Dec 2020 15:38:05 -0800 (PST)
Date:   Fri, 25 Dec 2020 10:38:01 +1100
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH v2] Various pages: tfix
Message-ID: <20201224233759.kvrdgyhtxivl2m43@localhost.localdomain>
References: <20201223190202.12758-1-alx.manpages@gmail.com>
 <20201223191705.13141-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="m7x3baujiygucgue"
Content-Disposition: inline
In-Reply-To: <20201223191705.13141-1-alx.manpages@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--m7x3baujiygucgue
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

At 2020-12-23T20:17:06+0100, Alejandro Colomar wrote:
> Remove "." at the end of sentence fragments/short single sentences
> in comments.  See: c2e81ff9641a7743b1f47cbf4fcf899c391df77f.
>=20
> $ sed -i '/[^.]\. \*\//s%\. \*/% */%' man?/*
>=20
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

I'd like to cast my feeble vote against this proposed change; from
reading the diff, it seems mostly to remove punctuation from the ends of
things that _are_ complete sentences, and not fragments.  Some of these
(like readlink(2) @ 338) are part of multi-sentence comments, and having
sentence-ending punctuation in all but the last sentence of such things
looks inconsistent to me.

In general I think complete sentences should be used in code comments,
and normative English grammar used for those sentences, with a deviation
for short noun phrases documenting variable declarations--although often
one is better advised to take the advice of Kernighan/Pike and others,
and use a communicative variable name in such cases.

Two cents from a Tiny Tim on Christmas Day.  ;-)

Happy holidays!

--Branden

--m7x3baujiygucgue
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAl/lJk0ACgkQ0Z6cfXEm
bc7+Nw/+OFjiVV+4P85Xun1R1FVSTF0sAxZ7G0mpt1wp1Z4dJm4pWzipkKZAU6xN
hAMyNLHPzyK7bVYyQbsiYWK6pV/TkFrGG6GZvBnROsXENWdiZ9fZsr0Q3B5d0mfL
mxxX/JUIh/xaugecPgmAFgM93c3sguhYV2ZAsRncK1DhbdZ7L2IHXKOhZu3zmhMZ
K+hSJbnLChXbGDKzDyZOjf1bUWn1yq8b7Lv4BEipbl7B7tI/wqanEqsbUb5RDr2+
bAidBy/dqwB7QJKlf8G6mJfinYArxEF92xUVNMbeZlNVdCnvtYqMOJyEi6LAUCbh
GLgh+De2OXrf1cXE2k7IVxPDz2BEe0C23UecdEJpI08cg3HmVuGCLzQ504whJWKZ
tFY+ZaJMIVJA9SFVg0ZK7yBUz4FGahOonpgMW4yAka+NQHUUknwm4jCEZKitezTs
iIcF5hH9o6XP7jmnHPNJQkDWWXJTGax3syS5vKZidkU5CJJYirAPeS49M2Weu4Pl
GItb5juVSlDBKOKrPdK8nJ47tniO7n9oJtgBGY4JGMcQpR9eEcuc/DxXQaZ21zY7
q21U4n0Gm0wP3GEtcznYIXRRa5YujD/Smda3SY/TlfsCRqUtdx6/ED2Z8kDGv6Nn
2o0TGkNfjc5Qk8CGL/hlbtY6wlufT7p6S8k1o/p9AaNqABSUiWk=
=mjCe
-----END PGP SIGNATURE-----

--m7x3baujiygucgue--
