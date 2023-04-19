Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C0F4B6E82D0
	for <lists+linux-man@lfdr.de>; Wed, 19 Apr 2023 22:38:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229499AbjDSUiD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 19 Apr 2023 16:38:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49614 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229461AbjDSUiC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 19 Apr 2023 16:38:02 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 258DF5B89
        for <linux-man@vger.kernel.org>; Wed, 19 Apr 2023 13:38:01 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-3f182d74658so1217935e9.0
        for <linux-man@vger.kernel.org>; Wed, 19 Apr 2023 13:38:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681936679; x=1684528679;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7F3NmRN5MSrktCbPHZhtMEMdOxrB5rtccso5eXA5324=;
        b=oacFA5OdZzvCDz1v6EvwpONpSCrcB4n4CSo1FPlj2KJeP3iRxXE9OOm6ulJe3WXyyD
         8pkU49EYmFUHYTXZVQCz86ksE7dKWK3zkV0pUPZx92TG5cA2ehfez65U9WZg6Xcwzb7/
         9FsRrml38J9IOz9Skpi8Kx5zlWqz2WQ+YOX4JoJI5T0WAJ5juunqbJN8e9wBks2h0vOu
         G+UtqMIc8izWDde27z2kdGA1uVc/DdcMmRxHRTf1P8ZfBRmji2x+WmH7S1ZHr2a0wjuu
         3YjttXC2AJzkPeBjcyybZeFmCOdxwTyVFW9ezVkKcRSAmTJ8KG9JyPmSCIWtRm08wutN
         jQ2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681936679; x=1684528679;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=7F3NmRN5MSrktCbPHZhtMEMdOxrB5rtccso5eXA5324=;
        b=hcqhavTBCMxveuh1qcGLX5raDOq6e5h4R6+pYCFAkLwuXEmg6mihAs+nwPTEqA3GeX
         ydoxitOCmekmZrukVWLaAoP/dc+G/edP5ckm+ji8k+ZVWEU0oSEsSZJ6JeXlR14qkAmv
         0mBlAtc8fKKizlgsQmnnvNow3tsags4+1IQ4yU5M+rtCzbYYFLI9qR6Ir4eZQGMsYtcQ
         a+CTdbFbk3D11KNoeA7uKoAuNTkjtstjm7TWPVXGfoCKDrXTzXpOPopaMxz3lvaT6l3G
         sZngbSLyh9ThqpcOmJY3ANFXPBpJc8fQ9gUUCtOmNSIL7DVlmdZ06eWNw/uiXNTclckl
         WhaA==
X-Gm-Message-State: AAQBX9cc+FXyF/vMWwt9lddO96crNwJEld5+8jYBhb0AENXDRZKux7hn
        6e65t3wZkKdEqgQOWCvQx3E=
X-Google-Smtp-Source: AKy350YtTAnRzwqFugLct5JX0A2d61+8Lq6Xf5RZWr0fVJjuKE4nW90Peu/hOGflBb3m/3+tLhGyqg==
X-Received: by 2002:adf:e906:0:b0:2c5:5687:5ed5 with SMTP id f6-20020adfe906000000b002c556875ed5mr5782464wrm.18.1681936679496;
        Wed, 19 Apr 2023 13:37:59 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id z16-20020a5d4410000000b002f79ea6746asm26564wrq.94.2023.04.19.13.37.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Apr 2023 13:37:58 -0700 (PDT)
Message-ID: <e7e34004-ab5c-68dd-da7b-1d275ccde190@gmail.com>
Date:   Wed, 19 Apr 2023 22:37:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH 0/4] landlock.7: Code example improvements
Content-Language: en-US
To:     =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack3000@gmail.com>,
        =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>
Cc:     linux-man@vger.kernel.org
References: <20230419185443.7368-1-gnoack3000@gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230419185443.7368-1-gnoack3000@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------LGkkEZi7oKivbpRToUKgmiuM"
X-Spam-Status: No, score=-4.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------LGkkEZi7oKivbpRToUKgmiuM
Content-Type: multipart/mixed; boundary="------------n13Mm3aS004XigRcnrKGuYUj";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack3000@gmail.com>,
 =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>
Cc: linux-man@vger.kernel.org
Message-ID: <e7e34004-ab5c-68dd-da7b-1d275ccde190@gmail.com>
Subject: Re: [PATCH 0/4] landlock.7: Code example improvements
References: <20230419185443.7368-1-gnoack3000@gmail.com>
In-Reply-To: <20230419185443.7368-1-gnoack3000@gmail.com>

--------------n13Mm3aS004XigRcnrKGuYUj
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi G=C3=BCnther!

On 4/19/23 20:54, G=C3=BCnther Noack wrote:
> Various improvements as pointed out by Micka=C3=ABl Sala=C3=BCn in
> https://lore.kernel.org/linux-man/5d90e3b0-1577-7efd-03b8-f94b6e50fbc1@=
digikod.net/
>=20
> * Checking system call results differently, for consistency
> * Use constants for the compatibility table
>   (I'm not very attached to the other solution)
> * Better wording for error message if Landlock unusable
> * Return instead of exit() if Landlock unusable
>=20
> Regarding the EOPNOTSUPP/ENOTSUP discussion, the consensus seems to be
> that EOPNOTSUPP is preferable, because that is the only of the two
> error codes that the kernel knows about.
>=20
> G=C3=BCnther Noack (4):
>   landlock.7: Check syscall result with =3D=3D -1 instead of <=3D 0
>   landlock.7: Use LANDLOCK_* constants for compatibility table
>   landlock.7: wfix: Error message wording in code example
>   landlock.7: Return instead of exit() if Landlock is unusable

Thanks!  Patch set applied.  (I tweaked the commit messages a little
bit.)

Cheers,
Alex

>=20
>  man7/landlock.7 | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>=20
>=20
> base-commit: 6693a21cf73c502f2429b4ec07698130a2be9a93

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------n13Mm3aS004XigRcnrKGuYUj--

--------------LGkkEZi7oKivbpRToUKgmiuM
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRAUSUACgkQnowa+77/
2zJFFQ//VPSpjjrRoJeXIV8bo4sXsPUwXtBVDVv0KFBKNbywCgaWvOX/MNnOwlbX
88xu4xKsk2pg8aS7SS3Xnv20xJzMvQpHizgfb1lG2NE1F6PwJTpoamJDZ9cwxwWW
UQ0TXrhuFIcWRvz9LM7292KQx2ssDSI1M1K0+kNu5xFARjNPR8isJ1RfrG10OFsv
Kn0XeqNfp/lYKRrsUwDYzVkPjwqlT3VdCf0RaxbjMnxWcSiZJbv21SQI5fDRNVdv
Lfq4dzjg57FH4udFF+qak5bMa2H23vP4fMbBbauCYI2oFjaLWlsA/5KMytDW6rWT
+ihNTbtvGRei2swFBbTmC7l2KFGMUPS2mjWV/De5ZO2BPyznTiJdpBw9X9D0M/oq
OJCp8koe4GhMdsuVuDWWdRjb+MKCXj/YVhBmficV0IP3AEJSOUQ6Pw0rHkYuN5re
2XDu3BUxrP0dag01gt6SKdAaDjd1O9W/pTKz6N9e+DCAX0ZDu3xi7dMYxFP7GZOQ
RzXsgJA5ZGfnf4hToIGbJu66E34UpicaFAagJtER+m8LRAYMfz9dM8WNyGXcXG5l
bMNE0Nyms8aooGQglRUuQQYoFEEi3w+6Z2CRVZCkUsd+gpvPVZnZOQfJ/5dX5CCs
0qM4q6dxuxMFcBx36wEyHY0HHvI+tAaWcHBFgzAK1kaamjbosZA=
=n/bo
-----END PGP SIGNATURE-----

--------------LGkkEZi7oKivbpRToUKgmiuM--
