Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 25C6874BE77
	for <lists+linux-man@lfdr.de>; Sat,  8 Jul 2023 18:33:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229549AbjGHQdy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Jul 2023 12:33:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42112 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229483AbjGHQdy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Jul 2023 12:33:54 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC82712A
        for <linux-man@vger.kernel.org>; Sat,  8 Jul 2023 09:33:52 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 3E4CD60D3E
        for <linux-man@vger.kernel.org>; Sat,  8 Jul 2023 16:33:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 89A15C433C7;
        Sat,  8 Jul 2023 16:33:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1688834031;
        bh=Jq7FTZzzKyXDtjO8BiC8ozmZqGYEVXGM3BnPqFN4hNQ=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=ur59PJlj7bwDnm2M5vaffbSFNIUOy1AWLuy8dgzz8U7YkrdmegWAUVpDShj/c4oUS
         MUFjJSBuIqTH4mUOdXU5CGpFQVjecWCEKvd+d7QtYc4l/5ebNXLhdttg3uYiUNxW01
         KoG1FXV3U9jghls/Lqhv3cChf0rdQLjhroUbHTuvihc1/Ann0ZDB0sVBWauDElVhZg
         RXJo5xA0KFWL/734adLbNqhOiBrkbN+qOJ8nTSkEYRrc12+pVpiiFCMQ6LTfsMA7R3
         IS5gypme13N9Ai9SoYgtyJm1fWQGOxlGtTSfypYSkva+FrF72LgdvXqhxMkEMKgdgO
         hhKHJgRKFovpA==
Message-ID: <8668e57c-4ef8-7398-8b58-58ca89d352d0@kernel.org>
Date:   Sat, 8 Jul 2023 18:33:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] prctl.2: Document PR_GET_AUXV
Content-Language: en-US
To:     Josh Triplett <josh@joshtriplett.org>
Cc:     linux-man@vger.kernel.org
References: <8d09fad30b46a35efb743c99563835e2a560f1db.1687976799.git.josh@joshtriplett.org>
From:   Alejandro Colomar <alx@kernel.org>
In-Reply-To: <8d09fad30b46a35efb743c99563835e2a560f1db.1687976799.git.josh@joshtriplett.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------0UFzjE0dD2C2EfjIF2L2cQsu"
X-Spam-Status: No, score=-7.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------0UFzjE0dD2C2EfjIF2L2cQsu
Content-Type: multipart/mixed; boundary="------------mwua7W41mSe02jJk0TNlqfYZ";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Josh Triplett <josh@joshtriplett.org>
Cc: linux-man@vger.kernel.org
Message-ID: <8668e57c-4ef8-7398-8b58-58ca89d352d0@kernel.org>
Subject: Re: [PATCH] prctl.2: Document PR_GET_AUXV
References: <8d09fad30b46a35efb743c99563835e2a560f1db.1687976799.git.josh@joshtriplett.org>
In-Reply-To: <8d09fad30b46a35efb743c99563835e2a560f1db.1687976799.git.josh@joshtriplett.org>

--------------mwua7W41mSe02jJk0TNlqfYZ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gNi8yOC8yMyAyMDoyNywgSm9zaCBUcmlwbGV0dCB3cm90ZToNCj4gU2lnbmVkLW9mZi1i
eTogSm9zaCBUcmlwbGV0dCA8am9zaEBqb3NodHJpcGxldHQub3JnPg0KPiAtLS0NCj4gDQoN
CkhpIEpvc2ghDQoNCj4gSSBjb250cmlidXRlZCB0aGlzIGZlYXR1cmUgdG8gdGhlIGtlcm5l
bCwgYW5kIGl0IHNoaXBwZWQgaW4gTGludXggNi40Lg0KPiBBZGQgZG9jdW1lbnRhdGlvbiBm
b3IgaXQuDQo+IA0KDQpUaGFua3MuICBQYXRjaCBhcHBsaWVkLg0KDQpDaGVlcnMsDQpBbGV4
DQoNCj4gICBtYW4yL3ByY3RsLjIgfCAxMiArKysrKysrKysrKysNCj4gICAxIGZpbGUgY2hh
bmdlZCwgMTIgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL21hbjIvcHJjdGwu
MiBiL21hbjIvcHJjdGwuMg0KPiBpbmRleCAwOWU5MDcyZmEuLjMwMjExYTllMiAxMDA2NDQN
Cj4gLS0tIGEvbWFuMi9wcmN0bC4yDQo+ICsrKyBiL21hbjIvcHJjdGwuMg0KPiBAQCAtMjAy
Nyw2ICsyMDI3LDE3IEBAIHN5c3RlbSBjYWxsIG9uIFRydTY0KS4NCj4gICBmb3IgaW5mb3Jt
YXRpb24gb24gdmVyc2lvbnMgYW5kIGFyY2hpdGVjdHVyZXMuKQ0KPiAgIFJldHVybiB1bmFs
aWduZWQgYWNjZXNzIGNvbnRyb2wgYml0cywgaW4gdGhlIGxvY2F0aW9uIHBvaW50ZWQgdG8g
YnkNCj4gICAuSVIgIih1bnNpZ25lZCBpbnRcfiopIGFyZzIiIC4NCj4gKy5cIiBwcmN0bCBQ
Ul9HRVRfQVVYVg0KPiArLlRQDQo+ICsuQlIgUFJfR0VUX0FVWFYgIiAoc2luY2UgTGludXgg
Ni40KSINCj4gK0dldCB0aGUgYXV4aWxsaWFyeSB2ZWN0b3IgKGF1eHYpIGludG8gdGhlIGJ1
ZmZlciBwb2ludGVkIHRvIGJ5DQo+ICsuSVIgIih2b2lkXH4qKSBhcmcyIiAsDQo+ICt3aG9z
ZSBsZW5ndGggaXMgZ2l2ZW4gYnkgXGZJYXJnM1xmUC4NCj4gK0lmIHRoZSBidWZmZXIgaXMg
bm90IGxvbmcgZW5vdWdoIGZvciB0aGUgZnVsbCBhdXhpbGxpYXJ5IHZlY3RvciwNCj4gK3Ro
ZSBjb3B5IHdpbGwgYmUgdHJ1bmNhdGVkLg0KPiArUmV0dXJuIChhcyB0aGUgZnVuY3Rpb24g
cmVzdWx0KQ0KPiArdGhlIGZ1bGwgbGVuZ3RoIG9mIHRoZSBhdXhpbGxpYXJ5IHZlY3Rvci4N
Cj4gK1xmSWFyZzRcZlAgYW5kIFxmSWFyZzVcZlAgbXVzdCBiZSAwLg0KPiAgIC5TSCBSRVRV
Uk4gVkFMVUUNCj4gICBPbiBzdWNjZXNzLA0KPiAgIC5CUiBQUl9DQVBfQU1CSUVOVCArIFBS
X0NBUF9BTUJJRU5UX0lTX1NFVCAsDQo+IEBAIC0yMDQ1LDYgKzIwNTYsNyBAQCBPbiBzdWNj
ZXNzLA0KPiAgIC5CUiBQUl9HRVRfVEhQX0RJU0FCTEUgLA0KPiAgIC5CUiBQUl9HRVRfVElN
SU5HICwNCj4gICAuQlIgUFJfR0VUX1RJTUVSU0xBQ0sgLA0KPiArLkJSIFBSX0dFVF9BVVhW
ICwNCj4gICBhbmQgKGlmIGl0IHJldHVybnMpDQo+ICAgLkIgUFJfR0VUX1NFQ0NPTVANCj4g
ICByZXR1cm4gdGhlIG5vbm5lZ2F0aXZlIHZhbHVlcyBkZXNjcmliZWQgYWJvdmUuDQoNCi0t
IA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0KR1BHIGtleSBmaW5nZXJw
cmludDogQTkzNDg1OTRDRTMxMjgzQTgyNkZCREQ4RDU3NjMzRDQ0MUUyNUJCNQ0KDQo=

--------------mwua7W41mSe02jJk0TNlqfYZ--

--------------0UFzjE0dD2C2EfjIF2L2cQsu
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmSpj+sACgkQnowa+77/
2zJpfg//R1P6pTMgGW3RECi9KhLeqYz0kAmZ6eW8KAS0FXJnMWlKZnplkhoKfaSw
oX1IorQXJAsADvPhlY/EeGJm6UcEp7L+KG8M7HtbZ7XK9723/qCdyg9jJSuMuXqb
mdDFxSvLcbW+cErpAxWZjk2g0PKYTfSAcIy+4n293z7vglY05WBc9cs6HyJDwNhS
7u9lsSwdJBsbd3d2aSY7WJDb9GLSWanWzwXjPnY12/1KV0qDgvMwFtAjEHLAaE30
YEewepkeA9WYa3EzNIemhrKt+Ot6nSDXU+SxeAni2b4tJmiRs59B9fEJef+18s1D
yiuWdP06wpV6V4oILeK6XqvwhGX99xeBzk76Hir8nODDymvoyCNvE6G2/NFrIIuY
vWCREwT9V8TjhxrHQz+R1jjIz4IMIEgq4lzDANBFWcTAaOpQ51LVPIOdZmjiGHb0
RS7kLdSJu/IzgNVQzAGkg1qDbRJRFOFVhQ0SwCMgjTTODO4cnYD/HsrJgVF75Gca
XxiTg7YevneroFzZMixCIr7XPQ3lGgGoeRk3HiCX5iYEZOPz5FIUIkiVpqNN7qZB
Kz48urewAtR7Eqj54tdsMsyG6NXQ78BiQZsSWVyRIZbhBkKSL2rGg1yYxu13sxIu
j7nV09KP+aonqqKkJwvachkbBhPUy335Lzebb5zR+h6nJERKq7g=
=Sc4N
-----END PGP SIGNATURE-----

--------------0UFzjE0dD2C2EfjIF2L2cQsu--
