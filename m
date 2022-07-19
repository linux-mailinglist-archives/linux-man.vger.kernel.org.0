Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D81EE5798BF
	for <lists+linux-man@lfdr.de>; Tue, 19 Jul 2022 13:50:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229478AbiGSLuI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 Jul 2022 07:50:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50016 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229895AbiGSLuH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 Jul 2022 07:50:07 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 75456309
        for <linux-man@vger.kernel.org>; Tue, 19 Jul 2022 04:50:04 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id u14-20020a05600c00ce00b003a323062569so807101wmm.4
        for <linux-man@vger.kernel.org>; Tue, 19 Jul 2022 04:50:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=tyTXo2KS2ajbE/Eq61NIrOaENA/57fTTgLU7Rp9jgGY=;
        b=igG6OW9xQyR4QV5IpT4T1SCBJNn8w8/zENv85yOpkJ2O6E+ey6RFr/VyC00wZpXfkp
         5ykUaCn/yieTN9n8NtiE1CVkX/L3OCxbMr9U2RVCGEcQ9tA306XebBOIjkc7BZeUVno9
         B7hQq+vqc4rVky373oG+nVj25JDiauP+q7toj2yiSWeU7m0Y+rruGAf4+b7Je2i6/D3d
         BQuUDzk+37YMkBWZ7gKk5JFW7jiJ9sS7Ts78UxbXW+RCrRDIOE45o7RFP1sGAL//Z5UY
         x/ehJ6cvnBEkWGiqfnOiY9ja6GzSqSd3RZyhuNeL4MseyZ1s49uLyTSYG+w1dQRlYTQg
         3ONA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=tyTXo2KS2ajbE/Eq61NIrOaENA/57fTTgLU7Rp9jgGY=;
        b=VCMU0OUdk+IXTztBh/GNZzzVrjd+xZJLc219svIZLYKVS1lMrVO49eFGFVsJJt0Nuh
         D3ukIJXQpACFl3O7rmzpuItvP3j79QT0vVTI53YF6Pm4636B6eGbHSFqQHt4qMJSzXR8
         srDQ1eIMoJssHsSkH9Y07flpFEGLVW42cxr3j5m/d5dVhhwfij9BEzu8K1OX+QXcmmpM
         wzGLFbBEdpsKB9s00mCYKoYFgZT7WxkQmynSWzA0iOzaBUPd5lFADw3Cp+YMIytR8FJ+
         gYUmUaN+oq4Y2lClOQMblku1LnDs1HFXvP/zuyLKLAp61HCs6bLZXRmZqktwDgHLZ0c7
         wr3Q==
X-Gm-Message-State: AJIora9xuptwoIIz7gyqAzjAsqg0BAFYaCOUf6c9q7YT/f+Zu8ygL+tC
        qfIJIjBZdILQf8n09Tfbp3KGULu8QQ4=
X-Google-Smtp-Source: AGRyM1tr3b2sVRw7sDGt3mNEo8f3uPKR/GCEaPpU/tYNg7/+xuRc3CcT8hv9ncpAF7olQgaXYVbJbg==
X-Received: by 2002:a05:600c:6012:b0:3a3:1b6c:f308 with SMTP id az18-20020a05600c601200b003a31b6cf308mr8446024wmb.91.1658231403042;
        Tue, 19 Jul 2022 04:50:03 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id a6-20020adfdd06000000b0021b970a68f9sm13037308wrm.26.2022.07.19.04.50.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Jul 2022 04:50:02 -0700 (PDT)
Message-ID: <ebe6c16b-9c58-1b36-2105-83bb7b8d1e54@gmail.com>
Date:   Tue, 19 Jul 2022 13:50:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.0.2
Subject: Re: [PATCH 3/5] tm.3type: tm_year is year minus 1900, not since
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <62c1b6748d2faa6263264b9fcaa064495357441b.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
 <82226362f0439ac1b52be2b0266a4bb9b0a6221b.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <82226362f0439ac1b52be2b0266a4bb9b0a6221b.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------5XzZl5LbvFdniVoKIF6RnlC4"
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
--------------5XzZl5LbvFdniVoKIF6RnlC4
Content-Type: multipart/mixed; boundary="------------wX2QUBkERHkW3z0X6De04Wph";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <ebe6c16b-9c58-1b36-2105-83bb7b8d1e54@gmail.com>
Subject: Re: [PATCH 3/5] tm.3type: tm_year is year minus 1900, not since
References: <62c1b6748d2faa6263264b9fcaa064495357441b.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
 <82226362f0439ac1b52be2b0266a4bb9b0a6221b.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
In-Reply-To: <82226362f0439ac1b52be2b0266a4bb9b0a6221b.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>

--------------wX2QUBkERHkW3z0X6De04Wph
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkg0L3QsNCxLA0KDQpPbiA3LzE5LzIyIDAzOjU2LCDQvdCw0LEgd3JvdGU6DQo+IFNpbmNl
IG9ubHkgbWFrZXMgc2Vuc2UgaWYgdGhlIHllYXIgcmVwcmVzZW50ZWQgaXMgYWZ0ZXIgMTkw
MDoNCj4gaG93IG1hbnkgeWVhcnMgaGF2ZSBwYXNzZWQgc2luY2UgMTkwMCBpbi4uLiAxNDEw
Pw0KDQpXaGVuIEkgd3JvdGUgaXQsIEkgdGhvdWdodCBpdCB3b3VsZCBiZSBtb3JlIG9idmlv
dXMgdG8gdXNlIHRoZSAic2luY2UiIA0Kc3ludGF4LCBzaW5jZSBmb3IgeWVhcnMgYWZ0ZXIg
MTkwMCBpdCdzIHZlcnkgaW50dWl0aXZlLiAgSSBkaWRuJ3QgDQpjb25zaWRlciB0aGF0IGZv
ciBuZWdhdGl2ZSBudW1iZXJzIGl0IHdvdWxkIGJlIHZlcnkgdW5pbnR1aXRpdmUgOi8NCg0K
VGhhbmtzIQ0KDQpBbGV4DQoNCj4gDQo+IEFsc28gXGZCIHRoZSBjb25zdGFudCBsaWtlIGVs
c2V3aGVyZSBpbiB0aGUgaHVuaw0KPiANCj4gU2lnbmVkLW9mZi1ieTogQWhlbGVuaWEgWmll
bWlhxYRza2EgPG5hYmlqYWN6bGV3ZWxpQG5hYmlqYWN6bGV3ZWxpLnh5ej4NCg0KLS0gDQpB
bGVqYW5kcm8gQ29sb21hcg0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K


--------------wX2QUBkERHkW3z0X6De04Wph--

--------------5XzZl5LbvFdniVoKIF6RnlC4
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLWmmkACgkQnowa+77/
2zKwAw//eB/vRlnf4YOTBCO2tmTQBrfZEOz7sKZHxeeNbVE1yN6agxOI6uSPGTqz
Mg3kPzSme9NnL2KKdtD2uEPB93ScEbaqXR1UUboGC9nSEPCrjM9GpkbuqnjWP+38
L8HfeQw15ME6pPuj4eAirAXMz3mwO14VpEjAFpMYvcJbcu9G0T8WdL8rCmtjy4JM
UbUUYZ0SjeeLyfnJ6/Y1sowpzfWxWRrH5XYRsckLtZbGhr9HiRoSxiNhA7sPPrM/
Y1LZyKQpKPEgo/B0Tkj++024aOcg1XOTwna7af1Vr7KKyA0msyJyu3w55Ipt7JG3
4Xy8wiFad7oVwZBhVlMrPnx+q8/jpqZzcLIKtXVSw1mA26xSlqJW6jdX/+nFyp+6
dMLJrV9WXDbMI7OVLy0H4cq4SBH1tX1c8X8zv6nm2FT+JiMW4IHxwesoO88gDRPk
R0hNidhAX5G0grSJDnkh83fLzI+qBdjiSk/kv1rKX3v7FnMhclVeq1lxy4fPkIjV
HdY5Yc4tWs1DOfH7Euh0MF5NdOWsFRWonY4FaOYXej3pHC0/153RMXy8Q80NDtvW
f3BjRVdmaZA69bQUru7ab7cF4H8qk82BWEUX4uHlFiWBFsoOTzCSV+5lL/RagKbr
X/ckqXTlgAaOxvvpdATZh3KvAyECvZwuHozXtDaWSTc7PNpU194=
=0PTq
-----END PGP SIGNATURE-----

--------------5XzZl5LbvFdniVoKIF6RnlC4--
