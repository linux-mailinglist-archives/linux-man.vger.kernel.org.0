Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A949F6D28D0
	for <lists+linux-man@lfdr.de>; Fri, 31 Mar 2023 21:47:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229983AbjCaTr0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 31 Mar 2023 15:47:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37390 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231539AbjCaTrY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 31 Mar 2023 15:47:24 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B0F410A82
        for <linux-man@vger.kernel.org>; Fri, 31 Mar 2023 12:47:23 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id v20-20020a05600c471400b003ed8826253aso5002350wmo.0
        for <linux-man@vger.kernel.org>; Fri, 31 Mar 2023 12:47:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680292042; x=1682884042;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SshHaFr/O7BdROVmmWjt0fUV1alJwPmkWSsBpHGvdrs=;
        b=Sk/ZP1We3/dFOijUkMmOD1UbrW5BUNgaGl4lSUc6GT6i4lPwNg3ci56WdlM0dI+x+0
         1c/sQW6QOyWN0RUiQmxHUHXN9EBjsR77qw1IFv/kNyRo8EVhcY6jrwL0+4w8jRdpVLH4
         8+1VhIBdR4Y4kVKEE7YCE+1JGw/AlRizk7ETtyra98IxEl1mfdGKJgglTMyy4m8Fsbcr
         ESWn9JuTA0updSAmA8ygJAdZ5ST4zpGA33PbMKi6icbNA/9tXK6uXv4g0DJ8LqzXKnio
         cnm4HbztQbvdkBCDI/9st6VzZ4ekwVP8PyU023vTUwzd/kTz1y5pbjF8yMubUG02ROkc
         yLfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680292042; x=1682884042;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=SshHaFr/O7BdROVmmWjt0fUV1alJwPmkWSsBpHGvdrs=;
        b=XUt1wwEUD1Bk8zR/4i/9E2ed9Us4XBRqUxr8sJz70x+gL+rkfwYI/YGWnqfdtECzla
         IdLJCf1UeOCa/eW+FV7fWrCihpsyZXqiXn6zofHUJltAflivphS5X+07X0LGqOVM6FJV
         93jRDkn0ymTD7IbA/0E7lwH2pRKojqkDIuZkZ6qutjZNII2Y7jn1Ku/cerwh7W7uZce0
         9bXr+HDCsgobwq2kP+zK/nV9hrGU/IqGSbIWzkgShx4i6Bv+ysB1kNYIpehCt3MQQTXP
         B0giMVKA5MZmM33isPovvZzkA2V/JPOq9I1tcEtxGuJy7gkMIRrAnZs6ok7DHyWBQUiw
         sshA==
X-Gm-Message-State: AAQBX9eXipDqA6c0vvfFm/NQieQJCWqIMLi/M/xstmyEVaj3DM6KJQw0
        N6Zb2KPkvbUeuZlzO8k7Yl8=
X-Google-Smtp-Source: AKy350Yg6uhulEivUwZjE+2nClAFaD7nFymqb+dninAPsLOYuCUxCU4HEI8Am0TO7qpy4I0F2C60GA==
X-Received: by 2002:a05:600c:3788:b0:3f0:4428:9444 with SMTP id o8-20020a05600c378800b003f044289444mr2391312wmr.10.1680292041769;
        Fri, 31 Mar 2023 12:47:21 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id i22-20020a05600c355600b003ede6540190sm11091501wmq.0.2023.03.31.12.47.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Mar 2023 12:47:21 -0700 (PDT)
Message-ID: <7732aec1-4f45-09e4-9786-9a1c0aff64bc@gmail.com>
Date:   Fri, 31 Mar 2023 21:47:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] mknod.2: ffix
Content-Language: en-US
To:     Jakub Wilk <jwilk@jwilk.net>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230331185645.9560-1-jwilk@jwilk.net>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230331185645.9560-1-jwilk@jwilk.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------6l98yb8InSdf6TThlJmQ20VR"
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------6l98yb8InSdf6TThlJmQ20VR
Content-Type: multipart/mixed; boundary="------------tojU58786Duht3WKdIMqHOqh";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Jakub Wilk <jwilk@jwilk.net>, Michael Kerrisk <mtk.manpages@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <7732aec1-4f45-09e4-9786-9a1c0aff64bc@gmail.com>
Subject: Re: [PATCH] mknod.2: ffix
References: <20230331185645.9560-1-jwilk@jwilk.net>
In-Reply-To: <20230331185645.9560-1-jwilk@jwilk.net>

--------------tojU58786Duht3WKdIMqHOqh
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Jakub,

On 3/31/23 20:56, Jakub Wilk wrote:
> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>

Patch applied.  Thanks,

Alex

> ---
>  man2/mknod.2 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/man2/mknod.2 b/man2/mknod.2
> index 30f256c44..9d17ca88f 100644
> --- a/man2/mknod.2
> +++ b/man2/mknod.2
> @@ -164,7 +164,7 @@ did not allow search permission.
>  .BR path_resolution (7).)
>  .TP
>  .B EBADF
> -.BR ( mknodat ())
> +.RB ( mknodat ())
>  .I pathname
>  is relative but
>  .I dirfd
> @@ -217,7 +217,7 @@ A component used as a directory in
>  is not, in fact, a directory.
>  .TP
>  .B ENOTDIR
> -.BR ( mknodat ())
> +.RB ( mknodat ())
>  .I pathname
>  is relative and
>  .I dirfd

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------tojU58786Duht3WKdIMqHOqh--

--------------6l98yb8InSdf6TThlJmQ20VR
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQnOMgACgkQnowa+77/
2zI0lA//fvorrSDlYFQaLJLwyD34QCq18OdSxY7txAgffMX4JX9j3vWPDXIziH1v
3DTHCDhT+h1FfT1SpzIEpzeKdagdEhTVZDXDfCoO5u5+tZSPEYm0M1Vooa0Ztd+V
O498lsu/gtEWT6hdG5JBP4hadgQlK3Mg1j1gTj3JKKjgobJU9THrhbIZEPx8DNcy
cPGEwd64rEZ2w23sQoCr2FbvyO1ij2ukDDMDqkcwDkyj7nH+n7A5AntW1XKV6cyf
tTXOKga1BJsQ53npesbw1yPFRW7G+NZZuo04CtlP/S0R9Hid2XSdcjfSgJC0NlK/
ErqMv5KL56weZzEE1J9BTEi6YyoSiKI/FtyeHza1hJiDqrBBlBhKe9aDNf5Jwquc
gr7jBJMfs7S6iml6mX6T7y49NSVBBwShCjqCkQxBtViAxIO5tQkAhjfkTCxVw5eR
YncrQYtLPD3MyFbty3MOHzf2uRP4heCsOLgIDmBM1WVHwXnnrHpguHitdftGF11h
aeTbH0bBM0eG9+aSFaTLJSLAF5PixY5dntATgksC140c89f8RccW0u7Edgf3FnLK
9JIDxuAputiD5dSkwLVQpNBooeR1o9gteEkp17ZalTJSnN8k1HlC1emuwKmaZhMC
y0PT7ob5+5gYKP8cOdkUgL31+ZNb+bH/N0c/nU7FRZIuNcv5wYU=
=X40T
-----END PGP SIGNATURE-----

--------------6l98yb8InSdf6TThlJmQ20VR--
