Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 795EC54667E
	for <lists+linux-man@lfdr.de>; Fri, 10 Jun 2022 14:21:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234495AbiFJMVR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Jun 2022 08:21:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47892 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239840AbiFJMVP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 10 Jun 2022 08:21:15 -0400
Received: from mail-oi1-x231.google.com (mail-oi1-x231.google.com [IPv6:2607:f8b0:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A71402D250E
        for <linux-man@vger.kernel.org>; Fri, 10 Jun 2022 05:21:14 -0700 (PDT)
Received: by mail-oi1-x231.google.com with SMTP id k24so8650061oij.2
        for <linux-man@vger.kernel.org>; Fri, 10 Jun 2022 05:21:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=397KoOutwd9Wt2rcTZyg3Qhoatb2Jqn4MHQAkaNGuzk=;
        b=VDvoh/aaZR9NwkCmcwhruvwHLt32vk2o1hpo3kx+ZB6WdJ6KzQK0B8kwt25Go4R02M
         FrOBaBIcfngcycQDPfV64ACQuh/vOEUnC6+EVcKhuxNIzasDvFm8BKlabO4bvDOHagTn
         Xh43vc+UrQ9I4WQH3IEFd/+eSi6/k9RhtmIYzkR11/tYXhtgaCATJWyDEbt8uFhDJ8sJ
         b1VeMT8i+qtmefLDWC0J4MEBMsT27bSo6J+ILpKwM9CAozwA00HiiFFr3QK0kch3dmbV
         dejemj2tpH8HEdwOEsB4nxy0rZF2Kf4I3ezrOwIRbOHpjeNv2Jzoivj0Z/dFnZ2FBoe0
         iCrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=397KoOutwd9Wt2rcTZyg3Qhoatb2Jqn4MHQAkaNGuzk=;
        b=RA2BXHXwxVElCttxE3iPoEqgBLrHHdzFVzuASI8ni6t/Tjv2flA4vmoQWR1zp22cz4
         PNeGOMOWGPmZDetxLPtJpfHV0OYcO7/METmu9exLaYLqDj26qu9kL5YlrTXuZzX0MHJ2
         4R/mhnC5JhYV/1pVZJXVUdgqbzreXweT8V6brjVbB8CSVnrjhgooMqYn5fvOSrKI1ufA
         Ft4awZBDXcX/ZpseIQ3AoaVOBG89CvubZrsGmAhojmSqivjV4isQ4qXdFdW5reic2k75
         zY3rH62glU7Bmt39PmWUtmr/P7GlxuSwLDfOujRacHiarJGGUngYJJdTfz6SSOabxbqh
         +hEQ==
X-Gm-Message-State: AOAM532vcsfJ9OgwyWcLWDiDUhXEfmqgOGy461Qo74RM6nrvXDVsCinb
        dK6cqQaYulw/+JT9vRUvYoZGaGQRyWo=
X-Google-Smtp-Source: ABdhPJxwt0sB5ImkXdFgUAiG+A1tcePbzpwT/qSqw+vCV9CH8+vFe3dSmkJ3YMSDAmlsS9LVQjKyNA==
X-Received: by 2002:a05:6808:191e:b0:32e:7fb9:5db7 with SMTP id bf30-20020a056808191e00b0032e7fb95db7mr4368027oib.0.1654863674022;
        Fri, 10 Jun 2022 05:21:14 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id i2-20020a4addc2000000b0041bc35464e0sm1713690oov.0.2022.06.10.05.21.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jun 2022 05:21:13 -0700 (PDT)
Date:   Fri, 10 Jun 2022 07:21:11 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Peter Xu <peterx@redhat.com>
Subject: Re: [PATCH] man-pages.7: STYLE GUIDE: Mention UNIX for Beginners
Message-ID: <20220610122111.2k5jkzgo2k5odpbf@illithid>
References: <20220610105141.16649-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="prtiqbmxsn4c5xm2"
Content-Disposition: inline
In-Reply-To: <20220610105141.16649-1-alx.manpages@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--prtiqbmxsn4c5xm2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

At 2022-06-10T12:51:41+0200, Alejandro Colomar wrote:
> +also contains an interesting section on "Hints for Preparing Documents".

I would use real (typographer's) quotation marks to cite the section
title, and since you are doing so, that's what the section _is_ even
more than what it's _on_.

Thus,

also contains an interesting section,
\[lq]Hints for Preparing Documents\[rq].

I would also find a more specific adjective than
"interesting"--"helpful", "noteworthy", "exemplary" are all
possibilities.

Regards,
Branden

--prtiqbmxsn4c5xm2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmKjNzcACgkQ0Z6cfXEm
bc5Fqg//U1L8euPOlg89s777WBllSiQvaKzAyFTi6XLvWk6mo17993jnMBre1ANe
OYAchShEkLSGK3+/IorW4s7TmwQA612PrqONrgg9Be2zkKz3VdSGgniKhFIBO66V
XBCaMZ0LOxunwIVzp2ZPhWbiootseaJZAorp1GTJDnTvrViWEDnNTnM4i3+i99xS
LLpx+nmBC6jTaM2j5Hp/VDfqcKlfwLVF4md3LCQW+Nhgiw1zxAjE78GPaFjqHW3b
cxqrYIG0PlcX/2ZFgc85y7idI0ugijput7yoP8WeMIxZSHonGcnr6X2xTVedRftp
lqj+cPs/2Tca38tx/YLCgcK4vZCwr4/c/H5jxJYx0JQpgBbKnxrv4Cxzem2HZYWM
YNUpu17oVOCB1OIgzjq2pASoqRybSI9gTP2Epv2ErDEkGFUBaS5n3dDW8fHjTqvv
F0sIM/B/EN81LlerK/th60rHQUcTzdvcT/mgf/B9zcAhbbs010yOmvuZ9WkB8DbI
QXlMjSA1CUJyAkQUM2+BJkmI7Om4M+A644Z2A3x0bwDBeKvhWs6wa7Xofz9OAfF6
10X0FN9OdXkI78CrYAUFyKl2O47lp4LKk54M/omt++QuU5N89lYK2NrNThH6qOpw
8lbdyPsYIaKhKM6qnC1DgIJUuUutgByyVOOyt1U3SwfF9crThgI=
=mbym
-----END PGP SIGNATURE-----

--prtiqbmxsn4c5xm2--
