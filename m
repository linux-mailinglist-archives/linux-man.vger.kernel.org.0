Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 554955FE21E
	for <lists+linux-man@lfdr.de>; Thu, 13 Oct 2022 20:54:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229640AbiJMSyJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 13 Oct 2022 14:54:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42284 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232267AbiJMSxW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 13 Oct 2022 14:53:22 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C33D18C41E
        for <linux-man@vger.kernel.org>; Thu, 13 Oct 2022 11:51:16 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id o20-20020a05600c4fd400b003b4a516c479so2114003wmq.1
        for <linux-man@vger.kernel.org>; Thu, 13 Oct 2022 11:51:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CxcwWVXaRElzf+3Qs4FxYLTtdZG9YyY+Msn2oUNHyto=;
        b=DnD2eVMRzPpIhkWXbkbyd60JblB2pBHe8CiFNbSQEncR+ziPPDj0KGOJGPnWlKYGqT
         0/TaZGLOr5T0idPwQ1FJVWDoWE1gglgV+uj6M+igq+6+slNuoP35mUjyFaZYUqZIdxyJ
         oi7+FVjViJcu1zHOZlhgnD4WpJ5bo1XSpfwFNn5hWOyNHHN7Q1oO25ms+2sld3cIwYUj
         DojRNRiaodrbiHaeVQ5uNoL0SIj6hJvB5bDxB+bEqv4+u0lQCqDvEgTkXEj3qeFPaLdO
         yKvEZBwaNyu7QBhs+NqCIRzlUqjPZrU55a23YbZ+AO3OuJbFND1a3rWShqhhKaStBPss
         uOIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=CxcwWVXaRElzf+3Qs4FxYLTtdZG9YyY+Msn2oUNHyto=;
        b=1rrPFNzSeSzodhzXP0A/xu0vGgzUc+9La+ATfz1zQJ3N/wX9IzqDJN3QGuoL90quFd
         ukcTwQEbmJgjZ24cZtOU0OBwVMXYm5NJXmrAfpZO9/seXpcvQJtVnThSLsKS0bxl8t+T
         Y67A9GR4tXSf75LcMswb5Vfm3jyY+IIGjnyrZ4buVCscqWlHDeoZetcOH2M+TkKph0L3
         wBexjXR0pK4NkHxpQhGSb0M9dscf34/9FGKh77yBHJNV1JKPhlIRhkPCyk9YbI9qrNlX
         6aNxnu/+f67OPOKbdhvXf/ftzYv+2OsHs7ggRGxziWiDRAVw2ihcgiOyjQHcTJh7+nLH
         76bQ==
X-Gm-Message-State: ACrzQf1uTpCKgk9dLqs6S/aTypl8F3QTsTp3zW9sGqTX9fg8FfSWF1AF
        XkOS6A37Raaxug/mTFkyonGjgu+xPO0=
X-Google-Smtp-Source: AMsMyM7302BmXq/oZQqOmQn54WGtgBz9n2NzZDO64/XJr2ko2lOOlvtAcjeThPgvjTjPXH5rLu+TeQ==
X-Received: by 2002:a05:600c:2255:b0:3c4:6c57:3d19 with SMTP id a21-20020a05600c225500b003c46c573d19mr912621wmm.92.1665687052830;
        Thu, 13 Oct 2022 11:50:52 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id l3-20020adfe583000000b002205a5de337sm201328wrm.102.2022.10.13.11.50.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Oct 2022 11:50:52 -0700 (PDT)
Message-ID: <43b87bb6-2c18-5df5-fe5b-6d753f97ad85@gmail.com>
Date:   Thu, 13 Oct 2022 20:50:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: [PATCH] feature_test_macros.7: document -D_FORTIFY_SOURCE=3
Content-Language: en-US
To:     Sam James <sam@gentoo.org>
Cc:     linux-man@vger.kernel.org
References: <20221013183117.477592-1-sam@gentoo.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221013183117.477592-1-sam@gentoo.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------bjwEzwEO00UmyWOSoE0EwGNB"
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------bjwEzwEO00UmyWOSoE0EwGNB
Content-Type: multipart/mixed; boundary="------------EO0SqFGyAjhBLR0BZ4IhYU07";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Sam James <sam@gentoo.org>
Cc: linux-man@vger.kernel.org
Message-ID: <43b87bb6-2c18-5df5-fe5b-6d753f97ad85@gmail.com>
Subject: Re: [PATCH] feature_test_macros.7: document -D_FORTIFY_SOURCE=3
References: <20221013183117.477592-1-sam@gentoo.org>
In-Reply-To: <20221013183117.477592-1-sam@gentoo.org>

--------------EO0SqFGyAjhBLR0BZ4IhYU07
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgU2FtLA0KDQpPbiAxMC8xMy8yMiAyMDozMSwgU2FtIEphbWVzIHdyb3RlOg0KPiBSZWZl
cmVuY2U6IGh0dHBzOi8vZGV2ZWxvcGVycy5yZWRoYXQuY29tL2Jsb2cvMjAyMS8wNC8xNi9i
cm9hZGVuaW5nLWNvbXBpbGVyLWNoZWNrcy1mb3ItYnVmZmVyLW92ZXJmbG93cy1pbi1fZm9y
dGlmeV9zb3VyY2UNCj4gUmVmZXJlbmNlOiBodHRwczovL2RldmVsb3BlcnMucmVkaGF0LmNv
bS9hcnRpY2xlcy8yMDIyLzA5LzE3L2djY3MtbmV3LWZvcnRpZmljYXRpb24tbGV2ZWwNCj4g
U2lnbmVkLW9mZi1ieTogU2FtIEphbWVzIDxzYW1AZ2VudG9vLm9yZz4NCj4gLS0tDQo+ICAg
bWFuNy9mZWF0dXJlX3Rlc3RfbWFjcm9zLjcgfCAxMSArKysrKysrKysrKw0KPiAgIDEgZmls
ZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvbWFuNy9m
ZWF0dXJlX3Rlc3RfbWFjcm9zLjcgYi9tYW43L2ZlYXR1cmVfdGVzdF9tYWNyb3MuNw0KPiBp
bmRleCBkMzMwNDEwMDEuLmU2MjE4NTc0NSAxMDA2NDQNCj4gLS0tIGEvbWFuNy9mZWF0dXJl
X3Rlc3RfbWFjcm9zLjcNCj4gKysrIGIvbWFuNy9mZWF0dXJlX3Rlc3RfbWFjcm9zLjcNCj4g
QEAgLTY0Myw5ICs2NDMsMjAgQEAgYW5kIHJlc3VsdCBpbiBjb21waWxlciB3YXJuaW5nczsN
Cj4gICBvdGhlciBjaGVja3MgdGFrZSBwbGFjZSBhdCBydW4gdGltZSwNCj4gICBhbmQgcmVz
dWx0IGluIGEgcnVuLXRpbWUgZXJyb3IgaWYgdGhlIGNoZWNrIGZhaWxzLg0KPiAgIC5JUA0K
PiArV2l0aA0KPiArLkIgX0ZPUlRJRllfU09VUkNFDQo+ICtzZXQgdG8gMywgYWRkaXRpb25h
bCBjaGVja2luZyBpcyBhZGRlZCB0byBjYXB0dXJlIHNvbWUgZnVuY3Rpb24NCg0KV2hhdCBk
byB5b3UgbWVhbiBieSAiY2FwdHVyZSI/DQoNCkNoZWVycywNCg0KQWxleA0KDQo+ICtjYWxs
cyB1c2VkIHdpdGggYW4gYXJndW1lbnQgb2YgdmFyaWFibGUgc2l6ZS4NCj4gKy5JUA0KPiAg
IFVzZSBvZiB0aGlzIG1hY3JvIHJlcXVpcmVzIGNvbXBpbGVyIHN1cHBvcnQsIGF2YWlsYWJs
ZSB3aXRoDQo+ICAgLkJSIGdjYyAoMSkNCj4gICBzaW5jZSB2ZXJzaW9uIDQuMC4NCj4gKy5J
UA0KPiArRm9yIHVzZSBvZg0KPiArLkIgX0ZPUlRJRllfU09VUkNFDQo+ICtzZXQgdG8gMywg
dGhlbg0KPiArLkJSIGdjYyAoMSkNCj4gK3ZlcnNpb24gMTIuMCBvciBsYXRlciBpcyByZXF1
aXJlZC4NCj4gICAuU1MgRGVmYXVsdCBkZWZpbml0aW9ucywgaW1wbGljaXQgZGVmaW5pdGlv
bnMsIGFuZCBjb21iaW5pbmcgZGVmaW5pdGlvbnMNCj4gICBJZiBubyBmZWF0dXJlIHRlc3Qg
bWFjcm9zIGFyZSBleHBsaWNpdGx5IGRlZmluZWQsDQo+ICAgdGhlbiB0aGUgZm9sbG93aW5n
IGZlYXR1cmUgdGVzdCBtYWNyb3MgYXJlIGRlZmluZWQgYnkgZGVmYXVsdDoNCg0KLS0gDQo8
aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------EO0SqFGyAjhBLR0BZ4IhYU07--

--------------bjwEzwEO00UmyWOSoE0EwGNB
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNIXgsACgkQnowa+77/
2zJePA/8DgQYtp7KL2DJFpLcnTBzLmONnq1ZYj+iVtqHj+HsD1FQH5cZe59A7O9P
q+gghkq4Kf+KT0pgXZ+prnPuX6ssMpFvRhZ3DFvnOmXwX4JYpHy4v8C0GSyd6uG9
94Zp1R/WVm52XSfRnQQgwVwaOEVyR092nqLcqgXIral14yyMRMxO9oNyrfBTkyGb
vWVbIVAMwkbm2oQ1VuCtqFipQdIBDSlvBtvR+fANUdQhUe65XunDyltKBBIjIQWv
XZpFItWpr1FaBjoFX11uOTm0msOHx5yPKvcioYnr2f/KiyZnebOKzvSNaR5JdzYV
bo1apfxUqZvBRiKIII+ZhPaNPLi9+qPcUx0Q7bp6t7J6X0Zw4TlPua4oUOpkoDDz
6HA93cG9ewudBQ1i1ofawerfR3cpJfrvKRDzgYtCZhJ7x9CYsk+jt1qOsHuf20Op
/x3GH1FVxxPpDWI3gWXbZmmBnGIx0gzhvHy+hE6X3xBS3dJpkT/QB0PoqZasQj9p
yAdRy42Z5U4IYHoDu+OQk8QgN+83w9TiIzabKAnFiRpCfPyotipPLbgt+EkD09pr
ma3psIn6slunzqHshaWlWg+6VLfPy79DMCY2rzUrt1dODWZexN5Vqe2Lm12/hPkb
nZMgfEKh1uRUpKSQJIqBsAjh7LmisCM2JGHm3nL8wXYl+NQ7XNI=
=+5L8
-----END PGP SIGNATURE-----

--------------bjwEzwEO00UmyWOSoE0EwGNB--
