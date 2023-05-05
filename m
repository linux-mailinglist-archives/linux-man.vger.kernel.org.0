Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 486A56F7A3B
	for <lists+linux-man@lfdr.de>; Fri,  5 May 2023 02:55:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229524AbjEEAzy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 4 May 2023 20:55:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45144 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229459AbjEEAzx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 4 May 2023 20:55:53 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6CFC51160B
        for <linux-man@vger.kernel.org>; Thu,  4 May 2023 17:55:52 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-3f315712406so81938695e9.0
        for <linux-man@vger.kernel.org>; Thu, 04 May 2023 17:55:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683248151; x=1685840151;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+DXITqkqptZV2Z0MFqKedD5+f7u44wX3GUJucPL5PUk=;
        b=Suu9O3gtTQqCMlQROpFSkv7G9JL2ZFZI4IXvUbEDbN4n2JsLPbbsccvA6d5/L5vPI8
         gNoCmghFFiDfszXAyN4NUvj0R8ioF/fTgZepEooWmUJDgl1pQ/a1Yw0hh1y4PyU9TUCv
         WoQCXI5yjeo4wH8r62q3PJFLrPEEdrWWEPwYpoQjpvJvHoN7K4mPB4ujVO4lqHOwAAFB
         FyQDL0pMatkQA/LxKQfB7xLLwBgC+P6J/aForR23Kfln4FFcMS5lgmJcZP8MQLqaFdnl
         DxfT+Wyuq27Us3ghF10ehVhddLq2ACxhiJoCguKlnE37ZqG3yPpCxw0MH8PTTU7YQ/G2
         L+6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683248151; x=1685840151;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+DXITqkqptZV2Z0MFqKedD5+f7u44wX3GUJucPL5PUk=;
        b=VyNL1ExK8zw3/IEEao9u48LqV6Nuztz/MQBxcbochHNQRJsK/V3DrjOUmtS69dy8gh
         +EKS6yYcJpMH7G1fQiaPF6d5VUe6+89ilwNU+OD0tadq+y3828mZpYCmryjRqL7rObks
         RFqPxCXmkJ5EtteU2IHCeln8TQgeunhD56ZfUyYp1idDbqzU0R+ljRYbdv+1maJ+RtaE
         yaIhLFyidtWF8wFsXYyYCmnHZ0PFj0GcH+Iem9oKLTxE09AuZX7hYk1ZyVbL24WbqIAP
         gUqIQKPfGxok+n96GALY7KhWK+LK+cy5Czp5TrVSIJE+hiBZV8+Iu9Wk9KCjwTFB5Gna
         a98A==
X-Gm-Message-State: AC+VfDywnkuxOmTXMukvwCJjVVn+Y6CZMtJdLNPur2BZr13uCnhNUJFv
        +uOVz0tXIwCe+n4QO5lmw+UW0i0ey1c=
X-Google-Smtp-Source: ACHHUZ7/GfP8bvcr9ZUVLrj40W99T2Vq5PpRKQiOP+bHPOjJUKEvPXXpna5DgeOeRwqAi5Dzy9/wDA==
X-Received: by 2002:a05:600c:3650:b0:3f1:8129:2c53 with SMTP id y16-20020a05600c365000b003f181292c53mr824718wmq.16.1683248150667;
        Thu, 04 May 2023 17:55:50 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id f1-20020a1cc901000000b003f25b40fc24sm6390462wmb.6.2023.05.04.17.55.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 May 2023 17:55:49 -0700 (PDT)
Message-ID: <52a43771-4edd-be02-eacd-32645c2a3e1c@gmail.com>
Date:   Fri, 5 May 2023 02:55:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH] resolv.conf.5: tfix
Content-Language: en-US
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     linux-man@vger.kernel.org
References: <20230503155738.2719-1-jwilk@jwilk.net>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230503155738.2719-1-jwilk@jwilk.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Z9VS9ZN7LbiRgYTQgmapB33y"
X-Spam-Status: No, score=-6.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------Z9VS9ZN7LbiRgYTQgmapB33y
Content-Type: multipart/mixed; boundary="------------UhObPNgCpFj0VHg42dUqmxCy";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Jakub Wilk <jwilk@jwilk.net>
Cc: linux-man@vger.kernel.org
Message-ID: <52a43771-4edd-be02-eacd-32645c2a3e1c@gmail.com>
Subject: Re: [PATCH] resolv.conf.5: tfix
References: <20230503155738.2719-1-jwilk@jwilk.net>
In-Reply-To: <20230503155738.2719-1-jwilk@jwilk.net>

--------------UhObPNgCpFj0VHg42dUqmxCy
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Jakub,

On 5/3/23 17:57, Jakub Wilk wrote:
> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>

Patch applied.  Thanks,
Alex

> ---
>  man5/resolv.conf.5 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man5/resolv.conf.5 b/man5/resolv.conf.5
> index 7e207b0f4..5687e4c08 100644
> --- a/man5/resolv.conf.5
> +++ b/man5/resolv.conf.5
> @@ -215,7 +215,7 @@ is still used,
>  .BR getaddrinfo (3)
>  with
>  .B AI_PASSIVE
> -will stillproduce IPv6 addresses,
> +will still produce IPv6 addresses,
>  and configured IPv6 name servers are still used.
>  To produce correct Name Error (NXDOMAIN) results,
>  AAAA queries are translated to A queries.

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------UhObPNgCpFj0VHg42dUqmxCy--

--------------Z9VS9ZN7LbiRgYTQgmapB33y
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRUVBQACgkQnowa+77/
2zKN3A//ZXymBoLUgGmbZqgmLIP/MNvQj11xsILbI7H3LXhbizdFTsvW9E9ipwtK
yjsxYYSUZ9TKaaDRL9EODuKydUhHgGL1H/cR221d+uCkj6xn1TdjCAZedAgLzFkB
W2FSIP91Jo8PaUiPc10Hwt23xW7YX+9bqE7OZ8hiIJ3gkv2YR5o5IN1VZUmhuWs3
bwxPXtE74u8973w7j6SIgQw1gOB8F4a/Qjss1aMmxkdV7WV+Mq8RnNgKaBSS8uaW
xo51ZDhpKcAt1TmtWHDV1unTicqA6bpOvbhFjXMaRQBdnKsS3/lc2IOdJNs6gkN0
7kiDZt8EItk6N4n4UTKx55aSKDlothhIW4LO+LpBMlec9KwpEcv5y9EwLt/fxoHm
/NtgQ8D+N+ePlWjk+MlWwTHBTFMA85x0ZUxpd8ZpHIgOSF36EI7Mx+y2sYPohNZi
Z+DBk5yg4i0wZx2wnrbvpb8uvTesmwvTA/4DJAdE9ih9f10FStJag4sYrQZoWdrh
ab4nN7TNVIE6h55XCLLtVsgSJ26ggciYq8LssAGQik2HW6hMw62n23gZftm7zjXn
C/zo1apK2BjenYan4j1PmGhmL6KpA64qasOjgEdTpUh6EXjKN4S33T6EIZDhavDU
H8uarhXmxitcANmJYch6TDbSe/LKcZYs/CdQTH10iLt6uCm25Rc=
=MiOa
-----END PGP SIGNATURE-----

--------------Z9VS9ZN7LbiRgYTQgmapB33y--
