Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 123CB77A1A5
	for <lists+linux-man@lfdr.de>; Sat, 12 Aug 2023 20:08:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229553AbjHLSIe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Aug 2023 14:08:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58430 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229446AbjHLSId (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Aug 2023 14:08:33 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C289010E3
        for <linux-man@vger.kernel.org>; Sat, 12 Aug 2023 11:08:35 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-3fe1d462762so27288715e9.0
        for <linux-man@vger.kernel.org>; Sat, 12 Aug 2023 11:08:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691863714; x=1692468514;
        h=in-reply-to:references:cc:to:content-language:subject:reply-to
         :user-agent:mime-version:date:message-id:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=HLIdEcUhBuOZIVTinwpO5tlLcOveZmyOCVL7t5bSp30=;
        b=jNPlTAqaC+AnzMKQrmDjxaESsT6F2DSdvjGOw/ubJtf4cmDf4RTLuoMPSdlKJ18vo6
         kDyyrtBaAmvghsJRbODWToldr+Zbh1EwGvlB3NbFYCdn6udRCsB/72IEOILI6NmgGufF
         SrRbc6mtCT2MYH6k2CF1oytLXyCnFP8RE/VN0ZfgCCARWZKYkPuWvU3q7yA1UQfSo8lk
         eDsVZifyNHqqnWYnhdn6iVay0EDt7PGc7dwdB3kQ0KnrgFJtVo0ZeVtjh/XlmILrl+1Z
         O1I4kGIZoFaYcGjthGPwE5Qe1t2Zpaz0djV7GGM6PfHuELEqsiURw/TpV9KRgWsP/6o9
         WosA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691863714; x=1692468514;
        h=in-reply-to:references:cc:to:content-language:subject:reply-to
         :user-agent:mime-version:date:message-id:from:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HLIdEcUhBuOZIVTinwpO5tlLcOveZmyOCVL7t5bSp30=;
        b=AxbyGDacbMpbfsSN9Mn0YG5rMKCWK7IpmPGZQFboHTC2E7zXV0uyqTHXEGhYFTQkbc
         ftT/YwlKqGgOUUJHUSuQE2AqtQUNEck6voYxhCL10LhUYANJnDT2Al+0Kcz+/ootfI0j
         d/LLO2j+K/eU5k+bbHLt1mXfR3q77jlVnnSlUy9pTQ4ZnPRNDSO7T5b+PNaBPLSt16Be
         CIfiXSlX/hMdTs9s7AQY4FQcjfzNsjW9XwrSyzoHVVRDc2oL2SnsQ/+/dgJCiYnbiV/8
         pQRG0V+5ivReCb4X7ZGRPPUfr89DZC2E8T693nYzHBeOGSziIHFGxEl9JOPbSAgDIHBk
         KjPQ==
X-Gm-Message-State: AOJu0YwL4GYYEUvwlh+eL5ahxacK8iWTQGgbomxpvV1P8GUnwIBqu9I6
        RRr+7dFgJAAuwNbm5Z3lelxH7qnIXVM=
X-Google-Smtp-Source: AGHT+IF19iqr22BG/4ojSfQxKYX4BSMl+T9Y20RfjHgWTQGsjZqtkeLHRdU/moZUriws4MxYs+zI7g==
X-Received: by 2002:a1c:7c05:0:b0:3fe:179d:d42e with SMTP id x5-20020a1c7c05000000b003fe179dd42emr4180419wmc.23.1691863713865;
        Sat, 12 Aug 2023 11:08:33 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.40.43])
        by smtp.gmail.com with ESMTPSA id l13-20020adfe9cd000000b0031934b035d2sm8410951wrn.52.2023.08.12.11.08.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Aug 2023 11:08:33 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx.manpages@gmail.com>
Message-ID: <118e7b3e-9d89-32f0-781f-0e74fc7279fe@gmail.com>
Date:   Sat, 12 Aug 2023 20:08:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Reply-To: alx@kernel.org
Subject: Re: [PATCH] tmpfs.5: document size/blocks=0 and nr_inodes=0 <=>
 unlimited
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <s5j5wmngs2hpb5yx7frmb2uq5hc3clcpyfr65tzwmu3263bvc4@go2wfetupvjj>
In-Reply-To: <s5j5wmngs2hpb5yx7frmb2uq5hc3clcpyfr65tzwmu3263bvc4@go2wfetupvjj>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------pDHMEX7ADDAWMRwPv4FxZlV6"
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,NICE_REPLY_A,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,
        SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------pDHMEX7ADDAWMRwPv4FxZlV6
Content-Type: multipart/mixed; boundary="------------FQqHdx0VVHXM0J9hn5jv6dWc";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
Reply-To: alx@kernel.org
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <118e7b3e-9d89-32f0-781f-0e74fc7279fe@gmail.com>
Subject: Re: [PATCH] tmpfs.5: document size/blocks=0 and nr_inodes=0 <=>
 unlimited
References: <s5j5wmngs2hpb5yx7frmb2uq5hc3clcpyfr65tzwmu3263bvc4@go2wfetupvjj>
In-Reply-To: <s5j5wmngs2hpb5yx7frmb2uq5hc3clcpyfr65tzwmu3263bvc4@go2wfetupvjj>

--------------FQqHdx0VVHXM0J9hn5jv6dWc
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi =D0=BD=D0=B0=D0=B1,

On 2023-08-11 15:41, =D0=BD=D0=B0=D0=B1 wrote:
> Bitten by this again. Behaviour blames back to at least 2005
> (so probably original to shmem.c), documented upstream in tmpfs.txt.

This is a bit unclear to me.  I guess you refer to the Linux kernel as
"upstream", but the Linux kernel repository doesn't have a tmpfs.txt
file.  I recall that they moved their .txt docs to .rst, so would you
please share the full link to the .txt file that you refer?  That way
you can ask git(1) to show the history of that file even if it doesn't
exist now.  It would also be useful to mention the new location of the
file, and that it has moved.

Also important: please share a small shell session that shows this
behavior, so that it's easier to review.  Since you were bitten, I
guess you'll have some shell session that would reproduce this, no?

Thanks,
Alex

>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.=
xyz>
> ---
>  man5/tmpfs.5 | 4 ++++
>  1 file changed, 4 insertions(+)
>=20
> diff --git a/man5/tmpfs.5 b/man5/tmpfs.5
> index cdd5f2fd8..0e5bc853f 100644
> --- a/man5/tmpfs.5
> +++ b/man5/tmpfs.5
> @@ -51,6 +51,8 @@ .SS Mount options
>  .BR size "=3D\fIbytes\fP"
>  Specify an upper limit on the size of the filesystem.
>  The size is given in bytes, and rounded up to entire pages.
> +The limit is removed if the size is
> +.BR 0 .
>  .IP
>  The size may have a
>  .BR k ,
> @@ -89,6 +91,8 @@ .SS Mount options
>  The maximum number of inodes for this instance.
>  The default is half of the number of your physical RAM pages, or (on a=

>  machine with highmem) the number of lowmem RAM pages, whichever is sma=
ller.
> +The limit is removed if the number is
> +.BR 0 .
>  .IP
>  Inodes may be specified with
>  .BR k ,

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------FQqHdx0VVHXM0J9hn5jv6dWc--

--------------pDHMEX7ADDAWMRwPv4FxZlV6
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTXyp8ACgkQnowa+77/
2zL+Xw//SLx0hyFB6C6MF/j7m4Pm7jh6xcZQfgUh+qBmcNA4s2CnxSlgksFcCnxr
q8GIchWeUn3jQ78qGepiOVfR1bEzLLy+UCFQYtlGX2hdeBlSxEVOrUWIMUC0gfTm
ZwCZswEyRpI6993FTFkt5rppmuXJSDPK6s48M3J5L+m6gSXkqzUMH1hBmPKqPPnE
9yF3zts3dlzmvMAD+2yTAQuwIGLTjHtmrhogo1wVhrD/s5z+198B1lPDnhBa70J+
65Xsw3/nQ0uTi/NR8bpbkxUCtBsI8XwT6J0hb9rL+DvLqpciByY9YiYKyXxGIg8S
YgOyy6JyXtAJMc2gZzRXxBZGpQOMAHY/WKZef4TEFM909NW2NzTqstwcCS8xUUw9
izl06x7r4Pp3/9Gl5wPfEVw8Jdv9IFw9QWdyTLa7CzZU/8w6AI8zuaVVL971up7a
273Ml7vMeJiY516bLvBywU3RTdw70wlUwHg02GD+i7AenC5IDHDrkbP/UDzmxtgZ
i3GeoKgP5eoyAFRmg27c1u7l1DVQSKMLUBRWR35VJgNQEWOkExZ5tOMp77WDihCu
JgHzgwKpy63MUjSwJtLjRww81j1odLW4DL1YnFUDMwmHlW/xjcglyMfGLAYLXaFS
/hNv2x5XdjtxTCK9ib/KRsP4qUSqtgvnNMec//i7JnKQkEeEbxc=
=pegp
-----END PGP SIGNATURE-----

--------------pDHMEX7ADDAWMRwPv4FxZlV6--
