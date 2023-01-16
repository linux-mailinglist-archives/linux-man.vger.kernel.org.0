Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0CB0E66D05C
	for <lists+linux-man@lfdr.de>; Mon, 16 Jan 2023 21:47:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230092AbjAPUrI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 16 Jan 2023 15:47:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44856 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230103AbjAPUrG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 16 Jan 2023 15:47:06 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F22CC27D5F
        for <linux-man@vger.kernel.org>; Mon, 16 Jan 2023 12:47:04 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id h12-20020a05600c314c00b003da50afcb33so4487400wmo.4
        for <linux-man@vger.kernel.org>; Mon, 16 Jan 2023 12:47:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:from:cc:to:content-language:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=I2Xj/oHuxwuy7HzMs/mF5gqpCdGpCFvLXfJXcBOA7R0=;
        b=ecK6KBHPe2EJdQAVmLX7Pw8h64iJdakv0k0uy5fywa3uAIXuMy2FbY9Z4t3YIIwj+M
         cE15oa709+zS9AfkpYIe7b2ZghxcX84Vbt3KdqlcT357Sg7ZRXCAM6iGyQgqWX2RNE0T
         UEV/rMrYzjoMuLq94TVTV7vNmT61I7H14WIVEx2gN2wXxY9DJXZRIXLhFwjZuURnmFDL
         dOvTyBbGF8EuNVqIzza0SXN79giobA3ht/a44BOZKWAdKcIWUUHoUYfs2H1poAoT6j/Z
         QWrnItaPHS1Hb8MZvJ7BeU7TgjUVS6smAys9k+f8hAGUlmmxeAuLpBptFXpdD82xKiK2
         JcTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=subject:from:cc:to:content-language:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=I2Xj/oHuxwuy7HzMs/mF5gqpCdGpCFvLXfJXcBOA7R0=;
        b=l0iAkF5U8HqCBhNfcymnrrgUucf4xGiUxT5W032LbgolffTyzWcqxvCu7Qf0AyT7XA
         x9VZPfgF3xJUQPvCX63RtaIrhrJ8wtqODH9Vz9bBRAFuv9uerR0gF5ZQRBHacYKgBTUf
         vzthyJhfGbQzjU3jdqKyDUuLrIoVGDTcmgpffleeo4g9zXlHXFau4x0adaQRZKCYbAfn
         c1jVkdXyC/JO6KJ4mINQP4HH5ATWCf4oHdd8YzPixg7eoCkwf3FoDv3HHuAOqFkLfHzL
         Ne4S3fdeS3hsN5eGMQZOIrU+rM5BSSfhyw+qAYzb6FK7/YtjOnOQjqbrMVnoQxmWfjf2
         ftxw==
X-Gm-Message-State: AFqh2kqEM5pWo6G65W5Hln/ocP78NNo92bRb60FXGnpwfAId6+HfvIxA
        q7eXTE5RFM80WI1CJRtV+jY=
X-Google-Smtp-Source: AMrXdXsLPyR6QCV8Zxxz3vDLeb85DkOdcvmnrjUpng4y81PdCnZjbJuH5Dy/qAJxxp6gfCqWqCBqzw==
X-Received: by 2002:a05:600c:cc3:b0:3d5:1175:92c3 with SMTP id fk3-20020a05600c0cc300b003d5117592c3mr714465wmb.23.1673902023457;
        Mon, 16 Jan 2023 12:47:03 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id j20-20020a05600c1c1400b003daf89e01d3sm6028248wms.11.2023.01.16.12.47.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Jan 2023 12:47:02 -0800 (PST)
Message-ID: <1825384a-e02a-c19d-eb22-aedc749046bc@gmail.com>
Date:   Mon, 16 Jan 2023 21:46:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US
To:     GNU C Library <libc-alpha@sourceware.org>
Cc:     linux-man <linux-man@vger.kernel.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
Subject: bug in roundup(3) from <sys/param.h>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------o7PSoVjkUNn8SWBAWd3KCnmO"
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
--------------o7PSoVjkUNn8SWBAWd3KCnmO
Content-Type: multipart/mixed; boundary="------------6HUGJTU2OwsG6LislVzj0XMk";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: GNU C Library <libc-alpha@sourceware.org>
Cc: linux-man <linux-man@vger.kernel.org>
Message-ID: <1825384a-e02a-c19d-eb22-aedc749046bc@gmail.com>
Subject: bug in roundup(3) from <sys/param.h>

--------------6HUGJTU2OwsG6LislVzj0XMk
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkhDQoNCkkgd2FzIHRyeWluZyB0byB1bmRlcnN0YW5kIHdoYXQgcm91bmR1cCgpIGlzIChk
ZWZpbmVkIGluIDxzeXMvcGFyYW0saD4pLg0KDQpJdCBzZWVtcyB0byBiZSBraW5kIG9mOg0K
DQpTWU5PUFNJUw0KICAgICAgICAjaW5jbHVkZSA8c3lzL3BhcmFtLmg+DQoNCiAgICAgICAg
cm91bmR1cCh4LCBzdGVwKTsNCg0KREVTQ1JJUFRJT04NCiAgICAgICAgVGhpcyAgbWFjcm8g
IHJvdW5kcyAgeCB0byB0aGUgbmVhcmVzdCBtdWx0aXBsZSBvZiBzdGVwIHRoYXQgaXMgbm90
IGxlc3MNCiAgICAgICAgdGhhbiB4Lg0KDQpJIGZvdW5kIHRoYXQgaXQgZG9lc24ndCB3b3Jr
IGZvciBuZWdhdGl2ZSBudW1iZXJzOyBidXQgdGhhdCdzIGV4cGVjdGVkLCBhbmQgaXQgDQpj
b3VsZCBiZSBkb2N1bWVudGVkIGFzIHN1Y2guICBIb3dldmVyLCBpdCBkb2Vzbid0IHdvcmsg
bmljZWx5IHdpdGggdW5zaWduZWQgDQppbnRlZ2VycyBlaXRoZXI6IGZvciB2YWx1ZXMgY2xv
c2UgdG8gemVybywgd2hlcmUgd3JhcCBhcm91bmQgaGFwcGVucywgdGhlIHJlc3VsdCANCmlz
IGFsc28gYm9ndXMuICBTZWUgbXkgZXhwZXJpbWVudHMgYmVsb3cuDQoNCg0KDQokIHNlZCAt
biA5Miw5OHAgL3Vzci9pbmNsdWRlL3g4Nl82NC1saW51eC1nbnUvc3lzL3BhcmFtLmgNCiNp
ZmRlZiBfX0dOVUNfXw0KIyBkZWZpbmUgcm91bmR1cCh4LCB5KSAgKF9fYnVpbHRpbl9jb25z
dGFudF9wICh5KSAmJiBwb3dlcm9mMiAoeSkgICAgICAgICAgICAgXA0KICAgICAgICAgICAg
ICAgICAgICAgICAgICA/ICgoKHgpICsgKHkpIC0gMSkgJiB+KCh5KSAtIDEpKSAgICAgICAg
ICAgICAgICAgICAgIFwNCiAgICAgICAgICAgICAgICAgICAgICAgICAgOiAoKCgoeCkgKyAo
KHkpIC0gMSkpIC8gKHkpKSAqICh5KSkpDQojZWxzZQ0KIyBkZWZpbmUgcm91bmR1cCh4LCB5
KSAgKCgoKHgpICsgKCh5KSAtIDEpKSAvICh5KSkgKiAoeSkpDQojZW5kaWYNCg0KDQokIGNh
dCByb3VuZHVwLmMNCiNpbmNsdWRlIDxzdGRpbnQuaD4NCiNpbmNsdWRlIDxzdGRpby5oPg0K
I2luY2x1ZGUgPHN5cy9wYXJhbS5oPg0KDQppbnQNCm1haW4odm9pZCkNCnsNCgkvKiBzaWdu
ZWQgKi8NCgl7DQoJCWludDMyX3QgbiwgbTsNCg0KCQltID0gMzsNCgkJbiA9IDEwOw0KDQoJ
CXB1dHMoInNpZ25lZDoiKTsNCgkJZm9yIChpbnQzMl90IHggPSAtbjsgeCA8IDA7IHgrKykN
CgkJCXByaW50Zigicm91bmR1cCglZCwgJWQpID09ICVkXG4iLCB4LCBtLCByb3VuZHVwKHgs
IG0pKTsNCg0KCQlwdXRzKCIiKTsNCgkJZm9yIChpbnQzMl90IHggPSAwOyB4IDwgbjsgeCsr
KQ0KCQkJcHJpbnRmKCJyb3VuZHVwKCVkLCAlZCkgPT0gJWRcbiIsIHgsIG0sIHJvdW5kdXAo
eCwgbSkpOw0KDQoJCXB1dHMoIiIpOw0KDQoJCWZvciAoaW50MzJfdCB4ID0gSU5UMzJfTUlO
OyB4IDwgSU5UX01JTiArIG47IHgrKykNCgkJCXByaW50Zigicm91bmR1cCglZCwgJWQpID09
ICVkXG4iLCB4LCBtLCByb3VuZHVwKHgsIG0pKTsNCg0KCQlwdXRzKCIiKTsNCgkJZm9yIChp
bnQzMl90IHggPSBJTlQzMl9NQVg7IHggPiBJTlQzMl9NQVggLSBuOyB4LS0pDQoJCQlwcmlu
dGYoInJvdW5kdXAoJWQsICVkKSA9PSAlZFxuIiwgeCwgbSwgcm91bmR1cCh4LCBtKSk7DQoJ
fQ0KDQoJLyogdW5zaWduZWQgKi8NCgl7DQoJCXVpbnQzMl90IG4sIG07DQoNCgkJbSA9IDM7
DQoJCW4gPSAxMDsNCg0KCQlwdXRzKCJcbnVuc2lnbmVkOiIpOw0KCQlmb3IgKHVpbnQzMl90
IHggPSAxOyB4IDwgbjsgeCsrKQ0KCQkJcHJpbnRmKCJyb3VuZHVwKCV1LCAldSkgPT0gJXVc
biIsIC14LCBtLCByb3VuZHVwKC14LCBtKSk7DQoNCgkJcHV0cygiIik7DQoJCWZvciAodWlu
dDMyX3QgeCA9IDA7IHggPCBuOyB4KyspDQoJCQlwcmludGYoInJvdW5kdXAoJXUsICV1KSA9
PSAldVxuIiwgeCwgbSwgcm91bmR1cCh4LCBtKSk7DQoJfQ0KfQ0KDQokIGNjIC1XYWxsIC1X
ZXh0cmEgLVdlcnJvciByb3VuZHVwLmMNCiQgLi9hLm91dA0Kc2lnbmVkOg0Kcm91bmR1cCgt
MTAsIDMpID09IC02DQpyb3VuZHVwKC05LCAzKSA9PSAtNg0Kcm91bmR1cCgtOCwgMykgPT0g
LTYNCnJvdW5kdXAoLTcsIDMpID09IC0zDQpyb3VuZHVwKC02LCAzKSA9PSAtMw0Kcm91bmR1
cCgtNSwgMykgPT0gLTMNCnJvdW5kdXAoLTQsIDMpID09IDANCnJvdW5kdXAoLTMsIDMpID09
IDANCnJvdW5kdXAoLTIsIDMpID09IDANCnJvdW5kdXAoLTEsIDMpID09IDANCi8qIFRoZXNl
IHZhbHVlcyBhcmUgbm9uc2Vuc2UsIGJ1dCBPSywgbGV0J3MgaWdub3JlIHRoZSBuZWdhdGl2
ZSAqLw0KDQpyb3VuZHVwKDAsIDMpID09IDANCnJvdW5kdXAoMSwgMykgPT0gMw0Kcm91bmR1
cCgyLCAzKSA9PSAzDQpyb3VuZHVwKDMsIDMpID09IDMNCnJvdW5kdXAoNCwgMykgPT0gNg0K
cm91bmR1cCg1LCAzKSA9PSA2DQpyb3VuZHVwKDYsIDMpID09IDYNCnJvdW5kdXAoNywgMykg
PT0gOQ0Kcm91bmR1cCg4LCAzKSA9PSA5DQpyb3VuZHVwKDksIDMpID09IDkNCi8qIFRoZXNl
IG1ha2Ugc2Vuc2UgKi8NCg0Kcm91bmR1cCgtMjE0NzQ4MzY0OCwgMykgPT0gLTIxNDc0ODM2
NDYNCnJvdW5kdXAoLTIxNDc0ODM2NDcsIDMpID09IC0yMTQ3NDgzNjQzDQpyb3VuZHVwKC0y
MTQ3NDgzNjQ2LCAzKSA9PSAtMjE0NzQ4MzY0Mw0Kcm91bmR1cCgtMjE0NzQ4MzY0NSwgMykg
PT0gLTIxNDc0ODM2NDMNCnJvdW5kdXAoLTIxNDc0ODM2NDQsIDMpID09IC0yMTQ3NDgzNjQw
DQpyb3VuZHVwKC0yMTQ3NDgzNjQzLCAzKSA9PSAtMjE0NzQ4MzY0MA0Kcm91bmR1cCgtMjE0
NzQ4MzY0MiwgMykgPT0gLTIxNDc0ODM2NDANCnJvdW5kdXAoLTIxNDc0ODM2NDEsIDMpID09
IC0yMTQ3NDgzNjM3DQpyb3VuZHVwKC0yMTQ3NDgzNjQwLCAzKSA9PSAtMjE0NzQ4MzYzNw0K
cm91bmR1cCgtMjE0NzQ4MzYzOSwgMykgPT0gLTIxNDc0ODM2MzcNCi8qIE5vbnNlbnNlOyBp
Z25vcmUgdGhlIG5lZ2F0aXZlICovDQoNCnJvdW5kdXAoMjE0NzQ4MzY0NywgMykgPT0gLTIx
NDc0ODM2NDYgIC8vIFVCOyBpZ25vcmUNCnJvdW5kdXAoMjE0NzQ4MzY0NiwgMykgPT0gLTIx
NDc0ODM2NDYgIC8vIFVCOyBpZ25vcmUNCnJvdW5kdXAoMjE0NzQ4MzY0NSwgMykgPT0gMjE0
NzQ4MzY0Ng0Kcm91bmR1cCgyMTQ3NDgzNjQ0LCAzKSA9PSAyMTQ3NDgzNjQ2DQpyb3VuZHVw
KDIxNDc0ODM2NDMsIDMpID09IDIxNDc0ODM2NDMNCnJvdW5kdXAoMjE0NzQ4MzY0MiwgMykg
PT0gMjE0NzQ4MzY0Mw0Kcm91bmR1cCgyMTQ3NDgzNjQxLCAzKSA9PSAyMTQ3NDgzNjQzDQpy
b3VuZHVwKDIxNDc0ODM2NDAsIDMpID09IDIxNDc0ODM2NDANCnJvdW5kdXAoMjE0NzQ4MzYz
OSwgMykgPT0gMjE0NzQ4MzY0MA0Kcm91bmR1cCgyMTQ3NDgzNjM4LCAzKSA9PSAyMTQ3NDgz
NjQwDQovKiBUaGVzZSBtYWtlIHNlbnNlICovDQoNCnVuc2lnbmVkOg0Kcm91bmR1cCg0Mjk0
OTY3Mjk1LCAzKSA9PSAwICAvLyBXcm9uZzsgc2hvdWxkIGJlOiA0Mjk0OTY3Mjk1DQpyb3Vu
ZHVwKDQyOTQ5NjcyOTQsIDMpID09IDAgIC8vIFdyb25nOyBzaG91bGQgYmU6IDQyOTQ5Njcy
OTUNCnJvdW5kdXAoNDI5NDk2NzI5MywgMykgPT0gNDI5NDk2NzI5NQ0Kcm91bmR1cCg0Mjk0
OTY3MjkyLCAzKSA9PSA0Mjk0OTY3MjkyDQpyb3VuZHVwKDQyOTQ5NjcyOTEsIDMpID09IDQy
OTQ5NjcyOTINCnJvdW5kdXAoNDI5NDk2NzI5MCwgMykgPT0gNDI5NDk2NzI5Mg0Kcm91bmR1
cCg0Mjk0OTY3Mjg5LCAzKSA9PSA0Mjk0OTY3Mjg5DQpyb3VuZHVwKDQyOTQ5NjcyODgsIDMp
ID09IDQyOTQ5NjcyODkNCnJvdW5kdXAoNDI5NDk2NzI4NywgMykgPT0gNDI5NDk2NzI4OQ0K
DQpyb3VuZHVwKDAsIDMpID09IDANCnJvdW5kdXAoMSwgMykgPT0gMw0Kcm91bmR1cCgyLCAz
KSA9PSAzDQpyb3VuZHVwKDMsIDMpID09IDMNCnJvdW5kdXAoNCwgMykgPT0gNg0Kcm91bmR1
cCg1LCAzKSA9PSA2DQpyb3VuZHVwKDYsIDMpID09IDYNCnJvdW5kdXAoNywgMykgPT0gOQ0K
cm91bmR1cCg4LCAzKSA9PSA5DQpyb3VuZHVwKDksIDMpID09IDkNCg0KDQpEbyB5b3UgdGhp
bmsgdGhpcyBpcyBzb21ldGhpbmcgdG8gYmUgZml4ZWQgd2l0aG91dCBpbXBvcnRhbnQgcGVy
Zm9ybWFuY2UgDQpwZW5hbHRpZXMsIG9yIHNob3VsZCB3ZSBqdXN0IGRvY3VtZW50IHRoZSBi
dWcgYW5kIGxpdmUgd2l0aCBpdD8NCg0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KDQoNCi0tIA0K
PGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------6HUGJTU2OwsG6LislVzj0XMk--

--------------o7PSoVjkUNn8SWBAWd3KCnmO
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPFt78ACgkQnowa+77/
2zJG3BAAo7NSrntJs8Wl9IiEKF1n28ILlWgUcthi4MqFOruaj3LSszLbp+N8yiDi
2kuzZ9e+hyZXspZh47BrtCuJk486ya1ROtVmgblAwwWXFfVQWNvDGpNcLbYOWBrz
vqDybTlO6PiqJlpCX+QiAl+9ksjJLosyQqy340ugbPjsyHZoCaiFyLZ39+tTQpHg
Sr6y4/ndgyE3vhr/JkhbdmM0Y+z2SSGVJXPbVKCX8U1C6GwjeNHRu3S2cQBvHWdp
mKp9XQxqyNwm+J0A3lYvFjmOEl2WF4ajx6bG8nfs47kBbBrkebyUFUVem4sKuO7X
mGD0mNgY7KHM1ERHy19i9eYdzMCMX8yIepQ/NxJiIHGg+EpYzvBm6owL5tRgXbU2
KjVOMq3qKTG2aaFQXpqJgLL9vWV5RkwEagu2O9JwQvb+8Mn0OBviTyXg9sc6Tq3g
3IOKFDMzwTMY6CTA7MqsJmpEv1R6Giqco0SAcCului8Nk9eBqOC+8HcWLgoJBc1I
fNS0wExjKTUiN0IKQYWIb0l404+zg++jhiNd4O+gPmRGdtguVcQMoNFfVjHIEn5Y
N6aJjEBKd8kYDBLqc5zn551KZLHk0BPPYcp05Avl2DQR1mNYQvYGtd0CdPx9/4rC
krpVRU2utPHcTq59pO1LbFvwCJ0YmT3OZlCGFlPwF3jtB36rm/s=
=PWLu
-----END PGP SIGNATURE-----

--------------o7PSoVjkUNn8SWBAWd3KCnmO--
