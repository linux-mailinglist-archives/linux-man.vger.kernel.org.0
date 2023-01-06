Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4196F660075
	for <lists+linux-man@lfdr.de>; Fri,  6 Jan 2023 13:45:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233524AbjAFMpS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 6 Jan 2023 07:45:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36756 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233583AbjAFMpO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 6 Jan 2023 07:45:14 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D1F06745B6
        for <linux-man@vger.kernel.org>; Fri,  6 Jan 2023 04:45:10 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id ay40so983080wmb.2
        for <linux-man@vger.kernel.org>; Fri, 06 Jan 2023 04:45:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=keCtRG8nRGAjES1gJwhlK4CKN0+NRmoT7pQpoDRogn8=;
        b=EdhY6FBPgSC/SCemfTyP/542CXBI7b0xG23M4eqltN2ueNhCVedeQN4XrvWPezRtNY
         3tNgD4n4t2EiJpBPSxEV/LYBkTpTmf6HYP0FJdzJi+PyhFfFa40wN+aod6TPOYRw3lki
         JJKEacMzueXOV7Sz+YSkWdV3yJCDPXSnHlJgasOngazImm4q8xJf3iSkQspWJVNtiJQj
         /n40eiYWOO3mQYnO/4mcTzl/+JPZ2GUbJ+a5qehW6yNBxrytBEzP3KSSZae9ND2nmT1K
         idBvzX5BTrqZF1/cQm/hY+jOvS8x2wGo/NJrv5ja6k6ubtcX22op+PaUd9vGa3w2jyZL
         E+8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=keCtRG8nRGAjES1gJwhlK4CKN0+NRmoT7pQpoDRogn8=;
        b=tU4CCLXany3Ok7cDg9MxPwe2YrxInNsYqr8NNyeGT00wd2GSGCWwDudS+dzBINCweT
         u2jGRVHqtDPjDlNSC637hvo4ECigFenlhlOeft28ZzI0/TAOsPr3iM6yhUTc+dICiQdr
         bZArzDDxfQUh6BwP5/Gh+PS8shNiDM4CUB/52F8ywXQMYM2oWVgE26FVAwM7jCZUwBSy
         Gf9g+GdaCMky7pE/Ke8Va0CjKOtn9fK26ebzdOfILe2pmh+qPdsBkA0RgznFRfBOaYt7
         GUzozO9Z4fjzUewkjQR7T1rrB71fuEHKj1vAVSXaAAQ25lLcZ0PbKqr8q9z0NI5nzbJg
         9YDw==
X-Gm-Message-State: AFqh2kpz3JBL7ogXpmcm5uFaeNnOUReQkMZ7tU9zzWzIIuMhzKJO/MK+
        umMYiXJdKq9nDFr6XtV0a8c=
X-Google-Smtp-Source: AMrXdXs7cNbhwA+bj5rLYj2P4qsSAtK/8VVjqvsyPwzuy3XmuU1iCXWCeQ/UNJLP6R/IqGJu7sJdRw==
X-Received: by 2002:a05:600c:600a:b0:3d1:ed41:57c0 with SMTP id az10-20020a05600c600a00b003d1ed4157c0mr42683797wmb.30.1673009109244;
        Fri, 06 Jan 2023 04:45:09 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id k4-20020a05600c1c8400b003d22528decesm7213556wms.43.2023.01.06.04.45.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Jan 2023 04:45:08 -0800 (PST)
Message-ID: <628cef2b-ce8c-64c1-56bc-c10f2587fa37@gmail.com>
Date:   Fri, 6 Jan 2023 13:44:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v3 05/13] ldconfig.8: Revise and update for glibc 2.32
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230105225246.uid2pwwivc6testz@illithid>
 <2ef7c0b8-978e-7bc0-d5b9-88ea9348a677@gmail.com>
 <20230106072020.zpjzc2pk4kjhwotx@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230106072020.zpjzc2pk4kjhwotx@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------zkpZ3MFbsUlPyWLxdowdn3nb"
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------zkpZ3MFbsUlPyWLxdowdn3nb
Content-Type: multipart/mixed; boundary="------------1GOkHZfqgZn00Ao6TazLBDp3";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <628cef2b-ce8c-64c1-56bc-c10f2587fa37@gmail.com>
Subject: Re: [PATCH v3 05/13] ldconfig.8: Revise and update for glibc 2.32
References: <20230105225246.uid2pwwivc6testz@illithid>
 <2ef7c0b8-978e-7bc0-d5b9-88ea9348a677@gmail.com>
 <20230106072020.zpjzc2pk4kjhwotx@illithid>
In-Reply-To: <20230106072020.zpjzc2pk4kjhwotx@illithid>

--------------1GOkHZfqgZn00Ao6TazLBDp3
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiwNCg0KT24gMS82LzIzIDA4OjIwLCBHLiBCcmFuZGVuIFJvYmluc29uIHdy
b3RlOg0KPiBIaSBBbGV4LA0KPiANCj4gQXQgMjAyMy0wMS0wNlQwMjoyMToyNyswMTAwLCBB
bGVqYW5kcm8gQ29sb21hciB3cm90ZToNCj4+IE9uIDEvNS8yMyAyMzo1MiwgRy4gQnJhbmRl
biBSb2JpbnNvbiB3cm90ZToNCj4+PiAqIENvbW1lbnQgb3V0IG11bHRpcGxlIHBhcmFncmFw
aHMgZGlzY3Vzc2luZyBsaWJjNCBhbmQgbGliYzUgc2hhcmVkDQo+Pj4gICAgIGxpYnJhcnkg
c3VwcG9ydC4gIEl0IHdhcyByZW1vdmVkIHVwc3RyZWFtIGluIEp1bHk7IGFubm90YXRlDQo+
Pj4gICAgIGNvbW1pdC4NCj4gWy4uLl0NCj4+PiArLlwiIFN1cHBvcnQgZm9yIGxpYmM0IGFu
ZCBsaWJjNSBkcm9wcGVkIGluDQo+Pj4gKy5cIiA4ZWU4Nzg1OTJjNGE2NDI5MzcxNTJjODMw
OGI4ZmFlZjg2YmNmYzQwICgyMDIyLTA3LTE0KSBhcyAib2Jzb2xldGUNCj4+PiArLlwiIGZv
ciBvdmVyIHR3ZW50eSB5ZWFycyIuDQo+Pg0KPj4gSSBwcmVmZXIgcmVtb3ZpbmcgdGhlIGNv
ZGUgY29tcGxldGVseS4gIFNpbmNlIHJlbW92aW5nIGNvZGUgaXMgbW9yZQ0KPj4gZGVsaWNh
dGUsIGFuZCB0byBoZWxwIHdob2V2ZXIgbWF5IHdhbnQgdG8gaW52ZXN0aWdhdGUgaGlzdG9y
eSBpbiB0aGUNCj4+IGZ1dHVyZSwgcGxlYXNlIGRvIHNvIGluIGEgc2VwYXJhdGUgY29tbWl0
LiAgSSBndWVzcyBpdCB3aWxsIGJlIGJldHRlcg0KPj4gaWYgdGhhdCBjb21taXQgcmVtb3Zp
bmcgY29kZSBnb2VzIGJlZm9yZSB0aGUgZ2VuZXJhbCByZXZpc2lvbiBvZiB0aGUNCj4+IHBh
Z2UuDQo+IA0KPiBPa2F5LCB3aWxsIGRvLiAgSSBkaXRoZXJlZCBvdmVyIGl0IGJlY2F1c2Ug
dGhlIHdpdGhkcmF3biBzdXBwb3J0IGlzIHN1Y2gNCj4gYSByZWNlbnQgY2hhbmdlLg0KDQpX
aGlsZSBzdXBwb3J0IHdhcyByZW1vdmVkIHJlY2VudGx5LCBpdCdzIHNvbWV0aGluZyB0aGF0
IHdhcyBvYnNvbGV0ZSBmb3IgDQpkZWNhZGVzLCBzbyBwcm9iYWJseSB0aGVyZSB3ZXJlbid0
IG1hbnkgdXNlcnMgKGhvcGVmdWxseSBub25lKS4NCg0KPiAgQnV0IG9uIHRoZSBvdGhlciBo
YW5kIGl0IHdpbGwgdGFrZSB0aW1lIGZvciBtYW4tcGFnZXMNCj4gNi4wMiAob3Igd2hhdCBo
YXZlIHlvdSkgdG8gcGVyY29sYXRlIG91dCB0byBkaXN0cmlidXRvcnMganVzdCBhcyBnbGli
Yw0KPiAyLjMyIHdpbGwuDQoNCkZvciB1c2VycyBvZiB1bnN0YWJsZSBkaXN0cmlidXRpb25z
LCB3ZSBhbHJlYWR5IGhhdmUgNi4wMi4gIEl0IHRvb2sgb25seSBvbmUgDQp3ZWVrIG9yIHNv
IGZyb20gdGhlIGRheSBJIHJlbGVhc2VkIGl0Lg0KDQphbHhAZGViaWFuOn4kIGFwdC1jYWNo
ZSBzaG93IG1hbnBhZ2VzLWRldiB8IGhlYWQgLW4zDQpQYWNrYWdlOiBtYW5wYWdlcy1kZXYN
ClNvdXJjZTogbWFucGFnZXMNClZlcnNpb246IDYuMDItMQ0KSW5zdGFsbGVkLVNpemU6IDM2
OTgNCk1haW50YWluZXI6IERyLiBUb2JpYXMgUXVhdGhhbWVyIDx0b2RkeUBkZWJpYW4ub3Jn
Pg0KQXJjaGl0ZWN0dXJlOiBhbGwNCkRlcGVuZHM6IG1hbnBhZ2VzDQpTdWdnZXN0czogbWFu
LWJyb3dzZXINCkJyZWFrczogbWFucGFnZXMgKDw8IDYuMDEtMSkNCkRlc2NyaXB0aW9uLWVu
OiBNYW51YWwgcGFnZXMgYWJvdXQgdXNpbmcgR05VL0xpbnV4IGZvciBkZXZlbG9wbWVudA0K
DQoNCj4gDQo+IFJlZ2FyZHMsDQo+IEJyYW5kZW4NCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVq
YW5kcm8tY29sb21hci5lcy8+DQo=

--------------1GOkHZfqgZn00Ao6TazLBDp3--

--------------zkpZ3MFbsUlPyWLxdowdn3nb
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmO4F70ACgkQnowa+77/
2zLEyg//Y+q7AEVmIOtHgdA9jUoOnToGjgK3Wp/envKjd8vo6s7+Pg08SEbIy7Aj
zGggdmPcG7/+bbn3h46eoLPvXNUvgCu77BdWBeAM7vBtGuxYAxLoo7Q4gsS3eQws
6qnLRdUVpXePVtHVFC8uPu+/lT134oCmlLH5/P0BUCZ0kvH/3bVYUMR7aOAMuVV4
xw8F5GMkNY0EQGBQgpaoluIW9Cr8/CH74hbnJUQnc5IpCt1hVAxWLJlkBYeRqys3
jzLHEnPI55I8bsFsHgUkxs3580rs1t/xKuRo5Va6E0DiTLwZsnAUDxkB/yXXUOlI
Y1Nm6Uc/K1gwKrlulemA4ctFwdz+Dhd/HfTDAxjjTHU75JDnZ1GKBSNKeC/ZPlNF
9VFOrTQD65k1yiMSEMiLjNg/hPXcnZjwnzckkOizlWMqjBHEbsTVV84HwWVuWRqL
3xH/5o5gGk0gZTNlRi3Ei1oulmv3uBgoWlPWjtrTmi6DEYVBqtKqYXnjuOuc/Cxr
bkhTfUWdH6E5Nd0Ffd4ryt+djzEiT5LcNpigWTAMEuOletJx0m2kHeUQSiMbpNFH
yaN9nph18lYF5Cjme20UtVEzU4Zgls6mEhwaEIR1H747EKNt29QN3VFSdrahmRlK
ty5yMHsYhu3U1nvqAcWyEejHXwmRuiHkT8js0Te4Jv515qwdOUI=
=7B40
-----END PGP SIGNATURE-----

--------------zkpZ3MFbsUlPyWLxdowdn3nb--
