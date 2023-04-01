Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4E1DC6D34E8
	for <lists+linux-man@lfdr.de>; Sun,  2 Apr 2023 00:59:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229448AbjDAW7L (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 1 Apr 2023 18:59:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53548 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229379AbjDAW7K (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 1 Apr 2023 18:59:10 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B7EF1A471
        for <linux-man@vger.kernel.org>; Sat,  1 Apr 2023 15:59:09 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id r11so25787421wrr.12
        for <linux-man@vger.kernel.org>; Sat, 01 Apr 2023 15:59:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680389948; x=1682981948;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l++z+tvUD0WSFgTuGO3ONJTTwcBjVBdm/ofwfh32RlU=;
        b=oN3R++yhOKPGbgjy86y3CApUniLvroS/JwtQS1fzLPAK4e09Yes1y+7+I6SL9z+nVr
         KRMLdzbKfZxgKTO2yslnNRdqUbEgJUW0i2P0OfRmStelkxaFXLbxHhSg5OwhsFZnj25A
         kJlcvnbS4Vl4HrafDb3+2gKHNODTv53vss89IZyPdEqaX7JvorF+bTrOaDTg0ReJ3xXi
         CEzPuVIo+8gM2DKirraf6mEkY7BK3uDD/JPwYX/4ESgFTkQizoQO2Wxx0ziiWCAYoEez
         K+QwpXgoU/UvEzIKvurYRH/yuqun+KAT4BpG/aqZy+/P2kjILxlfd88NJjO/IaNtQqjo
         omeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680389948; x=1682981948;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=l++z+tvUD0WSFgTuGO3ONJTTwcBjVBdm/ofwfh32RlU=;
        b=qIJBSCbxcgFWnnrrHL1FytyhNUuxz23kdtkQjbGcDNZv1TV/jr1g9WCwVel5fszeK8
         NtQHFvbd2y8F8LLgeVdW04iNlRTnHWnsEFf7SQA1+eGnxAiRW5QCKRqqS6shs5lx/6dJ
         yZpvYykgmT2H+tTmoaNp5fHhgSayjyb1Fy4zfi8RH+cIumZ7XmiPRwPNDPbzGJgPs467
         eeoNvUUFmUayeR5yzbGC2O+Nt3jaDuDjVZNseP9sRyzaDAlJZu9V7hEM/d5du+rE8GHw
         ROTcULc10cTAwe7klsnnUHA1Z/CPa6IZsEK82POhHgnmRYspFl1po4QzQIsFbFHQM5B4
         A8mA==
X-Gm-Message-State: AAQBX9fP6oLwPQ1P85X2oaC1RIYx8P6bCNp0JIxMZ/ferd312aL6a7c6
        xSxzDeXUMNJvarkH9SAyhSENpyUd49U=
X-Google-Smtp-Source: AKy350af8jYJGqtysidGxzu4ow7NaAOgEEHzoh2USsE4l6KIxzpZqzdH05ES8XNSYP1QooZ5BrFbkA==
X-Received: by 2002:a5d:490d:0:b0:2cc:4e58:f6d0 with SMTP id x13-20020a5d490d000000b002cc4e58f6d0mr21152094wrq.54.1680389947769;
        Sat, 01 Apr 2023 15:59:07 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id c17-20020a5d63d1000000b002d1daafea30sm5906352wrw.34.2023.04.01.15.59.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 01 Apr 2023 15:59:07 -0700 (PDT)
Message-ID: <da979c66-b166-abed-214b-1263a84af077@gmail.com>
Date:   Sun, 2 Apr 2023 00:58:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 1/2] proc.5: add "system information, and sysctl" to .SH
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
References: <792eaf9c-f43e-adc9-c7ae-b1ef9f28a7bf@gmail.com>
 <6be579daa25e0c9a2692388cf12cb51a96f98350.1680300226.git.nabijaczleweli@nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <6be579daa25e0c9a2692388cf12cb51a96f98350.1680300226.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------SjalKJWnyGHZD9gXPXCO8sc0"
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
--------------SjalKJWnyGHZD9gXPXCO8sc0
Content-Type: multipart/mixed; boundary="------------5z0lKlNeB9hbt874d7jzzIFw";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
Message-ID: <da979c66-b166-abed-214b-1263a84af077@gmail.com>
Subject: Re: [PATCH 1/2] proc.5: add "system information, and sysctl" to .SH
References: <792eaf9c-f43e-adc9-c7ae-b1ef9f28a7bf@gmail.com>
 <6be579daa25e0c9a2692388cf12cb51a96f98350.1680300226.git.nabijaczleweli@nabijaczleweli.xyz>
In-Reply-To: <6be579daa25e0c9a2692388cf12cb51a96f98350.1680300226.git.nabijaczleweli@nabijaczleweli.xyz>

--------------5z0lKlNeB9hbt874d7jzzIFw
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi!

On 4/1/23 00:04, =D0=BD=D0=B0=D0=B1 wrote:
> procfs hosts a whole host of information about the system,
> as well as sysctls; proc(5) hosts a description of a lot of sysctls,
> and at present there's no way to find that out.
>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.=
xyz>

Patch applied.  Thanks,
Alex

> ---
>  man5/proc.5 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man5/proc.5 b/man5/proc.5
> index 39c7eb8ab..e2e3c3409 100644
> --- a/man5/proc.5
> +++ b/man5/proc.5
> @@ -36,7 +36,7 @@
>  .\"
>  .TH proc 5 (date) "Linux man-pages (unreleased)"
>  .SH NAME
> -proc \- process information pseudo-filesystem
> +proc \- process information, system information, and sysctl pseudo-fil=
esystem
>  .SH DESCRIPTION
>  The
>  .B proc

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------5z0lKlNeB9hbt874d7jzzIFw--

--------------SjalKJWnyGHZD9gXPXCO8sc0
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQotzIACgkQnowa+77/
2zK3Gw/8CHHOxuzG2jMLrzQvlcI8B7lXNGR2TaJDxbrHXyDfONn49kr1SRSqi02K
Axq2PcR3SrEOF/bxveAGG0uZw+PRNpp1GCAo9VTSn0Nh4HNrDzCxWMTIJRdLgi6f
CcDXzI/G3IjfCopOK6zo5dd3NPE/kGOZz1wNXwIMF02f2eYMZpwrO5uILYkpn6UB
WN8mEpkZ+nGZL5i4OEK15BPoLCddk+7z/yxLjlxsfThqWr6MGIHpFn/9CN3pQZDh
qycxG0uouYtw7v1bnVnMB96sKEfQz1w/X4FoPPC3gvwD99hUrkbAEzdG+CE4Siyo
C6I4rdS/QVZ9oWuY8RyX6iqw0mNidfwmYxtldT0oVP5KSmzGEM6OdhPF7bQsB3d8
A/4V4qs9AjeEwoq56xoNZnMS0PXC4AOBjnkvHe1xWrP2ubC2K506/eoqWSVNm5gn
zE2/sahFt8oL/oB2pLBajoTFO/QC/ZUNjbX0+UjOZNA5H5K8bX3GveIptxpGQxLJ
rF2ymEbJEPIQoEaXXOEoT8HyHZyylmZKbYcIjoypxnYFr9MfDK1ltkhHfTh76W+n
38BIrCOpSq5BZGkmzPViD2EypvYRNlMX8DpFQQWtmUbGlugfZw7138P78NC2hvMu
WcRUvJ99RHCt4UEn9KcJV05/9vfDJxf7RquK0U4L3K7BTOLF+kI=
=zwsK
-----END PGP SIGNATURE-----

--------------SjalKJWnyGHZD9gXPXCO8sc0--
