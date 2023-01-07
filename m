Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0B4E9660FDC
	for <lists+linux-man@lfdr.de>; Sat,  7 Jan 2023 16:14:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230114AbjAGPOU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Jan 2023 10:14:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36616 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229640AbjAGPNu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Jan 2023 10:13:50 -0500
Received: from mail-oi1-x236.google.com (mail-oi1-x236.google.com [IPv6:2607:f8b0:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 578326C290
        for <linux-man@vger.kernel.org>; Sat,  7 Jan 2023 07:13:49 -0800 (PST)
Received: by mail-oi1-x236.google.com with SMTP id s66so2804048oib.7
        for <linux-man@vger.kernel.org>; Sat, 07 Jan 2023 07:13:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=sUyKCFwivsF19QUYZeuSyaPp2L8BC0NylyuqTi6k2ho=;
        b=mloLdcV2ln2chz5vHze44IzCjw8lK5I/qRDnDB7kec0x0sYW5L7niXn1JnR+4vZ6+C
         ZYNST2rdA/P17IcMwyxR/R6lyoK6BMopWA7gfFftm8Zi5RMFw9iEG2vZRQ7/qiz3ZpHV
         lpTDLr+4j6YurQE87QK7bB42uYo3N/m/bc1CnxpRyNM3F6KNcovQ90iv7rrbBONUH/bN
         q6+JyRiNn8Ut8K7lpNlTYfqEOZX/ahpyv51hqq2FAtR0yHkNKnoFmVwkqfV9mDU1sfi2
         Vh6duQ2RbiSEA+rkwHDaSLgIFdGFVLPELXqSObbroHZcThJhIkzgN5nBt/Ad+848iKPI
         opow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sUyKCFwivsF19QUYZeuSyaPp2L8BC0NylyuqTi6k2ho=;
        b=WH6syBI1Td4bkVL/HM40YO46hhaApLx23VyQwJr+L+9GRyY8kf0tyMyBi+/aPcL/6e
         U4KtPC/5+z4m4kNpTIfiUWtfBZxKcyaOG5gz198K+ak25bsLRk3YCZrlGN2B7a3H8QMd
         fovMhHnaGD11cnQ9y1Yp9psZfs8VBJna+hTG1GRJ3NYxyKdcK13xp9aMijBSN3PyEuh1
         0Ok+UGntvOpK+glvZFhCBGAIHkbuZ/IEsc3dXqdbh5GPCylutZQl68MTn4VNMeKwBIC/
         pL9PA7XS2YoPynjE6s19T9WbvsXJyAdKBuSrfyZPxNGO2NHLID5b2ij+UyoqFAN8XbBz
         o49A==
X-Gm-Message-State: AFqh2kpFsiIllcswCKXepXBIuoiahs5qMsvBogeY7iLpiPlsfZlbtoUt
        rMFbPqg2kbLpGq1Rdaw0x3zdmN8iess=
X-Google-Smtp-Source: AMrXdXtViAXIy3QjlWRPgxfzZEvuWCNp+ZrbWNzRQixKug6NLFwOM7dPkE81spxCIUF1Qssn3RiSFA==
X-Received: by 2002:a05:6808:297:b0:361:e72:db5e with SMTP id z23-20020a056808029700b003610e72db5emr26584244oic.29.1673104428626;
        Sat, 07 Jan 2023 07:13:48 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id 2-20020aca0502000000b0035ec1384c9esm1563472oif.23.2023.01.07.07.13.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Jan 2023 07:13:48 -0800 (PST)
Date:   Sat, 7 Jan 2023 09:13:46 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Dave Kemper <saint.snit@gmail.com>,
        help-texinfo@gnu.org
Subject: Re: [PATCH v4 04/10] libc.7: wfix
Message-ID: <20230107151346.gdbcp2zxcqzfwtxd@illithid>
References: <20230107095438.y4e3jh7nlrlrvagv@illithid>
 <988d2119-b1f4-4bb4-102f-4e68ba6cd039@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="e5dtajvc6w7wjrrl"
Content-Disposition: inline
In-Reply-To: <988d2119-b1f4-4bb4-102f-4e68ba6cd039@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--e5dtajvc6w7wjrrl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2023-01-07T13:12:34+0100, Alejandro Colomar wrote:
> > +glibc also offers a manual of its own in Texinfo format,
> > +browsable at the command line with
> > +.RI \(lq "info libc" \(rq.
>=20
> We might do a great favour to our readers if we suggest piping info(1)
> to less(1), as Dave suggests every now and then :)

I think that's a good idea for the info(1) man page.

Regards,
Branden

--e5dtajvc6w7wjrrl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmO5jCIACgkQ0Z6cfXEm
bc7JbRAAhSc6nqcRnHoiARkeecz1klvC7AJ7am9kOeO/vR4LW313ztYiJ5UuD/UE
LiAe2uqPGMg7s25AcQ3AzC36mR4D9OohF8ybILusCqQo58Y6x46QsHsgZUZxaEa2
W2k6p35JWN0mkva6Z76yhMNbqI32BhX6Nwa5ZG+ffzBPrqhGyLKelQabeoPo9LwD
HYKxph08K9YVoQBIXNmDaKKuYse/CoY1/iAb8F/T9lBuT6WGXVbwsol0zO55xZuT
Y/TQcdtTWjNj/2Q9cgHKXOgTHSPvgYfl/63YG5sw3QOdzXvu/5a9OMNw71JeXovr
ac+lGTtUCXO9BcQ+oDgttrYTpOjIxQwflCb7ePqHlRa+X/seX6uG7Mzsyq1MExnr
F5r1ZIWmbCze2hcmXJ16bIToMQf54M55PsJegq/h14qab3EchY5WjtF00zE/5De9
eAbhDgPxHOKanRyYR1Sm7V9KQzuEIW+lftHuYMTTHK/PCzqNZdmq9hkoUraJzRZA
sg4bXhYN3idayeC/Oa82K+tlwPivlkqz+c+U75T2NMyqExS7j3lg/qSqT+Zr9Gpk
V8kPjStUeIHCgXhO0p+MH7IXlH0x8Y7YUXscTVskc1zadna/y0vIj8w100TwZY0w
PEgH2QlNaCrYIDKzv5Ov/SYoez910vxIBJQCk585Q1OI5noALdk=
=nXWY
-----END PGP SIGNATURE-----

--e5dtajvc6w7wjrrl--
