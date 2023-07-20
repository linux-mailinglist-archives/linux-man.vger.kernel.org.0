Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C85C475A447
	for <lists+linux-man@lfdr.de>; Thu, 20 Jul 2023 04:13:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229540AbjGTCNP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 19 Jul 2023 22:13:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56420 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229452AbjGTCNO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 19 Jul 2023 22:13:14 -0400
Received: from mail-ot1-x32a.google.com (mail-ot1-x32a.google.com [IPv6:2607:f8b0:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09C611FFE
        for <linux-man@vger.kernel.org>; Wed, 19 Jul 2023 19:13:14 -0700 (PDT)
Received: by mail-ot1-x32a.google.com with SMTP id 46e09a7af769-6b9cf4739d9so241350a34.0
        for <linux-man@vger.kernel.org>; Wed, 19 Jul 2023 19:13:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689819193; x=1690423993;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=LOmsj6idKFOeg4MpoWsmpNaFeQE9KGzH0jvR4ber2i8=;
        b=kYpxkCuNjj0dUak+a+6iTbPWAXujYoUrtl2uPTbBz+PzeVPPuRojjO3XIgIqW7v4dD
         2vFZqMnkmwt7tmAEpHe9eXMqXVKm1pNFZkuon72arM3lpnZ1zxcWxQJT1e/mH/4WpSfl
         fjP0rLOskbG2w6cB4IUSMJKV8hoxGAki7ZUKLUbzdMVuvMzOboqAx5VxHno1Jn0G8ijh
         sshsD/1IXQJjTJUTFLvQlW8kpVxnugTZGiZMMO5SIH76hayWCJupN37YGsIJ7edauFCQ
         dgodMP/170Q+4nJVG6wL0lUZNxvynYX+vjVVABB9yEhRAh4H/55owSRVGa2eRi4jsXSX
         c5mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689819193; x=1690423993;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LOmsj6idKFOeg4MpoWsmpNaFeQE9KGzH0jvR4ber2i8=;
        b=Z9LFvI5uKG4KRHOiJGMyZM59IWaYl6nODZSVAvLzhz3m/zXQQCif6xn7uyg5Cn1SF6
         KrtmNhyoKFRCz8Y2TR2uGx9Xv0IUozzTfZfGRr3rnEfPz8HQ/t/wy/Bs+JdZ/BHkL/sB
         cMtl8jgrgF1Zx/GmorOQ8SP/y3IXEetbwmzbM9pOVpbr94NNquZ4M7NZHayfGDoZ9hXw
         DhHf8tAtbzLuq5WFmpVdqoTG9IV9C7e0rDztubLKZWvyRSB4BDkE5YGOx3UcqEuqJRXl
         OY6wgSg8KEr7K/CUHjBD1CB5zQU9XczqwUDN4umdVFt6htKgMirm6UV8J8Uw/74B4M0z
         q+iQ==
X-Gm-Message-State: ABy/qLaC1P3aP3r73bM33ZqvnxiLlyC/ohaYp33ND4q+fnpDp4NiluZf
        uxDTzbE5bYdc933rHnQZiW+6Xaxo6yU=
X-Google-Smtp-Source: APBJJlHfOr2dg9r+7gsCMu7R4D3Szi0kt+WDYMtu4mIMHnixoBJ+a2dA8o2S+Ihgoa4gvTNlPz7dsA==
X-Received: by 2002:a9d:6753:0:b0:6b9:1af7:48c5 with SMTP id w19-20020a9d6753000000b006b91af748c5mr1626658otm.9.1689819193262;
        Wed, 19 Jul 2023 19:13:13 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id s18-20020a9d7592000000b006b99f66444bsm24495otk.71.2023.07.19.19.13.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Jul 2023 19:13:12 -0700 (PDT)
Date:   Wed, 19 Jul 2023 21:13:11 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH] man-pages(7): Add attributive annotation advice
Message-ID: <20230720021311.2wyrt5tlglsxcl3a@illithid>
References: <20230719041832.ulsigsjae42rqh3g@illithid>
 <27b46089-2f83-5025-2f3d-50433b76e36b@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="d7axpfcryvoslsun"
Content-Disposition: inline
In-Reply-To: <27b46089-2f83-5025-2f3d-50433b76e36b@kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--d7axpfcryvoslsun
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

At 2023-07-19T22:01:35+0200, Alejandro Colomar wrote:
> I'm now doubting the necessity of this patch.  It's like very
> obvious content when you already know what it talks about, and
> not very clear until you know what it's talking about.  Maybe
> following existing practice is just simpler.

Okay.  I withdraw it.

(Also, waiting to see if my 275 KiB inline patch to "unbracket tables"
comes through.  How should I get it to this list if it doesn't?)

Regards,
Branden

--d7axpfcryvoslsun
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmS4mDcACgkQ0Z6cfXEm
bc4i6Q/8D330AGLYTC7HbEghtd2DY9S5Vtf5n7Hc6BDTM8fjmsjBslSRYR9ugXEL
BZ3PxVTnD/NJDizoZa2DzKhFH5eC8xbA3OBjYEMQepnzu5op/XSnAeSCT91MIL4x
MsfzeQdn8PymzGx29YRoXPsnusPPqr+oPal/xpipT4vx+T0wGRMdj2YtS6hkRQL0
MQl/sfJvytiMdXK2u2U8PWGY7TngWGTOtAtjdb9ZpMtOvWdP1TFQlFt1g+oO9QJS
UcQg0BvrD9Q+kJpkuJSE7jNxsVv0P0+yoaf4kpHd+uB833iSkOBJn5fuZH6k1qlm
hjRDsMyE5JCHPzmhOVvwLIOlAntlNsjLaW/27RNPvuBvw23XVPoHCmbbtlSs9c+o
253K+wMUB92yGk6RnPfP0+OofTtJQg7XccsAo7+3HkL0bK1gyHLVSr3HIeFyxbgl
L4PHG90Cog/+xUmbguEROv3lDkoZLV5yn0DQzuTD5oTT5c6lZ1VYUJmKiCZos7F/
xZKA7zC3eVIIQpldDUEgJZiu+1hhKkoAF20cPGgB2gcQVn0gMQfjpTr+2NQSvYjB
2vscg8AKGGO0C4Hd29vDBvvyapi9f0RO4v69Yf26/+bGYm2c/edMriV9kMTwXCiS
R+PIxlgUWDBx2VwpwgZPrRsdMU9NCiL5Y9qCYs69LVmxGCWXeDE=
=eI12
-----END PGP SIGNATURE-----

--d7axpfcryvoslsun--
