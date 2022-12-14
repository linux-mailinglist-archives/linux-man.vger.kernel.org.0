Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3441164C747
	for <lists+linux-man@lfdr.de>; Wed, 14 Dec 2022 11:39:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237965AbiLNKjb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 14 Dec 2022 05:39:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51404 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229463AbiLNKja (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 14 Dec 2022 05:39:30 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 07E5523167
        for <linux-man@vger.kernel.org>; Wed, 14 Dec 2022 02:39:29 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id o15so10895486wmr.4
        for <linux-man@vger.kernel.org>; Wed, 14 Dec 2022 02:39:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+sdiqVDElqzosMRSm0kB7DLw0lS1n/wHprLmzWcqoH4=;
        b=D133u6BzEMhuQuv9Io/crX94HPpQqUu8Kp3m8NQR3F731kcZ44juYfwAC4INWoRSpM
         tBalemZDLYY84R/KH/SMR3dkb2O8t3gSEydBPYUj1uA8VM3We3DbegkcL3gGlIMkBTyU
         HBdmCjuvdg4x3xrdAIY5ThzT6oP6kfjY4f4kT0c89IXKhRNE1RY6kdB7llVSUm6VCa5+
         /YSlHoQxGxZQTF7Y4AbIvDpNoRmRkHrRhjRTblEXd6M1M/gBdqIboy5BPgBKvWjyivIW
         4sHHOijSRpfxHK0LS/iKkho88Uj5rA6Q6T8KxQWxG/O0Bi/u+7l9vMccNKYqXghLdz6Y
         UR4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+sdiqVDElqzosMRSm0kB7DLw0lS1n/wHprLmzWcqoH4=;
        b=P2aqnoPLmmm1d5VikC2ETQ9jh7QNUY+JKxsUD+WuWdmwjdY8vUWN+9ogoN22hCiniH
         tGGLFtIEhKrQQ2FEFefB1YTtE8Nf5BEZxDVWSSsAsAx27matNeykgGVQqEy4YYqocp1K
         9+QWhzKnMTxA43WZoITz7io7tk8Prvj+55QHQ5OxS4OYOhXlF45kzgZfTiIDvphcfKd3
         qfAR6dcRgXmeoIs40FQ6an5GnDWpalbRAETNFeuINqTHsf3ObLIS/1bkWfioJJ9DmHQc
         x8WFjGNuRvXMjsSXWPRP0aBzLaf/3DzG53PZ0jt+xh69xFi2IaIuzCRoqS1aWH4v3pF0
         6LnA==
X-Gm-Message-State: ANoB5pmLFo30JK7jc7jksa37+Njs3F5+oiNaLTNU9u6b4GEv5RbLROFU
        aGp0FlET6/YwEQk4uypHUh4=
X-Google-Smtp-Source: AA0mqf4Gs+bXAza/FXzDCWs3r+IXqU6CbtzMktn4a+tUKhFcthWw5I5d9Grm70ixA5WQnaYMCOh+eQ==
X-Received: by 2002:a05:600c:5386:b0:3c6:e63d:b893 with SMTP id hg6-20020a05600c538600b003c6e63db893mr18156323wmb.2.1671014367457;
        Wed, 14 Dec 2022 02:39:27 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id m22-20020a05600c3b1600b003cfd4cf0761sm2303869wms.1.2022.12.14.02.39.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Dec 2022 02:39:26 -0800 (PST)
Message-ID: <7d561198-44f7-a64e-06ae-3ee41d156e82@gmail.com>
Date:   Wed, 14 Dec 2022 11:39:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH] scanf.3: Do not mention the ERANGE error
To:     Ian Abbott <abbotti@mev.co.uk>, Zack Weinberg <zack@owlfolio.org>
Cc:     libc-alpha@sourceware.org, 'linux-man' <linux-man@vger.kernel.org>
References: <20221208123454.13132-1-abbotti@mev.co.uk>
 <5f490d45-b31e-279e-edcb-de4806b8ba54@gmail.com>
 <d1ecf57b-72cf-dbb4-3b4a-b19c7cdc93e9@mev.co.uk>
 <06f70d09-a258-7d6d-4a98-6a89ed761849@gmail.com>
 <6269173b-20cb-7b47-1ad9-6099a9baa052@owlfolio.org>
 <d65cff0c-7aba-8bb3-9a2f-3d07f20517b4@gmail.com>
 <ypikk02xv09c.fsf@owlfolio.org>
 <1f339439-3346-6732-3544-8e0e0a0f9823@mev.co.uk>
 <ypiksfhiafsn.fsf@owlfolio.org>
 <6c9645b1-d0e4-4064-0e55-a0bead7d1f71@mev.co.uk>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <6c9645b1-d0e4-4064-0e55-a0bead7d1f71@mev.co.uk>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------AR05BPKRDS8OWuxY6aFwEiWJ"
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
--------------AR05BPKRDS8OWuxY6aFwEiWJ
Content-Type: multipart/mixed; boundary="------------bXulpTlI0KCqiwTzIsjQ93go";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Ian Abbott <abbotti@mev.co.uk>, Zack Weinberg <zack@owlfolio.org>
Cc: libc-alpha@sourceware.org, 'linux-man' <linux-man@vger.kernel.org>
Message-ID: <7d561198-44f7-a64e-06ae-3ee41d156e82@gmail.com>
Subject: Re: [PATCH] scanf.3: Do not mention the ERANGE error
References: <20221208123454.13132-1-abbotti@mev.co.uk>
 <5f490d45-b31e-279e-edcb-de4806b8ba54@gmail.com>
 <d1ecf57b-72cf-dbb4-3b4a-b19c7cdc93e9@mev.co.uk>
 <06f70d09-a258-7d6d-4a98-6a89ed761849@gmail.com>
 <6269173b-20cb-7b47-1ad9-6099a9baa052@owlfolio.org>
 <d65cff0c-7aba-8bb3-9a2f-3d07f20517b4@gmail.com>
 <ypikk02xv09c.fsf@owlfolio.org>
 <1f339439-3346-6732-3544-8e0e0a0f9823@mev.co.uk>
 <ypiksfhiafsn.fsf@owlfolio.org>
 <6c9645b1-d0e4-4064-0e55-a0bead7d1f71@mev.co.uk>
In-Reply-To: <6c9645b1-d0e4-4064-0e55-a0bead7d1f71@mev.co.uk>

--------------bXulpTlI0KCqiwTzIsjQ93go
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSWFuICYgWmFjaywNCg0KT24gMTIvMTQvMjIgMTE6MjIsIElhbiBBYmJvdHQgd3JvdGU6
DQo+IE9uIDE0LzEyLzIwMjIgMDI6MTgsIFphY2sgV2VpbmJlcmcgd3JvdGU6DQo+PiBJYW4g
QWJib3R0IDxhYmJvdHRpQG1ldi5jby51az4gd3JpdGVzOg0KPj4NCj4+PiBPbiAxMi8xMi8y
MDIyIDAyOjExLCBaYWNrIFdlaW5iZXJnIHdyb3RlOg0KPj4+PiBGaWVsZCB3aWR0aHMgYXJl
IGF3a3dhcmQgdG8gdXNlIGJlY2F1c2UgeW91IGhhdmUgdG8gd3JpdGUgdGhlbSBhcw0KPj4+
PiBkZWNpbWFsIGNvbnN0YW50cyBfaW5zaWRlIHRoZSBmb3JtYXQgc3RyaW5nX+KApg0KPj4+
DQo+Pj4gSXQncyBhIHNoYW1lIHRoYXQgc2NhbmYncyBtYXhpbXVtIGZpZWxkIHdpZHRoIGNv
dWxkbid0IGJlIHNwZWNpZmllZA0KPj4+IHVzaW5nIGFuIGludGVnZXIgcGFyYW1ldGVyIGlu
IHRoZSBzYW1lIHdhcyBhcyBwcmludGYncyBtaW5pbXVtIGZpZWxkDQo+Pj4gd2lkdGgsIGJ1
dCB0aGUgJyonIGZsYWcgd2FzIGFscmVhZHkgdGFrZW4hDQo+Pg0KPj4gWXVwLsKgIEkgc3Vw
cG9zZSB3ZSBjb3VsZCBtYWtlIHVwIGFub3RoZXIgZmxhZyDigKYg4oCYQOKAmSBpc27igJl0
IHVzZWQgZm9yDQo+PiBhbnl0aGluZyDigKYNCj4gDQo+ICdAJyBpc24ndCBpbmNsdWRlZCBp
biBDJ3MgYmFzaWMgY2hhcmFjdGVyIHNldCB0aG91Z2guwqAgJyYnIGlzIGF2YWlsYWJsZS4N
Cg0KSnVzdCBhIGN1cmlvdXMgcXVlc3Rpb24gZnJvbSBhbiBpZ25vcmFudDogIHdoYXQncyB0
aGUgZGlmZmVyZW5jZSBiZXR3ZWVuIHRoZSANCmJhc2ljIGNoYXJhY3RlciBzZXQgYW5kIHRo
ZSBzb3VyY2UgY2hhcmFjdGVyIHNldD8NCg0KVGhhbmtzLA0KDQpBbGV4DQoNCj4gDQoNCi0t
IA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------bXulpTlI0KCqiwTzIsjQ93go--

--------------AR05BPKRDS8OWuxY6aFwEiWJ
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOZp9cACgkQnowa+77/
2zI/QA//bo+fAu59ulMI63ximW5p3iIR1ixbwShR+JNmhienrvZt0Tjdgi9LGmxW
JdOC+4cp4M2rafPQHVsYLLQTr4cxMMh3BxLKcUZ2GbMpeuFH1J84zqHzSQqiLInW
tMqKVh2SxoraqHXWjbCMEwWE8bzPw4XvBTgXY3A+SWq4RAoe0CQr1dpSdEOJShsR
VbGmFvRNQR5pBrZd4Mxv3XJZhIDYoUXV+sCVfdpQo5Yw9FtkqooCt1TI08KZKtqs
Apb1FbyFbf5OjqMXb1i2mGH7y07lBmeWIP81AnQd8+352BbR95llzKmuskxgjpk8
uw3ffRFfZXOLjd1koR1DZC0bnN6bK0bQ0GGTpRStVVNEjIgV5pJNLvPw3/j5nUbR
72iN/fQ9WNTmy+7XFsXXlpylXeX2fuI9xaiEUpbAR7RD5Px+mF6LyN8gIsR2Qg27
301KYHqdMmPqhkEZec3dMyMFK4WN4one/fna/LEZBrlmS6ZXtF/3Y+HRfY5nP+HY
6ZV2GPW5NXv7vTcOj9hRuiVhH+qnYnaMf0SEWn21rjJsyuJ66Y9ma8uQY/jWcGEy
+PcIePlTiVIjLIFz+OGxRf0AAiDA5stCZtIRPVf9jc0GHn2DWVaOuXdYMRLIoq29
2DKtHDuCu45kDbjCx6+iY7WtC9GsCKgRSRQdMn2n/kn4EOZe+Zw=
=usVl
-----END PGP SIGNATURE-----

--------------AR05BPKRDS8OWuxY6aFwEiWJ--
