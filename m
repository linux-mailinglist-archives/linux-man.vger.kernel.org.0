Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 550936DC11B
	for <lists+linux-man@lfdr.de>; Sun,  9 Apr 2023 20:55:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229585AbjDISz2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 Apr 2023 14:55:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36872 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229505AbjDISz1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 Apr 2023 14:55:27 -0400
Received: from mail-oa1-x29.google.com (mail-oa1-x29.google.com [IPv6:2001:4860:4864:20::29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B70642D49
        for <linux-man@vger.kernel.org>; Sun,  9 Apr 2023 11:55:22 -0700 (PDT)
Received: by mail-oa1-x29.google.com with SMTP id 586e51a60fabf-1842e278605so3935807fac.6
        for <linux-man@vger.kernel.org>; Sun, 09 Apr 2023 11:55:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1681066522; x=1683658522;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=uUwu+DVu8sRkPbstatwsgZ+LH6erHgCuC9ONamIK5NA=;
        b=IZyISHIzuFDaPSBLgBagQgWVNGvaie09Q5jURvwtHPvPZi/DFgV0+wi6rI7DpoGHV7
         SuBW+A/1LDIvnoOfAL8QOEDdga29W9B+Ejxv7Jue8wTZ8kkEND+bm4+n5DV3fk5HAGtQ
         YiiiiWjVwRy6p1zqqQx6yOqgZasAvnzdspKW/XUr+QcuxMJg/vT/QbsIae9vORe43BuA
         viLI4cumSxlZ2ei2E7AEi1Qa573ZvQm0iWVeUAs4NSE3ODSWYlyYLtWbc/QqgV296l2n
         a+6Jn8KXfRW7eb4Rg3b0rnoRhLpjzqX1bCyr/Chdes7r1UJdF0/II6Vjed41OylIKim6
         c98A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681066522; x=1683658522;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uUwu+DVu8sRkPbstatwsgZ+LH6erHgCuC9ONamIK5NA=;
        b=V3Fxo0GEKogh2TNfIlx7vyFvScs8MN8J3BcY5tppr4jsIfnPfYXd9S8bi0C7mnbaYt
         pMD1YGmnz/EtUzsX6z1z60XFiOfkk2+Bua8P5bo/p9N8w0e7i76R7m0wULCB4kMwLlsO
         4RJMtPa9/Es8qMC11jOlri96M7hMrvrVb5UB6h+s4D3VZ6ENKI3HKuWV6ClnOzsaPGcO
         jQvCEESRO4L8+eBoRz0IgpS25k0KpOZY9llZ0bt29hAEftk3xZtHYbxrlVrB8vN5XU9s
         aZ0DkUxulbhcMpxKdm2oUrUMYa+MmvEettwXZKBQoIyk7eolQDULh5L62/hWXEYHRySQ
         Gwew==
X-Gm-Message-State: AAQBX9f1oqQqDu+HhLdq3StMBSGj2o03HsRePfIVb9TKZwwC9T7fS3fc
        NihAXouhlsEfWJWvEfSt2/ztpeQz6So=
X-Google-Smtp-Source: AKy350bHsRDmzDTCT9SaIrVmfVSNl2rmpxUnYFN03Lz8igjV3N+Tw3Gk5UAWyV7Y50k0fidkWavS7A==
X-Received: by 2002:a05:6870:b148:b0:17a:cc85:5b1e with SMTP id a8-20020a056870b14800b0017acc855b1emr4877621oal.3.1681066521954;
        Sun, 09 Apr 2023 11:55:21 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id yx21-20020a056871251500b001842bb0a01csm1465832oab.27.2023.04.09.11.55.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 Apr 2023 11:55:21 -0700 (PDT)
Date:   Sun, 9 Apr 2023 13:55:19 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     groff@gnu.org, linux-man <linux-man@vger.kernel.org>,
        Dirk Gouders <dirk@gouders.net>, Sam James <sam@gentoo.org>,
        Alexis <flexibeast@gmail.com>
Subject: Re: Compressed man pages (was: Accessibility of man pages (was:
 Playground pager lsp(1)))
Message-ID: <20230409185519.q4fv2aajwudgpnjh@illithid>
References: <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com>
 <834jpuuc1a.fsf@gnu.org>
 <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com>
 <83sfddqvk3.fsf@gnu.org>
 <390c8bba-6089-b006-eaf1-9fcfda2c6c4b@gmail.com>
 <837cumonv9.fsf@gnu.org>
 <78ca213f-8723-dccb-e131-081400c28e5d@gmail.com>
 <87a5zhwntt.fsf@ada>
 <c6e9eb6a-a2ba-1de1-211f-bc6ccc3f7a9a@gmail.com>
 <53b0f991-7187-07ed-b2f8-4b6d8d7ffc3a@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="nh7czoi4i6pgrlgm"
Content-Disposition: inline
In-Reply-To: <53b0f991-7187-07ed-b2f8-4b6d8d7ffc3a@gmail.com>
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--nh7czoi4i6pgrlgm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[dropping some people I recognize from the groff list from CC]

At 2023-04-09T14:17:57+0200, Alejandro Colomar wrote:
> -  Using plain man(7) source is blazingly fast.  So much that I
>    don't miss mdoc(7)'s indexability so much.
>=20
> However, I must admit that I do miss mdoc(7)'s power sometimes.
> The man_lsfunc() and man_lsvar() functions for finding function
> prototypes and variable declarations in man(7) source would be
> much simpler using mdoc(1), and I could even use mandoc(1) to
> find such things.

I must point out that I have sketched a solution for solving the problem
of semantic tagging in man(7).

https://lists.gnu.org/archive/html/groff/2022-12/msg00075.html

=2E..though perhaps I should add some detail to that sketch.  My ideas are
firming up, so I may mail a proposal to groff@ and linux-man@ in the
near future.

I'm happy to report that all the man(7) extension macros I have in mind,
except for `Q` for quotation[1], will be trivially ignorable; i.e., an
implementation (like mandoc(1)) that doesn't recognize them can ignore
them (treating them as comment lines) without doing damage to the
rendered text of a page.

Regards,
Branden

[1] https://lists.gnu.org/archive/html/groff/2022-12/msg00078.html

    ...and even that admits a one-line fallback definition.  I suspect
    you could even get away with defining it as a string.

--nh7czoi4i6pgrlgm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmQzCg4ACgkQ0Z6cfXEm
bc7b0w/+OEFwd3q4aS9i21Tug4XctsYVGbnFj9IfjTSbZQ09U94D9xwI1QJ9fY9V
8CQK6Cxs3TOi2M628Xk5iZrxB2WX9eyIfOL0XccbSqX9qnLw/oyqfoI/HiFL+Tty
nahgYuSrrcZDbhHAkhdZZLsBJ2Tw3zPvM2oHLzaQeYm6b7KXuw5HfBsYM3Xs347a
msZY/B49TRLyFLHh7PbbngXip3wGTjcvdWXBR2ek/1s4pcn6ePtrzMOKmVSMjlWU
uydJ8IFfKd3+CbkGTmPODBWpYc7PT+FH+q14Vv38qGBxpQ58G5vN9f4nxFHL7k1g
01bzeBqgxjHU6L4VRyMXBorTLI/q5bVN2wWUM1GhC/7RDLe9otk/aUY95nvGka4G
318xIS7LzMy+HyXpgsY7rnziG+Uojay82Sr8WYPuRIW5bXNnsLprmssn/FwUsGmH
tYNSl4O2psYbS3+yYkVg9io1UiU8Pdz/le0G/fBEV7ifw5PDMIRT95NQnVQwn7Tq
obAAIANun2Huy7XVd1bFV5aN0Fbk2HHw3QQg0WRrQ4cslHvQPo9+VNnNbTRbLzD4
ffhnmmWa7GqfyXEaXrEbc6kzchy79FAaagVkmF+EEHwV0sdxD1MsLdzVLW8wZvXT
vdNrMTKcbErXbeyO8JrRl2F7M4iwArBzn0/wOq/f0ywjWv/ynvA=
=CKIw
-----END PGP SIGNATURE-----

--nh7czoi4i6pgrlgm--
