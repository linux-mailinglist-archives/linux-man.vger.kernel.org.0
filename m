Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 54CF95839C9
	for <lists+linux-man@lfdr.de>; Thu, 28 Jul 2022 09:47:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234516AbiG1Hr3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 28 Jul 2022 03:47:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40216 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233059AbiG1Hr2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 28 Jul 2022 03:47:28 -0400
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (mail-vi1eur05on2065.outbound.protection.outlook.com [40.107.21.65])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D67C61703
        for <linux-man@vger.kernel.org>; Thu, 28 Jul 2022 00:47:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gl0hp+r1xKVs0IhjuUgIJoBD/eNf0DTpT88Be57jcjb6O5AyRgOH3cpdXV0/JhXE8lebhuD9uinAzn5HSjziGD9ApQ3Z4zWYktu8Tk1IG8o1kvo0njaxH/Tyo68nqQvNoUPGlxPldMwW99O13ykeFVb8VFI+iGY3MAp0tzwb6vKZJpabcCyk4uSqqim01ZTEqcvzmubBPUyoFvE8NQdpRlsz+QPLLOo2urt2XcPm0Vvo2tg/lK7xK299aJOFy8oqPQldT0r8QabBZ2d/NdfmMNzZxdMFTNLV+Jp3oEGyCPkRxyOu4wAW4GNcUMVdGCFcu6Bi5XHGGZe+aDr/DYpBQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2lqwZ2CyNeN901z/1uxTYCBs8aAo3cPTCmbXkMlI+Bw=;
 b=OMyuhI7B71Z/V10Q4F0mWhH5nKl3whhJWQkY1njRYb0ms0cXlGEl25qVvluXLU43AJKujxweYEQi7M1ZJ7dm9S667M/6Ef9feMnoZ1+UML1qMLkJq/n9bEbuCZ6SSSvTRhsOsRhJStcbbqlM6B1lllqUnk8dmn7xKBc85zpaAlldtBM+H+4zeF8Dcg59wZkQJFD1eorv+d9sfkLStzYuam6Zkym9RP8ifWz578RaN2arVtl40CFQQOAfjoqyuQWLOff/Fh896oNPcojfEPvHcaEMB70uKErkFZEaMXV+kgq39Uvj570PfFRqU7vH7cVJpi8SbNpSFioovh46TQEHTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sap.com; dmarc=pass action=none header.from=sap.com; dkim=pass
 header.d=sap.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sap.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2lqwZ2CyNeN901z/1uxTYCBs8aAo3cPTCmbXkMlI+Bw=;
 b=O4lGPy4dWINjdx3J07cAq2dXVylz1Z9h6zMhKDWrsH3oVis//Hx9f2zDXCcyjsodMfTX7QnB+O4dgQSIGtdZ+9qfj6dBG7BgjT/vyTQ+AykAdWA3OjvLfEKdGBVf6Dm9puUWf50FEiQF27XuKu8nxIH1NdAJFWV46e9NouQ2Nvb+AdziPsEkCnvh/iEV8QSTYHs5c0paSsPmnYz0JXuu4Jy0RyElLr/duz8fm95J9C+JYoR6tIE8MPBntM/TX/R4PPUDVAobECuAplLfpQ3ZKG7Loiblj5qhI4BFF38m98XF1KO6sEPhEHYVv8VTv1rBJjlvCuZCbDqOUaB4hXIAPw==
Received: from PAXPR02MB7214.eurprd02.prod.outlook.com (2603:10a6:102:1cf::8)
 by DB6PR0202MB2789.eurprd02.prod.outlook.com (2603:10a6:4:a8::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.25; Thu, 28 Jul
 2022 07:47:22 +0000
Received: from PAXPR02MB7214.eurprd02.prod.outlook.com
 ([fe80::604f:8b7b:4770:7993]) by PAXPR02MB7214.eurprd02.prod.outlook.com
 ([fe80::604f:8b7b:4770:7993%4]) with mapi id 15.20.5458.025; Thu, 28 Jul 2022
 07:47:22 +0000
From:   "Schneider, Robert" <robert.schneider03@sap.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        Eric Paris <eparis@redhat.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        David Howells <dhowells@redhat.com>
CC:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "mtk.manpages@gmail.com" <mtk.manpages@gmail.com>
Subject: RE: [patch] RLIMIT_NPROC not enforced for root user, irrespective
 capabilities
Thread-Topic: [patch] RLIMIT_NPROC not enforced for root user, irrespective
 capabilities
Thread-Index: AdiA0YOYWpD0HTd5R7e2cMxv2Z3dGAAAygiABRM0HjADAMBrgABMUJrQ
Date:   Thu, 28 Jul 2022 07:47:22 +0000
Message-ID: <PAXPR02MB721437B523D36018F989DD6D8F969@PAXPR02MB7214.eurprd02.prod.outlook.com>
References: <PAXPR02MB72147C88F7E9F82CC1AA577F8FAD9@PAXPR02MB7214.eurprd02.prod.outlook.com>
 <9e740310-6a05-5a05-b403-98369960830e@gmail.com>
 <PAXPR02MB7214288BB38033ACE0DBE35E8F879@PAXPR02MB7214.eurprd02.prod.outlook.com>
 <dcd16a37-82e4-d7c4-dbbc-0764cadfee76@gmail.com>
In-Reply-To: <dcd16a37-82e4-d7c4-dbbc-0764cadfee76@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-processedbytemplafy: true
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=sap.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f586db77-ecb1-4ed4-9f68-08da706d67f9
x-ms-traffictypediagnostic: DB6PR0202MB2789:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PkB0/5KL8U+K8eoviuPu2WUX6J/EfgU/TaKzxGGBAYNHSYGVm7m5RnTsvnpcapeyAk6OVIz93wB9kp8KFPQ1wA0ZcUfMhsJyvVOxeFpYuEtAa8pEYBJ2hEx/Fb9SLOjfVLsPVTqqE0GRxggcyKbcw3ZexnB5w6iIqhDMtD4IaXQcb6ph0aSkHYCaaaTrmWRfYKeYpS6LbEBCYl5r8WZMmfTC2j+o2lpgqD1/zr+FhsRRZ/hsfgyp+YuujsomRpw0OS2KXy4coUBK/FOtaeY97l4ewrzmtSV3HVdJDd9Tw2rCyZIJfbl4+65ubasx2TJrn9gEdhgYst920Bj4H98OYkSz2IB/WjFIPXgkWY/HaazvmS1zkM8z5CRB6DaWrWo34It1a8HqevbGYwrVow0ckjFgD99lkrUQNItYwdWHSchGHbew8IhJ+7hTt36HCbegE7Tf5tIOlwuc+LZhgpEK+FZZhKLpp//AsYBrIeBxCzRTiL2N9ZQEeI3hKCj2R2Z4pQkxqwJgh3mtzbU1lC26Xsx0ygCifhkh7h2BeY6ux12oTO8L7kAgMrL4ftve6E2RQBsXEibr3S2cg5/YtV90vROMX0A4T9Ao9xybGLXu1OvqAKlBYRuwOitExTlIwv4Ew017kSgw2Dz4DLCYwM1Jdtin+kWM2rcAUmcJeagmQiMTBHXziqbjpS/4teeaM9mkCsKsWcu60xGih2g1CN8JMTPvgoWGUoyddNKU51WUqKz/4o22swZ1DkGoPDsn4o1/YdY1r7MauUKcaMTcGGAHWTwkDqfLqgAdY9i8vdsAP5wUzisyDTbD3lRnk2eVDvsXevOndhxbtpTOCdWjrNyBfg==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR02MB7214.eurprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(136003)(376002)(346002)(39860400002)(366004)(396003)(122000001)(83380400001)(38070700005)(86362001)(33656002)(99936003)(82960400001)(5660300002)(8936002)(52536014)(38100700002)(316002)(478600001)(6506007)(966005)(53546011)(76116006)(66476007)(71200400001)(64756008)(66946007)(4326008)(8676002)(9686003)(54906003)(186003)(55016003)(41300700001)(110136005)(26005)(66556008)(45080400002)(2906002)(7696005)(66446008);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UXJVS0NueWkyNk1FL1UwSHhJcjJIZFMyZ0V5OFloWERWMy83T0ZXd1RwVEZT?=
 =?utf-8?B?dWd2ZUxCQlVsSmQ1bkU4T3RFUUVuTmU0amNyRS9TbTNaci9VOTZ0WHlhQmRt?=
 =?utf-8?B?Y2JNZjkzdmZvK3h4TXhta3dRWE5WcHZ1TFJQNmxmR3BLeHJReDREWWNoWkRj?=
 =?utf-8?B?S2Z0cG1Ic0FReVV5NmRZeElYMDM2T3ZpTWsrTXk0VUxEaEVwc2RiZDhtVDJz?=
 =?utf-8?B?eXZpMndDZTFzUzFKaFdqb3JidEJSK0dUM21YZlh2Rll0RVdHc3BDRmZyZk1o?=
 =?utf-8?B?Q3dXck00aFB3S1J4WDFsNkxJQ0QxdjYwM2NQWHkxSURyMWNQTm9QUDdOUWJl?=
 =?utf-8?B?NmV3RGhuTWdCajcrUFplTUx2bXBwMzVYRHVZSy9CWVY0ejJ4bVdBZnAyUDZk?=
 =?utf-8?B?WlJnQW5pc1ZhMDJhdldkcHpFNGFhQ0hLV3B1ZUpNa0Z2QktzTC9GNXFDKzE4?=
 =?utf-8?B?dVV2Nk1NOHJuUi95eDkvWnltWElsUER2QSt3KzNISXlUYUh2ZkNpV3FPYlFz?=
 =?utf-8?B?RVlBek1vZ1JTdDZHUjhJaVg0aGRYWDFIOTQ3MjI4aUt2RGRGc29iV2VkZXJx?=
 =?utf-8?B?OWZiTGRsUXBleWZzVC8zNkJESUk1OWltRzQzcDRReWtpMUhDWlY1cUMwQ0l6?=
 =?utf-8?B?NFBUNkY3NW5WV3dUUFh5MnZvMXpJU0h1WWt3TUhLT01VZEczSm5ZL2svbTRI?=
 =?utf-8?B?Z1ZiSzZ1WUhSendYbHlWcmtxUmtuNUFEL1p3eEVMT3BXUlBUUFJuUnZsWGVO?=
 =?utf-8?B?OWFKdlZRSk9tZlVuZXVRMlNwZkt1RXZieUtUOUFGbFJOendDTkpiMGE0bm5k?=
 =?utf-8?B?WVkxYTlsemgrQVpHK3Q3NVk5QThKUXp3R1dwMEpmc3g2ajhtdXQwT3F3UFJz?=
 =?utf-8?B?amh6cGc0VWdaNTJiVGNsb0dKc3U4SDF4ckxrMklVdDNheUlPZmhISWxWTEY5?=
 =?utf-8?B?L0ZVSjByUzV0YkJrTDRXYzhreW9CblhPNHh3a0NMSnBNa0FIWmhKSWN0OHdU?=
 =?utf-8?B?OW1BSEdIbWhIWHBURHFqR1F1aWxNT3RRcDJybktORzV1VjBseXV2bGRRWlZY?=
 =?utf-8?B?ZTNxeXE5OHRBNldKeVFaUDNEVzV4SnBVVHQ1Umx5amNxMFBsWWtpUlN2c05T?=
 =?utf-8?B?U25LeXlCOVFpTzA1V0JBV2llSlRyZVMxaElaT2NPd09GZ1JzSzZpSFhJWmR6?=
 =?utf-8?B?Yy83YUdGTUVZaFhLWThKdE9zU3lqTk1ZUmtDZ3ZDQ08yZUlNcjRuNlBkRUhB?=
 =?utf-8?B?R0lrTDJEMkcwODN4SVhkNU50b0RLMDBHNlFRQzhuQlBPSmNTNHhvdjFKNDRi?=
 =?utf-8?B?ZGl2eUpqVVhGd0V4SmUzSmFMcW0vNThEaFozWFNJbFJ0NUNhT01lbHV1SXFH?=
 =?utf-8?B?azZUSzFVT2hTUnc0RitXbHlIc3FHbzlPdE5YbVQ5ZWtmbUhKcXA0YUZQTi9L?=
 =?utf-8?B?Q3dhck12QVlQeW5zR01YNU9obXlzOFJUTHc1YzJDMFRYSml4WVdZaHR6bk1P?=
 =?utf-8?B?QWVOaWd1eTN0UnlBcjRXK3l6cE1WWWNIQ1VialpkZDhueDF2dmVYUnlJUmZU?=
 =?utf-8?B?dld2MmVpclNuZ0VNYmZvMVllSGlreXdCZFlpL21WOW51cjhVdG4wTG1KeU1w?=
 =?utf-8?B?QTl5elJvbXoyQ3FoOEJURzJnenVtWDZzajNtUUo0WWI4MU10Q0k3OHp4UWZY?=
 =?utf-8?B?eU9LVVpuWkZNOWVseHNjOVI0c0JJMFM5b3pHcU1XWk4wYUZLZUtTaC93RzNR?=
 =?utf-8?B?VFUrM2Z2NFBKS2lCbzI1RFYzWGxmMnlIdWdSWUF3c1czL1M1QmIwVENMWHV6?=
 =?utf-8?B?OFpaTnlhd01VM29SRHlDbUdkZEQxRDAzNWwwSGlzMHBxajJMOGdOUHRYSEJ3?=
 =?utf-8?B?cVdyZEZnMDdFNXgydzFIZXVCZzM0ZU5PRGozVndKLzFNWlNGKzUvd2NBTEgx?=
 =?utf-8?B?eDJvM2FnVVIrUzFWZkY1dXBOZVRxL1JqME5iTmlMWVhkVFluMGEvdWVoNnFH?=
 =?utf-8?B?ZlQzazY4WUhMY3VlalFmWGJoc1BPc2d4Y3piR2dGYkxQdUxnRFVuMXJhak5j?=
 =?utf-8?B?enlKdTFDa2FuNDZjc0xBb2llRUgzN2MwVDdCc1l3QktHNEtxK2toUndLdWRZ?=
 =?utf-8?B?Rm9QRkdTMDZpOEkwTFdrMFp1WEhWSVVOczl0Q3l3LzVNWWR1dnlVS1NtVEZz?=
 =?utf-8?B?c0E9PQ==?=
Content-Type: multipart/mixed;
        boundary="_002_PAXPR02MB721437B523D36018F989DD6D8F969PAXPR02MB7214eurp_"
MIME-Version: 1.0
X-OriginatorOrg: sap.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PAXPR02MB7214.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f586db77-ecb1-4ed4-9f68-08da706d67f9
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jul 2022 07:47:22.4036
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 42f7676c-f455-423c-82f6-dc2d99791af7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9kc/0ck/lOhvxR2K5FLiMV3/1CMQ99qPhnGU0CDJS5tyaINe2GpTU7fNjSHQdUwPXC6fJZXvlp2M8cyl/tvIYpDQ87wM+dM45zpEHu92C3I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0202MB2789
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FORGED_SPF_HELO,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_NONE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--_002_PAXPR02MB721437B523D36018F989DD6D8F969PAXPR02MB7214eurp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgQWxleCwNCg0Kc29ycnkgZm9yIHRoZSBwYXRjaCBpc3N1ZS4gSSdtIHN0dWNrIGhlcmUgd2l0
aCBPdXRsb29rIGZvciB0aGUgdGltZSBiZWluZywgYnV0IGxldCBtZSBnaXZlIGl0IGFub3RoZXIg
c2hvdC4gSSdsbCBhbHNvIGF0dGFjaCBpdCBhcyBhIGZpbGUuDQoNCg0KRnJvbSBkYjFlNzA2MGE1
ZGI0NWE2Zjg2NzhlYTAwMTczMzUxODI4OGZhNTE4IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQ0K
RnJvbTogUm9iZXJ0IFNjaG5laWRlciA8cm9iZXJ0LnNjaG5laWRlcjAzQHNhcC5jb20+DQpEYXRl
OiBUaHUsIDI4IEp1bCAyMDIyIDA3OjQwOjU2ICswMDAwDQpTdWJqZWN0OiBbUEFUQ0hdIFJMSU1J
VF9OUFJPQyBhbHNvIGlnbm9yZWQgZm9yIHJ1aWQgMA0KDQotLS0NCiBtYW4yL2dldHJsaW1pdC4y
IHwgMyArKy0NCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0p
DQoNCmRpZmYgLS1naXQgYS9tYW4yL2dldHJsaW1pdC4yIGIvbWFuMi9nZXRybGltaXQuMg0KaW5k
ZXggMzczNjIyMDc3Li4yNmJhN2Q2OGMgMTAwNjQ0DQotLS0gYS9tYW4yL2dldHJsaW1pdC4yDQor
KysgYi9tYW4yL2dldHJsaW1pdC4yDQpAQCAtMzQyLDcgKzM0Miw4IEBAIGxpbWl0IGlzIG5vdCBl
bmZvcmNlZCBmb3IgcHJvY2Vzc2VzIHRoYXQgaGF2ZSBlaXRoZXIgdGhlDQogLkIgQ0FQX1NZU19B
RE1JTg0KIG9yIHRoZQ0KIC5CIENBUF9TWVNfUkVTT1VSQ0UNCi1jYXBhYmlsaXR5Lg0KK2NhcGFi
aWxpdHksDQorb3IgcnVuIHdpdGggcmVhbCB1c2VyIElEIDAuDQogLlRQDQogLkIgUkxJTUlUX1JT
Uw0KIFRoaXMgaXMgYSBsaW1pdCAoaW4gYnl0ZXMpIG9uIHRoZSBwcm9jZXNzJ3MgcmVzaWRlbnQg
c2V0DQotLSANCjIuMzUuMQ0KDQoNClJvYmVydA0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0t
LQ0KRnJvbTogQWxlamFuZHJvIENvbG9tYXIgPGFseC5tYW5wYWdlc0BnbWFpbC5jb20+IA0KU2Vu
dDogMjYgSnVseSAyMDIyIDIxOjE5DQpUbzogU2NobmVpZGVyLCBSb2JlcnQgPHJvYmVydC5zY2hu
ZWlkZXIwM0BzYXAuY29tPjsgRXJpYyBQYXJpcyA8ZXBhcmlzQHJlZGhhdC5jb20+OyBBbmRyZXcg
TW9ydG9uIDxha3BtQGxpbnV4LWZvdW5kYXRpb24ub3JnPjsgRGF2aWQgSG93ZWxscyA8ZGhvd2Vs
bHNAcmVkaGF0LmNvbT4NCkNjOiBsaW51eC1tYW5Admdlci5rZXJuZWwub3JnOyBtdGsubWFucGFn
ZXNAZ21haWwuY29tDQpTdWJqZWN0OiBSZTogW3BhdGNoXSBSTElNSVRfTlBST0Mgbm90IGVuZm9y
Y2VkIGZvciByb290IHVzZXIsIGlycmVzcGVjdGl2ZSBjYXBhYmlsaXRpZXMNCg0KSGkgUm9iZXJ0
LA0KDQpPbiA3LzExLzIyIDE0OjMzLCBTY2huZWlkZXIsIFJvYmVydCB3cm90ZToNCj4gSGkgZXZl
cnlvbmUsDQo+IA0KPiBJIGhvcGUgeW91IGRvbid0IG1pbmQgbWUgYXNraW5nIGFnYWluIDopIEkg
d291bGQgcmVhbGx5IGFwcHJlY2lhdGUgaWYgDQo+IHlvdSBjb3VsZCB0YWtlIHNvbWUgdGltZSB0
byByZXZpZXcgbXkgbWFuLXBhZ2UgZml4Og0KPiANCj4+IEkndmUgbm90aWNlZCB0aGF0IHVpZCAw
IGlnbm9yZXMgUkxJTUlUX05QUk9DIGV2ZW4gaWYgaXQgZG9lc24ndCBoYXZlIG5laXRoZXIgQ0FQ
X1NZU19BRE1JTiBub3IgQ0FQX1NZU19SRVNPVVJDRS4NCj4+IFRoZSBjb3JyZXNwb25kaW5nIGtl
cm5lbCBjb2RlIGlzIGluIGtlcm5lbC9mb3JrLmMgbGluZSAyMTAwLCBhbmQgSSdtIA0KPj4gbm90
IHN1cmUgaWYgcC0+cmVhbF9jcmVhZC0+dXNlciAhPSBJTklUX1VTRVIgcmVhbGx5IGNoZWNrcyB0
aGUgcnVpZC4NCj4gDQo+IA0KPiBUaGFua3MgYWdhaW4sDQo+IFJvYmVydA0KDQoNCkkgdHJpZWQg
dG8gYXBwbHkgdGhlIHBhdGNoLCB3aGVuIEkgbm90aWNlZCB0aGF0IHRoZSBmb3JtYXQgaXMgbm90
IHBsYWluIHRleHQuICAoQW5kIGdpdCByZWZ1c2VzIHRvIGFwcGx5IGl0LikNCg0KQ291bGQgeW91
IHBsZWFzZSByZXNlbmQgaXQgbWFraW5nIHN1cmUgdGhhdCBpdCdzIHBsYWluIHRleHQ/DQpnaXQt
Zm9ybWF0LXBhdGNoKDEpIGluIGNvbWJpbmF0aW9uIHdpdGggZ2l0LXNlbmQtZW1haWwoMSkgbWln
aHQgaGVscC4NCg0KT3RoZXJ3aXNlLCBJIGNhbiB0cnkgdG8gYXBwbHkgaXQgbWFudWFsbHkuLi4N
Cg0KVGhhbmtzLA0KDQpBbGV4DQo+IA0KPiANCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0N
Cj4gRnJvbTogQWxlamFuZHJvIENvbG9tYXIgPGFseC5tYW5wYWdlc0BnbWFpbC5jb20+DQo+IFNl
bnQ6IDE1IEp1bmUgMjAyMiAxODoyNw0KPiBUbzogRXJpYyBQYXJpcyA8ZXBhcmlzQHJlZGhhdC5j
b20+OyBBbmRyZXcgTW9ydG9uIA0KPiA8YWtwbUBsaW51eC1mb3VuZGF0aW9uLm9yZz47IERhdmlk
IEhvd2VsbHMgPGRob3dlbGxzQHJlZGhhdC5jb20+DQo+IENjOiBsaW51eC1tYW5Admdlci5rZXJu
ZWwub3JnOyBtdGsubWFucGFnZXNAZ21haWwuY29tOyBTY2huZWlkZXIsIA0KPiBSb2JlcnQgPHJv
YmVydC5zY2huZWlkZXIwM0BzYXAuY29tPg0KPiBTdWJqZWN0OiBSZTogW3BhdGNoXSBSTElNSVRf
TlBST0Mgbm90IGVuZm9yY2VkIGZvciByb290IHVzZXIsIA0KPiBpcnJlc3BlY3RpdmUgY2FwYWJp
bGl0aWVzDQo+IA0KPiBIaSBFcmljLCBBbmRyZXcsIGFuZCBEYXZpZCwNCj4gDQo+IE9uIDYvMTUv
MjIgMTg6MDQsIFNjaG5laWRlciwgUm9iZXJ0IHdyb3RlOg0KPj4gSGksDQo+Pg0KPj4gSSd2ZSBu
b3RpY2VkIHRoYXQgdWlkIDAgaWdub3JlcyBSTElNSVRfTlBST0MgZXZlbiBpZiBpdCBkb2Vzbid0
IGhhdmUgbmVpdGhlciBDQVBfU1lTX0FETUlOIG5vciBDQVBfU1lTX1JFU09VUkNFLg0KPj4gVGhl
IGNvcnJlc3BvbmRpbmcga2VybmVsIGNvZGUgaXMgaW4ga2VybmVsL2ZvcmsuYyBsaW5lIDIxMDAs
DQo+PiBodHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51eC9sYXRlc3Qvc291cmNlL2tlcm5l
bC9mb3JrLmMjTDIxMDANCj4+DQo+PiAgICAgICAgICAgaWYgKGlzX3Vjb3VudHNfb3ZlcmxpbWl0
KHRhc2tfdWNvdW50cyhwKSwgVUNPVU5UX1JMSU1JVF9OUFJPQywgcmxpbWl0KFJMSU1JVF9OUFJP
QykpKSB7DQo+PiAgICAgICAgICAgICAgICAgICBpZiAocC0+cmVhbF9jcmVkLT51c2VyICE9IElO
SVRfVVNFUiAmJg0KPj4gICAgICAgICAgICAgICAgICAgICAgICFjYXBhYmxlKENBUF9TWVNfUkVT
T1VSQ0UpICYmICFjYXBhYmxlKENBUF9TWVNfQURNSU4pKQ0KPj4gICAgICAgICAgICAgICAgICAg
ICAgICAgICBnb3RvIGJhZF9mb3JrX2NsZWFudXBfY291bnQ7DQo+PiAgICAgICAgICAgfSA+IEkg
ZG9uJ3QgdW5kZXJzdGFuZCBfd2h5XyB1aWQgMCBpcyBleGNsdWRlZCBpbiBzdWNoIGEgDQo+PiB3
YXksIGFuZCBJJ20gbm90DQo+IHN1cmUgaWYgcC0+cmVhbF9jcmVhZC0+dXNlciAhPSBJTklUX1VT
RVIgcmVhbGx5IGNoZWNrcyB0aGUgcnVpZC4NCj4+IEFueXdheSwgaGVyZSdzIGEgcGF0Y2ggZm9y
IHRoZSBtYW4gcGFnZSBvZiBnZXRybGltaXQgdGhhdCB3b3VsZCBoYXZlIA0KPj4gaGVscGVkIG1l
IHNhdmUgc29tZSB0cm91YmxlIDopDQo+Pg0KPiANCj4gQ291bGQgeW91IHBsZWFzZSBjb25maXJt
IHRoYXQgdGhpcyBtYW51YWwgcGFnZSB1cGRhdGUgaXMgcHJlY2lzZT8NCj4gDQo+IFRoYW5rcywN
Cj4gDQo+IEFsZXgNCj4gDQo+Pg0KPj4gZGlmZiAtLWdpdCBhL21hbjIvZ2V0cmxpbWl0LjIgYi9t
YW4yL2dldHJsaW1pdC4yIGluZGV4DQo+PiA2NDhmZDNjODUuLjcyNjg1NTZlNiAxMDA2NDQNCj4+
IC0tLSBhL21hbjIvZ2V0cmxpbWl0LjINCj4+ICsrKyBiL21hbjIvZ2V0cmxpbWl0LjINCj4+IEBA
IC0zNTksNyArMzU5LDggQEAgbGltaXQgaXMgbm90IGVuZm9yY2VkIGZvciBwcm9jZXNzZXMgdGhh
dCBoYXZlIGVpdGhlciB0aGUNCj4+ICAgIC5CIENBUF9TWVNfQURNSU4NCj4+ICAgIG9yIHRoZQ0K
Pj4gICAgLkIgQ0FQX1NZU19SRVNPVVJDRQ0KPj4gLWNhcGFiaWxpdHkuDQo+PiArY2FwYWJpbGl0
eSwNCj4+ICtvciBydW4gd2l0aCByZWFsIHVzZXIgSUQgMC4NCj4+ICAgIC5UUA0KPj4gICAgLkIg
UkxJTUlUX1JTUw0KPj4gICAgVGhpcyBpcyBhIGxpbWl0IChpbiBieXRlcykgb24gdGhlIHByb2Nl
c3MncyByZXNpZGVudCBzZXQNCj4+DQo+Pg0KPj4gUm9iZXJ0DQo+IA0KPiAtLQ0KPiBBbGVqYW5k
cm8gQ29sb21hcg0KPiA8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQoNCi0tDQpB
bGVqYW5kcm8gQ29sb21hcg0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--_002_PAXPR02MB721437B523D36018F989DD6D8F969PAXPR02MB7214eurp_
Content-Type: application/octet-stream;
	name="0001-RLIMIT_NPROC-also-ignored-for-ruid-0.patch"
Content-Description: 0001-RLIMIT_NPROC-also-ignored-for-ruid-0.patch
Content-Disposition: attachment;
	filename="0001-RLIMIT_NPROC-also-ignored-for-ruid-0.patch"; size=693;
	creation-date="Thu, 28 Jul 2022 07:46:00 GMT";
	modification-date="Thu, 28 Jul 2022 07:47:21 GMT"
Content-Transfer-Encoding: base64

RnJvbSBkYjFlNzA2MGE1ZGI0NWE2Zjg2NzhlYTAwMTczMzUxODI4OGZhNTE4IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBSb2JlcnQgU2NobmVpZGVyIDxyb2JlcnQuc2NobmVpZGVyMDNA
c2FwLmNvbT4KRGF0ZTogVGh1LCAyOCBKdWwgMjAyMiAwNzo0MDo1NiArMDAwMApTdWJqZWN0OiBb
UEFUQ0hdIFJMSU1JVF9OUFJPQyBhbHNvIGlnbm9yZWQgZm9yIHJ1aWQgMAoKLS0tCiBtYW4yL2dl
dHJsaW1pdC4yIHwgMyArKy0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVs
ZXRpb24oLSkKCmRpZmYgLS1naXQgYS9tYW4yL2dldHJsaW1pdC4yIGIvbWFuMi9nZXRybGltaXQu
MgppbmRleCAzNzM2MjIwNzcuLjI2YmE3ZDY4YyAxMDA2NDQKLS0tIGEvbWFuMi9nZXRybGltaXQu
MgorKysgYi9tYW4yL2dldHJsaW1pdC4yCkBAIC0zNDIsNyArMzQyLDggQEAgbGltaXQgaXMgbm90
IGVuZm9yY2VkIGZvciBwcm9jZXNzZXMgdGhhdCBoYXZlIGVpdGhlciB0aGUKIC5CIENBUF9TWVNf
QURNSU4KIG9yIHRoZQogLkIgQ0FQX1NZU19SRVNPVVJDRQotY2FwYWJpbGl0eS4KK2NhcGFiaWxp
dHksCitvciBydW4gd2l0aCByZWFsIHVzZXIgSUQgMC4KIC5UUAogLkIgUkxJTUlUX1JTUwogVGhp
cyBpcyBhIGxpbWl0IChpbiBieXRlcykgb24gdGhlIHByb2Nlc3MncyByZXNpZGVudCBzZXQKLS0g
CjIuMzUuMQoK

--_002_PAXPR02MB721437B523D36018F989DD6D8F969PAXPR02MB7214eurp_--
