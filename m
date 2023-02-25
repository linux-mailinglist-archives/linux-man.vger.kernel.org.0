Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 40DEC6A260F
	for <lists+linux-man@lfdr.de>; Sat, 25 Feb 2023 02:02:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229513AbjBYBCQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 24 Feb 2023 20:02:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43388 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229487AbjBYBCP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 24 Feb 2023 20:02:15 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DF86A199E6
        for <linux-man@vger.kernel.org>; Fri, 24 Feb 2023 17:02:14 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id l1so937218wry.10
        for <linux-man@vger.kernel.org>; Fri, 24 Feb 2023 17:02:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AxPDkuVEijYkhYjTpzR+4z8En2Ozy/a62yJo7c/CBhc=;
        b=Vy1D7Gz4i5rSdr+YV8y/DQxRfWKQVFOp2j5QnLEnGndoy/iF/vnrYLvKt7VIsk2fad
         iya2y1/44nviFMT0JoD2G56S+XLnpKAcAj6l+VSuYw2oaQw6sxtQMiqoLSpEvhplG9fU
         /Bfgjo0UiXZS2Sz4UcsJwQ6UVMylpZ28dkfBMC+GeIAyZEPg9fYgJ+h11WRV5hD/E+UX
         Hk22SQdWeT9ZCAU+q3dnvocBfmEYVIAY6LzThU1AYAmy2VTsMR4eTQPwMMi1jaqflDEZ
         p0anBHOiZK2X32Ux00AFH4FHF2jj1emmnqb7VjdiyKa3p3tKAWWmKubiGMdO1/xLq7+6
         5+Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=AxPDkuVEijYkhYjTpzR+4z8En2Ozy/a62yJo7c/CBhc=;
        b=nzFSH5/x6ptjO10g8axLUjTJUkkZXdlvlxtapA2bLKGHmGGCcbWWxJaoS+cwL8arGK
         XAabd/i+6ttSWTi1AiWmysDjYyQqZTZg+RSGfqPg94wL6pQLfLW9eCQEVsRcTYwEXa4M
         h0+fEM/pnzMUPFXD0BNFzf5Nc3jOi/M1A17eFNmWzslN1jPonxQnLap2rBL0B4ikXLY8
         n7GDPDXirYtyTi9/DzMukIan6or35uNggLkt99idikxtoEKk9/ZL/I4Z2P5Ng/fYri4C
         nQgtdUR3MI2wCKL4rzUCFML7nGciAq3nU70rSQyGogeIEOOjS89oEaWoj1G77BRWDr6N
         yGbQ==
X-Gm-Message-State: AO0yUKXUrglvI/qCmOt7pfpett3HB5XMrJZn5cn1avW5WY1jJmep1azS
        XVuUmovB4kjaYT+B3KBNfHw=
X-Google-Smtp-Source: AK7set9iCJNJesO4GY9quVhvisr1xTvmxG8br+qcga1oWnwpFnHMtcRckKWYy2qAkMermiwn3n0mBA==
X-Received: by 2002:a5d:62c3:0:b0:2c6:85ef:4086 with SMTP id o3-20020a5d62c3000000b002c685ef4086mr16067648wrv.32.1677286933365;
        Fri, 24 Feb 2023 17:02:13 -0800 (PST)
Received: from [172.26.3.7] (240.red-88-26-240.staticip.rima-tde.net. [88.26.240.240])
        by smtp.gmail.com with ESMTPSA id az34-20020a05600c602200b003e6efc0f91csm761677wmb.42.2023.02.24.17.02.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Feb 2023 17:02:12 -0800 (PST)
Message-ID: <f2bb7650-d8b5-c9de-e079-aae536a44e98@gmail.com>
Date:   Sat, 25 Feb 2023 02:01:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] setpgid.2: ERRORS: add EPERM for nonexisting process
 group
Content-Language: en-US
To:     Guy Shefy <guyshefyb@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <Y/OWxEajSbwD8UsL@T14s-004530>
 <d50e6acf-bf10-f72d-b04b-e0fe8b2d1f20@gmail.com>
 <Y/OZbDq9AGoFI0iE@T14s-004530> <Y/Oa/t5tPj0uTDNz@T14s-004530>
From:   Alex Colomar <alx.manpages@gmail.com>
In-Reply-To: <Y/Oa/t5tPj0uTDNz@T14s-004530>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------SmOkIWcW10pGdO0S3Gk2WyiX"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------SmOkIWcW10pGdO0S3Gk2WyiX
Content-Type: multipart/mixed; boundary="------------rwwgFpSecvz0o0Yl2219WZ45";
 protected-headers="v1"
From: Alex Colomar <alx.manpages@gmail.com>
To: Guy Shefy <guyshefyb@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <f2bb7650-d8b5-c9de-e079-aae536a44e98@gmail.com>
Subject: Re: [PATCH] setpgid.2: ERRORS: add EPERM for nonexisting process
 group
References: <Y/OWxEajSbwD8UsL@T14s-004530>
 <d50e6acf-bf10-f72d-b04b-e0fe8b2d1f20@gmail.com>
 <Y/OZbDq9AGoFI0iE@T14s-004530> <Y/Oa/t5tPj0uTDNz@T14s-004530>
In-Reply-To: <Y/Oa/t5tPj0uTDNz@T14s-004530>

--------------rwwgFpSecvz0o0Yl2219WZ45
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgR3V5LA0KDQpPbiAyLzIwLzIzIDE3OjA4LCBHdXkgU2hlZnkgd3JvdGU6DQo+ICBGcm9t
IDk2MWI2NDUxNWI4MDVjYWFkYjVhNzdlMzU5MmViM2U4ODNjNTdlMGQgTW9uIFNlcCAxNyAw
MDowMDowMCAyMDAxDQo+IEZyb206IEd1eSBTaGVmeSA8Z3V5c2hlZnliQGdtYWlsLmNvbT4N
Cj4gRGF0ZTogTW9uLCAyMCBGZWIgMjAyMyAxNzo1NDo0MCArMDIwMA0KPiBTdWJqZWN0OiBb
UEFUQ0hdIHNldHBnaWQuMjogRVJST1JTOiBhZGQgRVBFUk0gZm9yIG5vbmV4aXN0aW5nIHBy
b2Nlc3MgZ3JvdXANCj4gDQo+IGZvdW5kIHVzaW5nIHRlc3QgcHJvZ3JhbToNCj4gDQo+ICNp
bmNsdWRlIDxzdGRpby5oPg0KPiAjaW5jbHVkZSA8c3lzL3R5cGVzLmg+DQo+ICNpbmNsdWRl
IDx1bmlzdGQuaD4NCj4gDQo+IGludCBtYWluKCkgew0KPiAJcGlkX3QgcGlkX2EgPSBmb3Jr
KCk7DQo+IAlpZiAoIXBpZF9hKSB7DQo+IAkJLy8gcGlkX2EgaXMgbm90IGEgdmFsaWQgcHJv
Y2VzcyBncm91cA0KPiAJCXNsZWVwKDEpOyAvLyBzdGF5IGFsaXZlDQo+IAkJcmV0dXJuIDA7
DQo+IAl9DQo+IAlpZiAoIWZvcmsoKSkgew0KPiAJCXNldHBnaWQoMCwgcGlkX2EpOw0KPiAJ
CXBlcnJvcigic2V0cGdpZCIpOw0KPiAJCXJldHVybiAwOw0KPiAJfQ0KPiAJc2xlZXAoMSk7
IC8vIHN0YXkgYWxpdmUNCj4gCXJldHVybiAwOw0KPiB9DQo+IA0KPiBTaWduZWQtb2ZmLWJ5
OiBHdXkgU2hlZnkgPGd1eXNoZWZ5YkBnbWFpbC5jb20+DQoNClBhdGNoIGFwcGxpZWQuICBU
aGFua3MgdmVyeSBtdWNoIGZvciB0aGUgZXhhbXBsZSBwcm9ncmFtIQ0KDQpBbGV4DQoNCj4g
LS0tDQo+ICAgbWFuMi9zZXRwZ2lkLjIgfCA1ICsrKysrDQo+ICAgMSBmaWxlIGNoYW5nZWQs
IDUgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL21hbjIvc2V0cGdpZC4yIGIv
bWFuMi9zZXRwZ2lkLjINCj4gaW5kZXggNTJjNWJkNWZjLi4wYjAxODJlYjkgMTAwNjQ0DQo+
IC0tLSBhL21hbjIvc2V0cGdpZC4yDQo+ICsrKyBiL21hbjIvc2V0cGdpZC4yDQo+IEBAIC0y
MTQsNiArMjE0LDExIEBAIGEgc2Vzc2lvbiBsZWFkZXINCj4gICAuUkIgKCBzZXRwZ2lkICgp
LA0KPiAgIC5CUiBzZXRwZ3JwICgpKS4NCj4gICAuVFANCj4gKy5CIEVQRVJNDQo+ICtUaGUg
dGFyZ2V0IHByb2Nlc3MgZ3JvdXAgZG9lcyBub3QgZXhpc3RzLg0KPiArLlJCICggc2V0cGdp
ZCAoKSwNCj4gKy5CUiBzZXRwZ3JwICgpKS4NCj4gKy5UUA0KPiAgIC5CIEVTUkNIDQo+ICAg
Rm9yDQo+ICAgLkJSIGdldHBnaWQgKCk6DQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJv
LWNvbG9tYXIuZXMvPg0KR1BHIGtleSBmaW5nZXJwcmludDogQTkzNDg1OTRDRTMxMjgzQTgy
NkZCREQ4RDU3NjMzRDQ0MUUyNUJCNQ0KDQo=

--------------rwwgFpSecvz0o0Yl2219WZ45--

--------------SmOkIWcW10pGdO0S3Gk2WyiX
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmP5XgMACgkQnowa+77/
2zJ56g/+OzTPWZuUHBAAI0O1gXV0Yp8f766AP3WHBA5QckyEdXvARxkE0TbXTA6T
Ap/VLiQfbK6k0ulK1XmL4wx6pf8oGWRXMZH3hAaT+asG2seP2Uhx3wAqCyyM3nA+
sRcQ//5E70G/ToIkgaEoDYTUfeigCHdh8380QL+a/X0tLWLxpH9XMeEYo3EhsbQK
cxw0KLziMy+1AV03lXfb6MSvdBeuru7hj/R45gbfCMo1txOKEUqXJCV4frRRpNz2
VB/debM5I7Co7mT7lCvTlTxweziXDNSTOS+OgAAQ/lh3A2G7WQNVqvHpvWfs+w/d
hZUliaVc3/RRYAVq2T77pA+3Zn0N562VG4mnAZ5SEqoRMN7gTonQsk3mK+jloQVt
azKaUd3AxxyNMyUOQI3wA60IZSZYXhqmslFXHQ4OzUGsQMfEpVwJaXsGRnEmNMhm
6SrFDVQ+h/HI07t3Ob8aGeM/4JhytcknAMHghpDhCzz4ULCVYvXPoapoZ6VMn0E9
JpxFVudZMrm4y53ZNXGHVLT+o/prB3eYQymaPjXPHZ8MxxPUUKSy0oABYDiZ8fzu
lu6u3z+2iAbDVqtSs3u4Vfe53PGG89dz3surKMcycQ3j2wBmLPcoqpedVec9V+5Y
ARr1kJw0g322uZK12kDXElwbl1Z/luM9GQFbhBwTgpV0lk7i3/k=
=D8YP
-----END PGP SIGNATURE-----

--------------SmOkIWcW10pGdO0S3Gk2WyiX--
