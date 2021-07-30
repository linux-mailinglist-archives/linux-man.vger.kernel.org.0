Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 589023DB06C
	for <lists+linux-man@lfdr.de>; Fri, 30 Jul 2021 02:53:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230021AbhG3Axh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 29 Jul 2021 20:53:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41672 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229667AbhG3Axb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 29 Jul 2021 20:53:31 -0400
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com [IPv6:2607:f8b0:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2BA19C061765
        for <linux-man@vger.kernel.org>; Thu, 29 Jul 2021 17:53:27 -0700 (PDT)
Received: by mail-pl1-x632.google.com with SMTP id e5so9018980pld.6
        for <linux-man@vger.kernel.org>; Thu, 29 Jul 2021 17:53:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=tYyQNKE/0qlIcpB4bnVlm0oJQoY15NQYYoWtnM7QMOU=;
        b=lVajvFZ2tyLCZ91ZBBwI3+DXVklbaqDavGVR9Xb/10kvVNev94NEAY0peW+cz2EI+J
         wNm7sOtZbMU73T3uksiYI0G1W8gHmtXIFWdSY+1QzUBe+0ADD062RsidrLiyRALjwwE8
         NqC7e+XE2u6Rq1cSg2ItZUCMiFBG2d741sdS0vHbL36qEXDL/vKT9XqDFuvDdIldEUBh
         QGfvM/oWqCjKs9CytyHsJLif2+LsLU7DUwm8deoK+F37ZNDz/mG0+7qVj6e8di0CieJM
         PYUXnR/gpS0K/SY35OXtMRJT4vLjEbdT2WRCpwwT+Dx6X0J65ql8GHr6R+OR9/H/Zkzb
         6zaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=tYyQNKE/0qlIcpB4bnVlm0oJQoY15NQYYoWtnM7QMOU=;
        b=U9CToFsmrgE53ayvvm/LdZhTZjKP+ghYg0pS1YYRgXswXsiXJV+FNHRXVe6KkgAVTr
         5MvLDPwhIib0pAeTpsIzJ8qz/4xfS5GCeCn3Mdmf8XEQdV0QVNQ/Ref36aTNAAQOgzv5
         slFpuGuwb9SOgcWQ15Mhi3plUDElZNdpzvj0T9iq1X/WxBOeC/Z8zeYaj2c3gtLu79Kz
         PeYbudOwZTKX23DVv57dltjomosRTZkqQzIklbKMBIMpG48rrHhX5JvSP/VhAt9Ks3A5
         LDVfObEhpeEv5tYpf9ANNbz6ov/bfjwr7ufQf9pq61mwkndaXWJ5gBu9ug2/ZmP8TZL1
         C1Bg==
X-Gm-Message-State: AOAM531MyZGiXN9rmkVrtX0/NnR2DaqMnh7ssxlMJC38EL24Vb1JnyJn
        ZB1KyswOxew3yI36qIH5qj4=
X-Google-Smtp-Source: ABdhPJwdAg3p/I93K5ZJNsR3XXTFzcgV52YmFiBJh8rZoMf/8IgHWTOPZTJiGOz+v1A1Aok/Kib6MQ==
X-Received: by 2002:a63:f342:: with SMTP id t2mr6241996pgj.45.1627606406848;
        Thu, 29 Jul 2021 17:53:26 -0700 (PDT)
Received: from localhost.localdomain ([1.145.37.91])
        by smtp.gmail.com with ESMTPSA id 26sm4541863pjj.27.2021.07.29.17.53.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jul 2021 17:53:26 -0700 (PDT)
Date:   Fri, 30 Jul 2021 10:53:22 +1000
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
Cc:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH] termios.3: Use bold style for Bnn and EXTn macro
 constants
Message-ID: <20210730005321.nyu4lbtzpoa3xw6g@localhost.localdomain>
References: <20210725225453.7341-1-pali@kernel.org>
 <430eaca8-3ea9-5df9-8db5-5d94bcb06815@gmail.com>
 <20210729172320.xhrbonoxisqioe3e@pali>
 <20210729230421.lm65cjomqx6rezzl@localhost.localdomain>
 <304b7610-a399-3275-755e-5648bfb941f2@gmail.com>
 <20210730002133.ix3rfgr7bpvtltag@pali>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="st2rbdov2zwt4xl4"
Content-Disposition: inline
In-Reply-To: <20210730002133.ix3rfgr7bpvtltag@pali>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--st2rbdov2zwt4xl4
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

At 2021-07-30T02:21:33+0200, Pali Roh=E1r wrote:
> > On 7/30/21 1:04 AM, G. Branden Robinson wrote:
> > > .BR B0 ,
> > > \&.\|.\|.\|,
> > > .B 9600
[..]
> Perfect! I will change it in this way.

Sadly I violated the Law of "B" Conservation in the above.

It should have been:

=2EBR B0 ,
\&.\|.\|.\|,
=2EB B9600

(I got hyper-focused on the ellipsis.)

Regards,
Branden

--st2rbdov2zwt4xl4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmEDTYEACgkQ0Z6cfXEm
bc46iw/9GhRCO2t6wDkcS0yYL185b4kd5itJqf4tJkbPMDlIXFr9q6+zDFDoJZQg
0ZJ66Hi5F9JW96ggcnZPaIHq7tTwQZUwV/YYvJIhnG4nZlHAJU7G6emevCVZoalP
NSZOt/KnSgSnpxKBLGnQvuFYoE4q8yRSN5IulRM02k80tc/wI1Ojpj0uMcKPmZJL
OLwIHiHXOEvp5erZIuStyvUfE2QTx57a9oNxhzWFWPebCoAPPGWXvaVRndAdAsO+
Gn32UvC//8zj24sjlherU3dGas+9R3dNMv+2pWfXDCjQcDv2Nv2ORR0vaeZzFG8g
zeSasMBJFuKjyV7vCVFH5zTR4zmWWCs2jJveqOw12NlDSzYd+1wFkoBVVJPxwuum
wp4g5wTasPSoSuNXsHLG/LgQhhcQ+m6wKAthB79Dw98M4mxVizrw2dcjEbxYlt7P
EsdKFx3LSJyV4JsjJ0ck5X3p6onSYQvmWJS2nChYBvyy26QwHhmZZkD5zhy1XXrp
fuUYYrJo/Krae4l0DqgHCrhQLVDuv+7fSHNF2aOXXW89SNHVvlZkeKCEKozuUDmA
fmt8E63PCkKrwM6wnYReDK7z4Sl8vRLbOxBsCi0SO0jw/Os01tF+A44F5qS1FnCp
zj7BmbOqYbX3gO+oVU7Ehsgw0MBmwe7r2w1TjnhBacu+7v1O7jE=
=65BG
-----END PGP SIGNATURE-----

--st2rbdov2zwt4xl4--
