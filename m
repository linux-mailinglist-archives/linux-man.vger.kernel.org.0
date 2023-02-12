Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3251469399D
	for <lists+linux-man@lfdr.de>; Sun, 12 Feb 2023 20:14:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229505AbjBLTOX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 12 Feb 2023 14:14:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44630 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229651AbjBLTOW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 12 Feb 2023 14:14:22 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8709ED501
        for <linux-man@vger.kernel.org>; Sun, 12 Feb 2023 11:14:20 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id o36so7338386wms.1
        for <linux-man@vger.kernel.org>; Sun, 12 Feb 2023 11:14:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kLLM+gKVA/uWT1Gl2B7H2g5RVaR07MV29g+HPGnHy/A=;
        b=jqIv/9il4jtm42V/rewGTTF/PBzKrlJj/dCLcJCvp61CZAgGd00nT0khGVeB7y/T2a
         odklz7Bp/7y+7YElgNu3u8dl/6QG3dHzkxt5oykqI09lQmmMk5fegdKZx42gY1OPy3N8
         79oa+BuOIS5bN8dMkrk3vPA1jBQeuQWeSStoFJ+jPRA6XJ5L/2/5N+Cr2DD3ySY/7hu9
         VJruPphqSYNx72vLZso8/BFTI/3yC3XCCjV6EteI81B8yZ7vH1kqHmXHfXTzwM2PK6dt
         S4/y5y7VPruZ6zkeCEMI2PrZY3WKVy15VHCXjgU4tBpYlufO0kP00Y9r79wZ8fR9exVe
         r68Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=kLLM+gKVA/uWT1Gl2B7H2g5RVaR07MV29g+HPGnHy/A=;
        b=ZbD5VKobvvxQZtuQsWfFQ4BhmwHc3tgLx2orD66UJSpSmTz5AlQzBsw+XH2fXvgHsj
         gkXPIH8LDZ8FqnE+21hf1NVeEwEOKE8JKUdci+o0hiP7ibTppR/6IIKjYcF21jqnocWy
         bU97m1JFtfmrEg7Go4acRg7FXc3UYDeLWa6KWrnvS7V156iLCnsk81oDu3nW8UZW13aM
         3wyf8f79qeQ6gKbCgtIKbKEBURwZfGvERALAtcT0Wh2t1ubEeIRtpuubtc+TQfnZKOvL
         ddXobyOlwgWpzP5gt/mT5Po4AliZAO31m3bXpnD1TLsWODxN+P5wGpnHc/8R6/D5Ph+H
         IRTg==
X-Gm-Message-State: AO0yUKWoZTI0EIu12a3aGrKEmjW8+aIISQKVYk6XMQvk+PSF7CUbW/fF
        4ZLuok2rCWjMNVa4cFMqMuKj0SBoVA8=
X-Google-Smtp-Source: AK7set+SNFta/PhcECE7EDgvPe09wbttuGconYp0g2v+bijaLm9gExsZqV9yxpCAocn1iNw6+8YT4w==
X-Received: by 2002:a05:600c:491d:b0:3da:2a78:d7a4 with SMTP id f29-20020a05600c491d00b003da2a78d7a4mr17342873wmp.21.1676229258951;
        Sun, 12 Feb 2023 11:14:18 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id y6-20020a05600c364600b003df7b40f99fsm14249486wmq.11.2023.02.12.11.14.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Feb 2023 11:14:18 -0800 (PST)
Message-ID: <e4231c01-73f0-7846-f462-f3921a811ec1@gmail.com>
Date:   Sun, 12 Feb 2023 20:14:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [patch] recv.2: Mention SOCK_SEQPACKET in MSG_TRUNC flag
 description
To:     Vladislav Ivanishin <vlad@ispras.ru>
Cc:     linux-man@vger.kernel.org, Eric Dumazet <eric.dumazet@gmail.com>,
        Piergiorgio Beruto <piergiorgio.beruto@gmail.com>,
        "David S. Miller" <davem@davemloft.net>
References: <87v8n03coa.fsf@ispras.ru>
 <00e2987e-0f37-b572-256c-163ded066fa0@gmail.com> <87cz6fqa0z.fsf@ispras.ru>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <87cz6fqa0z.fsf@ispras.ru>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------ykZN20fjPekGyT5HhhQCFnj9"
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
--------------ykZN20fjPekGyT5HhhQCFnj9
Content-Type: multipart/mixed; boundary="------------8whvNiLacbRWxxKFs0VR7guS";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Vladislav Ivanishin <vlad@ispras.ru>
Cc: linux-man@vger.kernel.org, Eric Dumazet <eric.dumazet@gmail.com>,
 Piergiorgio Beruto <piergiorgio.beruto@gmail.com>,
 "David S. Miller" <davem@davemloft.net>
Message-ID: <e4231c01-73f0-7846-f462-f3921a811ec1@gmail.com>
Subject: Re: [patch] recv.2: Mention SOCK_SEQPACKET in MSG_TRUNC flag
 description
References: <87v8n03coa.fsf@ispras.ru>
 <00e2987e-0f37-b572-256c-163ded066fa0@gmail.com> <87cz6fqa0z.fsf@ispras.ru>
In-Reply-To: <87cz6fqa0z.fsf@ispras.ru>

--------------8whvNiLacbRWxxKFs0VR7guS
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Vladislav!

On 2/12/23 14:38, Vladislav Ivanishin wrote:
>=20
> unix_seqpacket_recvmsg() calls unix_dgram_recvmsg() which handles
> MSG_TRUNC. This has been the case since the handling was added in
> 9f6f9af7694ede6314bed281eec74d588ba9474f; see net/unix/af_unix.c:
>=20
> static int unix_seqpacket_recvmsg([...])
> {
>         [...]
> 	return unix_dgram_recvmsg(iocb, sock, msg, size, flags);
> }
>=20
> The sequential-packet socket type seems to have been left out from the
> description by an oversight.
>=20
> Signed-off-by: Vladislav Ivanishin <vlad@ispras.ru>
> ---
>=20
> Hi Alex,
>=20
> On Sun, Dec 11 2022, Alejandro Colomar <alx.manpages@gmail.com> wrote:
>> Hi Vladislav,
>>
>> On 11/27/22 11:38, Vladislav Ivanishin wrote:
>>> unix_seqpacket_recvmsg() calls unix_dgram_recvmsg() which handles
>>> MSG_TRUNC. This has been the case since the support for this flag was=

>>> implemented in the latter; the sequential-packet socket type seems to=

>>> have been left out from the description by an oversight.
>>> Signed-off-by: Vladislav Ivanishin<vlad@ispras.ru>
>>
>> Could you please point to the relevant kernel commits, or quote the re=
levant
>> lines of code, in the commit message?
>>
>> Thanks,
>>
>> Alex
>    =20
> Sure, here's an updated version.

Thanks!  I CCd those involved in the referred commit.  I'll give them a w=
eek or so to have a look.  Could you please ping me again in a week or so=
?

Cheers,

Alex
>=20
> Vlad
>=20
>  man2/recv.2 | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/man2/recv.2 b/man2/recv.2
> index 5298a2745..81cd1957c 100644
> --- a/man2/recv.2
> +++ b/man2/recv.2
> @@ -226,7 +226,8 @@ subsequent receive call will return the same data.
>  For raw
>  .RB ( AF_PACKET ),
>  Internet datagram (since Linux 2.4.27/2.6.8),
> -netlink (since Linux 2.6.22), and UNIX datagram
> +netlink (since Linux 2.6.22),
> +and UNIX datagram as well as sequenced-packet
>  .\" commit 9f6f9af7694ede6314bed281eec74d588ba9474f
>  (since Linux 3.4) sockets:
>  return the real length of the packet or datagram,

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------8whvNiLacbRWxxKFs0VR7guS--

--------------ykZN20fjPekGyT5HhhQCFnj9
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPpOoIACgkQnowa+77/
2zKudw/7BH/MUNbm6zRg/O9SiLg9EeQxBvqilmnAvKHJDGRTTlEoEGuIUe8Ynb6E
UPMjEY34NFioq/T+KbJVCS/Hw9EPMqDsoJybB04x/0/o4Bb3BwG6i/yBEGGUL3nT
1PsMtBtEHQatgEDXYiKJ/zG4leNXPUdvKWObrJTB9VxyGovuP//oWVahaHVzylRn
q9PnQPprYyUqk23+00NnLrKEOJHO8fP7e+ZaExuMfmA94a8fLE1ELjHLlFjqUKU3
f2+Erbwm4xAALiOOXg1CRkPsX+wWn9Nf1X2EUZ6Ucupfnc/ZAe5fjcU1XeX72Qi/
VwTTT7qbHrlE096XS0LEJ/8hyQVev4HcPBsEim6Tfp/q2cyfAlZ8u35URN8y2IhX
0ldO+0Ponp1u8eAmTbIo4d238BfGK6ZQ+CRk4Cv6xhCFpQqp/Lh4Y1cX/wb5d6df
gsaX+ogL4ZogFDgxN6haZ3kfG02Ixr+t0I4D7ISZSD5XbTfH4dy9/qbg2T0w8ocx
sXf07cKt92AnLzlSbPaZ9OsTb665LQVEfBbRm51egShOOZ4SlNGlo1paNmD+pKh9
/HKikaM0yVarTTLoUahIOVO3XPF8zrD0JYYOTW5f1f9Lyvz8KvVNXt3Fw99Zs7rB
PIksDs24J14fqitsXPaXiimPyh7niWmUyENQorxdi5q2ItLwfaE=
=EF4j
-----END PGP SIGNATURE-----

--------------ykZN20fjPekGyT5HhhQCFnj9--
