Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A44DF6D37D0
	for <lists+linux-man@lfdr.de>; Sun,  2 Apr 2023 14:20:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230044AbjDBMU1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 2 Apr 2023 08:20:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50328 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229681AbjDBMU0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 2 Apr 2023 08:20:26 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 59E976A64
        for <linux-man@vger.kernel.org>; Sun,  2 Apr 2023 05:20:25 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id n19so15521400wms.0
        for <linux-man@vger.kernel.org>; Sun, 02 Apr 2023 05:20:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680438024; x=1683030024;
        h=subject:from:cc:to:content-language:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=O7fppJRuJfBqHxLyt1ZHk4XxVRK7RwSdejDuVKIpS+0=;
        b=Q9aSZ9BpYc6+0dJgSwyf9+4hJZf7oscVcCrs/Id6a8eDXWzK4QuEER5HqJPkGKc6Pk
         q1GwSAZDc8uvfj73e4nR5tcAuR6WVjiKip3FbURF28hoczvES/83nveMrPaEVoaq77kH
         slgN1U1jl4eyYKBMzr3ZvcPblgceIQEKm+H8AbUGNnuFJukfqR0bl0WEqwO8gWqSuAnm
         hLgeVSGwfVUBcm8gun6aTr6wRiDuNCfxFAelG5X/uvEjltqsi+fMqLfgvi8IIE88uGtU
         Z1+jW4rBd9eaE4we2JiynmAgFET3vAAtW/Xk+90VIepzBZ8SGjC2dgRWtocenAafIS/T
         YDog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680438024; x=1683030024;
        h=subject:from:cc:to:content-language:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O7fppJRuJfBqHxLyt1ZHk4XxVRK7RwSdejDuVKIpS+0=;
        b=ftaQuHxD23zL/N+svwTduMYPHJZN5VJMc2KlKbZOOBPjdsKgjy+kN1y+E12OZleHZq
         cBpWRO7iMG7FcN0hLQ7Krd0xLcKCwcnPGg/n7sJ4cYS2+QgCJw7KwhCjpIp5DaWwIX7a
         8BshjOnvCFKTCCJoRV1Z6RK3OY2fu5GaPAEkeXyv8OfOkvs1/KDcydwnT/JP1Yap/e11
         31yzqNqZ23WvqSo7rANYxrTsScKxmSIC7c5hCAD8dWike3w0ocD13FtWtqoWTR3zCjyS
         E54tNG/p9eBIaG4c2CS/nrlHQ3VqmFQthaZbG1w9gUTvqr0KUJq7Ctw1eWN/Xw5tox6J
         hNVQ==
X-Gm-Message-State: AAQBX9fsAWNrwOW0ZYmziGi/6XR2KclUBSsdwE0wdtWLcagmvAgadKj2
        q0jMfHcpOGmxVC7DD6X01B0=
X-Google-Smtp-Source: AKy350aOVC+iIheMCJHmN7teQpFHdXOj5YujKphGCB/ATPALWyK/ntiS+m8ozsNrlmnaVkgVjPC+yw==
X-Received: by 2002:a05:600c:2045:b0:3f0:373d:c32b with SMTP id p5-20020a05600c204500b003f0373dc32bmr8516614wmg.30.1680438023803;
        Sun, 02 Apr 2023 05:20:23 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id n2-20020a05600c4f8200b003ef5e5f93f5sm16152680wmq.19.2023.04.02.05.20.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 02 Apr 2023 05:20:23 -0700 (PDT)
Message-ID: <00fce115-146e-0501-4449-5366be048eef@gmail.com>
Date:   Sun, 2 Apr 2023 14:20:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To:     "bug-make@gnu.org" <bug-make@gnu.org>, Paul Smith <psmith@gnu.org>
Cc:     Sergei Trofimovich <slyich@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
Subject: Usefulness of make -t
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------9vY4JftarOBGaEu2kOfwIuip"
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------9vY4JftarOBGaEu2kOfwIuip
Content-Type: multipart/mixed; boundary="------------Tp1kBRiITm36GpH0bQWGMBK8";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "bug-make@gnu.org" <bug-make@gnu.org>, Paul Smith <psmith@gnu.org>
Cc: Sergei Trofimovich <slyich@gmail.com>,
 linux-man <linux-man@vger.kernel.org>
Message-ID: <00fce115-146e-0501-4449-5366be048eef@gmail.com>
Subject: Usefulness of make -t

--------------Tp1kBRiITm36GpH0bQWGMBK8
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Paul,

Yesterday I found another use of make's -t flag: It helps make sure
that the logic in the Makefile is correct.  You could run the target
without -t, but then you risk seeing warnings and errors from the
commands run by the target before make's own ones, which would hide
Makefile problems.

If you run `make -kstj [target(s)]` after modifying a Makefile, it
will show only and all^Wmost problems in the Makefile itself.  It
could be especially useful with 4.4's --shuffle, although I don't
have it yet in Debian Sid :(.  I should build from source and try it.

I'll start using that as a rule to check changes to Makefiles, and
hopefully will avoid introducing bugs that I need to fix in the next
commit :)

<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=3D=
5bf82f50cf02ded2403666d6c1ee2878b8bd602e>

Cheers,
Alex


--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------Tp1kBRiITm36GpH0bQWGMBK8--

--------------9vY4JftarOBGaEu2kOfwIuip
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQpcvsACgkQnowa+77/
2zK4jhAAl+fu9Zdu+SB7sesvW5PwXriLGpV5MkTBomNOJI+CGoWahZFvwDVk/C3W
1TjBdDvNuwV+57pemAXp+GaVbXFtJZ2mt0XAUxXyFVvFrpGABQxjTWcnEQgEWMyI
HiYMAY6PeekvZhZzixJo+J5CSuzxJFd948T8WUhs6QRfdUInqiLOzO+JJ2t+LKjV
fNGBp+7MqK3Z7Q1DknKU27c4ZwI52Es/jsw623VUntiKSOzVLnymMEFqk/zObsiG
XJOmHZstzkl4ENwOHsCKOYIbW2pJ9v97c5M/i60fyQGxb674ual+FqLzBrFO6N9e
pu4xtKlItVTT1CZmVMlRcB9WWcvUOYjqFp/qnlteyNCt8gTJBVphcApxEYhkZWDm
nyBZD0sWylFL4cY6V3zZebERWyYRda6HyAflQVgqxYs+uFxC73WJcvEQ2QMsZQ4s
tiGaXBrWLn5jTPpjMdNaimOmaIg5SxhPy6nEwolhw3ItQ1rid13KcMNREXhfl01o
JQZnV+n+oe0FB5BmVql2Dl+HyligoW28llknZJXm5bwXb3eu34hk9kfuzfL+3B4R
apTHrbNa5irLG8ZgXgi72hMbyr0miI+eAER8J93pgy/FGBBhS2Hwju5ayDUiMgmT
5vePosFwwBVwM5riZVAkXLbwz622tpKYomE6OFrTrvkaB3JU9SY=
=vGMN
-----END PGP SIGNATURE-----

--------------9vY4JftarOBGaEu2kOfwIuip--
