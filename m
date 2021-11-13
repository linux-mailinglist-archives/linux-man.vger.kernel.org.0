Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2753F44F318
	for <lists+linux-man@lfdr.de>; Sat, 13 Nov 2021 13:40:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231672AbhKMMnP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 13 Nov 2021 07:43:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52794 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231555AbhKMMnO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 13 Nov 2021 07:43:14 -0500
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DED92C061766
        for <linux-man@vger.kernel.org>; Sat, 13 Nov 2021 04:40:21 -0800 (PST)
Received: by mail-pl1-x62b.google.com with SMTP id t21so10607807plr.6
        for <linux-man@vger.kernel.org>; Sat, 13 Nov 2021 04:40:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=NYGe/6/M7NuviFRxgG/9cZuQs3bownhh/RBpaSnVvcY=;
        b=OY6NA8ufNV4inisN4zmwFSavbZ2mxBa8MLRLiOX6cpWy8NuidzuxoUQ8RZ52kmbPTg
         H1Z+sxjS3gDLraT9D+N358pDeou/lKrIs8zJPqgYRhcXsoFPlYeHu9PDP1jep/95W7DD
         FMW4ZsS8WNc5zDUq/pA3wZgGG7C1bw2O0A5MYsNIqVOnjkHlrDFQeaN3CK37cJKjtyfW
         6NrFrKklQrF8k4a31hVGS59XBoYQiUzddeRHqNpKX4TRbN7DyukOhdYgg25RX4vxYCbQ
         hZWVzNIg8kyLnAb+7n6iKKSL3c2F9fTvAApgHjyX918kyHJAffPHgvCrQnFjO2KwaGvz
         tB7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=NYGe/6/M7NuviFRxgG/9cZuQs3bownhh/RBpaSnVvcY=;
        b=XNW2VC4cprTEpdeAy0RkTWt9lZR2Dp2/4/ZzYRCnB+3G3zIaS1f2psrlP/94QFb5sw
         JEkRtxqTIco8JyWyErSsDoy5ApZu52blbEEWY05K6Lkz5f3wAb0xpCPeeRNikx5dsBcW
         lOdCPbYvv6KGow0xiM/Sn7uyPiPz4ud/HoPbFEL/jJK78mUymtVW4xlbuMjIRWUA1VaX
         YceM2nsoyG2Q9ucdXPcmxouggdQ0d5H8WJBBNXJh7PA6PS3Zc2Cr8wwSr+gn9+mOyk1R
         NnCPoOj9HEslGIO2sGj6LPGnVGZFe3s6/uPUbTQCvJZAMabu1PhhkS8ar4r7Vg8YYUx5
         jBSQ==
X-Gm-Message-State: AOAM530p0JXPN6PhWXsxniHt9BFL6+68QVZdW4YMxcru0cQUCRioY12P
        qOi3EhdHxhJesFYlzQPF5Maw0K2A4j4=
X-Google-Smtp-Source: ABdhPJyz6we1Hu8yuQqgXvov42E3EARHSCGwKjSlYOVq1NxTft7gkx6w3gS/xMqcq0FFcvESRocgdw==
X-Received: by 2002:a17:90b:4f86:: with SMTP id qe6mr27130171pjb.198.1636807221435;
        Sat, 13 Nov 2021 04:40:21 -0800 (PST)
Received: from localhost.localdomain ([1.145.57.118])
        by smtp.gmail.com with ESMTPSA id q1sm6717843pfu.33.2021.11.13.04.40.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Nov 2021 04:40:21 -0800 (PST)
Date:   Sat, 13 Nov 2021 23:40:17 +1100
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Samanta Navarro <ferivoz@riseup.net>
Cc:     linux-man@vger.kernel.org, alx.manpages@gmail.com,
        mtk.manpages@gmail.com
Subject: Re: [patch] pthread_cancel.3, pthread_cleanup_push_defer_np.3,
 pthread_setcancelstate.3, pthread_testcancel.3, pthreads.7: tfix
Message-ID: <20211113124015.tr5wdkrxzinn4qjf@localhost.localdomain>
References: <20211113115656.5oomvy443gapjtx4@localhost>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="tmsqk2lo5zg3gy2i"
Content-Disposition: inline
In-Reply-To: <20211113115656.5oomvy443gapjtx4@localhost>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--tmsqk2lo5zg3gy2i
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Samanta,

At 2021-11-13T11:56:56+0000, Samanta Navarro wrote:
> Changed cancelability to cancellability.
>=20
> Typo found with codespell.

This is a localization issue.  Words like 'travel' and 'cancel' usually
decline to forms with a doubled 'l' in Commonwealth English but retain
an unmodified stem in U.S. English.

Regards,
Branden

--tmsqk2lo5zg3gy2i
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmGPsiQACgkQ0Z6cfXEm
bc6EgRAAjMDicN1Cg1/SL5xSSlu5kaBQhiIwCVwkzR2k+ZfFdSnecrZV34ihv+al
GQAHT7gEmr3Kg46iWmsUF6r6J6K7zw18nXxq0ddUuGeP3xSq/eOmDSaZ7JUrAvCp
LZ2UpQ0KOZecfa7Fpu1zxSlbPi3mIZ0F4ggx9pt0VEE9EqtpEsdRDzMQ/yYKxW3y
eEZmeIIXXWaizQrTgG5/EHTgnyk8v7GU/Qw5O3MZkU7OUiCrfCZEAkkao3n3UhRJ
GzqcJZ6SnS8RZyRpPay8UgLRxw96+AxDUDaPWW9B+yfoLADlMIlvadTiacG+wZfr
dqB+fIw1woBqNdCCvqb+xeNGs+2ud0REIwdH9JTbOUlJl3sP+vvQtoW2lrzdc4CL
sRopwlyNVfFRwPD6lmU+3sPuWG+7DLQfr6+XU5qqW5L61K1IcdgCxWk5bi3iqjrK
UGqtgN4Lr51/7irIojyi4gjnI2higt0rFHhdI0bDDMVSIgBbZP1caZPgsaijWKUV
rJw7Ygk2f4B17pt4DZpe1GTRLrZ3+M2YJiBQmh1cJDjy8gvi+NGqKgqKIirbli39
DjYErx9UQ7MDWXrGuEe7CGKfQ1mn90w79NGj3qfLJyVxg5TMpcItGQafBYdCsR4H
Qw02+JuRMk2AXQNGKWjMYW3gsfTzUyptEEP2PeRe55E+IPwC56s=
=MUVo
-----END PGP SIGNATURE-----

--tmsqk2lo5zg3gy2i--
