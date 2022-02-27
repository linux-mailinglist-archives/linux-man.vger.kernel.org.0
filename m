Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E9E1A4C5E55
	for <lists+linux-man@lfdr.de>; Sun, 27 Feb 2022 19:57:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229750AbiB0S6E (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 27 Feb 2022 13:58:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53870 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229601AbiB0S6D (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 27 Feb 2022 13:58:03 -0500
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com [IPv6:2607:f8b0:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E71B4E49
        for <linux-man@vger.kernel.org>; Sun, 27 Feb 2022 10:57:25 -0800 (PST)
Received: by mail-pl1-x630.google.com with SMTP id bd1so8887759plb.13
        for <linux-man@vger.kernel.org>; Sun, 27 Feb 2022 10:57:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=b6Cf+3KWIfZciDrVBDFXoNLsLYXAwe7/GJe5k/I4V/E=;
        b=DlBEDHpzc+zmQxxztQj9H+QTVZsudMp3HvEljboeeLosIaS/EkAlh2U6/OiIZBKL95
         gg4DzL4S4XlZ4lYhXUusHnuLJvrzJRlfsllgl0UCdIqr+9qWSK35CdyS59uT5X1RXKDX
         A5EP098AUOjf5AJDO1hmx1J4ntRWOa1MvFb+I5MaUHFvOXUKVWiRLyq0c2RYW7k/1jo7
         LKhmUyt9kcS6RGQ1XN/Cnov1YA09moRzD5Zr+tnkW2Y+qbtbBoqtp7OaIkPpWU/QQ5kZ
         BvoRCBWiTidG/sD3Ew7w8Cwt/18WMd0sumHC7RbBrKCKFmrP08IgXlGnnaKuV+CIhzx6
         gyUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=b6Cf+3KWIfZciDrVBDFXoNLsLYXAwe7/GJe5k/I4V/E=;
        b=VZf9Ln06sNa+dATOPxJDPOiSYkBWXafXqwML8WdVof1z8YRncuFgEuv4rzQ+KA1Ewm
         P78uy98NYiY2wf33Ke+hGid0T984DJYg/kOganVvQVft1FMe5Gs9OkAocyiccyI2RRW4
         3gGGWlVs2QrnvQwu/XSYOE94e4QNKaQNVpJoR9WPTZ+Jvt2ayWoYjfioEaD8ic68BTvb
         omDTiGWUo8AyB/4y9WM+Bua9kHwLsE6H1vsInhDTV8crCSfZaDig38N4710wPVI+4PrH
         SW06t9HwyV4Rg8OPIWVxOE5lCj1iaJoT+bXdHkjr5y0ygwikFs+ve8tIieQEoAMgJzAO
         uemQ==
X-Gm-Message-State: AOAM533WxnosrYJDDyqywGbU/+hyvh02RSSMjVoVxHouTDMehMvJ27X8
        xU4ou9uP+hPCStvmuP1MEx1EKeETRck=
X-Google-Smtp-Source: ABdhPJwaS2aJg7tw8eoJiJ0H5pyrLAw4xr2+1L2a2IZxCoXY7epVPirV7nCBHGV3tMOq6xLNJmUfCA==
X-Received: by 2002:a17:902:6902:b0:14d:6aa4:f3f5 with SMTP id j2-20020a170902690200b0014d6aa4f3f5mr17230970plk.20.1645988245393;
        Sun, 27 Feb 2022 10:57:25 -0800 (PST)
Received: from localhost.localdomain ([1.145.96.77])
        by smtp.gmail.com with ESMTPSA id i17-20020a635851000000b0037462b77f94sm8088480pgm.34.2022.02.27.10.57.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Feb 2022 10:57:24 -0800 (PST)
Date:   Mon, 28 Feb 2022 05:57:21 +1100
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.mailinglists@gmail.com>
Cc:     Jakub Wilk <jwilk@jwilk.net>, linux-man@vger.kernel.org,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: [PATCH] mmap.2: ffix
Message-ID: <20220227185719.hszwudrkwrpzhgqe@localhost.localdomain>
References: <20211112103938.3888-1-jwilk@jwilk.net>
 <75bc59ef-6a3e-1539-dcc3-6c6a2a411e85@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="dqiesszbsxrfijia"
Content-Disposition: inline
In-Reply-To: <75bc59ef-6a3e-1539-dcc3-6c6a2a411e85@gmail.com>
User-Agent: NeoMutt/20180716
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--dqiesszbsxrfijia
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi, Alex!

At 2022-02-27T18:09:51+0100, Alejandro Colomar wrote:
> > @@ -289,8 +289,7 @@ Note that older kernels which do not recognize the
> >  .BR MAP_FIXED_NOREPLACE
> >  flag will typically (upon detecting a collision with a preexisting map=
ping)
> >  fall back to a "non-\c
> > -.B MAP_FIXED\c
> > -" type of behavior:
>=20
> Branden, why is that?  Is a leading '"' special here?

Nope.  I think you correctly surmised what the original input was doing.

> > +.BR MAP_FIXED "\(dq type of behavior:"
>=20
> I'll apply a slightly simpler patch (removing \c):
[...]
> -fall back to a "non-\c
> -.B MAP_FIXED\c
> -" type of behavior:
> +fall back to a
> +.RB \(dqnon- MAP_FIXED \(dq
> +type of behavior:

This is indeed an improvement.  your change should make no _visible_
change to the rendered document.

I wouldn't use \(dq, though--these quotation marks are for prose, not
code.  I would use left and right double quotation marks.

fall back to a
=2ERB \(lqnon- MAP_FIXED \(rq
type of behavior:

Regards,
Branden

--dqiesszbsxrfijia
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmIbyYgACgkQ0Z6cfXEm
bc46pg//QbpqI+T94F1c47PzwPrGgAozX/npEFiDyjti59Dk8KA+9SGgfOUJAkzQ
G81Jv8de+UIx6o5kyG/FsswaN4GK0OTMdrdIRcf5FyWSBiM9O7WJItzHZAbQqnzO
pbUK9vY/njvq6cZcQ3LFDqKYO5btgfWWNLneOOSkd1SfkpUdwaT83HNPCE3SvcVh
lMIfz+I0uJjBGY0SiYCMqADFtjaNsA/+XL8GTJzx1lj2wxwmbPweZkkIOrP71PCe
X/ct21zjo2fpwUhfzeNpKMziUpyq1q99W1F1EVU0Qdj67OJmANHaFt8HSxQeM07g
hsSYK/XVzDhoWQKHHiW9NwATJQuI7p1VgFSU7Vk8oXkgi0lLvO1A3AVfBZxnqC1K
xvlpgKI08RRgut6nHFAAmdDFet8CFb4XEbuMjndHfJx3F/iglNGfFpBmdmyAhS3E
BubnD3Hpeb2n/2cZkcdp3vzOIgOhqiU1jx8l52dHYWX/eswlDBIi85/P9WORV2Sy
IkeDh/UHrxHYgeUm58ZpzTr65Z1ULwxmdG38fVHMfF53W1LEpnkcz4JV8uDB5JxV
+Guc8raqOPaEQSS7MaucrcU7TIylptwjRLjK5lA/EpZwyH4dsGbhaZdJvL2RyVn2
oZQoAkREuXDWaQX9bPZj8suWo76zV04WtSk1x2+Lfy4rQDh2/KU=
=5atR
-----END PGP SIGNATURE-----

--dqiesszbsxrfijia--
