Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DDB006E5026
	for <lists+linux-man@lfdr.de>; Mon, 17 Apr 2023 20:28:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229655AbjDQS2o (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 17 Apr 2023 14:28:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39942 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229562AbjDQS2n (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 17 Apr 2023 14:28:43 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 530F110DD
        for <linux-man@vger.kernel.org>; Mon, 17 Apr 2023 11:28:42 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id o29-20020a05600c511d00b003f1739de43cso1815726wms.4
        for <linux-man@vger.kernel.org>; Mon, 17 Apr 2023 11:28:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681756121; x=1684348121;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6WxWHCQBnAGedvPTBlm7Ce6F6AQccsc146EncSlANWk=;
        b=mns6+VP994qexssJPkRX0xDTrhhKbVu74MiMphdhtFpCqdoApEcFNPlowSxI9PURzn
         KP96iiJU4y/WZsoFu9wRE1oxWaWkAsLHOiCYIDo+H2O9AEs7fXe0bOF7B5vltsDLvmLH
         C3Kt6FLZ9LzNiAJiVs44tn4ZBHl/jnhMkKEwr59iS6AN078U20h8sVzU+oK36kRdqpxJ
         bj2MuU9wK59oJA0m0+FXVA56a6PPZc9RKD/6WtGGRGe5nx1YpxBu6zNvgvFeWP/+ogiK
         OLHwcG2Anxru9ojm6nkEm0vEONML1cUJ65JLGoY5u0NUGkeGbOUHftdA/xxUkobmncWt
         FIXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681756121; x=1684348121;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=6WxWHCQBnAGedvPTBlm7Ce6F6AQccsc146EncSlANWk=;
        b=Z6vJEhHXuWFaTnl9socE3Z3/YpbJESUJbkaEw9RjulN1yh8NL9eVQgdVXO9PWoVA9w
         q3kKWQ45ZQCSpF0P4ylrb6UmTpHDgCCY4uDbdtnyGcoKO4o/tSk5rDze875mLPGdy0Ig
         AV9wJ3Gc60/c0djTB24zyh73HjPCIBh43qInwQW70Ha17nCD5e61hdwfmZxSTv/lTqvt
         w3H0WpG+QRQ2CUf4kH77CdLBKSdjv9h0S7JkTFG1mY0jgMxhIbNICFsov6p1z4ntM+z5
         I1eNqs7xcyWvY7oteE+q9hFIsNyEIK248CRetyQxRj3YejbCAGpAX5J+SAUsM0joDldE
         699w==
X-Gm-Message-State: AAQBX9fUqnWF8RubNKub/fXHthrzN+225AeIREZXuZFinvzhOumHYS4l
        KdMBaZEeMVS7+RAnN28C1+Nv5EupQYQ=
X-Google-Smtp-Source: AKy350YwRbyStt6vBuYcJ4Mc69qkwb0Nnp8srfIty45Y36lar/8Y6wl2dRrI8waiJFjQtecB6pSy0g==
X-Received: by 2002:a7b:ca4d:0:b0:3f1:745c:7de2 with SMTP id m13-20020a7bca4d000000b003f1745c7de2mr2128223wml.5.1681756120819;
        Mon, 17 Apr 2023 11:28:40 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id f14-20020a5d58ee000000b002f3e1122c1asm11082955wrd.15.2023.04.17.11.28.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Apr 2023 11:28:40 -0700 (PDT)
Message-ID: <75f10c45-b00b-4126-6843-a8f241ef16d5@gmail.com>
Date:   Mon, 17 Apr 2023 20:28:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH 3/4] proc.5: Document that /proc/<pid>/oom_adj is no
 longer present
Content-Language: en-US
To:     Guillem Jover <guillem@hadrons.org>,
        Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
References: <20230416233552.283776-1-guillem@hadrons.org>
 <20230416233552.283776-4-guillem@hadrons.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230416233552.283776-4-guillem@hadrons.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------4f6VMa2O7v5dJ53bSp2KcNrZ"
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------4f6VMa2O7v5dJ53bSp2KcNrZ
Content-Type: multipart/mixed; boundary="------------xcnA6ujpHtDlx4DbLg4rIqd0";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Guillem Jover <guillem@hadrons.org>, Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Message-ID: <75f10c45-b00b-4126-6843-a8f241ef16d5@gmail.com>
Subject: Re: [PATCH 3/4] proc.5: Document that /proc/<pid>/oom_adj is no
 longer present
References: <20230416233552.283776-1-guillem@hadrons.org>
 <20230416233552.283776-4-guillem@hadrons.org>
In-Reply-To: <20230416233552.283776-4-guillem@hadrons.org>

--------------xcnA6ujpHtDlx4DbLg4rIqd0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Guillem,

On 4/17/23 01:35, Guillem Jover wrote:
> Signed-off-by: Guillem Jover <guillem@hadrons.org>

Patch applied.  BTW, changes the subject to PID for consistency with
your other patches.

> ---
>  man5/proc.5 | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>=20
> diff --git a/man5/proc.5 b/man5/proc.5
> index 4bb7dd262..a3b5ffc7b 100644
> --- a/man5/proc.5
> +++ b/man5/proc.5
> @@ -1640,7 +1640,9 @@ although a process can always increase its own
>  setting (since 2.6.20).
>  .IP
>  Since Linux 2.6.36, use of this file is deprecated in favor of
> -.IR /proc/ pid /oom_score_adj .
> +.IR /proc/ pid /oom_score_adj ,
> +.\" commit 01dc52ebdf472f77cca623ca693ca24cfc0f1bbe

And moved this to the commit message, since I don't want to pollute
the source code for such an antique reference.

Cheers,
Alex

> +and finally removed in Linux 3.7.
>  .TP
>  .IR /proc/ pid /oom_score " (since Linux 2.6.11)"
>  .\" See mm/oom_kill.c::badness() before Linux 2.6.36 sources

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------xcnA6ujpHtDlx4DbLg4rIqd0--

--------------4f6VMa2O7v5dJ53bSp2KcNrZ
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQ9j9cACgkQnowa+77/
2zL61g//SvaoiMAvanLUuJnzHsdS6xwaBTZccij5GPrXV0+uMlVAqRPhvDfCOYJ0
RBi6UGIU0uTgNxm5OGZpbdx6hsNRaOsBNKpZLq+4t/ysfqdRaR5DtBrR1gCHw2SG
E/CyMYnRt1XMOu4HWn/W+BJwJLscX6mU17SMWb+eXNDYK2ug0zQkBoHIhkavf+WU
viOzV4rQKxOtIRcUCJZlNyECMqNP3mmvIkxsky9MAtw3wu5et+rEvNKGJBcYVPfH
gotjZc83E1zvXNkVJhq6FJO6CmaG6W6SSVyLRq38H+p0C5MYyThC0EYv8P9o+cH9
4kRuuFXuldKq+8eVcnAiqcZx3kC4JFdeIIpgQTNpMv7GdwJ063IG8W9lLsudRt6g
HXThOp2/plv+0toojV7vmn0ujOCp6GGwi8z8WdHAgpjGWFHN6dn0TAzkuDHrc2iy
eUcSX3+RuZ+A5ezg9N7piLY9fde4DvuJp2xbUzH+rlQLDy+olGj1v1KNYn0G9KKY
+idzDsXcJLRxON41o/hI4uIurjNckED8+UVlTvulGnMKTk5XcPHZtk3NPcB7E9ti
ZSKpzTUyhFlhodc72c3bh2gZd7h4t4VXKv3J1c8AAFW/xmtwyJ99oP/2w5wWx2+B
idAa3DvoozQghFD3XXUaEz7bH7634LeHztg1i/vCNdLie9tvyxk=
=G7Ga
-----END PGP SIGNATURE-----

--------------4f6VMa2O7v5dJ53bSp2KcNrZ--
