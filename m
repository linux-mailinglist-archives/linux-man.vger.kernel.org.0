Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 517B265F7FF
	for <lists+linux-man@lfdr.de>; Fri,  6 Jan 2023 01:07:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234755AbjAFAH4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Jan 2023 19:07:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40716 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232288AbjAFAHz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 5 Jan 2023 19:07:55 -0500
Received: from mail-ot1-x329.google.com (mail-ot1-x329.google.com [IPv6:2607:f8b0:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 777363C0ED
        for <linux-man@vger.kernel.org>; Thu,  5 Jan 2023 16:07:54 -0800 (PST)
Received: by mail-ot1-x329.google.com with SMTP id e17-20020a9d7311000000b00678202573f1so126093otk.8
        for <linux-man@vger.kernel.org>; Thu, 05 Jan 2023 16:07:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=MmW6/jKhQE5QxfBECacWPIgDOYXh0B2fGS2HZEsQx1w=;
        b=KyXyAq41Qw4/znUrfLY4j8/K94HX9s9wiv2F2bhfpQA4HoKYpBTvk/79ABLgrUHOvs
         XbLXTWOc580bS8NBUaksG9RoK+Tmv6c2Rs64ztbg8SxtGFZDDc66XXJ8Q00SIdkEGB10
         boLTRLl4dUzv6zlQq9ve1HLeEa2MUub1jWtNYttFp/daAIvGmGAnkeFA1ddXti+Sf9D9
         xaeNfoy9WbVbEgpofEgkiVjqa3OMuJa+PlmvYvj0FLMz0Ox2TVztMEflsueTNGYR2jRr
         l2kInfSQWK8qb5HtOcycpja68EH30oyLTsoVDLf/UfQ1mUXtmWMjKAHA2fS/NO2oL/DB
         2OvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MmW6/jKhQE5QxfBECacWPIgDOYXh0B2fGS2HZEsQx1w=;
        b=iC2+p6wnBUINOpt7cNp3Cz7irQ8i1MmrPrrzxSBiWqajVIBSLDEXVjnw9CZ0ruQRVB
         rMVw3RyyDvUsGeSbqekkNQjj+dRLmMIDuyzd7gFOELJTMbjO84503WUBgKX+tAz38JFb
         K8y9ugx9KIIoXrlQJToPHqmHyXNFLsIqScls8nOBLojdbj30oGptxurimYqMWo3fBTeL
         IhqfPc85qHLjmuqfQUXXRwV0o1TnkG0SzuyMbiHDLJlhKw6HP2Xk7AyzH6BzvnHmSN2u
         0xjV2V39H+JUp5aHov+Kb9z+cb4ck1WzZtHgGJEF5XJ5LjS7Z+bCrVXkNfd/qcch2+42
         BIAw==
X-Gm-Message-State: AFqh2koSymaS6LW2oUgLylYadoEE9Ve1dxTGSj+pXroaqL2cYgbpdk0H
        pO7rT+nGjG7UeVTBKqsRfC5FOW0E//U=
X-Google-Smtp-Source: AMrXdXuiVGoHvhKGvPFugnfbqyri3m2KluiaQl8s5nD22y7VLO/3L3Xs4S9xqGgd/wjWwf4QjMpP0g==
X-Received: by 2002:a05:6830:1d82:b0:670:5951:88d with SMTP id y2-20020a0568301d8200b006705951088dmr27524762oti.11.1672963673756;
        Thu, 05 Jan 2023 16:07:53 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id x8-20020a9d5888000000b006705bc50c50sm17923234otg.80.2023.01.05.16.07.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Jan 2023 16:07:53 -0800 (PST)
Date:   Thu, 5 Jan 2023 18:07:51 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v3 03/13] ldconfig.8: ffix
Message-ID: <20230106000751.wdelt7kyd3b5jdbx@illithid>
References: <20230105225225.luzsuhpxhjpi5256@illithid>
 <5d220f10-cca0-9b3d-666b-573653abb735@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="booq7hbfneyk6och"
Content-Disposition: inline
In-Reply-To: <5d220f10-cca0-9b3d-666b-573653abb735@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--booq7hbfneyk6och
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

At 2023-01-06T00:44:18+0100, Alejandro Colomar wrote:
> > * In synopses, set ellipses as separate "operands" to better suggest
> >    argument separation by white space.
>=20
> Please keep the ellipses as a separate one.  I want to discuss it separat=
ely.

Okay.  Please tell me what your question/objection is.  I thought we had
already discussed it[1].

Regards,
Branden

[1] https://lore.kernel.org/linux-man/a9bd3c47-aa41-7d69-4c5b-3699e0aec214@=
gmail.com/T/#m8323f353ba4e377c6dc4d8f2ee93cda1c54a7bf5

--booq7hbfneyk6och
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmO3ZlAACgkQ0Z6cfXEm
bc7tFw/8CyK+oN6n8RUYpnDxTc7RUPEB7vHjAK0wsYGgaFdcr5ennw2dPdEl5wCK
5QDeYU85mfIwZDz3a7IRaCFUfmVkDB+2qBpwTr/grIJzUSfKhi5TIvGEo2/qpr2m
NuF+xOihw6PNRZjcXxied2edgqcKVnvKxYcRTWgE5xVY/q9cl7FDJRXHCKkTXV0J
h6AOOjlEM33zU/iCgarMPSjxueQamxPcgTPCmrB4S6qIrtG0S/7dlejGw1DGDZmM
sq8jur9kVo9HaObi+XxqGNVnhrg0bOJNrsQc9Z6P6Wm+UemckKaJxABa0S88LMh2
zDUvZRFleoNyr0w/f3xw2m0JQRBnUoBF0mph+rmGBYzTR+NKJRfSRRwOPM7bk7lD
YDLx2x3yNIm2+/LvqC+TIvGom2cW7JzyMMsBpMR8jo9+9hzmo97mweqI5lIERUd/
SLhfipLRGjr6azbL6gjXMmXF68WC4u3quXR7urdU4Bez2JjXOfWVC4RA8CPjh9vP
Jzko9JzShuhqSDCKbK8P2g4EHOlJdMhZmiizNQ6bseGv8TJ+rnZwr+zZHfK3E+Vy
YzJJfQxY77F/SBqm3FrMZ0gjBcAcqrY2DeKANzoG9rCeznPAxV+0f0ToVVfMkmCw
5e7gw68FxbUp4A+3zRf+uEij6reaGQANgn2CIEIwAdUm6nehyJA=
=epi5
-----END PGP SIGNATURE-----

--booq7hbfneyk6och--
