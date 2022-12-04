Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B0EF0641F57
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 20:58:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229954AbiLDT6S (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 14:58:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59262 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229949AbiLDT6L (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 14:58:11 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 25A88C756
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 11:58:10 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id h7so9752728wrs.6
        for <linux-man@vger.kernel.org>; Sun, 04 Dec 2022 11:58:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dBSK6FpPFUGRbND6smBU+B6e0u6G0RyonTZeMkrmMjU=;
        b=UZdmVUecxOz/bVv1tVf5NggSwlZ+ik2Zbwy3sUEikiGQbMM5vHl8/k8ZnMQ/fqrecq
         xyQyXxln8/Wog0+kpxMAmUZrYWv/SBIg1ZBkq9AbLn8zjz9jH2nWjmGgz+Tnj9PejDaU
         uXGQnC4IBfkmfDh8LCb4E384jwFb5NEUljTH4ivVh4jJTzER5/6f10P57WW9EaG9a36C
         lynPQROzJX+jF81XtoXfSNInPUXYotIn6O5Nl0c4iM3i0uCOFuh4YD5Eh5losNyglxWY
         UcqJ9gCA6tRGoo+KqgL5BawOAGEo0D8yHvNo7EQfkwwrtLlzAbDQULeUbzeJA8U1nKpF
         ie0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=dBSK6FpPFUGRbND6smBU+B6e0u6G0RyonTZeMkrmMjU=;
        b=G2pbuCDkgFNWzQMA8jvXShOpLmA9Mw6oYghUKThjelJesfcsk5TFSfZBHESEbXTJyO
         3yQ+59kjRnAAyPd9NIMuMfgBCT+SwEiKCPrgTJNXXnX7ViWMdCc3pmMcfOkudTXBwvdt
         gPF3p6EavkhiokK70F9WdmIl3YYf0kBuXm8Xu1oXnav6a2mv/4fYNDCYLc9HsjN3N8Df
         JTKgoPT9oi2oki3+ckeNcuOK440UlnS9vUgEre7lwtRhBQdhC0jXi/TAgfebJs1xWEdT
         fU8wdqiKAew4RrUxAtfM6bUcaK37tOS6DFlU5IEoBMIv63riGZOpYu1mZLF+zqutZ4Hb
         Ql3A==
X-Gm-Message-State: ANoB5plnTAuMOjP++EmZaMHDtFz4yCGxlIk++Uf9ARyzXHudKU7EYa6H
        tk+kP0DeCHSlgZZnlqG2Npg=
X-Google-Smtp-Source: AA0mqf6vG9js6kyNT3HT8q+iw4AaHvNeZOeweE0yqFN9Iape+gRIGSspuoWXUAd5gUnB/wodPpgQWg==
X-Received: by 2002:adf:f612:0:b0:242:190d:113e with SMTP id t18-20020adff612000000b00242190d113emr19091174wrp.527.1670183888762;
        Sun, 04 Dec 2022 11:58:08 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id q14-20020adfdfce000000b00241cbb7f15csm12563496wrn.106.2022.12.04.11.58.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Dec 2022 11:58:08 -0800 (PST)
Message-ID: <f9c543e4-d039-279c-fe39-2a20cdbbd42e@gmail.com>
Date:   Sun, 4 Dec 2022 20:58:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Issue in man page symlink.2
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20221204090716.GA732@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221204090716.GA732@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------CLCvEBFAjDhOT64se5RSqw8y"
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
--------------CLCvEBFAjDhOT64se5RSqw8y
Content-Type: multipart/mixed; boundary="------------13Iuyj3E4e5etHpiW2VEe07G";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <f9c543e4-d039-279c-fe39-2a20cdbbd42e@gmail.com>
Subject: Re: Issue in man page symlink.2
References: <20221204090716.GA732@Debian-50-lenny-64-minimal>
In-Reply-To: <20221204090716.GA732@Debian-50-lenny-64-minimal>

--------------13Iuyj3E4e5etHpiW2VEe07G
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDEyLzQvMjIgMTA6MDcsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6DQo+IFdpdGhv
dXQgZnVydGhlciBhZG8sIHRoZSBmb2xsb3dpbmcgd2FzIGZvdW5kOg0KPiANCj4gSXNzdWU6
ICAgaW4gZW5hYmxlZCDihpIgaXMgZW5hYmxlZA0KPiANCj4gIlRoZSBwZXJtaXNzaW9ucyBv
ZiBhIHN5bWJvbGljIGxpbmsgYXJlIGlycmVsZXZhbnQ7IHRoZSBvd25lcnNoaXAgaXMgaWdu
b3JlZCINCj4gIndoZW4gZm9sbG93aW5nIHRoZSBsaW5rIChleGNlcHQgd2hlbiB0aGUgSTxw
cm90ZWN0ZWRfc3ltbGlua3M+IGZlYXR1cmUgaW4iDQo+ICJlbmFibGVkLCBhcyBleHBsYWlu
ZWQgaW4gQjxwcm9jPig1KSksIGJ1dCBpcyBjaGVja2VkIHdoZW4gcmVtb3ZhbCBvciINCj4g
InJlbmFtaW5nIG9mIHRoZSBsaW5rIGlzIHJlcXVlc3RlZCBhbmQgdGhlIGxpbmsgaXMgaW4g
YSBkaXJlY3Rvcnkgd2l0aCB0aGUiDQo+ICJzdGlja3kgYml0IChCPFNfSVNWVFg+KSAgc2V0
LiINCg0KRml4ZWQuICBUaGFua3MuDQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNv
bG9tYXIuZXMvPg0K

--------------13Iuyj3E4e5etHpiW2VEe07G--

--------------CLCvEBFAjDhOT64se5RSqw8y
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOM+88ACgkQnowa+77/
2zKgWQ//QY05lMYIgJMZS53kFtBCdltfE66gLppW/n+63/4UsalY6Kw5o/QKUsTl
AK6+odYMmRZ5rclL3643APK6TWrnUVNzjDWoza8yXPlqmh5nhXXzm8QD9qllIdF6
welDc/vDTNhTk6NSdNyc++UZwv5SvA+AyNLG+Jg5F4UHXWouoWT2KfzliIJm50W8
xIFnrI2QZEJddLozK/oLz6He5xT/lMQDNG1AFnTaSaTiIdXLmgmZrMgLN4CIJJBo
fiPESK6FIH5yHW2rr6vLG/y+yKcFq08IWZ5uxqgROac1HxLSNr0JDCaWLfsmsFd4
WprubL/fspnMCaIgOaRlgb/lttQUm8RiVF4QP/OQdUAaUvjxTdRF3maQUdlnN4Q3
QVeNkvD986peGduh3Fk2EriK2rYzdsIPxUdeAHeCuiSTlYwEFQTMWYd62ac/3pWx
nBAhoEx2KsI9q+WFYsLi9gJB6p5I9msTagk4rinuT7n4ZiPZHJiJWSbgQ8TopmRM
EcjxQSUTde3iDdN7JhSObIC1ndouw9hEzB5ExJtOU8oc4zbjb05NqszhKkbAjN6A
WSnoAXd+MX+Ts66shgonjpLnsjT7THfvfMP0t0vwCV9m0kLPNy/LQjEW2zpiDCLP
0QxCJ/odtmCNUYyXIJ3JwRLBBlo7Kr1owQTHWJ/ec2Mp5kqyOIY=
=EuMi
-----END PGP SIGNATURE-----

--------------CLCvEBFAjDhOT64se5RSqw8y--
