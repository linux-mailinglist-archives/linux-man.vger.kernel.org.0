Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 167E7624189
	for <lists+linux-man@lfdr.de>; Thu, 10 Nov 2022 12:37:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230407AbiKJLhK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 10 Nov 2022 06:37:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44160 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230384AbiKJLhI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 10 Nov 2022 06:37:08 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 185ED6584E
        for <linux-man@vger.kernel.org>; Thu, 10 Nov 2022 03:37:04 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id v124-20020a1cac82000000b003cf7a4ea2caso3182210wme.5
        for <linux-man@vger.kernel.org>; Thu, 10 Nov 2022 03:37:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vjHCr5YozSFS8oBBmH/m6FYMVZ82OoCW2r9m0auOKag=;
        b=lSuVs3waabGf5ryY2gBDuKTe0yTxhF79OBop+R1XfNDTfFeooHDxgysz1/TflinH5L
         FJyKO7ELLOEfl5hzPrg6evV7par1prRSY5ueehREUbrt+SUrMPBR5VJuh1dTOA/yVbr/
         5jSjH/DTzlvhgRlRyeNYC+avRim+JeNYjBLAPTu9gv5lgzitaJLWI8RmUOhWEmCpUGmq
         bDw30jZ91dbNGgMtbfFu/gAG8gmjQwvHW6Jrtj8LRvhQn5w5pGyR0cu8EZZ22o8LKwd7
         saT8SfAVu27XDv+xr7UkFKiNHjgySKNw8VzwZ5+11HgUsbpim9Pz7UpUHNdVkrJCiQ6A
         2A+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=vjHCr5YozSFS8oBBmH/m6FYMVZ82OoCW2r9m0auOKag=;
        b=U7OUhDU9+eFKoZZbMHIP0jxxuvXdcKr2JJHAg9CrQ3Ig54ROS9BHPJeUfqQi1nfuXT
         o93fM3cOLlhk5oFs+cSwiIfEmJlBxwNqRI/z8f1Z7PZYEG9McX1w27VVgW55NQGx29q5
         KT7EF6CW4xT+Y9+l071IVCgd0ItV7kmOg/uXr1FOtgLi5LQdPvd+SLGyfX95ukJqL92w
         T3AOeqyd9XVIaulQOrK9syERN0xc79cDMr6y9w31fNgZ69aZeocpQ7PpLVAcU+0mf2w9
         IUM8sN+rTJiVKKUahivLpsxDzU7byXdQiVD22NqpoopNrpD021wfs2FmtbXv7gP3KZdz
         LIZg==
X-Gm-Message-State: ACrzQf1rTrGBpOT+UvPHeu7loVGYwF4MjDheZpJDfvHG7I+8wZuydCu5
        i81PVhnFQf+hra3sV3AGRlI=
X-Google-Smtp-Source: AMsMyM6OK1SA3wt+SWCAQGZnji9ja+OKUgsMfJLdtdMcIVqsLx0+IuR5zPwQjOp6wSK2MoTX4Ft+QQ==
X-Received: by 2002:a05:600c:4891:b0:3cf:9cd9:a857 with SMTP id j17-20020a05600c489100b003cf9cd9a857mr20403921wmp.44.1668080222473;
        Thu, 10 Nov 2022 03:37:02 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id az37-20020a05600c602500b003cfbe1da539sm4929397wmb.36.2022.11.10.03.37.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Nov 2022 03:37:01 -0800 (PST)
Message-ID: <853fa349-8e78-8ce8-f76f-79b4b9353913@gmail.com>
Date:   Thu, 10 Nov 2022 12:36:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH] memmem.3: Added list of known systems where this is
 available
Content-Language: en-US
To:     Andrew Clayton <andrew@digital-domain.net>
Cc:     linux-man@vger.kernel.org,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx@kernel.org>
References: <20221110001318.10696-1-andrew@digital-domain.net>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221110001318.10696-1-andrew@digital-domain.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------JFNvZWrxkb02Awjg6VOh8dWj"
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
--------------JFNvZWrxkb02Awjg6VOh8dWj
Content-Type: multipart/mixed; boundary="------------f0O5SqbxhTlmFfdkEDOXgoaT";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Andrew Clayton <andrew@digital-domain.net>
Cc: linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>,
 Alejandro Colomar <alx@kernel.org>
Message-ID: <853fa349-8e78-8ce8-f76f-79b4b9353913@gmail.com>
Subject: Re: [PATCH] memmem.3: Added list of known systems where this is
 available
References: <20221110001318.10696-1-andrew@digital-domain.net>
In-Reply-To: <20221110001318.10696-1-andrew@digital-domain.net>

--------------f0O5SqbxhTlmFfdkEDOXgoaT
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQW5kcmV3IQ0KDQpPbiAxMS8xMC8yMiAwMToxMywgQW5kcmV3IENsYXl0b24gd3JvdGU6
DQo+IFdoaWxlIGxvb2tpbmcgYXQgd2hpY2ggc3lzdGVtcyBwcm92aWRlIG1lbW1lbSgzKSBJ
IGhhdmUgYmVlbiBhYmxlIHRvDQo+IGRpc2Nlcm4gdGhlIGZvbGxvd2luZzoNCj4gDQo+ICAg
IG11c2wgbGliYyBzaW5jZSB2MC45LjcNCj4gICAgYmlvbmljIHNpbmNlIEFuZHJvaWQgOQ0K
PiANCj4gICAgRnJlZUJTRCBzaW5jZSA2LjANCj4gICAgT3BlbkJTRCBzaW5jZSA1LjQNCj4g
ICAgTmV0QlNEDQo+ICAgIG1hY09TDQo+ICAgIElsbHVtb3MNCg0KQWx0aG91Z2ggZm9yIHRo
ZSBwYWdlIGl0c2VsZiBJIHdvdWxkbid0IGFkZCB0aGUgZGF0ZXMsIEkgdGhpbmsgaXQncyB1
c2VmdWwgdG8gDQppbmNsdWRlIHRoZSB5ZWFycyBvZiB0aG9zZSByZWxlYXNlcyBpbiB0aGUg
Y29tbWl0IG1lc3NhZ2UgKHdoZW4ga25vd24pLg0KDQptdXNsIDAuOS43IGlzIGZyb20gMjAx
Mi4NCkZyZWVCU0QgNiBpcyBmcm9tIDIwMDUuDQpPcGVuQlNEIDUuNCBpcyBmcm9tIDIwMTMu
DQoNClBsZWFzZSBpbmNsdWRlIHRoYXQsIGlmIHlvdSBkb24ndCBtaW5kLg0KDQo+IA0KPiBG
b3IgbWFjT1MgYW5kIElsbHVtb3MgSSBjaGVja2VkIHRoZSBtZW1tZW0oMykgbWFuIHBhZ2Ug
b24gdGhvc2Ugc3lzdGVtcy4NCj4gRm9yIHRoZSByZXN0IHRoZXJlIGFyZSBsaW5rcyBiZWxv
dyB0byBvbi1saW5lIG1hbiBwYWdlcyBvciBjb21taXQgbG9ncy4NCj4gDQo+IFdoZXJlIEkg
Y291bGQgZGV0ZXJtaW5lIHdoYXQgdmVyc2lvbiBtZW1tZW0oMykgd2FzIGludHJvZHVjZWQs
IEkndmUNCj4gbm90ZWQgdGhhdCBpbiB0aGUgbWFuIHBhZ2UuDQo+IA0KPiBMaW5rOiA8aHR0
cDovL2dpdC5tdXNsLWxpYmMub3JnL2NnaXQvbXVzbC9jb21taXQvc3JjL3N0cmluZy9tZW1t
ZW0uYz9pZD1jODZmMjk3NGUyYWNkMzMwYmUyZDU4NzE3M2RkNGRkNTZkYjgyZTIyPg0KPiBM
aW5rOiA8aHR0cHM6Ly9hbmRyb2lkLmdvb2dsZXNvdXJjZS5jb20vcGxhdGZvcm0vYmlvbmlj
LysvYW5kcm9pZC05LjAuMF9yMy9saWJjL2Jpb25pYy9tZW1tZW0uY3BwPg0KPiBMaW5rOiA8
aHR0cHM6Ly93d3cuZnJlZWJzZC5vcmcvY2dpL21hbi5jZ2k/cXVlcnk9bWVtbWVtJnNla3Rp
b249MyZmb3JtYXQ9aHRtbD4NCj4gTGluazogPGh0dHBzOi8vbWFuLm9wZW5ic2Qub3JnL21l
bW1lbS4zPg0KPiBMaW5rOiA8aHR0cHM6Ly9hbm9uaGcubmV0YnNkLm9yZy9zcmMvZGlmZi85
NmEzN2Q1MzYyNzEvY29tbW9uL2xpYi9saWJjL3N0cmluZy9tZW1tZW0uYz4NCj4gU3VnZ2Vz
dGVkLWJ5OiBBbGVqYW5kcm8gQ29sb21hciA8YWx4QGtlcm5lbC5vcmc+DQo+IFNpZ25lZC1v
ZmYtYnk6IEFuZHJldyBDbGF5dG9uIDxhbmRyZXdAZGlnaXRhbC1kb21haW4ubmV0Pg0KPiAt
LS0NCj4gICBtYW4zL21lbW1lbS4zIHwgNCArKystDQo+ICAgMSBmaWxlIGNoYW5nZWQsIDMg
aW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL21hbjMv
bWVtbWVtLjMgYi9tYW4zL21lbW1lbS4zDQo+IGluZGV4IDEzNGRmZmFiMC4uMWY1OGZmZmZk
IDEwMDY0NA0KPiAtLS0gYS9tYW4zL21lbW1lbS4zDQo+ICsrKyBiL21hbjMvbWVtbWVtLjMN
Cj4gQEAgLTU4LDcgKzU4LDkgQEAgVH0JVGhyZWFkIHNhZmV0eQlNVC1TYWZlDQo+ICAgLnNw
IDENCj4gICAuU0ggU1RBTkRBUkRTDQo+ICAgVGhpcyBmdW5jdGlvbiBpcyBub3Qgc3BlY2lm
aWVkIGluIFBPU0lYLjEsDQo+IC1idXQgaXMgcHJlc2VudCBvbiBhIG51bWJlciBvZiBvdGhl
ciBzeXN0ZW1zLg0KPiArYnV0IGlzIHByZXNlbnQgb24gYSBudW1iZXIgb2Ygb3RoZXIgc3lz
dGVtcywNCj4gK2luY2x1ZGluZzogbXVzbCBsaWJjIDAuOS43ICYgYmlvbmljIEFuZHJvaWQg
OTsNCg0KSSBwcmVmZXIgJ2FuZCcgcmF0aGVyIHRoYW4gJyYnLg0KDQo+ICtGcmVlQlNEIDYu
MCwgT3BlbkJTRCA1LjQsIE5ldEJTRCwgbWFjT1MgJiBJbGx1bW9zLg0KDQpBbHNvLCB3ZSB1
c2UgT3hmb3JkIGNvbW1hcyBpbiB0aGUgcHJvamVjdCwgd2hpY2ggbWVhbnMgaGF2aW5nIGEg
Y29tbWEgYmVmb3JlIHRoZSANCidhbmQnIGlmIHRoZXJlIGFyZSBhdCBsZWFzdCAzIGl0ZW1z
IGluIHRoZSBsaXN0Lg0KDQpGb3IgdGhlIGNvbW1pdCBtZXNzYWdlLCBpdCdzIGludGVyZXN0
aW5nIHRvIG5vdGUgbWFjT1MgYW5kIEJpb25pYywgZm9yIA0Kc3BlbGVvbG9neSBwdXJwb3Nl
cy4gIEhvd2V2ZXIsIEknbSBvcHBvc2VkIHRvIGFkZGluZyB0aGVtIHRvIHRoZSBwYWdlIGl0
c2VsZiANCmJlY2F1c2Ugb2YgdGhlIGZvbGxvd2luZzoNCg0KLSAgbWFjT1MgaXMgbm90IGZy
ZWUgc29mdHdhcmUuICBJIHJlZnVzZSB0byByZWZlcmVuY2Ugbm9uZnJlZSBzb2Z0d2FyZSBv
biB0aGlzIA0KcHJvamVjdC4NCi0gIEFuZHJvaWQgaXMgbm90IGEgcmVhbCBVbml4IHN5c3Rl
bSwgaW4gdGhhdCB5b3UgY2FuJ3QgZXZlbiBwcm9ncmFtIGluIEMgaW4gDQp0aGVyZSwgdW5s
ZXNzIHlvdSdyZSBHb29nbGUgb3IgaGF2ZSBoYWNrZWQgeW91ciBzeXN0ZW0uICBJdCdzIG5v
dCBmcmllbmRseSB0byB1cyANCnByb2dyYW1tZXJzLCBzbyB3ZSBkb24ndCBuZWVkIHRvIGJl
IGZyaWVuZGx5IHRvIGl0LiAgSSBkb24ndCB3YW50IHRvIGJlIA0KY2x1dHRlcmluZyB0aGUg
cGFnZXMgd2l0aCBpbmZvcm1hdGlvbiB0aGF0IGlzIGlycmVsZXZhbnQgdG8gbm9ybWFsIHVz
ZXJzLg0KDQpUaGFuayB5b3UgZm9yIHRoZSBwYXRjaCENCg0KQ2hlZXJzLA0KDQpBbGV4DQoN
Cj4gICAuU0ggQlVHUw0KPiAgIC5cIiBUaGlzIGZ1bmN0aW9uIHdhcyBicm9rZW4gaW4gTGlu
dXggbGlicmFyaWVzIHVwIHRvIGFuZCBpbmNsdWRpbmcgbGliYyA1LjAuOTsNCj4gICAuXCIg
dGhlcmUgdGhlDQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K


--------------f0O5SqbxhTlmFfdkEDOXgoaT--

--------------JFNvZWrxkb02Awjg6VOh8dWj
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNs4k8ACgkQnowa+77/
2zLsSg//YXJIUlqVnjSyui/RoxePBLv5zh9K6zSmLaDDCeD9Usn3MGifmHuWoUVZ
xfKG1k0CE819Y1N6IrWV6bUZO7QoDacctwobwsiwfQQN2rdIlcNP5lvXmPhHJEVn
H86THBPX0MMBHy3mpbEX9UzIOc+l6fBSiFF+ULWe8q13oU8iZLjk9ydcgULKuafx
R+A5hL53WcssC9k+hC1vYSznfNwJSTcvy3xNftv8ILtIIQcJiGmZmjq7pxE0RXKD
jcD8TL6WNzxnnlyhQKgYH53rpfIKGaaqZsyEBYMND+zDtelwpGsYnnGQe47xf5s8
kLv039O7zNL5qHHSU/ymAPVwsIM6b5Etpx0sAm9RwluPQyuyGF1B08qFd3HUR3Vv
z4OzhHJEZ5BBvAa5Mz68HCmLx1SK0thg7PneLHGZQpK3Pg23ay1oxdnZjcf+Uhnl
oY/vAG2sRUjgvwo4hx+J+Sa0FUmP00qvskidIL+ipUB99y3evRWwAo2m63ry61Ga
l3ZPVTWqwIhSe6OF4TjVDzuAE07iAhcSNcnZu+znGCOYUxFXEHeWQd6sbTOqrsuy
YyyUu53/S7mlZUaMymsgVe1VUUbaGQquTgq+LnsBbi/aQxj+LnV9ARtgGn2D5bB7
7+NXPanu7GmcrF4zq1KlPsOJ7uq4YKHpl2ZBIrzyJI0aNlj4GoE=
=h8NT
-----END PGP SIGNATURE-----

--------------JFNvZWrxkb02Awjg6VOh8dWj--
