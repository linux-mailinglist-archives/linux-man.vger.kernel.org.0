Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0FC193DC1E3
	for <lists+linux-man@lfdr.de>; Sat, 31 Jul 2021 02:19:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234151AbhGaATz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 30 Jul 2021 20:19:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48982 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233795AbhGaATy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 30 Jul 2021 20:19:54 -0400
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com [IPv6:2607:f8b0:4864:20::102d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 99928C06175F
        for <linux-man@vger.kernel.org>; Fri, 30 Jul 2021 17:19:49 -0700 (PDT)
Received: by mail-pj1-x102d.google.com with SMTP id l19so17577310pjz.0
        for <linux-man@vger.kernel.org>; Fri, 30 Jul 2021 17:19:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=qYMHNsadr/3qG5SCjueAEEeT7rhuskNafUs95YoHbAk=;
        b=QvarvPjZE2B3Es8KbCs5NqXDG0znopc0BP+zespoeEFRdsHCZ33iYoDiU0AH6ySxVK
         WzueQTFykTvIMtuq3U+iNr17urO/ppVE5mBcpCteWCVeCXMkWTnceKPOxe7Iv98jvswG
         5iD38xULwkc73t0oS4FFQcoYubv/zhik/hbAnFY+Gxip7nKpICvyxIHqtGzyw/DFq7wh
         VhdSxnP6OBiNpOsFs8JwoiwJzRQoGeB1K2ZAihyp/QDpNJOQsqkBYGhXvLdDCADPsNYB
         yVO8uN2KUifobiuUK8+1xlelP7x0ncD2Ll/yl2v3/n8/G9c2GoA8L+YMwPmbufWRe5uV
         mwJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=qYMHNsadr/3qG5SCjueAEEeT7rhuskNafUs95YoHbAk=;
        b=NYXmXD8EkD9R6OHKBv0zg6PgjQmaxJfyeE8xEIHMCRbLXbUzWSOlE0HXmuHF8uQoau
         ucU9pi5o2Eouit0vWeTedlcp4+jHpW6wHJsNhvUO6oFzLPrY1ZlDaNG03gBP1cM5M7Eh
         bPO2PJNI+mSo3Xmo9eGR6CeI5b4s8WP3f+hcD3L3wsenadeMoHel2VEE+zKofuYO3/JS
         gQytjjWGxeuoxTIpSSwN8RESMZWleUQpPb6Msr2tyksSEQT/HYxUr6MCl2SwLbs+fDQV
         wEq2Ky55I2cbP3aYJsE7IDA5A7Y6NKFQ6uzpNN0fqzOCvUWN5dJiDsRF3JXmh6X8kfea
         uAuQ==
X-Gm-Message-State: AOAM532n9MEw2rfMllh9F6b0Gb2p1nwltdbUXl5RKZejZO40coadmwOq
        mAni05lakHH6LcjcrMUjtBY=
X-Google-Smtp-Source: ABdhPJws6MzcmoAAOrQxb0gFxIB54IDthE2oxUlvCrzRvsZw8wQ2c/HjbehoUdzhc3onRDWhcDXS9A==
X-Received: by 2002:a65:63c2:: with SMTP id n2mr4613891pgv.292.1627690789130;
        Fri, 30 Jul 2021 17:19:49 -0700 (PDT)
Received: from localhost.localdomain ([1.145.37.91])
        by smtp.gmail.com with ESMTPSA id q4sm4110363pgv.16.2021.07.30.17.19.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jul 2021 17:19:48 -0700 (PDT)
Date:   Sat, 31 Jul 2021 10:19:44 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: [PATCH v2] termios.3: Add information how to set baud rate to
 any other value
Message-ID: <20210731001943.pqpclzfhjgwztdo7@localhost.localdomain>
References: <20210730153044.23673-1-pali@kernel.org>
 <20210730184536.13620-1-pali@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="bzkq6w25776rgrjv"
Content-Disposition: inline
In-Reply-To: <20210730184536.13620-1-pali@kernel.org>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--bzkq6w25776rgrjv
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi, Pali!

At 2021-07-30T20:45:36+0200, Pali Roh=E1r wrote:
> +Setting the baud rate to a value other that those defined by
> +.B Bnnn
> +constants is possible via the

I'd say

=2EBI B nnn

because the "nnn" is not literal, but variable.

Regards,
Branden

--bzkq6w25776rgrjv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmEElx8ACgkQ0Z6cfXEm
bc7ppQ/+NddCjvfLksHGkZb82sb/OVKT1Q0BLUfJT6S/S6kspmjPSf1TawRYAgau
EvgRwkPjM6Tv99M3R9UVDPkTDJcfcDDzw47GXQIOpk9dpXLaJovTlFV2E8KwjqtD
IgE+uOjuWWY3OW/AqT94Vx6VUWUSszOa1InDkVooO41rvOb58vJ1NwpxdvOWiwsb
VqkyPfDeROzztnA5uqGl/Xb5YR73SYIY/InLInEkgPsGjuCsQXckHk/CNugjk+kc
Zs30roZiF9EkVa0bx0JrZMR1st+dcR6O3n4/wa3WglpiBmXNj/TfG+8F7bsQaYrZ
VhEH2nnb8b++AakakKgXMEwFBs2iTV6Lbq5pLGkG2Zvufgf4KUoZyARDNJA8wiUm
uNMsgazHdCF4peslvwoxSRXE0CM25iFHG5A0rkJdXc74tR8bjBSdvRIK8Eg2I3W/
hSVa8YC8Oy7ZS18soVfHZXJl/fsAK1+2GEgHG6yKM4Jpkf6d/ZaG8oPVVanqXCv3
UopJK7Sd84cJuNcwJW4WXSSlQkVTRIA+0y7jsuq6NRCViRmb/MoD19NidyIDP1Yd
m91B9UfaaF0VvNQKBw4Qc01pA//NIKoP59SmnkbZJUtvYPXBL3lmmrs3icEt9Lfe
VnVJaR0Ws6QewZxanEK38SfCBHr0HZDC/wGj961ug/njRUmke6k=
=Wy2a
-----END PGP SIGNATURE-----

--bzkq6w25776rgrjv--
