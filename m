Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2EF5C57F5DF
	for <lists+linux-man@lfdr.de>; Sun, 24 Jul 2022 17:44:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230469AbiGXPox (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 24 Jul 2022 11:44:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46566 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229818AbiGXPox (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 24 Jul 2022 11:44:53 -0400
Received: from mail-oa1-x2e.google.com (mail-oa1-x2e.google.com [IPv6:2001:4860:4864:20::2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 038D4647B
        for <linux-man@vger.kernel.org>; Sun, 24 Jul 2022 08:44:52 -0700 (PDT)
Received: by mail-oa1-x2e.google.com with SMTP id 586e51a60fabf-10cf9f5b500so11952903fac.2
        for <linux-man@vger.kernel.org>; Sun, 24 Jul 2022 08:44:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=N0B126Y1AxRoNWX+/0LoYL2Xa4geSF+YQuSzOEBzl6U=;
        b=XKs7kGk0ekHm9DxZ5LN8NBfxvO8YRPaGUNmwo2YBfS7iG+enyJ0hgRpgeQA05yF4V1
         Wtr1CME4s33wBsnI4Cl40pDsNujDdR3zZGK8RVx/M+lDw2ykPNvuWTafoVT0Pz08snFF
         4lV0aE2gxHjsv5WDJL6bkC/y6xwAgqKpyM3KhatD8sO+i4i9H1qjCVZPMotITWZJ12KE
         IAwfKubxRynyiLPTrEwUaX/ry2lLBSn62VhPgkEftOFZltBTNu/v7NX8CluqpOtbwrgi
         QkZeqj8meJb9Fx/7p4l8kdNmadcxOFxknqiw0jaCjIO7y0rLPTvDqdLTIDtZqzYfK4zS
         FNSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=N0B126Y1AxRoNWX+/0LoYL2Xa4geSF+YQuSzOEBzl6U=;
        b=l8luVz1oq1vXIXhooGtW2OFt77WwfNvwce2WLKJHYEsf9+FGLEB8dN3OXsTrHtBkQG
         0S08ZsYQkTNVsHzAOkBBuhXJTPHG6w0d/xwXIQC7IEpmqJzXjARH1z4bVYF5+wu7l9St
         Xzw1j7Z2NqkoFQUPTJQW9OHS9sgajSIn6AbgofFNKv2s+LCBThRijTo3ypbRWj+2JW+7
         HSKuwdW9r/3mARTzciMPYHs9cKiQRViFp0YXOr6SYGu+ZMISWMfwJbI0RY/pOLAgQT+L
         Ac4MC229KhpRxpknERpNifl44jrRaToBqpLU0l6t09pRcleW14dErJT14XVyvHlQLwF4
         LUWQ==
X-Gm-Message-State: AJIora8gtoDPAhqhBfbxvoIQHFtcQHb/TLIItgkSRziSDAlbADUC8n5c
        dj8LsmDq/8AUSLLUjlG7brCNhMPghuU=
X-Google-Smtp-Source: AGRyM1sn0iV4Gtl2XBuQ9Dxm9vsBao0HFmAdruNeLJGDlD9+jS1tr5td1zRpmgQ8DlogdIdiMu5gEA==
X-Received: by 2002:a05:6870:f287:b0:109:d5fb:15be with SMTP id u7-20020a056870f28700b00109d5fb15bemr4348365oap.12.1658677490932;
        Sun, 24 Jul 2022 08:44:50 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id r38-20020a056870582600b0010e00041996sm1213357oap.14.2022.07.24.08.44.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Jul 2022 08:44:49 -0700 (PDT)
Date:   Sun, 24 Jul 2022 10:44:47 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Ingo Schwarze <schwarze@usta.de>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: All caps .TH page title
Message-ID: <20220724154447.us3vsmicaw52v4j6@illithid>
References: <66c19a09-ef0f-0d85-0380-37a67ac483dd@gmail.com>
 <20220721183620.hdvgwwef66hmrgln@illithid>
 <1e1f9197-a013-0d6b-6bfa-853fe28102cf@gmail.com>
 <20220722021452.5k43or5uwj2eiouh@illithid>
 <7a94b352-9ae5-a823-72c4-c526a0cc0e66@gmail.com>
 <e4603be0-47f4-bc2b-b31e-52039ca63721@gmail.com>
 <YtxMD7ovz1Xy/cfq@asta-kit.de>
 <62937033-a3a7-05d0-fc68-a227e2b67bde@gmail.com>
 <Yt1dz0+xfRuyCcXo@asta-kit.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="v3bso5vrhxq4rkem"
Content-Disposition: inline
In-Reply-To: <Yt1dz0+xfRuyCcXo@asta-kit.de>
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_40,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--v3bso5vrhxq4rkem
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

At 2022-07-24T16:57:19+0200, Ingo Schwarze wrote:
> But dismissing decade-old *BSD standards like the use of /usr/ for the
> base system and /usr/local/ for packages as a standard violation, and
> promoting /opt/ which is firmly a Linux-only invention,

Oh, no it's not.  I remember that thing from Solaris 2.3 or 2.4.  Here's
a slightly later source.

https://docs.oracle.com/cd/E19455-01/805-6331/fsadm-17/index.html

Your complaints about the Linux-centricity of the FHS can be explained
largely by QuaNGO corporate politics.[1]  The first Linux file system
organization standard was called FSSTND and dates back to about 1994.
But it had little or no organizational support or funding behind it.
(It is hard to overstate how much Linux seemed like an underdog in those
days.)

You can read some further history at the usual reliable(?) source.

https://en.wikipedia.org/wiki/Free_Standards_Group

Since the FHS is fully under the purview of the Linux Foundation (LF), I
don't think it's reasonable to expect any responses much different than
what you describe.  The LF exists to "promote Linux", which, as with any
NGO with an open-ended mission, in practice means to sustain itself
indefinitely via membership fees.  (In the parlance of journalism, one
can reliably correlate the "seriousness" of any NGO with the level of
compensation enjoyed by its officers.)  The benefits of membership are
significant; you can utterly disregard the terms of the GNU GPL.  If you
are not a member and have transgressed, the Foundation will happily sell
you an indulgence in the form of membership.

Under this umbrella, the Linux kernel is effectively under the BSD
license.  Don't be shocked if even the disclosure of relevant copyright
and license notices is a negotiable point.  This is business.  Under
litigation you'd end up in much the same place, potentially with much
more bad press.  Monetary damages are the fuel that sustains the engine
of civil procedure.  Compliance and specific performance are distant
concerns.

Litigation to enforce the terms of the GPL is stridently characterized
as discouraging and unproductive--we never ask "to whom?" or "of
what?"--except insofar as it drives firms to the reassuring shelter of
Foundation membership.  You can see how it is helpful to characterize
independent GPL plaintiffs as cranks and lunatics--moreover, you do LF a
huge favor if, as such a plaintiff, you actually are a lunatic.

This model is widely regarded as successful; indeed, when limiting your
interviews to members of a cartel, reported levels of satisfaction with
the organization are characteristically high.  It dissolves otherwise.

So guess what?  The BSD camp did ultimately win the copyleft argument
after all.

Regards,
Branden

[1] Some would doubtless argue with the "qua" here.  I remind the reader
    that copyrights are legal monopolies dispensed by the state.
    Copyright enforcement in the United States, for instance, was a
    _wholly_ civil matter until 1897, having spent over a century as a
    government-created tort.

--v3bso5vrhxq4rkem
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmLdaOgACgkQ0Z6cfXEm
bc5CCRAArBXGoznFaSWUeGpH5/Naw2GAaz5wgRRdfFE3FqQSvF7iwqqrFhY66p+Z
Q8KkgV+DWm+3/zTFoUR4DH3yAD9M//y7Ph9pOy+O6tt7n1Q+fT9LDyBSRLzraQ3a
a/2ANFzZd73J04slqlEur03fxDTcjGek0IWKrd5DGJPkFANU+ubItXnvOguxrLXb
HIY0Cb9tCxbW/R9m24kByWGWTxj0uZ/C1eNlUurQFM/iCSwu7Q5MueO8gGpKuhi7
q1sLjE+P46c6IZkZaNDU8LixDoS6sWxRzcGq7AiUVbPcOye8sQWqvTBQnCnaXU0T
ZSG1pYXTxQGj/RB4fe/AhodTjcXYTM+eYAqfErHmR3JcPcD3Yw2gh3qseVWSBKgM
H9X/9Xve2aHllo0L/P7qdC7qMbOkWsUb+yZ6EXl2PJLTjOByrKjoMzGdOmRS/ZXT
atBQIApQSjWeoAr/zThnzjq51V+0EGkis1bjXURXpej91azmcn2Bisb0YmvXMnDM
4DTqtbfHUvf1suAy6IbwbP1ZBUXK4qmDg7l7B+uD9GGwgOhseiCm7Hm4o0UNM9C8
3fH5bJaSMHjJ1c6j9fop0RQOKgVcTIL/gH5xebuhC6HEtRjnbVlXrSAKx9t3nr+z
6cXCFOYPVxZ83HRSQjXcgS9Tgj8h8/DN+WBAQfU427aIkumv8pw=
=mF5l
-----END PGP SIGNATURE-----

--v3bso5vrhxq4rkem--
