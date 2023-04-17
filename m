Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 075746E4F15
	for <lists+linux-man@lfdr.de>; Mon, 17 Apr 2023 19:20:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229824AbjDQRUT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 17 Apr 2023 13:20:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49610 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229875AbjDQRUS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 17 Apr 2023 13:20:18 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A0359768
        for <linux-man@vger.kernel.org>; Mon, 17 Apr 2023 10:19:59 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-2efbaad83b8so1063116f8f.0
        for <linux-man@vger.kernel.org>; Mon, 17 Apr 2023 10:19:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681751997; x=1684343997;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lZEo7MfAajpqrJvj2nB5icWwoNt9LLd8xmmiBp3CPzw=;
        b=gPeEHBdBP8Rq1Dch+5HZ2A71cp9cEROf+u9CIbAoFjTHoG7WTkwvLhzTj2F26cdhkt
         Bjdk+XC9Fq1C/ii1g5FA41KVHP0Kz1F4q6upIiDZV/DPggtQ6g7hP3nQi63px7ylz5qc
         aIHRg872JmLmVCm6XuB4+ur0URzvMRO2EU9NEImuXsoieVPNDNKnNhXs9loJbIPsJc9O
         5Zpb3Q+V3Mwzf/BtseEv4xXjIeFKLMhx+fdHEYB8Ko6T8YLAJVrgZyaC46gr6d1HSiUS
         kLhKNzuQsaePZwpjxacc36s88OSzLsqCgTYhdDm0p68JmlJVCGorgneWOdDW8YomkEV/
         ncNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681751997; x=1684343997;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=lZEo7MfAajpqrJvj2nB5icWwoNt9LLd8xmmiBp3CPzw=;
        b=GVqeXFEbed9qIm+4y7TmytpV490HjB82Wl3jHpjuJtUTqqoO/BoVaBpCZWY163O+FA
         lrUy6MkGNN8OuYwIjOCzI+KZj/+HSMbS5vIpQlP/EyoNmrHL1ytFPn9aN2eCdiYes65h
         G0Ixq8nMYUUQoOhbxzI1BPx24DNJOTHW2FEP1DCjhXQxITnzdwIx3bb3eEa+TJ1jcaxq
         U3x25JbYx50xeemkeJ31zxjG1TOA5ydXXt7mFY7I6MxPr/DI9qcW4V3mzChB+5E8QN3f
         fr0zXywCyA6jncxyROvrWEhu2a28mfVW3u1H7OiV/GJmuDkUaXmT7an9FztcDkYT/WF+
         u7sw==
X-Gm-Message-State: AAQBX9fZz5RE01uKnJvckZeMwVLKYiT56MiLt6nUIGBpvaj679HIkn8a
        P8u39vOc6VLd6NrNsdLh2uU=
X-Google-Smtp-Source: AKy350Y9nkVwnYjt9tTHUp3KksE6brhAEYehRCYKHC79DTR1lMuT5hMiZM9GOcQtmmt9kBYCI1d4ag==
X-Received: by 2002:a5d:5409:0:b0:2f8:5d73:dbf0 with SMTP id g9-20020a5d5409000000b002f85d73dbf0mr6044699wrv.27.1681751997020;
        Mon, 17 Apr 2023 10:19:57 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id z2-20020adff1c2000000b002f900cfc262sm5643788wro.66.2023.04.17.10.19.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Apr 2023 10:19:56 -0700 (PDT)
Message-ID: <3973a1bf-33b4-2e12-d5c5-021c3128f5c3@gmail.com>
Date:   Mon, 17 Apr 2023 19:19:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: tput man page
To:     Oran Bodner <OJBodner@hotmail.com>,
        "alx@kernel.org" <alx@kernel.org>
Cc:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
References: <TY0PR0101MB4214981A3155E7D25FC5FB00DA9C9@TY0PR0101MB4214.apcprd01.prod.exchangelabs.com>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <TY0PR0101MB4214981A3155E7D25FC5FB00DA9C9@TY0PR0101MB4214.apcprd01.prod.exchangelabs.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------ScyO1AHZCjBuwpT2ChdAM0Q6"
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
--------------ScyO1AHZCjBuwpT2ChdAM0Q6
Content-Type: multipart/mixed; boundary="------------u1tianLghNp587YR1jiiZiPZ";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Oran Bodner <OJBodner@hotmail.com>, "alx@kernel.org" <alx@kernel.org>
Cc: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Message-ID: <3973a1bf-33b4-2e12-d5c5-021c3128f5c3@gmail.com>
Subject: Re: tput man page
References: <TY0PR0101MB4214981A3155E7D25FC5FB00DA9C9@TY0PR0101MB4214.apcprd01.prod.exchangelabs.com>
In-Reply-To: <TY0PR0101MB4214981A3155E7D25FC5FB00DA9C9@TY0PR0101MB4214.apcprd01.prod.exchangelabs.com>

--------------u1tianLghNp587YR1jiiZiPZ
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Oran,

On 4/17/23 10:55, Oran Bodner wrote:
> Hi, I happened upon your man page for tput https://man7.org/linux/man-p=
ages/man1/tput.1.html

This page is part of the ncurses project, not of the Linux man-pages proj=
ect.
The Linux man-pages project is concerned mostly just about glibc and the
Linux kernel (so man2 and man3), with little pages apart from those.

To report this bug, please follow the COLOPHON section at the bottom of t=
hat
page:

COLOPHON

       This page is part of the ncurses (new curses) project.
       Information about the project can be found at=20
       =E2=9F=A8https://www.gnu.org/software/ncurses/ncurses.html=E2=9F=A9=
=2E  If you have
       a bug report for this manual page, send it to
       bug-ncurses-request@gnu.org.  This page was obtained from the
       project's upstream Git mirror of the CVS repository
       =E2=9F=A8https://github.com/mirror/ncurses.git=E2=9F=A9 on 2022-12=
-17.  (At that
       time, the date of the most recent commit that was found in the
       repository was 2022-12-11.)  If you discover any rendering
       problems in this HTML version of the page, or you believe there
       is a better or more up-to-date source for the page, or you have
       corrections or improvements to the information in this COLOPHON
       (which is not part of the original manual page), send a mail to
       man-pages@man7.org


Thanks,
Alex

> It is stated there that:
>=20
>  The tput command was begun by Bill Joy in 1980.
>=20
> But I was actually the developer of this command.
> I proposed and wrote the command in 1983 while working at Bell labs
> https://www.linkedin.com/in/oran-bodner-b31245/details/experience/?prof=
ileId=3DACoAAAAJBBUBcz6WMyu34xG8bufekJZ3i9g-oR8
>=20
> https://www.linkedin.com/in/oran-bodner-b31245/overlay/50057788/single-=
media-viewer/?profileId=3DACoAAAAJBBUBcz6WMyu34xG8bufekJZ3i9g-oR8
>=20
> Thx, Oran Bodner
>=20
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------u1tianLghNp587YR1jiiZiPZ--

--------------ScyO1AHZCjBuwpT2ChdAM0Q6
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQ9f7IACgkQnowa+77/
2zI1QxAAnUO4/+rCg3yFeV2CBOJTjREOovKrPbzSdDsPxoYWSAL6ibD5/sU3NRmB
KibfB+KfJWjmJ55RqXqbtfVZ9SJnZaKOztQkE7SB88LdmKDKVPQXbMMs8FiQdpBi
dLb2kH3SYWLwtyMxbQgdtWzbZXrwJWEzKWcAgnd6CMeAU+itVm7S0gLDHRg08SBS
EKzNCt11H+xYVhWM4yHfuNyY9raOmG23isM++8/5OA0cV3un0RPPf4GFmmFdYUDr
YbR2Jvp2x5E2uQHf1oB4/hxzG8njAt9/YTDzSHN5Nz1TI0Vv3/8/ze+MDU0DjQlE
c42FW0cfp9t6ww+xw11VWYIaz26hTP7fyVzkizduncnCan65p7tZ8XoHubYKZAbl
g/EhEN6TfK52W2Q7ej/rzXWi/7pJWxm4Mw4BUN6Y0p4Ftb5+OW83mLR0RBI9ceHs
ueexNkTjFTzj07lfWpK084YADMxrOxHDuCpcMSJ1dyeofJra5kt8ka77jKc7oYz3
T4D2LRCOph3a2b7GKGr6RczAIJAezSH7/j8GGUfttRQdwZYKBbZxSUoyP2RGh5c7
oVWkRU3++dXDHXpV5+5WB/Wm8I9BoXrfswfYXOVnyOc+E2cznnJrCk9qjkaOiRvX
EgRhgc8z3SwdJXyJbmGt2sumEoEm/BfH17xGdrtdbd4fiOyA+eM=
=xyqO
-----END PGP SIGNATURE-----

--------------ScyO1AHZCjBuwpT2ChdAM0Q6--
