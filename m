Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 58DCF605B16
	for <lists+linux-man@lfdr.de>; Thu, 20 Oct 2022 11:27:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230111AbiJTJ10 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Oct 2022 05:27:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44372 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229988AbiJTJ1Z (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Oct 2022 05:27:25 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DCE10190442
        for <linux-man@vger.kernel.org>; Thu, 20 Oct 2022 02:27:23 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id v130-20020a1cac88000000b003bcde03bd44so1843746wme.5
        for <linux-man@vger.kernel.org>; Thu, 20 Oct 2022 02:27:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=63y8c8DcT37NpA4LsqPQ3wE62R8ptdse+A5fO+iNYT8=;
        b=BDQ0FGDzsu0zh7IWJxIX0fd+RGMSghPeRosPwL1d/9IbMAXSPcBjVvYf69VqNrYvUf
         x+81zkj2Uytg6vDIu0vTTTTpkLNn7ehI6HAh/TLo56S/NHuEmTikXGiLUEc1aePgSLnO
         vnHl/J3YHtxOf/Gsvkau94Od7q8oxhi4/OsL+Vt4KVNoBIV5254NOy2nO8MY1+0KHP5F
         MSLk0c/OC8Vke7l/z5Pa1r9NLK+g6u64/iSx4e//BHd3/K+AMQxwpEpU1s6c0PaU6xkh
         Mc4Cuxwb2iri6Z5fmFtxGDKxRbCuL7vWpYdW80D1X03l6M1DyT6RZGi/HIOAEu0Omz20
         LJIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=63y8c8DcT37NpA4LsqPQ3wE62R8ptdse+A5fO+iNYT8=;
        b=WCq1rdYf12akFVQwyD8ZERWrhymNYOMvi5qIO/iu6Jb5I51acrjLavlsfR8SQ4plVb
         oHFtIcbzxEmsTftbFpm+OkIu8pJfpeOUcVFxGU6gk8ttK/J56R+ioEQRdDUWodWq0Oxd
         /JU5Cit9lLTfkU2gg2ytcwUFNJJvlrq+byZ5QSupTQC28dL8LxXtnF7IdX+/B3aKcFO+
         Nrcv1AMKR66xDEpDAKJFDCczeWQVF/KxTYhIidUXhgxMTCuO/CG8UzfoUy6fJN26bQgS
         m1ArdJrcGzxxWa9SB9K2ZTQuqBG8OxR5ZeRL1TcD8skZNMePXiWH0jrkgOua3s3+ybot
         s3VA==
X-Gm-Message-State: ACrzQf13rnWw24mKEjeWnjg4Ev2Y8IfCpalL2OOpd0MzAYHrC0L2LzrK
        N8ipb6HcP+KEwLPSvn701v0=
X-Google-Smtp-Source: AMsMyM6hV3J3VAfrArPyrP1fELWb10xvnHbumOfnlcG8u68lUl68JWREYPnWZhCsKWHloYybDzsEow==
X-Received: by 2002:a05:600c:4691:b0:3c6:f154:fdc6 with SMTP id p17-20020a05600c469100b003c6f154fdc6mr17220189wmo.195.1666258041999;
        Thu, 20 Oct 2022 02:27:21 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id j16-20020a5d6190000000b00226dedf1ab7sm3047027wru.76.2022.10.20.02.27.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Oct 2022 02:27:20 -0700 (PDT)
Message-ID: <8239573f-4d28-7ce0-644d-792d0bbc02c7@gmail.com>
Date:   Thu, 20 Oct 2022 11:27:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: man-pages RELEASE file
To:     Sam James <sam@gentoo.org>
Cc:     linux-man <linux-man@vger.kernel.org>
References: <741f4e2a-2659-025b-0ad7-ca679a4e2152@gmail.com>
 <7269B9BC-ABFA-4738-B308-C65CD3E1B211@gentoo.org>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <7269B9BC-ABFA-4738-B308-C65CD3E1B211@gentoo.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------6gjrx0OX6Z3gpQsGQz1GoVIT"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------6gjrx0OX6Z3gpQsGQz1GoVIT
Content-Type: multipart/mixed; boundary="------------qMnAV97xcaE1f6jbvR7xQPn0";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Sam James <sam@gentoo.org>
Cc: linux-man <linux-man@vger.kernel.org>
Message-ID: <8239573f-4d28-7ce0-644d-792d0bbc02c7@gmail.com>
Subject: Re: man-pages RELEASE file
References: <741f4e2a-2659-025b-0ad7-ca679a4e2152@gmail.com>
 <7269B9BC-ABFA-4738-B308-C65CD3E1B211@gentoo.org>
In-Reply-To: <7269B9BC-ABFA-4738-B308-C65CD3E1B211@gentoo.org>

--------------qMnAV97xcaE1f6jbvR7xQPn0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgU2FtLA0KDQpPbiAxMC8yMC8yMiAwNTo0MSwgU2FtIEphbWVzIHdyb3RlOg0KPj4gT24g
MTkgT2N0IDIwMjIsIGF0IDEzOjUxLCBBbGVqYW5kcm8gQ29sb21hciA8YWx4Lm1hbnBhZ2Vz
QGdtYWlsLmNvbT4gd3JvdGU6DQo+PiBJIGp1c3QgYWRkZWQgYSBmaWxlIFJFTEVBU0UsIG9m
ZmljaWFsbHkgZG9jdW1lbnRpbmcgaG93IGEgcmVsZWFzZSBpcyBtYWRlLCBpbiBjYXNlIEkg
ZGlzYXBwZWFyIGF0IHNvbWUgcG9pbnQsIHNvbWVvbmUgY2FuIHBpY2sgaXQgYW5kIGtub3cg
d2hhdCB0byBkby4NCj4+DQo+PiBUaGUgbW9zdCBpbnRlcmVzdGluZyBwYXJ0IHRvIHlvdSBm
cm9tIHRoYXQgZmlsZSwgaXMgdGhhdCBpdCBhbHNvIGNvdmVycyB0aGUgY2FzZSBvZiBzb21l
b25lIHdhbnRpbmcgdG8gcGFja2FnZSBhIHJhbmRvbSBjb21taXQuICBJdCdzIGFzIHRyaXZp
YWwgYXMgcnVubmluZyAnbWFrZSBkaXN0JywgYnV0IGl0J3MgYmV0dGVyIGlmIGl0J3MgZG9j
dW1lbnRlZC4gIDspDQo+Pg0KPiANCj4gRmFudGFzdGljLCB0aGFua3MgZm9yIHRoaW5raW5n
IG9mIChhbiB1bnRoaW5rYWJsZS90aGUpIGZ1dHVyZSEgPg0KPiBJJ2xsIHRyeSBmaW5kIGFu
IGV4Y3VzZSB0byB0cnkgdGhlIGluc3RydWN0aW9ucyBmb3IgcmVhbCwgdG9vLg0KDQpKdXN0
IHRha2UgaW50byBhY2NvdW50IHRoYXQgdGhlIFJFTEVBU0UgZmlsZSBkb2Vzbid0IG1hdGNo
IGV4YWN0bHkgaG93IA0KNi4wMCBhbmQgNi4wMSBoYXZlIGJlZW4gZG9uZSwgYnV0IHJhdGhl
ciBob3cgSSdkIGRvIDYuMDIgYWZ0ZXIgbGVhcm5pbmcgDQpmcm9tIHRoZXNlLiAgV2hlbiB5
b3UgdHJ5IHRoZSBpbnN0cnVjdGlvbnMsIGdpdmUgcHJlZmVyZW5jZSB0byB3aGF0IHlvdSAN
CnJlYWQgaW4gdGhlIFJFTEVBU0UgZG9jdW1lbnQgaWYgaXQgZGlmZmVycyBmcm9tIHdoYXQg
SSd2ZSBkb25lIGluIHRoZSBwYXN0Lg0KDQpJZiB5b3UgZmluZCBhbnkgaXNzdWVzIGZvbGxv
d2luZyBpdCwgcGxlYXNlIHJlcG9ydCB0aGVtISA6LSkNCg0KQ2hlZXJzLA0KDQpBbGV4DQoN
Ci0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------qMnAV97xcaE1f6jbvR7xQPn0--

--------------6gjrx0OX6Z3gpQsGQz1GoVIT
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNRFHAACgkQnowa+77/
2zLqbA/+Pj8X6UITpZID7DoZkE45F5JI+vOd7eLlkDomcURI0rAAH7d9fh8oN/88
fOhd8GTVqIpTafesMvVr/Z5pINhk+xIC7bv2uCVA5BjiX/zDaeCcMTUVG5AzwdLm
WgfMASYPfH+Fx6A1luk/mc/I3Pk8+Dtpv4I+Pzgh3aUqEwYRmIZ2OkWSUeZZ9TpC
bTVVej5o0D98eGuy3GwhDjMeanb19n3OCnfVjCfB8hYwLVLRQpfFVv7paE2SHMKc
pm34wV1jENu3TXPTZx1qTWJFgSBL+RH5lJx3IJ0MNHwjz5diUVHjDbgg8br17JIf
DD5iei9XRhqGit2x0Ie2BYI6ibNq0nbNjt7tHku3q87az8d9jWjoY0Mj0aa0qdP3
AQTMlX0BedHXrm9SFWqKeUnesjoTcr/C77O7e2bPZmfUs3P2W0JMji+M4+CMAPFp
deVyjh6wkC96rMOKTffyjLSdwy08XjNXCbfj/D475qMyEeExRRjfwK2Mmi2yV7PF
GW+F/J7VlqXCK6cGpSYjVjjB8fDz/1C3DaqzwEAdAXHbTr/Qx/j2pI9FY1RmITwZ
WyP/TXy5r3O6ouSdTXzSK+oZhiRuOuXpNasTqKfpqttr9+CHnYTnoJyGFyMg3u9n
xnIaFZnP+8H+YBW7gqQNYppqZ6LempZlo3HMF7He6neIfdIxhmY=
=dpJa
-----END PGP SIGNATURE-----

--------------6gjrx0OX6Z3gpQsGQz1GoVIT--
