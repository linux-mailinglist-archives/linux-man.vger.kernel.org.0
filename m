Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2A41D5FC7A9
	for <lists+linux-man@lfdr.de>; Wed, 12 Oct 2022 16:47:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229619AbiJLOrk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 12 Oct 2022 10:47:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43420 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229585AbiJLOrj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 12 Oct 2022 10:47:39 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4FEA1B7EEC
        for <linux-man@vger.kernel.org>; Wed, 12 Oct 2022 07:47:38 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id a3so26638099wrt.0
        for <linux-man@vger.kernel.org>; Wed, 12 Oct 2022 07:47:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:from:cc:to:content-language:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=TaHjGxRX5HOTJ4qLnef/E7Nnu7uNON8RIF7a398GZek=;
        b=Vq+2DWzer2mvig6f0cXorxq2Tf1V76aT2n0zCKuJ87BNp4h5tHCBMM0vAFBi8J3s+l
         RhzroN4r3x7vjWCrK3pr4bm4F1oWx/eo7uiMFBwr2oLvMwCRUzFr3qeQ0/FqV50qbXBv
         w1e2YDvEZBLW9rvoTh7j0OE339SosUuMcp+PNOkwy0KMz7CJDbuatISyChUdXo8IVOcp
         Y9LQBsl1q8hUMCxZ32LZiLZNwQYNTz/4gio3i7PgvRdjkxZXwHu6qrO7TqGIhAeXeIEh
         /He88BOBjG3GrLPRlOsjq9JEXG51FfG0dzTDaADEOwUe6dBjse8nd2k+TqAfcN2+uFl4
         w70Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=subject:from:cc:to:content-language:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TaHjGxRX5HOTJ4qLnef/E7Nnu7uNON8RIF7a398GZek=;
        b=p9VdRTsfibTuRflIIl3zlWmMetP80/B3VTuGlmaHNzu26o+fAWYB1VFnaW6reOsSKK
         rcNCVW2eTPwvjU3ZtfGvFKOKLJo3hsGBrmDRz08Qf60VFradNE4lkcjskYTQH8UmWVFg
         mOGGBzP9f55WyH4dGKWc9vJolj00JQ9esmMBB3sGwQNBQG+FSHgslh3EbLnmmsG5EZdA
         jU4FXtIRw/0IY/bk8gOo8PWqjc3YK48UvxuqDv8m6yINz7iQ8JUOh3aNnLjLu3mfThYr
         aDihnh3+69+DqHNy1LGQP/flVBqdzNyZVOqamu8u053eI9c1wo9pl4m5vBt1PAZzdk4N
         HZiw==
X-Gm-Message-State: ACrzQf0EZtHWkihbRdj+P9S3rjDONcyYVFh23WjySO+EGVkuP1UpHxn1
        50369ONn1eV2sOsdH2hO11c=
X-Google-Smtp-Source: AMsMyM6ZcPJ02GW+hI35PyrCQMWY6sDbt2RNYGFY6tBVyl8lS6EX0GNbNu4w1SzxGu7/ka+TJPL/hg==
X-Received: by 2002:a5d:6485:0:b0:230:b6db:d41c with SMTP id o5-20020a5d6485000000b00230b6dbd41cmr8703392wri.709.1665586056712;
        Wed, 12 Oct 2022 07:47:36 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id bp15-20020a5d5a8f000000b0022cbf4cda62sm17902803wrb.27.2022.10.12.07.47.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Oct 2022 07:47:36 -0700 (PDT)
Message-ID: <82b77010-6b42-a58a-f8c7-b977297d6832@gmail.com>
Date:   Wed, 12 Oct 2022 16:47:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Content-Language: en-US
To:     groff <groff@gnu.org>
Cc:     linux-man <linux-man@vger.kernel.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
Subject: 3-word compound adjectives; the return of the '-'
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------u7WDNvdyeOZF5b0tSW3btsPS"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------u7WDNvdyeOZF5b0tSW3btsPS
Content-Type: multipart/mixed; boundary="------------wlmaKzJUi9Pz6uKNgwmfSmN3";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: groff <groff@gnu.org>
Cc: linux-man <linux-man@vger.kernel.org>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>
Message-ID: <82b77010-6b42-a58a-f8c7-b977297d6832@gmail.com>
Subject: 3-word compound adjectives; the return of the '-'

--------------wlmaKzJUi9Pz6uKNgwmfSmN3
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGksDQoNCkluIGEgcGF0Y2ggdG8gbGludXgtbWFuQCB0aGVyZSdzIGEgMy13b3JkIGNvbXBv
dW5kIGFkamVjdGl2ZS4gIEkgZG9uJ3QgDQprbm93IHdoYXQgYXJlIHRoZSBydWxlcyBmb3Ig
c3VjaCBhIHRoaW5nLCBhbmQgSSdkIGxpa2UgdG8gaGF2ZSBzb21lIA0KY29uc2lzdGVuY3kg
KGFuZCBjb3JyZWN0bmVzcykgaW4gdGhlIG1hbnVhbCBwYWdlcy4NCg0KSSd2ZSBzZWVuIG1h
bnkgZGlmZmVyZW50IHRoaW5ncyBpbiB0aGUgcGFzdDs6DQoNCiAgYSkgYmxvY2sgZGV2aWNl
LWJhc2VkIGZpbGVzeXN0ZW1zDQogIGIpIGJsb2NrLWRldmljZS1iYXNlZCBmaWxlc3lzdGVt
cw0KICBjKSBibG9jay0gZGV2aWNlLWJhc2VkIGZpbGVzeXN0ZW1zDQoNCkFuZCBub3cgSSBm
b3VuZCBvbmUgbW9yZSANCjxodHRwczovL3d3dy5lZGl0b3Jncm91cC5jb20vYmxvZy90by1o
eXBoZW5hdGUtb3Itbm90LXRvLWh5cGhlbmF0ZS8+Og0KDQogIGQpIGJsb2NrIGRldmljZVxb
ZW5dYmFzZWQgZmlsZXN5c3RlbXMNCg0KV2hlcmUgdGhlIGVuIGRhc2ggaXMgdXNlZCB0byBk
aXN0aW5ndWlzaCBpdCBmcm9tICdhIGJsb2NrIGZpbGVzeXN0ZW0gDQpiYXNlZCBvbiBhIGRl
dmljZScuDQoNCldoaWNoIGZvcm0gd291bGQgeW91IHJlY29tbWVuZCBtZSB0byB1c2U/DQoN
Cg0KQ2hlZXJzLA0KDQpBbGV4DQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9t
YXIuZXMvPg0K

--------------wlmaKzJUi9Pz6uKNgwmfSmN3--

--------------u7WDNvdyeOZF5b0tSW3btsPS
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNG038ACgkQnowa+77/
2zJg8w//cvJsQOHJmpiXC7PWwV2CX47zS0cw9toD11JmyMamDJzV0Ada2cyHNhR4
quwf4fMJZpeMvEAfZfUN/j4hDXBKVaeDWfgKQcM68rZazRV7BdGWjXrniv3Sml2l
mXqGJPwkD28Uua4h0sWLeGUohsOnDlne25u4LwAj5L1cnKXAiu2z01BCVr7pSNrS
VjElDMdCmXH8t1WCc792OHn43fLDt1igdViHfQUyezbaY933V5KWOUgNxejodZBZ
DIbrN7f1QryQJajQ/ULzV3XbXz9kpUyaMvNF9O5B+95DSetZoxRrJrM22VJ+hnI+
3xQ+UunTbbdnC/NBDk20BrRVIW89cwvJJGISytd+2AJ1uckuU8s0CY9vt8zxODYO
cwQ1ZlJeR8pDMos+mqsu/tTxyP+EN9UJdLeAL1FiKwFFESguq9H40t1pf4KBQllT
XiIsZOTl3Mbuxqsdj1Kv2VDZ/j3JMLFlTqU14OwDG/HOz3zXLLxphNAFF9p4ninX
U6Da72ChTkhZqbG8EYn4Yz6LG6p/HAt0BlBYwLgGpb2QU5LjlVE1OuCV0KaxhVDn
fPmFUoixcAP8Qyq7ZweQst98PtjG16TH/vuNfAJ1CW16dkVzWgRtqhbqo+kDgcI1
Xrqjgq/UKN/RYieE1HR2lK4b45OAez3loO3XjWDnkzOjblXrqow=
=AgC8
-----END PGP SIGNATURE-----

--------------u7WDNvdyeOZF5b0tSW3btsPS--
