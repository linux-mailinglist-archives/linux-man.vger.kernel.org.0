Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DCE2F649515
	for <lists+linux-man@lfdr.de>; Sun, 11 Dec 2022 17:31:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229918AbiLKQa4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 11 Dec 2022 11:30:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56674 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229461AbiLKQaz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 11 Dec 2022 11:30:55 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3ABFBC19
        for <linux-man@vger.kernel.org>; Sun, 11 Dec 2022 08:30:52 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id p13-20020a05600c468d00b003cf8859ed1bso3222082wmo.1
        for <linux-man@vger.kernel.org>; Sun, 11 Dec 2022 08:30:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xN9hXAfybMY0eJ1h1K3KzT6Sf3cavKsZD6yXZCaI8Cw=;
        b=RlZN34eFeaEQaO8aFPvWzTrm3Iw/TKV0iC7/XWcjs2pzFod+posXg5oZwgOt//KPoR
         FNmEdw6V15DExEik5XDbpKOQHuCNVue+qGbudlnQEQzdHtHOkLr8C+JJY+w0hWCsj+Lj
         FWYd4W5yw77mVu7V0yW2BI80cFglD+GgDaJFghtMhshXSWWOpuGq9csazDk8RpRrgdFC
         yIb02JfDnKT4EvG51YwUT4LG/3311p2ruzR3aDFwpujQI2EtFC9xrhzqdp4R1BZ5RxgG
         a9ZUZ7i1+G71uZ2dQqtwDd/VVtIjWgwkHBixKVvLfGsVwgMb5xGrKsWGEQ53cVU/L3Wa
         uMgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=xN9hXAfybMY0eJ1h1K3KzT6Sf3cavKsZD6yXZCaI8Cw=;
        b=5olpG+V9NSn086rh4iSse5oagAF7jfSvlsK4Bk3oj5VA1JmQtOJxuyTmX023b7QW9F
         3d6AltF2eMlqjrvNviavB25+rKQfXBtOUem3kufPrHqrHBKPq/Iy8QdKOeTsSKwKiBm+
         qgr33kkgd72+by/TiV40EZ0CE0bcxHcuUvB8T72Q8VtUkGfkRTmvodf6lE4zCOWMTLpk
         I8w/4QzdQnruon1YKBC4/qvahXFj4QqA+PGTMnh9YNWFCgBSbF2jklj6kwbsaw+ioJC4
         V5LnnKo1+i0ICc95fBba2YhsYjUlWU6KuiaPLLIrdnh1fDhbaYwzsPmLxRSxoCGneI57
         Qoaw==
X-Gm-Message-State: ANoB5pmk7VRBIfJDDfcP4wKWzb+Iwow8R8nMUq6IO6NvTQKc3ekA4txK
        Q7G15SNdTwfukeYDis8R8tHzchPQZY8=
X-Google-Smtp-Source: AA0mqf6KvQC7H8ApbgTVel/38FEwSrpHADOBkuQMtWYCMTd6z5/3TA2Z30D4PAxB9OtuAi4VDqsLDw==
X-Received: by 2002:a05:600c:384e:b0:3cf:ae53:b1e0 with SMTP id s14-20020a05600c384e00b003cfae53b1e0mr10109363wmr.9.1670776251491;
        Sun, 11 Dec 2022 08:30:51 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id c66-20020a1c3545000000b003d09150b339sm6457212wma.20.2022.12.11.08.30.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Dec 2022 08:30:51 -0800 (PST)
Message-ID: <eb013d59-1e84-9d30-a7f6-7236b60a508a@gmail.com>
Date:   Sun, 11 Dec 2022 17:30:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH] memmem.3: Added list of known systems where this is
 available
Content-Language: en-US
To:     Stefan Puiu <stefan.puiu@gmail.com>
Cc:     Guillem Jover <guillem@hadrons.org>,
        Andrew Clayton <andrew@digital-domain.net>,
        linux-man@vger.kernel.org,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx@kernel.org>,
        Brian Inglis <Brian.Inglis@systematicsw.ab.ca>,
        Rich Felker <dalias@libc.org>, musl@lists.openwall.com
References: <20221110001318.10696-1-andrew@digital-domain.net>
 <853fa349-8e78-8ce8-f76f-79b4b9353913@gmail.com>
 <Y31XOPOsB932l0cd@thunder.hadrons.org>
 <CACKs7VAQsxDc2XrsAYSEbA9eqRnLHuXykVmNTit+tCFMyGLCwA@mail.gmail.com>
 <50485f46-99d0-69ee-0882-7e403334080c@gmail.com>
 <CACKs7VCNh=bxV8waEPc=Gzps+0Q3xYgrX-LbB-1LBOTzdc_9eg@mail.gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CACKs7VCNh=bxV8waEPc=Gzps+0Q3xYgrX-LbB-1LBOTzdc_9eg@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------ouTnfNwl0LBgoY1HKOh6T0ZM"
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
--------------ouTnfNwl0LBgoY1HKOh6T0ZM
Content-Type: multipart/mixed; boundary="------------8NQho16ESETbBfUghXidO796";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Stefan Puiu <stefan.puiu@gmail.com>
Cc: Guillem Jover <guillem@hadrons.org>,
 Andrew Clayton <andrew@digital-domain.net>, linux-man@vger.kernel.org,
 Michael Kerrisk <mtk.manpages@gmail.com>, Alejandro Colomar
 <alx@kernel.org>, Brian Inglis <Brian.Inglis@systematicsw.ab.ca>,
 Rich Felker <dalias@libc.org>, musl@lists.openwall.com
Message-ID: <eb013d59-1e84-9d30-a7f6-7236b60a508a@gmail.com>
Subject: Re: [PATCH] memmem.3: Added list of known systems where this is
 available
References: <20221110001318.10696-1-andrew@digital-domain.net>
 <853fa349-8e78-8ce8-f76f-79b4b9353913@gmail.com>
 <Y31XOPOsB932l0cd@thunder.hadrons.org>
 <CACKs7VAQsxDc2XrsAYSEbA9eqRnLHuXykVmNTit+tCFMyGLCwA@mail.gmail.com>
 <50485f46-99d0-69ee-0882-7e403334080c@gmail.com>
 <CACKs7VCNh=bxV8waEPc=Gzps+0Q3xYgrX-LbB-1LBOTzdc_9eg@mail.gmail.com>
In-Reply-To: <CACKs7VCNh=bxV8waEPc=Gzps+0Q3xYgrX-LbB-1LBOTzdc_9eg@mail.gmail.com>

--------------8NQho16ESETbBfUghXidO796
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgU3RlZmFuLA0KDQpPbiAxMS8yNC8yMiAxOTo1NywgU3RlZmFuIFB1aXUgd3JvdGU6DQo+
IEFhaCBPSywgc28gbWVtbWVtIGlzIG5vbi1zdGFuZGFyZCwgdGhlcmUgaXMgbm8gc3RhbmRh
cmQgdG8gcG9pbnQgdG8uDQo+IERvIG90aGVyIE9TZXMgcHJvdmlkZSB0aGlzIGtpbmQgb2Yg
aW5mbz8gSSBkb24ndCBzZWUgYW55dGhpbmcgYWJvdXQNCj4gcG9ydGFiaWxpdHkgaW4gdGhl
IE9wZW5CU0QgbWFuIHBhZ2UgKGh0dHBzOi8vbWFuLm9wZW5ic2Qub3JnL21lbW1lbSksDQo+
IG9ubHkgIm1lbW1lbSgpIGlzIGEgR05VIGV4dGVuc2lvbiIuIFRoZSBGcmVlQlNEIG1hbiBw
YWdlDQo+IChodHRwczovL3d3dy5mcmVlYnNkLm9yZy9jZ2kvbWFuLmNnaT9xdWVyeT1tZW1t
ZW0mbWFucGF0aD1GcmVlQlNEKzEzLjEtUkVMRUFTRSthbmQrUG9ydHMpDQo+IGRvZXMgbWVu
dGlvbiBMaW51eCwgYnV0IG9ubHkgdG8gbWVudGlvbiB0aGF0IG1lbW1lbSB3YXMgYnJva2Vu
IGluIG9sZA0KPiB2ZXJzaW9ucyBvZiBMaW51eCBsaWJjIChub3RoaW5nIGFib3V0IGN1cnJl
bnQgTGludXgpOyBpdCBhbHNvIGhhcyB0aGUNCj4gJ0dOVSBleHRlbnNpb24nIG1lbnRpb24u
IEludGVyZXN0aW5nbHksIEkgZG9uJ3Qgc2VlIHRoZSBtZW50aW9uIG9mIHRoZQ0KPiBmdW5j
dGlvbiBiZWluZyBhIEdOVSBleHRlbnNpb24gaW4gdGhlIExpbnV4IHZlcnNpb24uDQoNClRo
ZSBMaW51eCBtYW4tcGFnZXMgaGF2ZSBhIGxpdHRsZSBiaXQgbW9yZSBvZiB0cmFkaXRpb24g
dGFsa2luZyBhYm91dCBvdGhlciANCnN5c3RlbXMgaW4gdGhhdCByZWdhcmQuDQoNCj4gDQo+
IEhhdmUgeW91IGNoZWNrZWQsIGFyZSB0aGVyZSBtYW55IHN1Y2ggZnVuY3Rpb25zPw0KDQpO
bywgSSBkaWRuJ3QuDQoNCj4gRG8geW91IHBsYW4gdG8gYWRkDQo+IHRoaXMgaW5mbyBmb3Ig
YWxsIG9mIHRoZW0/DQoNCk5vLiAgSSBkb24ndCBoYXZlIHRoZSB0aW1lIHRvIGFkZCB0aGlz
IGluZm9ybWF0aW9uIGZvciBhbGwgc3VjaCBmdW5jdGlvbnMuDQpCdXQgaWYgc29tZW9uZSBz
ZW5kcyBhIHBhdGNoLCBfYW5kXyBpdCBvbmx5IG1lbnRpb25zIGZyZWUgc29mdHdhcmUgbGli
cmFyaWVzIA0KKGkuZS4sIG1hY09TIG5vLCBidXQgQXBwbGUgbGliYyB5ZXMpLCBhbmQgdGhl
IGZ1bmN0aW9uIGlzIG5vdCB5ZXQgaW4gUE9TSVgsIGFuZCANCnRoZSBmdW5jdGlvbiBpcyBz
b21ldGhpbmcgdmVyeSB1c2VmdWwgdGhhdCBtaWdodCBiZSBwb3J0ZWQgdG8gb3RoZXIgc3lz
dGVtcyBpZiANCm1hbnkgcHJvZ3JhbXMgdXNlIGl0LA0KdGhlbiBJIHdpbGwgYWNjZXB0IHN1
Y2ggYSBwYXRoLg0KDQptZW1tZW0oMykgaXMgYW4gZXhhbXBsZSBvZiBzdWNoIGEgZnVuY3Rp
b24sIHNvIHN1Y2ggcGF0Y2hlcyBmb3IgaXQgYXJlIHdlbGNvbWUuDQoNCj4gDQo+Pg0KPj4g
TXVzbCBsaWJjIGlzIGRlZmluaXRlbHkgYSBmaXJzdC1jbGFzcyBjaXRpemVuIHRoZXNlIGRh
eXMgaW4gTGludXggZGlzdHJpYnV0aW9ucy4NCj4+ICAgIEkgd291bGQgc3RhcnQgZG9jdW1l
bnRpbmcgdGhlbSBpbiB0aGUgcHJvamVjdCBhdCBsYXJnZSBpZiBzb21lb25lIGZyb20gbXVz
bA0KPj4gcHJvdmlkZXMgcGF0Y2hlcyAoSSBkaXNjdXNzZWQgdGhpcyBzb21lIHRpbWUgYWdv
LCBidXQgY2FuJ3QgcmVtZW1iZXIgd2l0aCB3aG8pLg0KPj4gUmljaCwgaWYgeW91IHdvdWxk
IGxpa2UgdG8gZGlzY3VzcyBhYm91dCB0aGlzLCB3ZSBjYW4gaGF2ZSBzb21lIGNoYXQuDQo+
Pg0KPj4+DQo+Pj4gRm9yIG11c2wgYW5kIG90aGVyIGxpYmNzLCBJIHRoaW5rIHRoZSBtYW4g
cGFnZXMgYWxyZWFkeSBkb2N1bWVudCBzb21lDQo+Pj4gaW5zdGFuY2VzIHdoZXJlIHRoZWly
IGJlaGF2aW9yIGRpdmVyZ2VzIGZyb20gZ2xpYmMuDQo+Pg0KPj4gQXMgc2FpZCwgZm9yIG11
c2wsIEknZCBkb2N1bWVudCB0aGVtIG9mZmljaWFsbHksIGlmIHRoZXJlJ3MgYW55b25lIGlu
dGVyZXN0ZWQNCj4+IGVub3VnaCB0byBzZW5kIHBhdGNoZXMuDQo+Pg0KPj4gRm9yIG90aGVy
IGxpYmNzLCB3ZSBoYXZlIHRvIGRlY2lkZSBpZiB0aGV5J3JlIGltcG9ydGFudCBlbm91Z2gs
IGFuZCBwcm9iYWJseQ0KPj4gZGVjaWRlIG9uIGEgY2FzZS1ieS1jYXNlIGJhc2lzLg0KPj4N
Cj4+IE1pY2hhZWwgdHJpZWQgdG8gaGF2ZSBzb21lIGRlY2VudCBjb3ZlcmFnZSBvZiBub24t
R05VL0xpbnV4IHN5c3RlbXMsIGJvdGggaW4gdGhlDQo+PiBtYW4tcGFnZXMgYW5kIGluIGhp
cyBUTFBJIGJvb2suICBJdCdzIGEgdXNlZnVsIHRoaW5nLiAgU28gbXVjaCB0aGF0IHNvbWV0
aW1lcw0KPj4geW91IGRvbid0IGV2ZW4gbmVlZCB0byByZWFkIG90aGVyIHN5c3RlbXMnIHBh
Z2VzIGF0IGFsbCB0byBrbm93IGhvdyBwb3J0YWJsZSBpcw0KPj4gYSBHTlUvTGludXggZnVu
Y3Rpb24uDQo+IA0KPiBJIGtub3cuIEJ1dCBub3Qgc3VyZSBob3cgbXVjaCBMaW51eCBkb2Nz
IHNob3VsZCBjb3ZlciBhYm91dCBvdGhlcg0KPiBPU2VzLCB3aGljaCBhcmUgYWxzbyBjb25z
dGFudGx5IGNoYW5naW5nIChhbmQgaGF2ZSB0aGVpciBvd24gZmluZQ0KPiBkb2NzKS4NCg0K
U3VwcG9ydCBmb3IgYSBmdW5jdGlvbiBpcyBzb21ldGhpbmcgdGhhdCB1c3VhbGx5IGlzIG9u
bHkgYWRkZWQuICBJJ2QgYmUgY2FyZWZ1bCANCm9mIG9ubHkgYWRkaW5nIHN1Y2ggaW5mbyBm
b3IgZnVuY3Rpb25zIHRoYXQgSSBleHBlY3QgdG8gZ3JvdyBpbiBwb3B1bGFyaXR5LCANCm1h
eWJlIGV2ZW4gdGhleSdyZSBhZGRlZCB0byBhIGZ1dHVyZSBQT1NJWCAoSSBleHBlY3QgdGhp
cyBjYW4gaGFwcGVuIHdpdGggbWVtbWVtKDMpKQ0KDQo+IA0KPiBBcyBhbHdheXMsIGp1c3Qg
bXkgMmMsDQo+IFN0ZWZhbi4NCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCi0tIA0KPGh0dHA6Ly93
d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------8NQho16ESETbBfUghXidO796--

--------------ouTnfNwl0LBgoY1HKOh6T0ZM
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOWBbMACgkQnowa+77/
2zIiWRAAiOir6c2l2/OCci8RHJQqUUvhkVaV6iJH7oIxPAdulBJWJF0ZGTS1rZPv
5iyMvW0frkEFVzqQB+Myoj+DbncyqxhvvaYzxTP9xtD0EsI4b/p8WtUS15iGFhKS
PKtkaq6V1zecW08imPlvdAi5iqA043oord1RrzvHQdMaeGCeLmsWw64SncLnn5mE
yvr4phqvarmpuWReCmiCtv1Ot/dOreL7FPVdz9zAQH+4wb9jNrH6SwnK7YvVWC22
Tt41SepeowhMn1vT5AMSsNLJot+98V2YFzppbE9biekpWQq1frx4pSTXk95mq/q6
8vHLKiUTo7/gjwkl83W9D+vbAlf+TW8lqLM8O4XflCWfFLZUfbwZ5HoTMKo57dZB
zqxdp9f4yztBQmCLM9caZKwd4UgChrpMI0d9aa9T6+30hH+MTi/JWmtHN0t7Znou
c7qggJAANszwAR984FJ0XGhIKpWKcUjavGAwmR0wY6XegzEb6zgqU8W0Hoh+QuGt
PRbkV2P/fNGEsFCf1gxNAQY3xbHy25DjzkkjzQIEQqR35Hw8XeFzLqzJm/FE0fjT
ufoD+p+2J4dSw/rSlhAvLk8ZK5bWER1wXR+7wSIE2Np5Rs1JG4dIrjLxVKLz7qs6
nIQFu9AHla8N7+2wCE7CnU5B3tdP+z4wu5hTQ1fAuCSTYcT/Ugk=
=PTX5
-----END PGP SIGNATURE-----

--------------ouTnfNwl0LBgoY1HKOh6T0ZM--
