Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B42C6698705
	for <lists+linux-man@lfdr.de>; Wed, 15 Feb 2023 22:08:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230146AbjBOVIa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 15 Feb 2023 16:08:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39116 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229664AbjBOVIQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 15 Feb 2023 16:08:16 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F8A94740A
        for <linux-man@vger.kernel.org>; Wed, 15 Feb 2023 13:06:34 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id o15so17217455wrc.9
        for <linux-man@vger.kernel.org>; Wed, 15 Feb 2023 13:06:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3kCMcswEea/iDZ1HDMq/fItCNITCc4LaMVS/vOjoeh0=;
        b=RS+RkheI+lLX2ke8OBMQz+iO1ghmrDxu6R6yRfi9Nq31h+FJn54Q9GQLc1jRbRuUUg
         cho0yK34ZiJHRiVnnQuy9x/QqlPdpFyaFhmcrsG8jqEXNtUQ2AGzPmdIggEjH79ShNMB
         u7zA5wVTDuJA1L2Yeph4MER1YdStz/JTSChS6Dhg1pUHPKIiGbxBgy0zzgAV+N/vNgJW
         R74U7vcIJzYQlusN1WVMigBxUbwfKox9/XJhfrfE3khl78xkWS+di9OS8V/R7PmYK/wB
         RPB63xFaocGjhtFi8AABYyuT0vcPkeDvToZzRgqcIUEwGpsRtBWa8Ne/MBGo6Fbn/oQ9
         SqvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=3kCMcswEea/iDZ1HDMq/fItCNITCc4LaMVS/vOjoeh0=;
        b=rIBeHJEN449Q0JiPZg0oRu1HHzA7To/hldArhWpbOE/TF1y6ZdpK3bxMyT2xdjg7cB
         FzMlb8oSeazMh6/scp7bRu5pUKMJLDKH7d9bqI72h/hXhwJ7/e4BJ2UZN16GmtksZ0Hf
         LXKq4MgjMcVYTqRjLffVvynM6jnfalSfy2I96qOjTAatwtXnZhXWNrgHS6Rt3YURzPou
         A1uMPB2xVz3mucafJtavB1+r3VaikXolaDLBpHewunz3oHj1XWgUVN7tHyfVQB4bNTUO
         xFLDSf7tlfCFVDo0otEO/jDCYDEACy0LtYrWxBwGXM2e86JaSWvcHYOr29PTdT3AnIxt
         9CHg==
X-Gm-Message-State: AO0yUKWeJgg9Vy39o86tyAdfYsmK+xxDJTJY1EBmDYL5qovVPoQDI7Pb
        Vpv6gLEJosu74CeOdPYFXyk=
X-Google-Smtp-Source: AK7set9dk6IYhuOf9zQ2mSMS8gNvVhYKM2FADxAhZUWk9eDFBAdU2ix4jQMqUFF1A+/QPpVVUaw8/g==
X-Received: by 2002:a5d:6192:0:b0:2c5:542a:5850 with SMTP id j18-20020a5d6192000000b002c5542a5850mr2964538wru.39.1676495191058;
        Wed, 15 Feb 2023 13:06:31 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id m18-20020a5d6252000000b002c3dc4131f5sm16645296wrv.18.2023.02.15.13.06.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Feb 2023 13:06:30 -0800 (PST)
Message-ID: <a4b98527-0312-6d4d-59a7-f62a9e77f7ba@gmail.com>
Date:   Wed, 15 Feb 2023 22:06:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v3 2/6] man2/keyctl.2: use IEC or ISO multiples or add C
 digit separators to clarify long numeric digit strings
Content-Language: en-US
To:     Brian Inglis <Brian.Inglis@Shaw.ca>,
        Linux Man Pages <linux-man@vger.kernel.org>
References: <cover.1676489380.git.Brian.Inglis@Shaw.ca>
 <6e300118fbef8499d4a8889c2e50863670bec0cf.1676489381.git.Brian.Inglis@Shaw.ca>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <6e300118fbef8499d4a8889c2e50863670bec0cf.1676489381.git.Brian.Inglis@Shaw.ca>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------ZqQuG50HgdmGj9Al5kwlo6g4"
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------ZqQuG50HgdmGj9Al5kwlo6g4
Content-Type: multipart/mixed; boundary="------------6d1UzsfDry5dQRwZBaA03sdq";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Brian Inglis <Brian.Inglis@Shaw.ca>,
 Linux Man Pages <linux-man@vger.kernel.org>
Message-ID: <a4b98527-0312-6d4d-59a7-f62a9e77f7ba@gmail.com>
Subject: Re: [PATCH v3 2/6] man2/keyctl.2: use IEC or ISO multiples or add C
 digit separators to clarify long numeric digit strings
References: <cover.1676489380.git.Brian.Inglis@Shaw.ca>
 <6e300118fbef8499d4a8889c2e50863670bec0cf.1676489381.git.Brian.Inglis@Shaw.ca>
In-Reply-To: <6e300118fbef8499d4a8889c2e50863670bec0cf.1676489381.git.Brian.Inglis@Shaw.ca>

--------------6d1UzsfDry5dQRwZBaA03sdq
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Brian,

On 2/15/23 21:17, Brian Inglis wrote:
> ---
>  man2/keyctl.2 | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
>=20
> diff --git a/man2/keyctl.2 b/man2/keyctl.2
> index 4ce87dcf31af..0c27aaa44d7f 100644
> --- a/man2/keyctl.2
> +++ b/man2/keyctl.2
> @@ -729,7 +729,7 @@ including the terminating null byte), and
>  (cast as
>  .IR char\~* )
>  contains the description of the key
> -(a null-terminated character string up to 4096 bytes in size,
> +(a null-terminated character string up to 4Ki bytes in size,

4\ KiB

(and similarly below).

Cheers,

Alex

>  including the terminating null byte).
>  .IP
>  The source keyring must grant
> @@ -1742,7 +1742,7 @@ was
>  .B KEYCTL_SEARCH
>  and the size of the description in
>  .I arg4
> -(including the terminating null byte) exceeded 4096 bytes.
> +(including the terminating null byte) exceeded 4Ki bytes.
>  .TP
>  .B EINVAL
>  size of the string (including the terminating null byte) specified in
> @@ -1751,7 +1751,7 @@ size of the string (including the terminating nul=
l byte) specified in
>  or
>  .I arg4
>  (the key description)
> -exceeded the limit (32 bytes and 4096 bytes respectively).
> +exceeded the limit (32 bytes and 4Ki bytes respectively).
>  .TP
>  .BR EINVAL " (before Linux 4.12)"
>  .I operation
> @@ -1822,7 +1822,7 @@ was
>  .B KEYCTL_DH_COMPUTE
>  and the buffer length exceeds
>  .B KEYCTL_KDF_MAX_OUTPUT_LEN
> -(which is 1024 currently)
> +(which is 1Ki currently)
>  or the
>  .I otherinfolen
>  field of the
> @@ -2047,7 +2047,7 @@ and
>  the description of the authorization key,
>  where we can see that the name of the authorization key matches
>  the ID of the key that is to be instantiated
> -.RI ( 20d035bf ).
> +.RI ( 20d0\[aq]35bf ).
>  .PP
>  The example program in
>  .BR request_key (2)
> @@ -2056,12 +2056,12 @@ specified the destination keyring as
>  By examining the contents of
>  .IR /proc/keys ,
>  we can see that this was translated to the ID of the destination keyri=
ng
> -.RI ( 0256e6a6 )
> +.RI ( 0256\[aq]e6a6 )
>  shown in the log output above;
>  we can also see the newly created key with the name
>  .I mykey
>  and ID
> -.IR 20d035bf .
> +.IR 20d0\[aq]35bf .
>  .PP
>  .in +4n
>  .EX

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------6d1UzsfDry5dQRwZBaA03sdq--

--------------ZqQuG50HgdmGj9Al5kwlo6g4
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPtSVUACgkQnowa+77/
2zIpeA/9FnFxOd0qmACVDpQ4Y9QZ0eNni0T6jBwUOc0T3ZqKBxlENjpw/HHFU9Mb
wf34pUbsUqnrCaJycgB9INO3YeKE48hhNVi6On3KZQ5jtWHfQlYyNHBeVmoJKntS
tbp+PKzC4Zsh+StZSSqHHXOQ9CDrO5yq9BuYtMBDT65+jvqqEgTp2ZM2cIg+6f9W
9aZDr1NrpIdkytD4DYVhtOqvF2CiDOLNrLnyFjguMA1AknicOwH5HIOrYYW+e42V
NJRz5DxuUPsDj3btcw6zZHLwtTs5o94NhIXESxpykBmqJNNpbGLrIIBjBtRE7PMd
D+rN/l0N/N+2b5wqXCVAPnjyYYIvvssJnOts5i5oN98Trm19DDu/7hgqiFvVw0BQ
JNuY/+lRlMWPdU8e6EBv7icEJhBKi7ugZDs3LCiQBuHqUSFh4YsmaGD8ytinNaCK
OJdqKfkMaRyNX8FGrX1C1RQW96+JFI1b0BIYGCQG7okpNfdpq9zGjJIZessbzUeq
I3yQZzt+H59XAh97zcBtgiW7X2Yoc5K7j0Um0U8hNJGgkZbfYTqt6yHdrLrgStqF
xB9VWw4zoKBwtZc+hPXi192pDHA8mTAkH/VEbbNI+twsrwLC0nuLOEMT1ZqEux2t
VOKnlWFPl/QX0VammX+tzGYGC6PofZqH86S7F7fxi/xbT3JnONU=
=VWm9
-----END PGP SIGNATURE-----

--------------ZqQuG50HgdmGj9Al5kwlo6g4--
