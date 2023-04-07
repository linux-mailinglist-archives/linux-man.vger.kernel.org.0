Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 269ED6DB729
	for <lists+linux-man@lfdr.de>; Sat,  8 Apr 2023 01:32:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229497AbjDGXcc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 7 Apr 2023 19:32:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55126 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229452AbjDGXcb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 7 Apr 2023 19:32:31 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 796A8E07A
        for <linux-man@vger.kernel.org>; Fri,  7 Apr 2023 16:32:30 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id gw13so113843wmb.3
        for <linux-man@vger.kernel.org>; Fri, 07 Apr 2023 16:32:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680910349; x=1683502349;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BchBnnov2/OkSO8fgO8dxi4baQj6nHmdsHmwCpfGlas=;
        b=KejHJ5RAviIKtZrL0eMQlZngVF8UpK8y+PHxU2VnSrYTkekvYg8dDOndcGjZXNv0X9
         7N0Bd86mXzqdQun7C1of5o0oRJT5ZjRwluFq3Clcj7JBHx2Mkxla/tHKKt2AEa0ZdNyM
         3Z4hif/z+UzdFT5zazz/0kkUKXkTPECs8+670yqa5FJvbFsJ35IGjO1U3kJgpMClMK47
         teiCMB3ALEfhlXiYyxvdkg/xkaynuQAFJqiQzsTB4zBY9m8e9AQvU9K24285+VDhTVcZ
         VPvYVlsJtwZumZRzzCOhnMz2U91ZStCApz9hJK0dyzxcqY+o0RzZ4qlWW+e9gFeizzCN
         X8Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680910349; x=1683502349;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=BchBnnov2/OkSO8fgO8dxi4baQj6nHmdsHmwCpfGlas=;
        b=CZCdxMMyt6upzadD/tjin9lyfKbrNKapFX6uWJf4cLmCnpVBR8wW5ZFilnCq1IYX3U
         NS980d2fGvP2bH1SesvOlviJQophdWXUIBWPRLlGk7rRiapNmtOpinMP1gTMSO6gRPKo
         qklWLYuLKSZqs92W2dHPS0ed3YZtO9QvV8d+DGDntJ6uv8GtuDwcRoIWqS6zg7RVt8DY
         AerMODODfsMwEPYTh7ch2CmKJOjDF0o//eQq7fZu3cnwi68Mr65CGON8xR8o4EOXvlyY
         7gQJ4Le7HdAtx/FPx+PjUA/6Ob/OcrIyutefzQRqI0sAo3NeEwu+KmJNAJ5NBBl1exNa
         7B3g==
X-Gm-Message-State: AAQBX9dSg1EYZeudoSx3M0SSVguSA2p3nvB65qo3ulE8GNNUGtT4rFjS
        1Rxn18Q+IeqAuU7rHKLbQ+UxP50sKNE=
X-Google-Smtp-Source: AKy350Ya0bsKo8dk8j/LsgOaItSS1EiSpfl1iE2+OZ5NCxaFBb5udx4WGs8l9H6msQS+5H0H6lwW1g==
X-Received: by 2002:a05:600c:3646:b0:3ed:809b:79ac with SMTP id y6-20020a05600c364600b003ed809b79acmr2450113wmq.19.1680910348742;
        Fri, 07 Apr 2023 16:32:28 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id c8-20020a05600c0a4800b003ee5fa61f45sm10116274wmq.3.2023.04.07.16.32.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Apr 2023 16:32:28 -0700 (PDT)
Message-ID: <2985c6c5-e9bd-9a08-0765-5bfcb270a918@gmail.com>
Date:   Sat, 8 Apr 2023 01:32:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH] mlock.2: Improve wording
Content-Language: en-US
To:     Avinesh Kumar <akumar@suse.de>, alx@kernel.org
Cc:     linux-man@vger.kernel.org
References: <20230405104426.5007-1-akumar@suse.de>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230405104426.5007-1-akumar@suse.de>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------L4EC0VZGHNRP2ZKT3BlFCrCp"
X-Spam-Status: No, score=-2.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------L4EC0VZGHNRP2ZKT3BlFCrCp
Content-Type: multipart/mixed; boundary="------------BuCJVVTQOWWHbnvfjMoHkC9j";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Avinesh Kumar <akumar@suse.de>, alx@kernel.org
Cc: linux-man@vger.kernel.org
Message-ID: <2985c6c5-e9bd-9a08-0765-5bfcb270a918@gmail.com>
Subject: Re: [PATCH] mlock.2: Improve wording
References: <20230405104426.5007-1-akumar@suse.de>
In-Reply-To: <20230405104426.5007-1-akumar@suse.de>

--------------BuCJVVTQOWWHbnvfjMoHkC9j
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Avinesh,

On 4/5/23 12:44, Avinesh Kumar wrote:
> Signed-off-by: Avinesh Kumar <akumar@suse.de>

Patch applied.  Thanks,

Alex

> ---
>  man2/mlock.2 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/man2/mlock.2 b/man2/mlock.2
> index 30828fbdf..ecd7158e5 100644
> --- a/man2/mlock.2
> +++ b/man2/mlock.2
> @@ -36,8 +36,8 @@ and
>  .BR munlockall ()
>  perform the converse operation,
>  unlocking part or all of the calling process's virtual
> -address space, so that pages in the specified virtual address range ma=
y
> -once more be swapped out if required by the kernel memory manager.
> +address space, so that pages in the specified virtual address range
> +can be swapped out again if required by the kernel memory manager.
>  .PP
>  Memory locking and unlocking are performed in units of whole pages.
>  .SS mlock(), mlock2(), and munlock()

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------BuCJVVTQOWWHbnvfjMoHkC9j--

--------------L4EC0VZGHNRP2ZKT3BlFCrCp
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQwqAMACgkQnowa+77/
2zKTkQ//RkNiOjgiG3vFvxSeBWFRmrLRqoaHLAadWKw3bscDQtWkj/g9tpvDwqgV
+IqbZAklRyuPsVhfKABfGkfBLBCRmX66IeX4uCMmnluvSWt4WvSR1EnoPwVWWMPy
IbsbYZcoLdJGcTZsbR95tqxtt3OjT8X5Is44Q0ZaUGbIdZIgw2HJONEu5z4MJdk3
LRwOP4YqXubb8fNFUFBjrNB+SMK0vHFGf1whzx28edEvvHX2vPbwP5B4dgdcvLnn
lgREOMzEj5vnYY+nwceV8ptxpJNqBqbLRfyb0t6BcS+2yoBOlbCL5jKW7CaXwjez
C3yi5tYqTOXSvVFCqUKRkVrxeEa/UiDXzIE3zoPTbVM7Q3JI5pU3A6P8d5eZ/CJf
hlinci1vg5TcROkrv2d1mD+ZahF7XYSAvGwzsZDlEntXe47141xqamaFFmbrPa2X
TJwGYIQtG4tWUEBSDRqVnklSgyXB0aYYpRN8dZAiKhphVNT4+2tDzIM/v8skCSJi
StrB7F9XAUVRu+wC+gfMoSMrD5EeBgiD/uDF/hiw99uelpjb5Qp4/EbFuwhESDAv
LHvuAtg44B57Z8myqB188+LhysHlreQT2xXjNlEEmGoyUE1bWXOqeMkkJLFasYcF
mESzRejwYGUWD3LwaLsmvvxPRZJe7/hRMdh0mcoLb89G4u7XvRc=
=kJlP
-----END PGP SIGNATURE-----

--------------L4EC0VZGHNRP2ZKT3BlFCrCp--
