Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 72CB6661A9D
	for <lists+linux-man@lfdr.de>; Sun,  8 Jan 2023 23:59:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230211AbjAHW7W (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Jan 2023 17:59:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38228 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229503AbjAHW7V (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 8 Jan 2023 17:59:21 -0500
Received: from mail-oi1-x235.google.com (mail-oi1-x235.google.com [IPv6:2607:f8b0:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F3AA0AE5D
        for <linux-man@vger.kernel.org>; Sun,  8 Jan 2023 14:59:20 -0800 (PST)
Received: by mail-oi1-x235.google.com with SMTP id s66so5160883oib.7
        for <linux-man@vger.kernel.org>; Sun, 08 Jan 2023 14:59:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=h5VeRoZQZt8E6Kn8u0AiS548vUb5x5yo7GxPG2uDzsQ=;
        b=UQ7u1iICD59ZKLtoKXf0x6cw2M/m63kPpQ0XPfiJQCFQrs9Icp24K2G4rnmyakmMZr
         vLHwFx5rPmfc5ut1AKdmurOmlCL6dNLYlOTMtd+VWYJIuWzzwMdmWONgsFaXs9oQ9W+A
         nwBczvhH2PTxF6pxWyUrrBFQ3EeS+Qa8jHcj1q8w0QXp36ed0U6gYQHK5O1V937PI9EG
         NWcrsljNwfIlALwAu3e6y4MmF+6Hz0WDgs4BsKiK2jaItjo7z5+Kj+4EUTNu4ScfrySu
         TyTu+JeRud6+zUWVhcDHNPZhpvCCXpjrb9JF97N9dR2YnFX8It9dS79I2A2datCay2YW
         teag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h5VeRoZQZt8E6Kn8u0AiS548vUb5x5yo7GxPG2uDzsQ=;
        b=D+XljQoca3gBMezYsxM+/ESpP3fyXBMnE54++SNDxWho7z2VUB+J373Sm/l7Qr2EXk
         19vVscRGE4Lm66sjBUd9FckCjYZSkc9smlAQFUycf7neXB3sf6LoHGXjve76T+Zu9HjY
         6tNwSVloZcARpMmuNDqODv7Edvf1KjsU6t6BOXNWPtDXUE2QK54197rLbkpWnsiEkV6w
         esSMrI3+AwvUmhCwDCBts16lnWrwfS/MfFn2EkUKCXllCWpZ02Hs/6m4wgUsfM7Tz3I1
         xbqDLXRyDP3aNE4YXV+q4loOg0KlrGZcgWm6THnxgcZw44iFEV7DhXSOqdzH7kWXES4q
         hFVQ==
X-Gm-Message-State: AFqh2kq9Xo/hZpqu3EkcQ6dhb/Mbg04RwnXTfQcNwXSGo/njYiT9rXau
        7JINUtk0GkpJDQyGmahp+rAtZ+OICJQ=
X-Google-Smtp-Source: AMrXdXsYRbvT6gwIJQsnQ2gjJZQCQzxfqtIzoLMrXDnZYI3MFTuhFxqjlS5rC/zGZ1XjSgNEWIM/YA==
X-Received: by 2002:aca:5f86:0:b0:363:b708:5473 with SMTP id t128-20020aca5f86000000b00363b7085473mr12232581oib.27.1673218760105;
        Sun, 08 Jan 2023 14:59:20 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id k20-20020a544414000000b003549db40f38sm3136481oiw.46.2023.01.08.14.59.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Jan 2023 14:59:19 -0800 (PST)
Date:   Sun, 8 Jan 2023 16:59:17 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v3 07/13] libc.7: ffix
Message-ID: <20230108225917.7pdcvrndo2rhhs2w@illithid>
References: <20230105225303.bpo7ot4zcsthw2gv@illithid>
 <d5e09698-fe05-e33c-045d-2f10d0a6faf1@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="vew4bc4isn5ms4z4"
Content-Disposition: inline
In-Reply-To: <d5e09698-fe05-e33c-045d-2f10d0a6faf1@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--vew4bc4isn5ms4z4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2023-01-07T00:40:50+0100, Alejandro Colomar wrote:
> I've already pushed the changes to kernel.org.  Please rebase and
> prepare v4 when you're ready.

Thanks!  Will do.

> > -The term "libc" is commonly used as a shorthand for
> > -the "standard C library",
> > +The term \(lqlibc\(rq is commonly used as a shorthand for
> > +the \(lqstandard C library\(rq
>=20
> The comma was accidentally removed, right?

Whoops.  But it comes back in:

libc.7: Revise content
>=20
> > -By far the most widely used C library on Linux is the GNU C Library
> > +By far the most widely used C library on Linux is the
>=20
> I think this "by far" deserves a comma.

In a subsequent commit,

libc.7: wfix

I recast the phrase away entirely.

Regards,
Branden

--vew4bc4isn5ms4z4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmO7Sr4ACgkQ0Z6cfXEm
bc6ydQ//cRaPFszVPv/Idqg9Ak5//Dx9wNxMQmpDHUw4EL1mGveH1grPFaY2JmrA
1hQTDfrQc/GFss1LOGV2I9q8N9lP2SvrDje4UNDPw5QcbFJ9lT+aWH9nA+UJpN2B
8zlrBFTf7uPZ1oZte8ZN6k1Qx8ln+NGD4Zn/7DmsiY5rIXvHIDlGJvS1uTZXU6FS
bbICYJtG0oovaJnPglWIE7y7KM+Rz6wMswPd4oF5E7MZJhHH+LLidHhGiuz9fBBu
hYh1MLNy4JuOA1z160UHOf1M7K+HSIjvSkrCU5vWA0Z6ec326oR9NahPg/jXoRFo
UjO4a8HNIBgDdOjt9NN5GoWuvBEwagc3nfFWjqypJ7Pvw6ZlZC/hPuJ8vLwzeRwz
gUY3FX1G6cHxEOxNw4+1FfjT8QtKXu9dV1o6w8JK1cJOWnvmca7ThjbTq4gUuxy8
2dRX/buGuBjoGE1FrjjXoLrDitiH1xoaKZuJn4x/nmG9gr2C0HyJDr6WscToyBUA
hO2XnpxCs2D572H2wbfoqGEVraDibkvisVrzqkkM8mDyUDEpjoR8LJ4ShpU13lvl
lAXvC7kzozXqyD5W5OIX3CaTnoT96GlCjcm9Ki5ShhZL+bTRhCF6Tzj/kB2V3dRC
GTMLxO81GgeqYttGkaSRldjnGeAL3R65GgCAgXnv7bEYAMieVUo=
=oskG
-----END PGP SIGNATURE-----

--vew4bc4isn5ms4z4--
