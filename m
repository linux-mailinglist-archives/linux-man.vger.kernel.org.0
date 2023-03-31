Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A3C706D28B9
	for <lists+linux-man@lfdr.de>; Fri, 31 Mar 2023 21:35:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230098AbjCaTfe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 31 Mar 2023 15:35:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59776 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230064AbjCaTfd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 31 Mar 2023 15:35:33 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 37FFF26B3
        for <linux-man@vger.kernel.org>; Fri, 31 Mar 2023 12:35:29 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id n19so13532952wms.0
        for <linux-man@vger.kernel.org>; Fri, 31 Mar 2023 12:35:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680291327; x=1682883327;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7SQflkixPtACtwoUleVag0Ip4eK5d6+HC1xh2QDeAIo=;
        b=UYblU8xY9L4j5hhmxLzCmWpaJNce+OBRgmX5yYYqXLJVYq7JNVLDW4+HF6Cyp+K7PQ
         EctB0LzrJfcWYV6IKM0D4PULySuz8bKzG3SpV7ak5pBMutUD5NZhq1eXctYFQt60wG7Z
         jUeKKu2IXg6EKH2LQW1qUx0aVOSb70qhGSPvsJtmgFD+gR1JkgfQbfhWN5qBi1mzzsGk
         9t5Di5HHi5VFCV2Yu8GQuwDdyyt5AjowTWUkj/MfxCeS9dcJwdeswSoq75U4fD2QDEHG
         xmda+N39DCHy1G8BYJedPjHInn75ySsGiZU0j1pk5PaVgMTwuxD2Gr/2goxyDTUJPSu+
         2r6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680291327; x=1682883327;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=7SQflkixPtACtwoUleVag0Ip4eK5d6+HC1xh2QDeAIo=;
        b=7yPkHOVCyoRhrMAPJrhKOBVJPHj/3oHgRzC7PQFX8cLqeNkdtRzV7vPTgHbcUvOmM+
         fOp3xJCqJLFHgYioMr6s6avlz/JPVjMsXESU2GuXyNhcIUjaxUNa6rrGDdMkCUaxLqXF
         xzsS1d8E4ze4ZuSn0qEd+JBRPLmXtG8zlcQkl8emsDOu1GuraaTcJD+k0tU86eqrxY+6
         1zb6BueZOwC7Ipjp6WKLcibawIHW6ktL8K4eO0es6bSoZmnYfmDNvAf2lq22QSJjlVSe
         CK53QBtClRGtT1V//guweYwc4NKplsXOSmB/mMlJgFDjTFvKfDs+mbJFdntSkyECCaJN
         2vuA==
X-Gm-Message-State: AAQBX9cjzNSlUeKl2WBL5dnsDxl0IiJDHzuSYFPkXuE/jD/j/yB/M6rK
        IBDOpfFidFjRFrTJ96iOsZlNuCCnd6c=
X-Google-Smtp-Source: AKy350Y5XIYBVz62WZcTDsm0cPEosF3g4dLHbiL+pdwuIQ1FbNjk0Sr7w9h9nKPxHKRvdorqE/yLPA==
X-Received: by 2002:a7b:cd98:0:b0:3f0:3c2:3fa4 with SMTP id y24-20020a7bcd98000000b003f003c23fa4mr8153599wmj.12.1680291327581;
        Fri, 31 Mar 2023 12:35:27 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id 5-20020a05600c228500b003e91b9a92c9sm3594406wmf.24.2023.03.31.12.35.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Mar 2023 12:35:27 -0700 (PDT)
Message-ID: <756bf5f3-a368-be05-5177-b113abf5741e@gmail.com>
Date:   Fri, 31 Mar 2023 21:35:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] printf.3: Fix wording for the 0 flag with given precision
To:     Vincent Lefevre <vincent@vinc17.net>, linux-man@vger.kernel.org
References: <20230331143332.3649621-1-vincent@vinc17.net>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230331143332.3649621-1-vincent@vinc17.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------no44BsYqjaky7MnNgztK3Y4W"
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
--------------no44BsYqjaky7MnNgztK3Y4W
Content-Type: multipart/mixed; boundary="------------HXEDx0R0keO3VTd4d30pdq90";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Vincent Lefevre <vincent@vinc17.net>, linux-man@vger.kernel.org
Message-ID: <756bf5f3-a368-be05-5177-b113abf5741e@gmail.com>
Subject: Re: [PATCH] printf.3: Fix wording for the 0 flag with given precision
References: <20230331143332.3649621-1-vincent@vinc17.net>
In-Reply-To: <20230331143332.3649621-1-vincent@vinc17.net>

--------------HXEDx0R0keO3VTd4d30pdq90
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Vincent,

On 3/31/23 16:33, Vincent Lefevre wrote:
> When a precision is given, the 0 flag is ignored only for integer
> conversions, not for all numeric conversions.

I think I've seen some related discussion in some other list,
right?  Could you please link to it in the commit message?

Thanks,

Alex

>=20
> Signed-off-by: Vincent Lefevre <vincent@vinc17.net>
> ---
>  man3/printf.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man3/printf.3 b/man3/printf.3
> index 790ebf4d8..b90a71293 100644
> --- a/man3/printf.3
> +++ b/man3/printf.3
> @@ -324,7 +324,7 @@ and
>  flags both appear, the
>  .B \&0
>  flag is ignored.
> -If a precision is given with a numeric conversion
> +If a precision is given with an integer conversion
>  .RB ( d ,
>  .BR i ,
>  .BR o ,

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------HXEDx0R0keO3VTd4d30pdq90--

--------------no44BsYqjaky7MnNgztK3Y4W
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQnNfcACgkQnowa+77/
2zKqmQ//V+4bTLcxpTDQmtHD+lY557DAdGdPoC9aNPiBu9UPFwo43WXNCwxHbX4v
P/8vbTeh782k0PLL1c0EuhbAnFFHOKrG/jOeeHTuI/RbH8ezjxEFLGpOCwsSuPHz
ds493nlryUacurkrQBQQbTT1jgrn97K7ZT1uTRcvLOE5q0JSvMzbwAPc5R03b0J9
5SWtZTcvPhwdTwnsLZMMgq+LWuXbpiysF1yFNw/v+HINuY2aNUa/X7wl0P0izYxL
Rwf6zv4nqznKSxSk40cwu/CV45Mnd+RHmCX0XtwE679tEgysf4nkp8GhwwTrfApw
nryGmFEnzHP5K3RyeDDWpcZvhfYfC6Q2/f9C0npV8jf7URgaZV5eMtRr0Fzttngk
FRc8uOWwr2E7ERQpX1qi4RcYdAobSG3kMPJBDLt0qWjOMRCghJVZfqUdFDCa+1Ta
oHTFopI0NF6qCXrSAdLOvJzcR5+40OAHo1Y8XxsxT16mupkSkiMB7tw7UWl9HjgI
tT69TPLDHD0uqAHSnQ72t5rpCltELZRv6n1qXRANkWiqnBWjp1PHl3cxJA17ktOQ
B0PTeiBx8IW4Sdx74j+FAQl0QxSs3bSTWxeO0Dsvp2r30O2TBP3fgiTbaeiXwOPW
0i4JpD/6wu8hZgPDc3A6OZQzCJkcBDbFDM2LjkoSMsbtjKaVZ9s=
=QEuj
-----END PGP SIGNATURE-----

--------------no44BsYqjaky7MnNgztK3Y4W--
