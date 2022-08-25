Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8EC735A0EE0
	for <lists+linux-man@lfdr.de>; Thu, 25 Aug 2022 13:20:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241426AbiHYLT7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 25 Aug 2022 07:19:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56892 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235750AbiHYLT6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 25 Aug 2022 07:19:58 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F1B7E89
        for <linux-man@vger.kernel.org>; Thu, 25 Aug 2022 04:19:56 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id h24so24176759wrb.8
        for <linux-man@vger.kernel.org>; Thu, 25 Aug 2022 04:19:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=be7kdvz6FpDQLGB3zMJkvnvvsNsvjHHZJ7BPYihaL4g=;
        b=jWOYqzrlSHgWOBQJ80MQ8T5X29/dRAfPpUO65+Zmx+/1eB4SEJa42XeS/nylKgm7MO
         IgTuYGusmcNsqysR8AD0uSJDAxKtRcuMg7XJDu0ZkYTnNzeQyLQVROQiN50m9as66svi
         R9ghByOFnpr1HYttC2rewELWx474rW2dRRHpV6zDET8T9lj6daIPrBuRffo3u7lwy47k
         4P9d9ek+4ue0XXWgQmurEL6Z3gaBSQZb1YTblpcv38iX2KTMGBJ5eoFOfCd6k5X378l4
         ZufAkGL3IUBVbcM3snyKvASKBybY5Df2xUGy76rAERQpWsfRsoloYZi28GY446pW12Ek
         rlmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=be7kdvz6FpDQLGB3zMJkvnvvsNsvjHHZJ7BPYihaL4g=;
        b=ka4SZ14N3bvZFkmdfMefz0giTW8fTLH/1yeo8iPTFNLQM4ealmXjEYhRHc74Ox5VvL
         5RkNk/TvigXHnuu2g8gNrV9qdz33yr3Q+i0igx49njvFTNmhP6jbmi2uuaMg3cHEOYf2
         9q1ofb24bAFPtc5JPwoTzxr5E1Hya7MfcI1HuvRo3L4mNeaPcDI6dIR3GLfYYXVttBBP
         M108lrqctGNTbtBWLAR46JV2DIv7WyQHOs9BltEjz6F4BdKB/vTaQpKuT10+Ae/TDlIe
         EWZuauY7KokzCas343r26cgg+jXs6Se3jo0jsk6bq7825v0jXPYSWn+hLiDsoNfDHVM1
         BuLA==
X-Gm-Message-State: ACgBeo0ULWE1iFQ72cBdD8AD4pUEyKErSVQml9R9M+T4iE0BDI7DIYha
        wK1+bKLyFOWkmOEJ4hTuCZQ=
X-Google-Smtp-Source: AA6agR62k8DJcgTUO21ToJjh0ZhaeDkV8aomuJbLjgBS05h4Uscq/2wFc8azdIqQuYoGzNnEJ+hu3w==
X-Received: by 2002:a5d:6d86:0:b0:225:404f:ac99 with SMTP id l6-20020a5d6d86000000b00225404fac99mr1931347wrs.165.1661426394909;
        Thu, 25 Aug 2022 04:19:54 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id l25-20020a05600c1d1900b003a62052053csm6026790wms.18.2022.08.25.04.19.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Aug 2022 04:19:54 -0700 (PDT)
Message-ID: <5198926c-b0af-8fba-bfcb-8d222f5990e1@gmail.com>
Date:   Thu, 25 Aug 2022 13:19:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: [PATCH] utime.2, utimensat.2: explicitly mention ctime changing.
Content-Language: en-US
To:     Jakub Wilk <jwilk@jwilk.net>, linux-man@vger.kernel.org
Cc:     NeilBrown <neilb@suse.de>, Jeff Layton <jlayton@kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>
References: <166130409455.27490.3548169201261980550@noble.neil.brown.name>
 <22fdfff7e210aef79ea9e65d779e87cb6bcd5295.camel@kernel.org>
 <38bbc417-9d74-2407-b7c6-f9b2554cc837@gmail.com>
 <166138683612.27490.13474817287495072119@noble.neil.brown.name>
 <20220825083736.pnwuytunzhvq4hwx@jwilk.net>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220825083736.pnwuytunzhvq4hwx@jwilk.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------YYMvBWzA6I9aEcNVE3WYe9n4"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------YYMvBWzA6I9aEcNVE3WYe9n4
Content-Type: multipart/mixed; boundary="------------TfsMXMW8ewdT0upqUIfzzxmC";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Jakub Wilk <jwilk@jwilk.net>, linux-man@vger.kernel.org
Cc: NeilBrown <neilb@suse.de>, Jeff Layton <jlayton@kernel.org>,
 Michael Kerrisk <mtk.manpages@gmail.com>
Message-ID: <5198926c-b0af-8fba-bfcb-8d222f5990e1@gmail.com>
Subject: Re: [PATCH] utime.2, utimensat.2: explicitly mention ctime changing.
References: <166130409455.27490.3548169201261980550@noble.neil.brown.name>
 <22fdfff7e210aef79ea9e65d779e87cb6bcd5295.camel@kernel.org>
 <38bbc417-9d74-2407-b7c6-f9b2554cc837@gmail.com>
 <166138683612.27490.13474817287495072119@noble.neil.brown.name>
 <20220825083736.pnwuytunzhvq4hwx@jwilk.net>
In-Reply-To: <20220825083736.pnwuytunzhvq4hwx@jwilk.net>

--------------TfsMXMW8ewdT0upqUIfzzxmC
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSmFrdWIsIE5laWwsDQoNCk9uIDgvMjUvMjIgMTA6MzcsIEpha3ViIFdpbGsgd3JvdGU6
DQo+ICogTmVpbEJyb3duIDxuZWlsYkBzdXNlLmRlPiwgMjAyMi0wOC0yNSAxMDoyMDoNCj4+
IEkgd2lsbCBpbiBmdXR1cmUsIGJ1dCB5b3UgbWlnaHQgbGlrZSB0byB1cGRhdGUgDQo+PiBo
dHRwczovL3d3dy5rZXJuZWwub3JnL2RvYy9tYW4tcGFnZXMvcGF0Y2hlcy5odG1sIHRvIG1h
a2UgaXQgY2xlYXIgDQo+PiB0aGF0ICJlaXRoZXIiIGlzbid0IHJlYWxseSB3YW50ZWQgYW5k
ICJib3RoIiBtYWludGFpbmVycyBzaG91bGQgZ2V0IA0KPj4gdGhlIHBhdGNoLg0KPiANCj4g
QWxzbzogY2FuIHdlIGhhdmUgdGhpcyBpbmZvcm1hdGlvbiBkaXJlY3RseSBpbiB0aGUgQ09O
VFJJQlVUSU5HIGZpbGU/DQo+IA0KDQpZdXAsIENPTlRSSUJVVElORyB1cGRhdGVkOg0KPGh0
dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9kb2NzL21hbi1wYWdlcy9tYW4tcGFnZXMu
Z2l0L2NvbW1pdC8/aWQ9OTc0ODQ1YzVjM2E2ZDI2MzE4YWM1ZDBhYjZhYWY0OTNkNWM0Mzk3
OT4NCg0KSG93ZXZlciwgSSBkb24ndCBrbm93IHdoYXQncyB0aGUgcHJvY2VzcyB0byB1cGRh
dGUgdGhlIHdlYnNpdGUsIHNvIGl0J2xsIA0KdGFrZSBzb21lIHRpbWUgdG8gdXBkYXRlLg0K
DQpDaGVlcnMsDQoNCkFsZXgNCg0KLS0gDQpBbGVqYW5kcm8gQ29sb21hcg0KPGh0dHA6Ly93
d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------TfsMXMW8ewdT0upqUIfzzxmC--

--------------YYMvBWzA6I9aEcNVE3WYe9n4
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmMHWsYACgkQnowa+77/
2zKuUA/9HzkcrEsFue6rWRlVlpbqSK5FscvZq0LI4/poN+ZVkk8JGbc1d0K+DJim
rSa1ae5cJgSJCasflSVU8L9S150bYM2mnLWP0TjwVl+Hf3V2gTPFtho60kpCjK7Z
CMhqIkEYa1lpABhT4EWsx9EY6SlLfH2zFlT9SZiYFNyzNDGGc0d+Na+vKt4lXIBw
+LEm8811SoLxVXhYDoIWLu3QY6A0ZI6XiVr8BAOEMyRUGl5YeLC92xyu+EmzRN6p
2KzSQ/1J10rRz3UVgTSY5Zu1OnsA/T0j/L25NK6mH8PnipFksGwiuHD6ZBuYixGq
2/EF2FsgouEykQpC+DK5S3NbdSKtrOT+8b9tb/y6eTzfaDTOZXzaqDztmAyEcJqR
5Swx+ZDkC0QtyOfJhWBhqRaDmCPZZPTUDTLIZqZw1frgyjFWrhgIbW7WJmLYDHig
jszshIKOGY0C67xIQd7lRIHxhFiA1p6tU7ezki0pyYIkH6hg6H+l8F0HnOcRjqoy
1qmxqll2jGe6+2XJ1fI2Dx2eBmASbqM+aAqgA4dQrWqe0EUE6QdXvxu1kzcfzXCG
A/yLPkSPrE0qYUqvX1PkIjCJEEND+tay8zBW4CX+q9GtsKvuI6sJpHmA6iGa8yNK
+lxjsUdGjfMdDDSUp84U0OT8LhHZP3k6YuYXmOXX7bxfgU6YBhQ=
=2Wiv
-----END PGP SIGNATURE-----

--------------YYMvBWzA6I9aEcNVE3WYe9n4--
