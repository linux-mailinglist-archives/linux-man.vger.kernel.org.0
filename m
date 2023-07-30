Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5570176874B
	for <lists+linux-man@lfdr.de>; Sun, 30 Jul 2023 21:08:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229554AbjG3TIc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 30 Jul 2023 15:08:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39118 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229449AbjG3TIb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 30 Jul 2023 15:08:31 -0400
Received: from mail-oa1-x33.google.com (mail-oa1-x33.google.com [IPv6:2001:4860:4864:20::33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9210510F2
        for <linux-man@vger.kernel.org>; Sun, 30 Jul 2023 12:08:30 -0700 (PDT)
Received: by mail-oa1-x33.google.com with SMTP id 586e51a60fabf-1be267b1c88so673385fac.1
        for <linux-man@vger.kernel.org>; Sun, 30 Jul 2023 12:08:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690744110; x=1691348910;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=R4ge6j+y43UeMbEJZTj7wGJ/fqBe7HThRFDDDmlIrds=;
        b=Oa2VSLKgp6WOOtzElptOUMMg4P0XFjuEyuzfMAKNdzaq9IVM+YUS933ut2v7N8DLwu
         nZSRMXJqnW39XHudqfJL3gsEaboWpEYM0wQE6Geiqin3AZQzUvvXQKig04UiOl6BNegF
         WobMBHsRCyDJ8owPWCpB8u43CE2wP8034WdqKvB8rhIrfXieeYCzKYRngBZLsiKrqwdw
         6htFnHE4TzByC+eEes2Ko/nRpcUSrzw4tZXeyLnxQtuwF/keH4Km86hPErMt4KotPpEL
         2qZcuF68ukamGYpyka6VgB2HxedFEtYhBVyzXaHY7pxJ1d6bDLwsf5LIlB3NX+OppCpp
         J7kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690744110; x=1691348910;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R4ge6j+y43UeMbEJZTj7wGJ/fqBe7HThRFDDDmlIrds=;
        b=lbjq5NAPXEhj8+BHey/BVewsJ27Ml8DVXvoFZ+zk4T8p9OIXTBPysFj0bR5z8rtRYN
         QpIZJBcJqHmPKAQy+8c6OwylER9ppL7VSQ+qTDhyCdWOKjmE7P3xTBK0tpFOSzco7QKM
         ilWbUAVPX8fEv9srAFevFKo8Wlrs0DPFmtRIrsFcbtzJzDSnwIyAd6RwtGXn3syRA+EN
         1j5ZwVO5uwrvfk036L1G2KXwHAxQmz5F0780ME2Zu5KnhhVXuYqZf3F/x8lMsWMlWGAN
         ErtzYtj9yNKx1gfiuIsIcEKN9aoXlgtQeZ2yLWPog0Uy5rSz15CQY/vlVx0a+iGy/5AT
         0cjg==
X-Gm-Message-State: ABy/qLYCuAcAuPW6DexAmXPx+YNdcc67ItseBzH53QBw7Ms4KADg5WFQ
        8nTd19jJijufAvgcz3Fs9zTVCE0SF40=
X-Google-Smtp-Source: APBJJlEVaHoAPiQEOMuKG7A1ULVxQ6J+5k7iQOWRcZux+5H6qss6QfpFIgD/76gkOSb3iwLNaxgeyw==
X-Received: by 2002:a05:6870:c102:b0:1bb:b392:3b97 with SMTP id f2-20020a056870c10200b001bbb3923b97mr6935936oad.6.1690744109804;
        Sun, 30 Jul 2023 12:08:29 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id gq11-20020a056870d90b00b001babd036460sm3757811oab.19.2023.07.30.12.08.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Jul 2023 12:08:29 -0700 (PDT)
Date:   Sun, 30 Jul 2023 14:08:28 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH] man*/: srcfix
Message-ID: <20230730190828.5bs5a3e42vwgzauz@illithid>
References: <20230730175256.63fzulvoqvzay3ff@illithid>
 <780b9abd-7422-2d3c-27b2-beb13191bb32@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="wtclyslgg5rb425t"
Content-Disposition: inline
In-Reply-To: <780b9abd-7422-2d3c-27b2-beb13191bb32@kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--wtclyslgg5rb425t
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

At 2023-07-30T21:00:23+0200, Alejandro Colomar wrote:
> On 2023-07-30 19:52, G. Branden Robinson wrote:
> > --- a/man7/credentials.7
> > +++ b/man7/credentials.7
> > @@ -267,21 +267,26 @@ .SS Modifying process user and group IDs
> >  Subject to rules described in the relevant manual pages,
> >  a process can use the following APIs to modify its user and group IDs:
> >  .TP
> > -.BR setuid "(2) (" setgid (2))
> > +.BR setuid (2) \~(\c
>=20
> The opening parenthesis is incorrectly boldfaced.

Whoops!  Good catch.  The fix is to add a space before it.  Will submit
a v2.

Thanks!

Regards,
Branden

--wtclyslgg5rb425t
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmTGtSMACgkQ0Z6cfXEm
bc52mhAAifAKjrsvvqwURgrwWkbPECItWU29hyEwz9Qzzfrl0R+JkJqivEp7//Fb
G87VLnJiEtPIFTEOnIbU9kWtAFym349jytR4E6yDVBoX1hnN922mJL9LOK67LqBk
eqp827R6Yqh5zmN1Df38bgZHNasBemYzKQoatydJ3HcaIogHg7GdeNj7FWgTsnII
eTroboakp3yzRGOp3ccQi+zbuesvKhh86YRYv1m1X+89fwILIfqTLQ+HHqAsxZxL
pmmnClZghNuiyDjFYpmEvOOOZucXSk2O6AJT5EVaH/2XLRMsUTN6eFizXCR6Jfn1
CdG5mYVCY6Y6EfP2dQdL+pU793ax0dGeeZx8+hz+xw5XNht8PP42cROAPeDgodXw
pII23kCymVXo573o306CKmbdb5iOZrLVZs/lFdZjbpq9Ouf8TdrKvQ1Q5RSel9jB
2RNQsZglBa5oDOQQM5bzEw11ulHqADzGUC+IjQyxUqsPXEACzC/oe/VwXcPMwCQ8
IbFxVI/y4CislqEq+LqW6cBgLQHk0t9Xzwy/M8J0Ui65Dpro7uMc86QakrfJM0YC
ggRCiOEd5wo3+Dw8Y9U4srkWJBt/sCX+9qjQ6pZElmoyhevz1HDoMHT4zQtiFFL0
AH/V9CqptnbzhOti756bAitt3ZsHNLhNepWoOIuo2T8lbr1Bnas=
=2u96
-----END PGP SIGNATURE-----

--wtclyslgg5rb425t--
