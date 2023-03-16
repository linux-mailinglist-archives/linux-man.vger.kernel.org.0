Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 843496BD0E0
	for <lists+linux-man@lfdr.de>; Thu, 16 Mar 2023 14:33:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229629AbjCPNdd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 16 Mar 2023 09:33:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55490 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229647AbjCPNdc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 16 Mar 2023 09:33:32 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B4B2364238
        for <linux-man@vger.kernel.org>; Thu, 16 Mar 2023 06:33:29 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id j2so1552604wrh.9
        for <linux-man@vger.kernel.org>; Thu, 16 Mar 2023 06:33:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678973608;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xkwIP4jJvmqRy9mc9MKvr2rsi9DlKQ6AmTnXM9xpJZ0=;
        b=QLmng+loOL4FUQqw5dqSLB1aYhhksE0kVinA1R3Z/DZgS3EyalgNSfSXsakR5ZDRiw
         7h0UhhZ+svErYy8qjBezZCexyU6FsaYbW5vUb5LAjHXyP++Z/VjkpL/Jaa5v+P+PFWg7
         GRsaTURceI8mM24cLKfjCrJzSI8BS5nJ3eEpC7iOJkwJqyl0T7sqE+PZDw3PYgS+z9lh
         GezN066HZL2Lw8b4cqL/u1h3Pwf/kM3zG//7MnQNQYyaTwkuMcUikIZthGZ22jfuv5wG
         6CbmDk1XVCimCFinuypBTP96Lvn6OH3X53L8hcHP9M6duQR8xhOPymiGen4l4HiKQ2vu
         1/6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678973608;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=xkwIP4jJvmqRy9mc9MKvr2rsi9DlKQ6AmTnXM9xpJZ0=;
        b=lJYrd6dvhfQ7DchusWIP/nPYZosaf7mxpHKpp89IcAgGPfCMalyIfn/6ZuzuB8qdzQ
         CMKHOJpjZZLpw89V8DuQRwKfJwsfpIvvSQpFO04dFC9QhtJ0xYWqkmtYF7ObTYSbgs90
         uROY5ASKk55dTumT2x8pkmA5a3m66nRWfqHCINtisVzwK1OqcghYA0haWQtq4Rx8W/2H
         Kd9mPVFAY348GD7BxJuQBR6KLncpi+RzhjElxP2+VOFByvk5fQGCyrSCyTiYcwafW8bN
         fSHTVKTVxKoLDRr/9t9ksMXWecE099WQWYoMXDkc6BfdSM97BAFPlONqnjj8k5/+GbZL
         8Phw==
X-Gm-Message-State: AO0yUKVebs5S0w5YefbJn+2P035Oc5h3lwqRnixJq6pkZx3Htj2RBJqV
        YRWMh2u/8OUVrw6o/6SrEgITV3Uj2dg=
X-Google-Smtp-Source: AK7set/KwNo6JUhx2VpT4h9DEwP5ddZoo7LYB8bGQu+W3v4VmPHr9wkNq5FwZHTv7DIbfp4Icuzc1w==
X-Received: by 2002:a5d:474e:0:b0:2cf:d25a:635b with SMTP id o14-20020a5d474e000000b002cfd25a635bmr4987803wrs.62.1678973608100;
        Thu, 16 Mar 2023 06:33:28 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id b14-20020adff90e000000b002cff0e213ddsm4741111wrr.14.2023.03.16.06.33.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Mar 2023 06:33:27 -0700 (PDT)
Message-ID: <02a63754-21b0-681a-3e58-0da053fe818f@gmail.com>
Date:   Thu, 16 Mar 2023 14:33:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v4 3/3] landlock.7: Give a pointer to how to implement a
 fallback mechanism
To:     =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack3000@gmail.com>,
        =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
References: <20230310220851.22261-1-gnoack3000@gmail.com>
 <20230310220851.22261-3-gnoack3000@gmail.com>
 <1421ea14-dca4-2969-11b7-4a37720b9886@digikod.net>
 <20230316.49640ba315d3@gnoack.org>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230316.49640ba315d3@gnoack.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------jIjQsO20OSwACpJFbvCbYLLC"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------jIjQsO20OSwACpJFbvCbYLLC
Content-Type: multipart/mixed; boundary="------------WCCNTUfntDSQWijf0pUNx7DD";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack3000@gmail.com>,
 =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>
Cc: Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
Message-ID: <02a63754-21b0-681a-3e58-0da053fe818f@gmail.com>
Subject: Re: [PATCH v4 3/3] landlock.7: Give a pointer to how to implement a
 fallback mechanism
References: <20230310220851.22261-1-gnoack3000@gmail.com>
 <20230310220851.22261-3-gnoack3000@gmail.com>
 <1421ea14-dca4-2969-11b7-4a37720b9886@digikod.net>
 <20230316.49640ba315d3@gnoack.org>
In-Reply-To: <20230316.49640ba315d3@gnoack.org>

--------------WCCNTUfntDSQWijf0pUNx7DD
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi G=C3=BCnther, Micka=C3=ABl,

On 3/16/23 07:54, G=C3=BCnther Noack wrote:
> Alejandro, what are your thoughts?

It all depends on how much complexity increases.  If it's not much, we
can keep everything.  You can send the complete example, and then if
it's too much we can cut pieces of it.

>  (Happy Birthday, btw :))

:)

>=20
>=20
> (My personal stance is: I'm concerned that the man page example might
> become too long if we try to add the "best effort" fallback to it, so
> I would slightly prefer to explain the fallback logic outside, but
> could be convinced otherwise.  I see the point that people might
> cut&paste the example from the man page and miss the longer
> explanation in a different place.
>=20
> I have attempted to explain the "best effort" fallback on my weblog
> starting from a blank slate, and ended up with the explanation at
> https://blog.gnoack.org/post/landlock-best-effort/.  I believe that
> most users can use a simpler "best effort" fallback logic when doing
> this case analysis, but the explanation is probably too long for the
> man page.)
>=20
> Another alternative would be to make the example assume Landlock v2
> (Linux 5.19). In that case, the fallback logic would be simpler and
> the case analysis from the weblog entry collapse into a single case,
> but the example would fall back to not using Landlock on Linux 5.13 to
> 5.18 (including the long-term release 5.15), which is also not nice.)

Debian Bullseye (stable) has 6.0.12 in bullseye-backports.  Maybe it's
not crazy to assume >=3D5.19.  No Debian release has anything in the
range [5.13, 5.18] (non-backports Bullseye has 5.10).

>=20
> =E2=80=93-G=C3=BCnther

Cheers,

Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------WCCNTUfntDSQWijf0pUNx7DD--

--------------jIjQsO20OSwACpJFbvCbYLLC
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQTGp4ACgkQnowa+77/
2zKQ7xAAlRyPPbvfPX6NqLOfIOK8iDTqJhlRZbiB5Ya/Fu2uecNNukfaXUsC8mBT
Asv7kkoWF9j7k/tnb+5HFXnyeZr13ptPjVzNKWamS2ruDr4Wx988vTh/YMGiYuti
2t3/IDkzxMEAWADR7IL0kyUNZwiHQrfhhal769p9DwkjV1CyVwM2+GZpiGuRB6YS
cKi0x75KuMoGsd3Sp7W+AAmQCuDVFyfcMTgG+dUAXaab+47RLeoAu5IlMe5EOUQl
6nL4IDJTSfnUw1fv2xUSszAN8EbOxCIQbeFj11rHKRSrRcQfX+rv69c5b7prOQcc
nFV5Qez14RsQCtcMgZXWCgmENC4iWsuF1Dmogj8692yhxcc9titF1FwcLPydWZuE
VHlJs151tEihUUq2IDr0fpgCb7BEMLP34CgftWj6+5YS+338sKpMzedzXtZFnksS
voD8Y2gisWgFzxxqgJLLPebNwxwb35gFkTTjOGx1hlLaIRVcqJfuG+WK04hhdPMb
cutXJBUbVfOfqzVVFomEleDX6nNWJANJDn1KLG+QmLuo0ys5+P/udIpimSgzOxLj
b6SsST2WIF4FcrILKgrxHdUugZApIvNLSVMYL8g3GbFeNIk5yVgwUQx07tk4LpaA
vKk5ulG5VEmJ78DZyhLj2wm2YzgNyXYoEMqpdVjTzQvDRsK29aE=
=PKCr
-----END PGP SIGNATURE-----

--------------jIjQsO20OSwACpJFbvCbYLLC--
