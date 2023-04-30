Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6D77B6F28D9
	for <lists+linux-man@lfdr.de>; Sun, 30 Apr 2023 14:16:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230139AbjD3MQg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 30 Apr 2023 08:16:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50910 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229560AbjD3MQf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 30 Apr 2023 08:16:35 -0400
Received: from mail-oo1-xc2b.google.com (mail-oo1-xc2b.google.com [IPv6:2607:f8b0:4864:20::c2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 75DDF30F1
        for <linux-man@vger.kernel.org>; Sun, 30 Apr 2023 05:16:13 -0700 (PDT)
Received: by mail-oo1-xc2b.google.com with SMTP id 006d021491bc7-541b5cfa9d8so965101eaf.0
        for <linux-man@vger.kernel.org>; Sun, 30 Apr 2023 05:16:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682856971; x=1685448971;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Rf43YB57Y1PDsXWC8cnF/NPIrigs/dRZf50vPj8Zils=;
        b=iUwdUfu19WtkZ5BuY8xhHGAsLatCQheuWZmc7JE+EcTMVFF9sF2gglGPz8qjH6Wq76
         gibyu63tawgcKzPwzpt5VXfKiobtXUbNMgQU316V41m2P/9BhK7Jm2NR+MVA5jfLxcpy
         GxbFIFQbe56ixyWhp9LZwL+a1db2xcPq6nR/YYiW+VLHbWY0C5d1QXavmjW+Su7eh7Nk
         kaweTQMoaUHLtbQPe4UFrOxraszZ2u+z5cmRcPuUYPBTQXYwzNF0x07H5bYtXlybg6ja
         HSeLMWI3UXKVfzeyqmuGsOm9PfP1ZE4y5IsV+rgz9v5geZ0LDAc3ZUsNxRHhy0lNIIOT
         EkBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682856971; x=1685448971;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Rf43YB57Y1PDsXWC8cnF/NPIrigs/dRZf50vPj8Zils=;
        b=d21xiYBzT+UAH2+eoXnTg3AdgEVMHH/SvYHGx8KRilGqRbM0HIzG6vSc3gJULU0ijy
         S8VsL+SEXlnnwGEybw9A6XTjuslXM67zCrbTQJ+AdamVSDUN3VOTvbCvgMcy9uPhworr
         9+SZJADu/jvKwSw3iS2FBeZXxSbjvIFkpjzO9kjI/32lwgQvzeB//BOo7sn4nYOedXHK
         CqMyEQEMewon0pLU3ODOTShVJatZeNtrqQfHawVZ1sYeyBHZMp42LHhXsuYHha0ZDhAn
         GVM2OjenL/4m89v9pCK+Vt0TaiSCTpGDpbyz04cWFRic6vC5STA2jL6YGw8ehEHyvPPD
         T+0w==
X-Gm-Message-State: AC+VfDwFHMiTHeoZBNw+LW7Lzh6aeVzCqFzNLIppbPJxhjucx6drS4gp
        g34M/Y42IKgmwDPm44B8Gj2ivdnTHuo=
X-Google-Smtp-Source: ACHHUZ6b5Zzl1dz2Mhc3JXNs0g+zJ9Xph/qV1uwA4cQPW5TENNe+pIM+A0TD0S2Tt6Lr2Efxa2rdsw==
X-Received: by 2002:a05:6820:355:b0:547:6a5d:4284 with SMTP id m21-20020a056820035500b005476a5d4284mr5296492ooe.4.1682856970945;
        Sun, 30 Apr 2023 05:16:10 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id s14-20020a4aad4e000000b0051ffe0fe11bsm11479039oon.6.2023.04.30.05.16.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Apr 2023 05:16:10 -0700 (PDT)
Date:   Sun, 30 Apr 2023 07:16:09 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>
Subject: Re: [PATCH] uri.7: ffix
Message-ID: <20230430121609.e7smpz5w53qlt64c@illithid>
References: <20230429194642.174362-1-alx@kernel.org>
 <20230429230747.xw3ym6rzaiypkq6q@illithid>
 <28bdfa4d-7fd6-a785-4d51-fc988193c25a@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="wgany45r377bxbnx"
Content-Disposition: inline
In-Reply-To: <28bdfa4d-7fd6-a785-4d51-fc988193c25a@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--wgany45r377bxbnx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

At 2023-04-30T01:53:18+0200, Alejandro Colomar wrote:
> > scheme =3D "http" | "ftp" | "gopher" | "mailto" | "news" | "telnet" |
> >          "file" | "man" | "info" | "whatis" | "ldap" | "wais" | ...
>=20
> I certainly prefer this; the reason I didn't put it into .SY was the
> boldness of '=3D', but I may wrokaround that somehow...  Last resort, I
> could use \f[R].

Yes.  This may be one of those rare cases where a font selection escape
sequence is the best solution.

> How are you doing with the regression?  Were you able to notice it in
> the second set of PDFs?

I haven't dug into it yet.  I find myself with a lot of emails to
answer...

> BTW, I was going to ask you related to another warning I saw: What are
> \f[C] and \f[CW]?

Two different names, from different traditions, for naming a
constant-width typeface.  (In groff, or any device-independent troff
taking a cue from PostScript, more than one constant-width face is
available on typesetting devices, and you would write 'CR' instead of
'C' or 'CW'.  But ultimately what faces are available depends on the
device for which you're formatting.  In the groff 1.23.0 man pages, this
matter is much clarified.  See its grodvi(1), grohtml(1), grolbp(1),
grolj4(1), gropdf(1), grops(1), grotty(1), and gxditview(1) man pages.

Not too long ago I discovered what I think is the ultimate origin of
`CW` usage as a face name, in the Unix System III manual.  I'll follow
up with more on that as time permits.

In man pages, no face names are truly portable apart from 'R', 'I', and
'B'.  That's what existed in 1979.  You can do sneaky things beyond
that, and I have.  But those are the ones you can count on.

Regards,
Branden

--wgany45r377bxbnx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmROXAgACgkQ0Z6cfXEm
bc4/rA//RDLYSQYw6FXf4j2/r6v9Rlz2JiiX1PrAIP6DEMFYx3g4owgDFP6SzOWN
TU1nvw8jteih4z4X0/DRDuVqnqKK/ILlv3xy2pKy+QsgjhfD82bFs+kaan5cfMSX
LOQtoIUwd3CvnYaDSF3KZ7kTXZfuB80fcuwyXUMVbrtYMgpV4lRgU625ndafto9R
TWzlx4OKiWhCX6JKQofCPnN/VxNGaViRWscgF2SJbz5HJA/wA6zJb1hFM+PvkzLg
6mp/1k/Kvw0dbH9gIJb3kn1LWJkTBW1ojEiHE1Lc+/JPzAomNvcdNQP/SyO98ck2
tgiB9PqUklEZrb558xA9HbWtHmRAJ16L2ee9aIeNquAA2iRtTxEYTHodCenXTo79
I/AykKzA+MjKH7iTLlwGE02EEDrHufB+yCPBpHx+jXeQbihyaR3+GW9NLDLgJ/in
uZpS07wEY4hZygYV9clxT1pDkcaaFlHscE0JZZQIPsDuH+PaPfXp2bErHt51L5XJ
YEbsvNpnCDRh1nUqh6+kIefTEH9OaCUB2vm04KmkaiFPC0MNrE9zkywrQ81tbNWB
pf825KLf6hO/6oUWQZq4div/7o6Ckx3mFlK1qk9npjIa5sbYsSFzze9DAkusv9ju
c7dqy0PXQrBP0NK1hD3MYmE4rYDyw78Xev7yVj8B8dgyfwYRT0A=
=+DiN
-----END PGP SIGNATURE-----

--wgany45r377bxbnx--
