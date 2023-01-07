Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2DFE9660FDF
	for <lists+linux-man@lfdr.de>; Sat,  7 Jan 2023 16:15:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229640AbjAGPPY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Jan 2023 10:15:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37000 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229632AbjAGPPX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Jan 2023 10:15:23 -0500
Received: from mail-oi1-x229.google.com (mail-oi1-x229.google.com [IPv6:2607:f8b0:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2E5596C290
        for <linux-man@vger.kernel.org>; Sat,  7 Jan 2023 07:15:23 -0800 (PST)
Received: by mail-oi1-x229.google.com with SMTP id r205so3444235oib.9
        for <linux-man@vger.kernel.org>; Sat, 07 Jan 2023 07:15:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=bhXkJGHzSZybLVX/sQef7yLLfs49yxEUbIEMyGUzGXw=;
        b=BoAoyDO6oV3IAVYhoC9EYb4iQMiBcQs1fA8pkqDNpVbCmqfDD+aMsQYG+eY7CNhIs2
         bA/9r8aGGTOl7+FxbmjCOxRYpgkCWZItwqUUJiIzbbVl8qGKFHTi2Z23exPYiCO2mCVJ
         NIlKiXSryz9frC72d+hnzaj9Uj9F6qbFdkyKUeXZ1QMbtXtnyA2cdcf7g1kP6M6qIYkD
         rLyeZYo5PFT/JcG8y0FYT8rwrGiZpSM43X50E6RIIWVdhzocHCJ+CtlOtsCJOHiwAUwS
         qF/1NVqMK4de/MYw8MC3tnheIP8g+oUfoi+INQj++pnYIB2bjXUkeiCk6XcU3m0+E7Bb
         d5KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bhXkJGHzSZybLVX/sQef7yLLfs49yxEUbIEMyGUzGXw=;
        b=5H6dwuYhewAEODTI4rAn7xHNG8DjA8i9xv76/3n9jXYUiyBrsL3KRM5HbIOIIJgEF2
         NDu2iZ0+64PsfmZgiDzjzs+H6RAg4Fiwad42iijSwYxMWWvpu0M+Y+kwcrT7RTzP1hoQ
         /fkTqxBIvkPI5bUpZlPKAL4wwsPuVslj3SOUEO3QQ0pJDXtv1r1zVXkly7Av0vRI23pT
         mLRP3jDWgPC9/wTjDOTBIT2acxJ8QQp7B1cbLB2Jh8h6UPv22WzV5imqKLSVFeqfC7rY
         llMKLrts4oqYrv2GoHcqG2nMy3FEEeh1LmAGoTiCJTh1bj9tZDG83yXXzVJhZIkJIunB
         kpPg==
X-Gm-Message-State: AFqh2kr67/J3JWLm0VOxS1SrKlVQqxdPk5w8ZEAh8/uFOY8K7V1w5AYa
        dlIeft3JSNYVyZsE3FuHbV+EBqbqKwo=
X-Google-Smtp-Source: AMrXdXucRLMbswgnsUqt6lLrLoWDfLT0bVrYmBz22YilJM953YDgUJ1ETbRsvry7r2/jBj7NVrJrBw==
X-Received: by 2002:a05:6808:13d2:b0:35e:ae18:9783 with SMTP id d18-20020a05680813d200b0035eae189783mr37378579oiw.8.1673104522546;
        Sat, 07 Jan 2023 07:15:22 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id bl6-20020a056830370600b00670461b8be4sm1898378otb.33.2023.01.07.07.15.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Jan 2023 07:15:22 -0800 (PST)
Date:   Sat, 7 Jan 2023 09:15:20 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v4 04/10] libc.7: wfix
Message-ID: <20230107151520.7a6yvbs7bpvmci4e@illithid>
References: <20230107095438.y4e3jh7nlrlrvagv@illithid>
 <b4002bb3-bc18-8833-a40d-01f2dad6f46e@gmail.com>
 <b3f75749-8506-0e29-8a26-3d27b737b6ce@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="yfjmricvq76yuznv"
Content-Disposition: inline
In-Reply-To: <b3f75749-8506-0e29-8a26-3d27b737b6ce@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--yfjmricvq76yuznv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2023-01-07T13:33:16+0100, Alejandro Colomar wrote:
> > Patch applied.'
>=20
> Sorry.  Not.  I replied to the wrong patch.

What are your concerns with this patch?  The "info libc" item?

Regards,
Branden

--yfjmricvq76yuznv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmO5jIgACgkQ0Z6cfXEm
bc6qYRAAksRqE+4Jj69TVZytxK7jjecVtTChMC/5zUsXfYjPzddoHEfOcJWvhD5S
dxbKFkn3FsD/PX8MVLYBnqQcoVoGXkq65mrwEwMlY9RE37zSw+NDWuQ+AfPkiNU5
tEqTO7PIWAAVNySsa8kQpMQjjAxC9+dJKA7e7Z8VgCOiiaykQ1ofXPQhocAyjSqL
V92JbUr9xzqiBvl/2X6xhdjEjvg0DwUwWMGM4PN+ASchWwou35xi7GgkS/kujZML
ey0iNwIdkXn+jXEJlQ0lLVY4VEuAcStAm4NJ86j56Fv8Og6+8mR5lpk0FaLgKQ3G
rLpIYXJbaQRYf9kUs45RmO8eqdJUm1PbQai5stXEceVW4HhF/61ZF8cUaBcTbDCk
pJ6cvHAru/dMYejMM9JRdHA7tPsFUd58F2w247HJzAQu1MSJ/PqkFITl0b2M3L44
Wfdn2kaicISLmshIF3nIy9WaA2bSS6oar044znedB0nohy+WznPTNGSn357PyFBL
V8SUgfYLVrYJEiEeJZYpoxqdwIGlaTxHYsLhXLySPuq45Y2clFeuQbXsj/cIvsKM
NCkXhChkGwJb+Harqi7Y4VRiJ1nwPiE3kO9huTWBCOLGlv0Pv0h6teRohszbXUBg
kTAtdKMunfQLbBiGbcXBL2ZKSzm1V+hZHIDQ01MksVLhPNXwsuk=
=9RN0
-----END PGP SIGNATURE-----

--yfjmricvq76yuznv--
