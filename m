Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C2A8863688B
	for <lists+linux-man@lfdr.de>; Wed, 23 Nov 2022 19:19:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239552AbiKWSS5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 23 Nov 2022 13:18:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48132 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239557AbiKWSSU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 23 Nov 2022 13:18:20 -0500
Received: from mail-oi1-x235.google.com (mail-oi1-x235.google.com [IPv6:2607:f8b0:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C4F2512AFA
        for <linux-man@vger.kernel.org>; Wed, 23 Nov 2022 10:18:18 -0800 (PST)
Received: by mail-oi1-x235.google.com with SMTP id h132so19902328oif.2
        for <linux-man@vger.kernel.org>; Wed, 23 Nov 2022 10:18:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=xcWu0tv4lYLVeJzxV7Vco26dlWtQfuacsE2tdia8plw=;
        b=UoI7hHSyra7NtJ5ykAP1GbNz2ZrBMAO8esKMOTfm09+v/Z0vBvvPgR6lhPWD/6+/L7
         4Re+PPqETmFwZLpsyOXqiqw2yFmB5EoLU0UhLbCB1XAWF9hlpaBfP9gFVaReQquEf78N
         KL06PiHTJhv1fG+0a7+YYXHQtg24emHleApBbP6rDBCA5gpdRdkTTJeUop9DiqRgvgoA
         Gt9ZaP/+X7od7nCDqinipLdKlXqfYxVu55b7hl2ItEHAte2nJUOEFar6XSXBM7G07k24
         Jfjumd6EYzgb0mWKw3Eli587EuI2PKhZfIev4D5ix8MrhekrCDAgR96CaXstfPWmSa7u
         DrIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xcWu0tv4lYLVeJzxV7Vco26dlWtQfuacsE2tdia8plw=;
        b=tuFE0YnrY5a+1mcsdBYOc9w3JYWUlYksv0MJDTMsGIdWkRLiBRmyvJ3Ed5fQIfYV25
         oge0IV3rrzxkIMrXvqJS44qu2xyCS7bjjMtopEA+XymYx/PUV+kf8AyqePuqlOucNVal
         DvjlHx+AKhssoPj2qUocqilKWKIfgtowS3OdEyTJizDmf5VrmU0MiFxWVslJaiQ9H84W
         2BSzoEdKfb0IY0p8HfkSbkZCso0JUvpJSwOtx9mZZD80enATYetK7Djxtj2DFW34fCHr
         00VUq9oJSliWbjV5MhVfTPh3Kedmk3JYOPgDhI2OU0Z9n3rwrfQeqjr1+pbdO+a1YcQI
         NdZA==
X-Gm-Message-State: ANoB5pmAelpX4ytcVUPwrcj2vOT49HXvoqo6DwNiSszFJc7oH6uKnJSf
        NYa/dtG5hAQ8nMS2Ff5VRQs=
X-Google-Smtp-Source: AA0mqf7WELbqEWKxhMzaTDfCQuPxhKxn4BdT4r8OKmD+e1Qqoo7Uk5VO8UweAugpIOKpRZ0mKiAjQg==
X-Received: by 2002:a05:6808:22a5:b0:35a:3da7:e8ce with SMTP id bo37-20020a05680822a500b0035a3da7e8cemr13698472oib.190.1669227498078;
        Wed, 23 Nov 2022 10:18:18 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id g89-20020a9d12e2000000b00661948e6119sm7696855otg.47.2022.11.23.10.18.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Nov 2022 10:18:17 -0800 (PST)
Date:   Wed, 23 Nov 2022 12:18:15 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     tz@iana.org, Paul Eggert <eggert@cs.ucla.edu>,
        linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
        Geoff Clare <gwc@opengroup.org>, groff@gnu.org
Subject: Re: [PATCH v2 3/4] zic.8: Use correct escape sequences instead of
 special characters
Message-ID: <20221123181815.dtkbm7sn7adfc4lb@illithid>
References: <20221123134827.10420-1-alx@kernel.org>
 <20221123134827.10420-3-alx@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="zu4ubeu27guoa5f4"
Content-Disposition: inline
In-Reply-To: <20221123134827.10420-3-alx@kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--zu4ubeu27guoa5f4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2022-11-23T14:48:29+0100, Alejandro Colomar wrote:
> Reviewed-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
> Cc: Geoff Clare <gwc@opengroup.org>
> Cc: <groff@gnu.org>
> Signed-off-by: Alejandro Colomar <alx@kernel.org>
> ---
>=20
> v2:
> - Transform ' into \(aq [Branden].
>=20
>=20
> Hi Branden,
>=20
> I took the freedom to take your message as a reviewed-by.  Please confirm=
 :)

Aye, cap'n!  Confirmed.

Just don't ask Robert Elz what time it is in Singapore...

Regards,
Branden

--zu4ubeu27guoa5f4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmN+Y9gACgkQ0Z6cfXEm
bc7SOBAAlyZG1OowFVi+HdIXhbTKSDdrf5omJ5TWAO2AhwRVg2hNMj93GYlzB5bD
hipoM6RpA2KJ5qTevpogI1l5O+BE1mFV/3zdWp2Y8c5lX0mOFUDySlxoXzkyHPlb
03Dhx7A2t0bHIl8WVy/3k6utDO700GLs3NsFbeJWauYF9yu+iPfT5nwi4D4WBLO+
hspsjrHcQnBttX9wcPeJ5IqyNs0cYOWhxhx3yHZN5cQHPzmZvQeXIt13+Fwnk+2s
51NV110dGMSjqAebuEpjfRExamRzfaJNj+CrVL4JT9mx/sKwndRAw6cVNDu+l17Z
Uj2npCDrBhGzwjSmr9Bhtpf2+LgdxF5MX+S/DY8IVp8GTKoL8W3DAUAjWUprBOQ2
JEWLX8e8ciM0lY5/wgZP5YhcwWQ80c2BHwwJhTSdlfiNNcrOgJztX7qrl3XAMkrJ
Bec1R4mG7J81gw+8M4SZFCH+NY0oU+HOX4GvDB5z4GmAKXs6Ka7oPDTjPNrEx2bt
lu1miKczdcALQ5xK4SYQ805RY6lDVo371LiJUGNo8K4y1XlJNH+Tk4agLEuEli/p
FbKQmq34sVxWHiuAqanNWhqElxQMOOwXZ4h/mt9yd4MwKhXzK+G5eM0RBFGF64PV
RnCysDTzNL8Yn8smNGCZdBnDITYMvVZ/yPyzbzXkOwrLCa/WzSI=
=xfL8
-----END PGP SIGNATURE-----

--zu4ubeu27guoa5f4--
