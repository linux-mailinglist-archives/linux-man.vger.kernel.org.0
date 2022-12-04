Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7B6A0641F5A
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 21:00:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229954AbiLDUA1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 15:00:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33664 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229949AbiLDUAZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 15:00:25 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0F2D9F7D
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 12:00:23 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id i131-20020a1c3b89000000b003d1cb516ce0so955956wma.4
        for <linux-man@vger.kernel.org>; Sun, 04 Dec 2022 12:00:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e6ZnyYBMs5GNAFGfxO4lpguweYYlo0E4mgoSHcl41ik=;
        b=H+x/v1inI1TzvcJkCEBH5obSXFRZHr1JlVQpawfht8xM7JLLoHE+VqPbz6nC6cw1w3
         8NvYMQ8EEPe2gEuppv0j8+Y0aTvVhYv/fb38bRpS8LV4MfVn2wd28EUNYDIbWCkSnlnN
         naLdcjwGRerOqr6hf/prsY64HFFjVyuPjHUzJcm6qYOQgj+fW7py1/acuzciuyatoJ9D
         o2M2S+eEq8cubL6d2Oi7KsYUSDY3QRB8WrmI7KtRcVPAL3EAevq8VjV/RWIIEjqd5+lJ
         x2bt+rG9QocHnWlZtJS4pVM6yC2soJEO4l9Ub52hUNE3KbIzCHWWUF8wWyybJRdLjupS
         pFQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=e6ZnyYBMs5GNAFGfxO4lpguweYYlo0E4mgoSHcl41ik=;
        b=Lhla4zpjascmrkSzk5YHsPmbmavL3Y2O2Sv5eKb8i/uGTl86vDEdYNTk1duBNSvF0y
         icrTYF4Jv7vJFjs17VqjurDBbMwy4F/nvAOHEleoxkrjsy0y6xRNgbY5oWejtm5bPQVZ
         R3rc5dGxseU+S6GOZurPX+tM8GivH3SzJN/LBFawKyJIhoK2n5GWJ0+reANox1wNFEPF
         VH7Y17xuO4nQnfzVvn//qUc4WZyM7bTteESpwc3cK7NCHea0AQyCSBLb7KUcG1Xe1ajm
         Akcz1gWY+1Oq/U8tyEVCGiRUJ9ddJ+LBjsQGGDg0KkVs5R4MkQcrcCChOzcvysxQwM1x
         QQkA==
X-Gm-Message-State: ANoB5pniIU8WkTAx4k/BEFc1fYf9LFlnGhUWU0Oa6l7W9rpi8BzfLIrw
        mo7UxESoyC80Q3bSuQiStsJAJjSA/So=
X-Google-Smtp-Source: AA0mqf5gh9GnKwZ+KnbHW3tfW5NNfE8C2YpZLdt4qu2TDG8iED0aH0oHdBvgwBdPu33YkPIgAzPcVg==
X-Received: by 2002:a05:600c:1e85:b0:3d0:4993:d45e with SMTP id be5-20020a05600c1e8500b003d04993d45emr31306968wmb.13.1670184021598;
        Sun, 04 Dec 2022 12:00:21 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id u8-20020a05600c00c800b003d09150b339sm6663504wmm.20.2022.12.04.12.00.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Dec 2022 12:00:21 -0800 (PST)
Message-ID: <130212f5-5efe-b5ce-b3c8-360911585ff0@gmail.com>
Date:   Sun, 4 Dec 2022 21:00:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Issue in man page syscall.2
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20221204090716.GA757@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221204090716.GA757@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------cAWQxFP0oLjpL7qOQWOLSyu2"
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
--------------cAWQxFP0oLjpL7qOQWOLSyu2
Content-Type: multipart/mixed; boundary="------------VvQucGc00SeizD6Jb1DXl4nW";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <130212f5-5efe-b5ce-b3c8-360911585ff0@gmail.com>
Subject: Re: Issue in man page syscall.2
References: <20221204090716.GA757@Debian-50-lenny-64-minimal>
In-Reply-To: <20221204090716.GA757@Debian-50-lenny-64-minimal>

--------------VvQucGc00SeizD6Jb1DXl4nW
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSGVsZ2UsDQoNCk9uIDEyLzQvMjIgMTA6MDcsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6
DQo+IFdpdGhvdXQgZnVydGhlciBhZG8sIHRoZSBmb2xsb3dpbmcgd2FzIGZvdW5kOg0KPiAN
Cj4gSXNzdWU6ICAgIG9mIDAg4oaSIG9mIEk8cjA+Pw0KPiANCj4gIlNpbmNlIHRoZSBvZmZz
ZXQgYXJndW1lbnQgaXMgNjQgYml0cywgYW5kIHRoZSBmaXJzdCBhcmd1bWVudCAoSTxmZD4p
ICBpcyINCj4gInBhc3NlZCBpbiBJPHIwPiwgdGhlIGNhbGxlciBtdXN0IG1hbnVhbGx5IHNw
bGl0IGFuZCBhbGlnbiB0aGUgNjQtYml0IHZhbHVlIg0KPiAic28gdGhhdCBpdCBpcyBwYXNz
ZWQgaW4gdGhlIEk8cjI+L0k8cjM+IHJlZ2lzdGVyIHBhaXIuICBUaGF0IG1lYW5zIGluc2Vy
dGluZyINCj4gImEgZHVtbXkgdmFsdWUgaW50byBJPHIxPiAodGhlIHNlY29uZCBhcmd1bWVu
dCBvZiAwKS4gIENhcmUgYWxzbyBtdXN0IGJlIg0KPiAidGFrZW4gc28gdGhhdCB0aGUgc3Bs
aXQgZm9sbG93cyBlbmRpYW4gY29udmVudGlvbnMgKGFjY29yZGluZyB0byB0aGUgQyBBQkki
DQo+ICJmb3IgdGhlIHBsYXRmb3JtKS4iDQoNClRoZSByZXBvcnQgaXMgaW52YWxpZDoNCg0K
DQogICAgICAgICAgICBzeXNjYWxsKFNZU19yZWFkYWhlYWQsIGZkLCAwLA0KICAgICAgICAg
ICAgICAgICAgICAodW5zaWduZWQgaW50KSAob2Zmc2V0ICYgMHhGRkZGRkZGRiksDQogICAg
ICAgICAgICAgICAgICAgICh1bnNpZ25lZCBpbnQpIChvZmZzZXQgPj4gMzIpLA0KICAgICAg
ICAgICAgICAgICAgICBjb3VudCk7DQoNCiAgICAgICAgU2luY2UgdGhlIG9mZnNldCBhcmd1
bWVudCBpcyA2NCBiaXRzLCBhbmQgdGhlIGZpcnN0IGFyZ3XigJANCiAgICAgICAgbWVudCAo
ZmQpIGlzIHBhc3NlZCBpbiByMCwgdGhlIGNhbGxlciBtdXN0IG1hbnVhbGx5IHNwbGl0DQog
ICAgICAgIGFuZCBhbGlnbiB0aGUgNjTigJBiaXQgdmFsdWUgc28gdGhhdCBpdCBpcyAgcGFz
c2VkICBpbiAgdGhlDQogICAgICAgIHIyL3IzICByZWdpc3RlciBwYWlyLiAgVGhhdCBtZWFu
cyBpbnNlcnRpbmcgYSBkdW1teSB2YWx1ZQ0KICAgICAgICBpbnRvIHIxICh0aGUgc2Vjb25k
IGFyZ3VtZW50IG9mIDApLiAgQ2FyZSAgYWxzbyAgbXVzdCAgYmUNCiAgICAgICAgdGFrZW4g
IHNvICB0aGF0IHRoZSBzcGxpdCBmb2xsb3dzIGVuZGlhbiBjb252ZW50aW9ucyAoYWPigJAN
CiAgICAgICAgY29yZGluZyB0byB0aGUgQyBBQkkgZm9yIHRoZSBwbGF0Zm9ybSkuDQoNCkl0
J3Mgc2F5aW5nIHRoYXQgdGhlIHNlY29uZCBhcmd1bWVudCBpbiB0aGUgY2FsbCBhYm92ZSBp
cyB0aGUgdmFsdWUgMC4NCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCg0KLS0gDQo8aHR0cDovL3d3
dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------VvQucGc00SeizD6Jb1DXl4nW--

--------------cAWQxFP0oLjpL7qOQWOLSyu2
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOM/FQACgkQnowa+77/
2zKPFA//UHoDdKHlW5wn5kWdoYaWC6e220xgY5YayThS/sc4++w/VJjmt/Jh8pnF
uRJlihWE5RPiRogWk7FJ4w+0W/J4us3vEmKJVaHeIJfkfU7Z0wQ/vIvnuvrZQl4P
DGCNkQWh3haQAqpvc9PXk7bxfvTe7d3Hht9OlJjgJUFFaSQGnz+Wh6KuV+7xm5h1
cLJhuBSwGJbSMYOCl3Lo79qk86koFCaupwCrO8mWbWtj48nCjalQGs+8CXFwjC6K
jzLiiBywR9CA3hxAHLutdVwRSKW8yAhOWumEU1st3opDLi6dfX42IoUliPXcIy4s
kcl9vQanZibZP8cSK5EZF3zy/+09ynN4F4+0jfMtl7zqGqUcw/14tbQExjq6vJtv
yOUU8vPAFH7YMhLYBfwPCJ/wb62Pc+qy8vAm/zA6n4hel6EFvpCP/aPjtOHcwMNQ
l1rasM5jGVUV0oggVy7epkHUddYj1yq2UJWp1pzgEJ4eCZXBiultj6bnjxrm10uL
807GPxjPuhMNXyOYLCZ4cqYkZe5MsbET1wCA5zmbia3kP4bOA3KccJ1q3hVZgJXe
1Vqk8cb4kMv4nfQjEHioqCDhA6ERaPhxM3ZRYKoVjNAcCI3nXymrAmXBIB0WGoqp
XQNtNpP/u0NClm4h+xJTQh7SsGajMFZv+I5qo6kKA5La6sJVXfk=
=7i+O
-----END PGP SIGNATURE-----

--------------cAWQxFP0oLjpL7qOQWOLSyu2--
