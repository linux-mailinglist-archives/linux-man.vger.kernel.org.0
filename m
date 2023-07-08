Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5BF2F74BEC1
	for <lists+linux-man@lfdr.de>; Sat,  8 Jul 2023 20:37:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229490AbjGHShY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Jul 2023 14:37:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50862 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229458AbjGHShY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Jul 2023 14:37:24 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F517183
        for <linux-man@vger.kernel.org>; Sat,  8 Jul 2023 11:37:23 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id A4E5A601D6
        for <linux-man@vger.kernel.org>; Sat,  8 Jul 2023 18:37:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CECF8C433C8;
        Sat,  8 Jul 2023 18:37:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1688841442;
        bh=JPGd0B0TQCQUWC/38HYvgYTxIJud592fEY27YQu/94M=;
        h=Date:Subject:From:To:Cc:References:In-Reply-To:From;
        b=IA4XAFT4pAb8F/vtz4HFdx2WS8NPzs6ZFEkHIBmCnmCA1OLP15cYpHexw4PrhUxUD
         0RyIyahrljB8UozxZmFdxBJk+c/qp3i20iSzs+PfzHaIIo31EAUQ6xwS6GlVQ+m5B0
         5P+PjNbkTfMAARZ5SJpmZk/h82qDp1qwajwwVvGGQ38iLaEswUDFgfSpBUonfRLkIB
         xROKWPYbwyFy6pE+5DK8xB37VYgKTngoHnqb+rb1z5wp0S2+frZem8hB/O7NKtCbzN
         ymsTbD2E4ob1yMO8aBUh6bzzwsoZmEhHHiUZEFjGk+kwPdYA+puWytp7a59fHMy1/p
         EqLKafHYvuF8Q==
Message-ID: <bf4dd8ed-ded3-6fe0-d3fa-afa63164bc4c@kernel.org>
Date:   Sat, 8 Jul 2023 20:37:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] Fix the man page
Content-Language: en-US
From:   Alejandro Colomar <alx@kernel.org>
To:     Zijun Zhao <zijunzhao@google.com>
Cc:     linux-man@vger.kernel.org, enh <enh@google.com>
References: <CAELULbeXgZWn+Nw_rpUzkGgNCtb7oFf1+JS=KnNVuLhcF5Vabg@mail.gmail.com>
 <CAELULbf=z2WWpHm5QDTK81oWTC9zMZJg2MA69mjOorJQ5QAzGw@mail.gmail.com>
 <CAJgzZopuptYOKHQ32-mau9gzwaWOmRtTACqdmfZvox=c2itp7w@mail.gmail.com>
 <781c88a1-b71f-f600-8d75-068a65855d16@gmail.com>
 <CAJgzZooLH5UnNU_j6jTkTFMCS+7gDMaTu9RYpSHnO2ELJat-+A@mail.gmail.com>
 <41ea7196-c824-196d-7794-0f61d0947bcd@gmail.com>
 <CAELULbcAtuqehXmDeRjOPtCOuriw9hrUU2Ndw8-i0Z=9GkbNzg@mail.gmail.com>
 <CAELULbfDFt2Z3T45_brzhWzL8182R=uxpHy_rSdgBSXpp+QQKQ@mail.gmail.com>
 <CAJgzZoqS-QJWX87P5B1LQxCktm9BAVfVVBwBxV87RhmQg0fsdg@mail.gmail.com>
 <CAJgzZooCj9FcHwMam0TC_y6c33K8OFuWGGS0_-Ji+eEhLsXo_Q@mail.gmail.com>
 <e7083e0d-92c2-ae07-7ff5-f7fa1ca91be6@kernel.org>
In-Reply-To: <e7083e0d-92c2-ae07-7ff5-f7fa1ca91be6@kernel.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------VpAFlloCyPRB3xl3KXaMZz03"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------VpAFlloCyPRB3xl3KXaMZz03
Content-Type: multipart/mixed; boundary="------------PhQNWCQWnsh2C2ebNQY7GT0g";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Zijun Zhao <zijunzhao@google.com>
Cc: linux-man@vger.kernel.org, enh <enh@google.com>
Message-ID: <bf4dd8ed-ded3-6fe0-d3fa-afa63164bc4c@kernel.org>
Subject: Re: [PATCH] Fix the man page
References: <CAELULbeXgZWn+Nw_rpUzkGgNCtb7oFf1+JS=KnNVuLhcF5Vabg@mail.gmail.com>
 <CAELULbf=z2WWpHm5QDTK81oWTC9zMZJg2MA69mjOorJQ5QAzGw@mail.gmail.com>
 <CAJgzZopuptYOKHQ32-mau9gzwaWOmRtTACqdmfZvox=c2itp7w@mail.gmail.com>
 <781c88a1-b71f-f600-8d75-068a65855d16@gmail.com>
 <CAJgzZooLH5UnNU_j6jTkTFMCS+7gDMaTu9RYpSHnO2ELJat-+A@mail.gmail.com>
 <41ea7196-c824-196d-7794-0f61d0947bcd@gmail.com>
 <CAELULbcAtuqehXmDeRjOPtCOuriw9hrUU2Ndw8-i0Z=9GkbNzg@mail.gmail.com>
 <CAELULbfDFt2Z3T45_brzhWzL8182R=uxpHy_rSdgBSXpp+QQKQ@mail.gmail.com>
 <CAJgzZoqS-QJWX87P5B1LQxCktm9BAVfVVBwBxV87RhmQg0fsdg@mail.gmail.com>
 <CAJgzZooCj9FcHwMam0TC_y6c33K8OFuWGGS0_-Ji+eEhLsXo_Q@mail.gmail.com>
 <e7083e0d-92c2-ae07-7ff5-f7fa1ca91be6@kernel.org>
In-Reply-To: <e7083e0d-92c2-ae07-7ff5-f7fa1ca91be6@kernel.org>

--------------PhQNWCQWnsh2C2ebNQY7GT0g
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgWmlqdW4sDQoNCkhlcmUgZ29lcyBzb21lIHJldmlldyBvZiB0aGUgcGF0Y2guDQoNCj4g
U3ViamVjdDogW1BBVENIXSBNb2RpZnkgdGhlIGRvY3VtZW50YXRpb24gb2YgZ2V0dGltZW9m
ZGF5KCkNCg0KUGxlYXNlIHVzZSAnZ2V0dGltZW9mZGF5LjI6JyBhcyBhIHByZWZpeCBmb3Ig
dGhlIHN1YmplY3QgbGluZSwNCmFuZCBoYXZlIGEgbW9yZSBkZXNjcmlwdGl2ZSBzdWJqZWN0
IChtb3N0IHBhdGNoZXMgZG8gbW9kaWZ5DQp0aGUgZG9jdW1lbnRhdGlvbiwgYnV0IGhvdz8p
Lg0KDQpTZWUgQ09OVFJJQlVUSU5HOg0KICAgICAgICAtICBXcml0ZSBhIHN1aXRhYmxlIHN1
YmplY3QgbGluZS4gIE1ha2Ugc3VyZSB0byBtZW50aW9uIHRoZQ0KICAgICAgICAgICBuYW1l
KHMpIG9mIHRoZSBwYWdlKHMpIGJlaW5nIHBhdGNoZWQuICBFeGFtcGxlOg0KDQogICAgICAg
ICAgICAgIFtwYXRjaF0gc2htb3AuMjogQWRkICIodm9pZCAqKSIgY2FzdCB0byBSRVRVUk4g
VkFMVUUNCg0KPiANCj4gV2UgZmluZCB0diBhcmcgaXMgYWxsb3dlZCB0byBiZSBudWxsIGlu
IGJpb25pYyBzbyBtYWtlIHRoZSBkb2N1bWVudGF0aW9uIG1vcmUgY2xlYXIuDQo+IA0KPiBD
YzogZW5oIDxlbmhAZ29vZ2xlLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogQWxlamFuZHJvIENv
bG9tYXIgPGFseEBrZXJuZWwub3JnPg0KPiAtLS0NCj4gIG1hbjIvZ2V0dGltZW9mZGF5LjIg
fCAxICsNCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQ0KPiANCj4gZGlmZiAt
LWdpdCBhL21hbjIvZ2V0dGltZW9mZGF5LjIgYi9tYW4yL2dldHRpbWVvZmRheS4yDQo+IGlu
ZGV4IDlkMTM0ZmE0OS4uNDNmM2ZkOWZmIDEwMDY0NA0KPiAtLS0gYS9tYW4yL2dldHRpbWVv
ZmRheS4yDQo+ICsrKyBiL21hbjIvZ2V0dGltZW9mZGF5LjINCj4gQEAgLTE3NSw2ICsxNzUs
NyBAQCAuU1MgQyBsaWJyYXJ5L2tlcm5lbCBkaWZmZXJlbmNlcw0KPiAgLkJSIGdldHRpbWVv
ZmRheSAoKQ0KPiAgaXMgcHJvdmlkZWQgaW4gdGhlDQo+ICAuQlIgdmRzbyAoNykuDQoNCkEg
YmxhbmsgbGluZSBzaG91bGQgaW50cm9kdWNlIHRoZSBuZXcgcGFyYWdyYXBoLCBzbyBhZGQg
Jy5QUCcuDQoNCj4gK1RoZSBrZXJuZWwgYWNjZXB0cyBudWxsIGZvciBib3RoIHRpbWUgYW5k
IHRpbWV6b25lLiBUaGUgdGltZXpvbmUgYXJndW1lbnQgaXMgaWdub3JlZCBieSBnbGliYyBh
bmQgbXVzbCwgYW5kIG5vdCBwYXNzZWQgdG8vZnJvbSB0aGUga2VybmVsLiBBbmRyb2lkJ3Mg
YmlvbmljIHBhc3NlcyB0aGUgdGltZXpvbmUgYXJndW1lbnQgdG8vZnJvbSB0aGUga2VybmVs
LCBidXQgQW5kcm9pZCBkb2VzIG5vdCB1cGRhdGUgdGhlIGtlcm5lbCB0aW1lem9uZSBiYXNl
ZCBvbiB0aGUgZGV2aWNlIHRpbWV6b25lIGluIFNldHRpbmdzLCBzbyB0aGUga2VybmVsJ3Mg
dGltZXpvbmUgaXMgdHlwaWNhbGx5IFVUQy4NCg0KUGxlYXNlIHJlc3BlY3QgdGhlIDgwLWNv
bHVtbiByaWdodCBtYXJnaW4uICBJZiB5b3UgdXNlIHZpbSgxKSwNCnRoaXMgbWF5IGJlIHVz
ZWZ1bCB0byB5b3U6DQoNCiAgICAgc2V0IGNvbG9yY29sdW1uPTczLDgxDQoNCkFsc28sIHBs
ZWFzZSB1c2Ugc2VtYW50aWMgbmV3bGluZXMuICBTZWUgbWFuLXBhZ2VzKDcpOg0KDQogICAg
VXNlIHNlbWFudGljIG5ld2xpbmVzDQogICAgICAgIEluICB0aGUgIHNvdXJjZSBvZiBhIG1h
bnVhbCBwYWdlLCBuZXcgc2VudGVuY2VzIHNob3VsZCBiZQ0KICAgICAgICBzdGFydGVkIG9u
IG5ldyBsaW5lcywgbG9uZyBzZW50ZW5jZXMgc2hvdWxkIGJlIHNwbGl0IGludG8NCiAgICAg
ICAgbGluZXMgYXQgY2xhdXNlIGJyZWFrcyAoY29tbWFzLCBzZW1pY29sb25zLCAgY29sb25z
LCAgYW5kDQogICAgICAgIHNvIG9uKSwgYW5kIGxvbmcgY2xhdXNlcyBzaG91bGQgYmUgc3Bs
aXQgYXQgcGhyYXNlIGJvdW5k4oCQDQogICAgICAgIGFyaWVzLiAgIFRoaXMgIGNvbnZlbnRp
b24sICBzb21ldGltZXMgIGtub3duIGFzICJzZW1hbnRpYw0KICAgICAgICBuZXdsaW5lcyIs
IG1ha2VzIGl0IGVhc2llciB0byBzZWUgdGhlIGVmZmVjdCBvZiAgcGF0Y2hlcywNCiAgICAg
ICAgd2hpY2ggb2Z0ZW4gb3BlcmF0ZSBhdCB0aGUgbGV2ZWwgb2YgaW5kaXZpZHVhbCBzZW50
ZW5jZXMsDQogICAgICAgIGNsYXVzZXMsIG9yIHBocmFzZXMuDQoNCkNoZWVycywNCkFsZXgN
Cg0KPiAgLlNIIFNUQU5EQVJEUw0KPiAgLlRQDQo+ICAuQlIgZ2V0dGltZW9mZGF5ICgpDQo+
IC0tIA0KPiAyLjQwLjENCj4gDQo=

--------------PhQNWCQWnsh2C2ebNQY7GT0g--

--------------VpAFlloCyPRB3xl3KXaMZz03
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmSprN4ACgkQnowa+77/
2zJazBAAqzxnT0BClkG3kGFxA20SoL/w7mnnxZLFT2DRU1AU8JqAZqZQxGE0WrpY
drXXhzx1SODYG7uBqvPDgyDeUEcZrG3S2blyv1fmkIvJiF4mjct0esxt/rXM6v8C
9k+SZnkJsO992etnHmlYHf7sse+pExvOfELCaoa7RoHlbdJ4sy0yJgkzhiUjlz2v
GAme2PEY4a6yxJlFhGM4KrQ2/H5rehuZB8xGC1aX2ZiixdY/Yg3BkasYXEMgDqb2
zQasggTN/ugpLVtbdnIweoqW32qjVLvVbQEJ4Nneu25DXYDniQtcNjAAu8dlIzWR
WUKpJb89elR7PM+FH72q79HYvwUgFjsGcHtwGsuWQJAJcJRwOQf99jy3G12SuFUi
Bvfimoqpeg8itLCPIsOMFZeuIbZxcNTB1nGmoM2gSIinxBfysZnD5Ue0iPns8bc5
2DunYYTDiMgLfLWzLA2O+Dx2S716ldu0dLC4AIZos1X2vttYugClGrAPayNmHC7+
UCbZEVUUZVJxaI0kOjRiCNiAcwjGzeqe9OnSGwSrxDpfLvkiObyf6F/aUjUt7gph
60s4WHK4Dzua3nFuYpUz0zX5/aNkCXiB3LvuqToYWYJvZD5D89cJ4qg8fS18a77Q
4zg8Wq7L/Zns6OxSAL5p90uKG+e4oRbHtFbZ7wn3CyF+DTROGc4=
=u8ZM
-----END PGP SIGNATURE-----

--------------VpAFlloCyPRB3xl3KXaMZz03--
