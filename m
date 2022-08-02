Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 74E2C587B6C
	for <lists+linux-man@lfdr.de>; Tue,  2 Aug 2022 13:15:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233412AbiHBLPq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 2 Aug 2022 07:15:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49324 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236900AbiHBLPX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 2 Aug 2022 07:15:23 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 87F1A5070F
        for <linux-man@vger.kernel.org>; Tue,  2 Aug 2022 04:15:05 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id j1so9096285wrw.1
        for <linux-man@vger.kernel.org>; Tue, 02 Aug 2022 04:15:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=XX2nWy5hB/Bft/tBw2HIj3w2T7ySdQw4jtStiyshBmA=;
        b=Kp6IkqliLLSkKi7O+HUmcY/T9bbHeR/Kv0BPLcqlNQ7oN1lXxmmjz20vSFedcKeAHL
         uVxI0JWmbOsTDNW+mQoteziOwTLwPYL5frylAFNNIE9OwAvo5xpMwWAo+8KuL8fpUfI7
         u66wSitu9O9AmSLEZT1jDOExFW3251CEvpMKKCI3OIvVewUztTcjP8oWfSmqk6m/sj8q
         UPM9jHqrWRH7x6/0mVuYKVAUriAQO7Y4x2phx0ZSiVvVxaZAnh+Z2N5ntpZb9O5A/ugY
         n+HbuWjypmuvDZvxcPF90vYMunjLOc3G+1sqJ1rddpO27rhMlkmlM/EFkgcVd+JuI9FY
         jfRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=XX2nWy5hB/Bft/tBw2HIj3w2T7ySdQw4jtStiyshBmA=;
        b=bqfdicDSx2R9dN09zpjmyVwPkuNHcPklVmkJt34nrMtxJY9XTdHHhcUdKlvXfUp2EX
         amUUxUgjPeb6tUdWypoFAz9esw+4tv3APxg/CZSfwEr1jjJW3NkwT/BjhxSlk+phUI8q
         0fybzUdtUQ8/AwGNkEtfrsthuoTm+xZKEbZTvY95dh/g/c6hScL1fIggJiKPLzrTENQP
         KeIWPsAwSUHzmwjakZwFw2NvFiQfjiCXFXmnX4mfKAD0bBx2J4AM2uCLszb0eiBFMKXn
         MEPYs3Pe0KsQzy9obcy/YkSvEVVt6fnB1Q8Sx6FwiGqGi/V4eqHQ0kgiej3bdORowP6B
         aQcQ==
X-Gm-Message-State: ACgBeo0ySH56rx8AT8spAe6ULgRwAGNxQa4RWo1jh5TP3HsWKcF6prLR
        mX/EStWKFqaEEvV4K6BqYNI=
X-Google-Smtp-Source: AA6agR6Hz8YzrzVKRtT83W3dMZxufTZ70EZNXN22VPMWKAIK1rQLGm3dC7a2yVUEFusRdIdRWJzAbA==
X-Received: by 2002:adf:d238:0:b0:21e:c972:7505 with SMTP id k24-20020adfd238000000b0021ec9727505mr13271492wrh.536.1659438903990;
        Tue, 02 Aug 2022 04:15:03 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id e1-20020a05600c4e4100b003a4bb3f9bc6sm12894205wmq.41.2022.08.02.04.15.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Aug 2022 04:15:03 -0700 (PDT)
Message-ID: <52e0ba7a-f5d1-b527-56b7-0f6eaf8246cb@gmail.com>
Date:   Tue, 2 Aug 2022 13:15:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.0
Subject: Re: [patch] random.4: Update description about O_NONBLOCK flag
Content-Language: en-US
To:     GUO Zihua <guozihua@huawei.com>
Cc:     Jason@zx2c4.com, ebiggers@kernel.org, linux-man@vger.kernel.org
References: <20220802035336.33772-1-guozihua@huawei.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220802035336.33772-1-guozihua@huawei.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------cW3LRzTwP0XwPk4Belmt8EwS"
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
--------------cW3LRzTwP0XwPk4Belmt8EwS
Content-Type: multipart/mixed; boundary="------------7GMjx1Cuccg3i4lV0Qwx6j3a";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: GUO Zihua <guozihua@huawei.com>
Cc: Jason@zx2c4.com, ebiggers@kernel.org, linux-man@vger.kernel.org
Message-ID: <52e0ba7a-f5d1-b527-56b7-0f6eaf8246cb@gmail.com>
Subject: Re: [patch] random.4: Update description about O_NONBLOCK flag
References: <20220802035336.33772-1-guozihua@huawei.com>
In-Reply-To: <20220802035336.33772-1-guozihua@huawei.com>

--------------7GMjx1Cuccg3i4lV0Qwx6j3a
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGksDQoNCk9uIDgvMi8yMiAwNTo1MywgR1VPIFppaHVhIHdyb3RlOg0KPiBUaGUgT19OT05C
TE9DSyBmbGFnIGhhcyBiZWVuIHJlbW92ZWQgc2luY2UgTGludXggNS42IGFuZCB0aGlzIHBh
dGNoDQo+IHN0YXRlcyB0aGlzIGNoYW5nZSBpbiBtYW4gcGFnZS4NCj4gDQo+IFRoZSBjb21t
aXQgdGhhdCBpbnRyb2R1Y2UgdGhpcyBjaGFuZ2UgaW4gdGhlIExpbnV4IGtlcm5lbCBpcw0K
PiAzMGMwOGVmZWM4ODggKCJyYW5kb206IG1ha2UgL2Rldi9yYW5kb20gYmUgYWxtb3N0IGxp
a2UgL2Rldi91cmFuZG9tIikNCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEdVTyBaaWh1YSA8Z3Vv
emlodWFAaHVhd2VpLmNvbT4NCg0KUGxlYXNlIHNlZSBhIG1pbm9yIGZvcm1hdHRpbmcgaXNz
dWUgYmVsb3cuDQpUaGFua3MgZm9yIHRoZSBwYXRjaC4NCg0KQ2hlZXJzLA0KDQpBbGV4DQoN
Cj4gLS0tDQo+ICAgbWFuNC9yYW5kb20uNCB8IDcgKysrKysrLQ0KPiAgIDEgZmlsZSBjaGFu
Z2VkLCA2IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQg
YS9tYW40L3JhbmRvbS40IGIvbWFuNC9yYW5kb20uNA0KPiBpbmRleCBiZWE4NjBlN2YwZDcu
LjViMjA5NDkzMTQ0OSAxMDA2NDQNCj4gLS0tIGEvbWFuNC9yYW5kb20uNA0KPiArKysgYi9t
YW40L3JhbmRvbS40DQo+IEBAIC02OCw3ICs2OCwxMiBAQCBoaWdoIHF1YWxpdHkgcmFuZG9t
bmVzcywgYW5kIGNhbiBhZmZvcmQgaW5kZXRlcm1pbmF0ZSBkZWxheXMuDQo+ICAgLlBQDQo+
ICAgV2hlbiB0aGUgZW50cm9weSBwb29sIGlzIGVtcHR5LCByZWFkcyBmcm9tIFxmSS9kZXYv
cmFuZG9tXGZQIHdpbGwgYmxvY2sNCj4gICB1bnRpbCBhZGRpdGlvbmFsIGVudmlyb25tZW50
YWwgbm9pc2UgaXMgZ2F0aGVyZWQuDQo+IC1JZg0KPiArU2luY2UgTGludXggNS42LCB0aGUN
Cj4gKy5CIE9fTk9OQkxPQ0sNCj4gK2ZsYWcgaXMgcmVtb3ZlZCBhcw0KPiArLkkgL2Rldi9y
YW5kb20NCj4gK3dpbGwgbm8gbG9uZ2VyIGJsb2NrIGV4Y2VwdCBkdXJpbmcNCj4gK2Vhcmx5
IGJvb3QgcHJvY2Vzcy4gSW4gZWFyaWxlciB2ZXJzaW9ucywgaWYNCg0Kcy9cLiAvLlxuLw0K
DQpTZWUgbWFuLXBhZ2VzKDcpOg0KICAgIFVzZSBzZW1hbnRpYyBuZXdsaW5lcw0KICAgICAg
ICBJbiAgdGhlICBzb3VyY2Ugb2YgYSBtYW51YWwgcGFnZSwgbmV3IHNlbnRlbmNlcyBzaG91
bGQgYmUNCiAgICAgICAgc3RhcnRlZCBvbiBuZXcgbGluZXMsIGxvbmcgc2VudGVuY2VzIHNo
b3VsZCBiZSBzcGxpdCBpbnRvDQogICAgICAgIGxpbmVzIGF0IGNsYXVzZSBicmVha3MgKGNv
bW1hcywgc2VtaWNvbG9ucywgIGNvbG9ucywgIGFuZA0KICAgICAgICBzbyBvbiksIGFuZCBs
b25nIGNsYXVzZXMgc2hvdWxkIGJlIHNwbGl0IGF0IHBocmFzZSBib3VuZOKAkA0KICAgICAg
ICBhcmllcy4gICBUaGlzICBjb252ZW50aW9uLCAgc29tZXRpbWVzICBrbm93biBhcyAic2Vt
YW50aWMNCiAgICAgICAgbmV3bGluZXMiLCBtYWtlcyBpdCBlYXNpZXIgdG8gc2VlIHRoZSBl
ZmZlY3Qgb2YgIHBhdGNoZXMsDQogICAgICAgIHdoaWNoIG9mdGVuIG9wZXJhdGUgYXQgdGhl
IGxldmVsIG9mIGluZGl2aWR1YWwgc2VudGVuY2VzLA0KICAgICAgICBjbGF1c2VzLCBvciBw
aHJhc2VzLg0KDQoNCj4gICAuQlIgb3BlbiAoMikNCj4gICBpcyBjYWxsZWQgZm9yDQo+ICAg
LkkgL2Rldi9yYW5kb20NCg0KLS0gDQpBbGVqYW5kcm8gQ29sb21hcg0KPGh0dHA6Ly93d3cu
YWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------7GMjx1Cuccg3i4lV0Qwx6j3a--

--------------cW3LRzTwP0XwPk4Belmt8EwS
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLpBzYACgkQnowa+77/
2zJ4kA//QzVJmhvwU7dMcWdjQhaC+jPOP5fixpZcn+ncXVJHfVuK+Ta14m2biGkr
Knvy5iqV3G1B3RyYQqjEEY1d5u/VHPXyYdsPZtjDk3uUWjLgWKp3txbx433BypZy
hDk1WxId6hhdGO3VpKab+MBKVzq/1p3GGmNOBISQIj6S9tKYlKsJTqf5tJO+uE1A
VoE6klmFxL6sRj4FGZv78y0I/fayqvNtLBMpYdaoSbZYr7JYvacFJAzUfaa3HbVr
34SkRZQU0xWapD38AuhuuVTFZxStQFttTnWin39bds3ex8irdwBTmmSyFA/bXjRs
ogmdQd33mQEe5C/z8L2im8zoY4a8bO0E0ji4VCrFi0163cW/2pdaxn9pipO88K9J
z3IO0aLwGgVEHXGJj9/zQC4Mo7GFwh06rb1JGJFV1hVY3BD+nGjVyqGjg+VchqGA
befyNT3KSeL9j20FS7oePvH629WfSeMyyAIg3udn/+0U7UhNW8rTeqSnkZRG01AB
DZZs17YEQWnIrDIjqw6lZSE7/hBKyNnko2zomwzt2hZDlFTpV4PuQ/CxiWEr9cJd
WNtjpW3Vll5QmP4bASfUD+tcpYqschxYvUKjnvzFE+2ZM+zMnHatiqh3CeBaYN13
78oDoAayJob2OsnZqUHnVxUJINnHfgK9CMl70mVgFr0Fl1v9pHI=
=aJBl
-----END PGP SIGNATURE-----

--------------cW3LRzTwP0XwPk4Belmt8EwS--
