Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 18E40624EE0
	for <lists+linux-man@lfdr.de>; Fri, 11 Nov 2022 01:21:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231455AbiKKAVy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 10 Nov 2022 19:21:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50972 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231678AbiKKAVx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 10 Nov 2022 19:21:53 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A523943876
        for <linux-man@vger.kernel.org>; Thu, 10 Nov 2022 16:21:51 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id t4so2084605wmj.5
        for <linux-man@vger.kernel.org>; Thu, 10 Nov 2022 16:21:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9Y5Gr4SHkoIkB7Gy2IG57dqVl25yUN6jYZsRjHOiqjk=;
        b=TwltMvhsYrJK3x19a41CbrUiCC73PABcy3WyhXtQ9wjgSxZKh0pNLxSvfSin9MuFYc
         D+8j5yjUpUBXllIPCxfAaJfCq6JfanummB5CFIYmcLw2XLWin+c3djKqcjhSAEsC+m4e
         NCGH+BHFEyqNkdM2e5QtbLdpNQhcHK4GCgmKXwnwsjkFszhdiUm/0KAWTv7tLE7Mvm9E
         EQACgXqpwqipE+RkoDv2bNqRw1Ohbo0YS/fNR8a1TsSeEo5FYLbPde4dLZhfFwjiyIMo
         6zRAXau/LFojvgU1yQn+K3NBfiO59Zy5VeCJLplm47DhfR2bX2LbabXHddu8SF/J4yY5
         +LgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=9Y5Gr4SHkoIkB7Gy2IG57dqVl25yUN6jYZsRjHOiqjk=;
        b=OjLb8G3YeUUttFqjLSKIn2TchOARnHN6ZvbRCehpfrWi+Kle8WQOv/XDG68tbPI/Q9
         0OY+mN7CQhD4n4FO+MLAgFdESUYNodwsALcKQfQIvhSfBp+GN3zuKFR0m+gD4Jr1Ep6F
         HNuwITNgf/dvEgvmydo3R8x6pFWw3ABXQL1xH3rl/cwHYpB9wO59N6MpmajG9/DR05WJ
         AhR8YjH1Tquzf3ZbY/165uzvZidu3HSJhMXHXVCBAQNTzQ7EzZK8YUEWEWYtK7/WIPrF
         DChE7VOG4Pypwtd2QrKAiIRkXq0vzdydEkk3C7k35Pyqt8BI7zz4wdMxgB86/2S1RV0g
         mmuQ==
X-Gm-Message-State: ACrzQf1naO36lsEdiJ8WAEoYMbbOgTsyTIbQ7uvttdxebmiNOaqfWZ2Z
        ssY7bJ1TJl303BDO/s1vdvM=
X-Google-Smtp-Source: AMsMyM6tMiWh15ISLY2cqr9wItfBFRbRlJtgsetMFVE/De/t1LmxqXfeEC24P+E9rtlAxEDRXEH95Q==
X-Received: by 2002:a05:600c:a14:b0:3cf:a41d:8418 with SMTP id z20-20020a05600c0a1400b003cfa41d8418mr842101wmp.190.1668126110219;
        Thu, 10 Nov 2022 16:21:50 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id e13-20020a5d594d000000b0022cdb687bf9sm626030wri.0.2022.11.10.16.21.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Nov 2022 16:21:49 -0800 (PST)
Message-ID: <1dd81388-1ccc-2846-8619-908e8a2f9632@gmail.com>
Date:   Fri, 11 Nov 2022 01:21:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH v2] memmem.3: Add list of known systems where this is
 available
Content-Language: en-US
To:     Andrew Clayton <andrew@digital-domain.net>
Cc:     Alejandro Colomar <alx@kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
References: <20221110001318.10696-1-andrew@digital-domain.net>
 <20221110233138.63585-1-andrew@digital-domain.net>
 <7c72c8b0-ddb1-ec66-3886-57f2f7ac192f@gmail.com>
 <20221111000440.0b4e08c9@kappa.digital-domain.net>
 <486aa42b-48be-b556-55c6-6d837430e256@gmail.com>
 <20221111002011.20d08ba8@kappa.digital-domain.net>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221111002011.20d08ba8@kappa.digital-domain.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------NLasNQLK0uK5IiKaE0KY7uWj"
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
--------------NLasNQLK0uK5IiKaE0KY7uWj
Content-Type: multipart/mixed; boundary="------------k6XWL5Wsbtxrpthxzz5NRymX";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Andrew Clayton <andrew@digital-domain.net>
Cc: Alejandro Colomar <alx@kernel.org>,
 Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
Message-ID: <1dd81388-1ccc-2846-8619-908e8a2f9632@gmail.com>
Subject: Re: [PATCH v2] memmem.3: Add list of known systems where this is
 available
References: <20221110001318.10696-1-andrew@digital-domain.net>
 <20221110233138.63585-1-andrew@digital-domain.net>
 <7c72c8b0-ddb1-ec66-3886-57f2f7ac192f@gmail.com>
 <20221111000440.0b4e08c9@kappa.digital-domain.net>
 <486aa42b-48be-b556-55c6-6d837430e256@gmail.com>
 <20221111002011.20d08ba8@kappa.digital-domain.net>
In-Reply-To: <20221111002011.20d08ba8@kappa.digital-domain.net>

--------------k6XWL5Wsbtxrpthxzz5NRymX
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gMTEvMTEvMjIgMDE6MjAsIEFuZHJldyBDbGF5dG9uIHdyb3RlOg0KPiBPbiBGcmksIDEx
IE5vdiAyMDIyIDAxOjA1OjE4ICswMTAwDQo+IEFsZWphbmRybyBDb2xvbWFyIDxhbHgubWFu
cGFnZXNAZ21haWwuY29tPiB3cm90ZToNCj4gDQo+Pj4+PiArYnV0IGlzIHByZXNlbnQgb24g
YSBudW1iZXIgb2Ygb3RoZXIgc3lzdGVtcywNCj4+Pj4+ICtpbmNsdWRpbmc6IG11c2wgbGli
YyAwLjkuNzsgRnJlZUJTRCA2LjAsIE9wZW5CU0QgNS40LA0KPj4+Pj4gK05ldEJTRCwgYW5k
IElsbHVtb3MuDQo+IA0KPiBbLi4uXQ0KPiANCj4+PiBJIGd1ZXNzIHRoZSBiZXN0IHRoaW5n
IHRoZW4gaXMgdG8ganVzdCBicmVhayBpdCBvbiB0aGUgc2VtaS1jb2xvbi4NCj4+DQo+PiBZ
ZWFoLCBlaXRoZXIgc2VtaWNvbG9uIG9yICc6Jy4NCj4gDQo+IE9yIG1heWJlIGJvdGg/DQoN
CkRlZmluaXRlbHkgaXQgaXMgYSB2ZXJ5IHZhbGlkIG9wdGlvbi4gIEkgd2FzIGhlc2l0YW50
LCBiZWNhdXNlIGl0IGNvdWxkIGJlIGEgYml0IA0Kb2Ygb3ZlcmtpbGwsIGJ1dCBpZiBpdCBt
YWtlcyBzZW5zZSB0byB5b3UsIGdvIGFoZWFkLg0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KPiAN
Cj4gQW5kcmV3DQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K


--------------k6XWL5Wsbtxrpthxzz5NRymX--

--------------NLasNQLK0uK5IiKaE0KY7uWj
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNtlZUACgkQnowa+77/
2zIo4w//WqOKtNAnlOQxKnhQuQ0aQ1wCgZ3KWC1xXEABJ3tnz0LmgeyxJvqoW9PO
HwKmtBC3m/xLTOnwOi1TSxSIiDiCA0BhZa5sejWzQg1McgxTkczkL8AOt7AkvF+5
Z5IHH9WI4wzUgMQ02WOaOFrqabXDWuiOxf2m6y0dHbHpNnt6zRFkbSpGdAVqyNIi
UnRtQ/0vPeZf1rGguk3GgHK3X1whdMDB9Gvph6U9gZ6YMjAZ/Dxtw1i2cukIaoWA
wnp9LqBONYFp7A4f2g2l24r6UKLjKeHVppu2L1J/lGl0f05c5L2QH0soHVsv70PP
bh00pCjH9HGivEEoytKKQ0uM2BhF+hElDZeozLqVI0ZKI1VxxQpkpsjnlV53vkxg
AzfAIbPrysalcqjD4XcxmdfxXGSp1z696zs3OpUbJ7hYfHMqr8eWLqtBMapmNcGo
rhlkOx9hAwGcfgXy01Eios8Fe1Me5IKjs0oQflxaig7ns7R1nssChxx/GRH3ARyp
g4EbupFAm0Asw8CQdiz+dnGA85zqf5WvRxVjavCuAqnS/b2nseG+WMtxCtP5oLgo
hqceVWuU2Vmln54ZDt3UZOAgdpuCqZu4Pw2n7FOegIoeURFZPCRyLCSflPvgyuZe
sw9vOnqI3lU5jcm6/A0NTkKudp5obJ348fEGbPz9Wraz6Hd/ZAI=
=D5L2
-----END PGP SIGNATURE-----

--------------NLasNQLK0uK5IiKaE0KY7uWj--
