Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 42FB7570225
	for <lists+linux-man@lfdr.de>; Mon, 11 Jul 2022 14:33:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229687AbiGKMdc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 11 Jul 2022 08:33:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57592 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231253AbiGKMd2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 11 Jul 2022 08:33:28 -0400
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (mail-vi1eur05on2083.outbound.protection.outlook.com [40.107.21.83])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 90905509F2
        for <linux-man@vger.kernel.org>; Mon, 11 Jul 2022 05:33:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aGJOpxvv0NnkitUqFtL6sTTzFfJRh4q0F9ITw1Mkq0LOtXfbFf30jf/T20bMKVPWNvhWj1GdD7juFSYKExFp0zYf2htOAxwfH5gGIz6wo7JicIBSkxpWtrEFaAS7kg7K8DQ8ahONgjqGLaPXbp9vgw7etpud8JPf4hjWEaCAC7zBubVfLL5In3KnxjEvjth7oP8sqDoXA8/Dq1clL7WLOBsICkpZVj9mrdUE3/Lk9mL1rwZXdCHQYO1ZSDUUckFPwol/I3ADuK6QfyJcRdpEYfdAixIYXUHrDQqDAjz4eBoyjtdsytH2VtCh/aFVNGyFF1E8Xt3QUtT96dzVgTQxvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZIXyUkojiYFDUBGLYkf9Ex0bbHDuDNNkk8DNtCkHo6E=;
 b=G9m7oHDdUrFqwaUARHC/A9dBCiL4LLOyvr3U2OJV1tXNWgaaL34q72i5G/JVJdeooQ797XhFPjG72GSoCOeFbS6n5wWnaM7ZSzwhd3Im9Muejz02Io7acIQlzO0IWHk57lKgygNPbtZp4zrR6TE1TQ/KQoqD9LXg1yyCTjTfOdp3Y2wLpm+y/+qgoOZ0c+0XXKY0LsremJ84//qH0rCACfA4Bl9xiwpOgCXAhnaxzty6RIOfph59vLqHaCmYYIBtec6sWoWX9xzouyReJop415nuPrAy3+v/lfQspYWEm61R42taelWFZel9hHoKEKPUysoid+G/8/obatasvbdotQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sap.com; dmarc=pass action=none header.from=sap.com; dkim=pass
 header.d=sap.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sap.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZIXyUkojiYFDUBGLYkf9Ex0bbHDuDNNkk8DNtCkHo6E=;
 b=FtzXpc3zAnWpGTwUiFciFruTpVAA2wA7rg6BEJihqNCD7sUr2Arzou37tafc4RIi7VQqPJzTqa9mNTSXrTHNQv1wlU8k9sgiPpqWlBxsGdY5xKtwMjZHmMtS1b8Iu4fo7GQfLqCBBxuFKpt1egBcWoh5SyIIjhOKH2m3Byq2WzaVX+Z0TswKUosiEtpxZLl3zWmyqyeDXywQ4ujiAD+jesqGz14rtQTo8H2az3u6TAzz2HRSRYp/Gxf+bl1u4To1UOMgEYRMgZYGmBlBHpIAJorNjLRlipksFXsoIF+6UA0DxkiCfFb9xukMtVpf+v6QI3dRF61H6wqw9grhWwe12g==
Received: from PAXPR02MB7214.eurprd02.prod.outlook.com (2603:10a6:102:1cf::8)
 by AM7PR02MB6035.eurprd02.prod.outlook.com (2603:10a6:20b:1a2::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.23; Mon, 11 Jul
 2022 12:33:21 +0000
Received: from PAXPR02MB7214.eurprd02.prod.outlook.com
 ([fe80::7c54:e50f:3182:a951]) by PAXPR02MB7214.eurprd02.prod.outlook.com
 ([fe80::7c54:e50f:3182:a951%8]) with mapi id 15.20.5417.026; Mon, 11 Jul 2022
 12:33:21 +0000
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
Thread-Index: AdiA0YOYWpD0HTd5R7e2cMxv2Z3dGAAAygiABRM0HjA=
Date:   Mon, 11 Jul 2022 12:33:21 +0000
Message-ID: <PAXPR02MB7214288BB38033ACE0DBE35E8F879@PAXPR02MB7214.eurprd02.prod.outlook.com>
References: <PAXPR02MB72147C88F7E9F82CC1AA577F8FAD9@PAXPR02MB7214.eurprd02.prod.outlook.com>
 <9e740310-6a05-5a05-b403-98369960830e@gmail.com>
In-Reply-To: <9e740310-6a05-5a05-b403-98369960830e@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-processedbytemplafy: true
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=sap.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 27f8b82a-1253-437d-270e-08da63398a91
x-ms-traffictypediagnostic: AM7PR02MB6035:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: n4WBv7fquen/gF9ewy4cHIvcZqhZHbsIFzLEnjejXqmB/C+M8f9HoxCK6LDJV3ppuRe5nZHFnXI2fjjRRkCZ99cQqihDwF1gm0/V/mQsA5KuT7hvei9W0iy2Obu4+bV5l8BHrJ1h2QrZKojkxjPouSYKPsGE7g7qbAsdJWe3IfQmGq2PVHU3QA4qwBa4xzyRYWYT/i9j+33a6XVnQiCyzmV2ARUX+50lUjW7OHki2AYJgYxpCPPbKukyjHy6E+dpo0ma9SdI0Buke5k7DEQn4M6NeLk/8rGnvgb5dOCSlEPWLjTqyixM3KCSxaTK87Jcj1d4yyA5w3p/dP9PCw1Yr8PqnyJzTzE8uIZMzHeC4s2oOaHYIXKWFA8yhuxyG/xwWnGcySo9Y9WbzGaCYPY+B4m2Jb6KkRlCgwoxsw0DuxTtlricR6Up9P2f+OL/jml+fr+9pcxlSYWA/4Kpl6yiCsdiq2XcWIzsH2lJpiGHOU4TBm1xojLzDIJHeddECqU2wIfoU9AdkaQMpJmS2A1EdFSHCXOO5/TZRBZOuM+hVvD67CiSGfFTrHiG762AQkrpAYYa1pXH1C/2zqhC082oIVU1mQw/DWg/2fv15s8BmbQ2WCygHb9K9NnX9SPqxHoCnZkKZYbLb9Wx2mVb/r6tM33It3JdxqXhBg8RJoSTihCf49L+x8vepOiq5O2kTQjGt+W47llm0yR1J8PazKEzMPWRylRM8B6BBCVKumYpjjiYoqp3hZhoDbl0Pgm8QUUHAdA8hPCnCKqciJtKcAhE2ycYZaal2hGdMjj5mq/pmyEkiiDfXkcTf00DeRUMwrsxSOUJTPwiXEl+PBRokcGJcw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR02MB7214.eurprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(366004)(376002)(136003)(396003)(39860400002)(346002)(54906003)(33656002)(26005)(186003)(478600001)(55016003)(83380400001)(5660300002)(8936002)(71200400001)(38100700002)(316002)(52536014)(966005)(6506007)(7696005)(38070700005)(76116006)(41300700001)(53546011)(2906002)(66476007)(8676002)(66946007)(64756008)(82960400001)(4326008)(9686003)(66556008)(66446008)(122000001)(86362001)(110136005);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MGhCSTRyWWZzVHNjUDduY2xkOFFNd0lOTGJ6WVMrM3V3a0VzOWtueWF5Rnhn?=
 =?utf-8?B?Um4yb3BOWHpWNVFyQUx3WWg5NTBPRVFmQjIvdmEzY2tlOXZLZXFRbzl2ZkZa?=
 =?utf-8?B?SlhIWmFoRmhQTCtzeEIrQjI0OEFLSjRxVVJnaEltQ2phOFJoRUFET2Fqc2o2?=
 =?utf-8?B?ZU1oZ2YrbHdxYVM4OWV0R2NuN1d5UG4zVmxMdUdjVnl1NGtCbm5Gc3FmK0xE?=
 =?utf-8?B?UTczSmtEMTBkY3p5dkFGME9IZU1VNWFxR1FNZXBwMnJWZy96UmFWelkrQy85?=
 =?utf-8?B?YmxyNEh1M2FwK1J4cndwYUUyRDdodGNrMHFyNkE4ZE1sY2hwai9XODhEMTRM?=
 =?utf-8?B?cjdPTy8zTXphU1ZscXdzTElsOXdSakZIMlpQSmxQOGkwRDNvTHFiblQ3UURo?=
 =?utf-8?B?aCtTV3BGMGtXeWVrYnoybXFtR2gwVEdNOWlSck4rR29xa2doZFlIYXVVbms5?=
 =?utf-8?B?d01lVHFLcVlnUXhvNE5nV2MwcGs1MUt1eFlLbnRRTW0yZVlnWGgrL2M1U1ZX?=
 =?utf-8?B?dkloaHhNYWFsbmJsaG5SakVlRGZ6TTJCbXJ1WitqL0F5b09DdGNxN2NxQmhL?=
 =?utf-8?B?d0duUkdxaUhydDNmWnpGeGRCamc3clNMSDJ2azIxQzROa0pZRzZ3dkFxNXp3?=
 =?utf-8?B?aTBWUHVFU1NIRERlTThqK2dIRkNBWnFHbXBnRHhXY2tqUzljVmhYUnhQbzZt?=
 =?utf-8?B?NDhSZFNTMi95WmtpTlg2bUpwNlhRNWNBKzFnTXg1ZjZpa0wvbjFiQTR0WHB2?=
 =?utf-8?B?RDBaQlMrUjJOYm1kOVY3dGFPM3ZoWUV4QzFkK3JzWGhDNHRMR2lJdFRQWU5P?=
 =?utf-8?B?dnVWVUNlNVNJZDdITDRBQmFqL2FkWTdqQ0JHaUM1VDZOL2dwWXo3V1RnZTdK?=
 =?utf-8?B?YTV1QmxlWStDK2c4ckszWTltbzFTYXl2YzF5YjYwanl1TmZOLy9aTmFNNmM0?=
 =?utf-8?B?OG54VFlncVh2OTFBeDVRYWxvYTNidVVrM0ljZEwvR2Z3ejFlL0VWZ3hEOGxy?=
 =?utf-8?B?M0VNdjFjT0pDTFUveU0zT1ZBVjZSUENXbitZd0FOeUJPaVllbFROVXovWUkz?=
 =?utf-8?B?a2VjWU5uVHFOcWc2cTVHc1FrWTVoak5FcHpOUkg2bm5EVWp6RUR5d1Y1ZTZ4?=
 =?utf-8?B?YkNzYVZFUmtja3FZbExHcXQvalBvR1ZnbUNpaGtMdWE0SDRjcUlsbzFLdExn?=
 =?utf-8?B?eTN2WWJLWjBleFNjQXNSSHQ2M3pZeWlNQlh5R216dmErSjJoUjREZzQyQklQ?=
 =?utf-8?B?MkpERnFzYnNNUWlNVWhYbWY0NDQwU21PdkhyQytBUXdFYVBERUhTVXk2ZlVT?=
 =?utf-8?B?QnZBSkFMRzgzU05PaGM2ZWR5SmdwemV2RXRKVUdsSXZJS0tZcmhMQUh2Sm1o?=
 =?utf-8?B?ZWRwV3hSZWc0NXV6VitxZ25uRXdCUmlYd3UzN1BJa2FKUTIyandYVytOZk1B?=
 =?utf-8?B?Q002cysydVNOY2N5UkU2VGNFTWh1N0VCZHlXRGozME1KVmc5SFl0M2tiRW9I?=
 =?utf-8?B?czIrbE1YQkZoV2RtanpOVUw2S2N6L2Q0MEtnNU9BeTBudWYrdVBwQUpza2dP?=
 =?utf-8?B?S1ZZTUEveVQvSWV5SjlGei9Ic0xUbndoOUVZRkxzMUtSTjk3Vkt6czJvNTF6?=
 =?utf-8?B?UFF0T2k0TERoN0YvcmpDR3NOVXBnUDVxbmQ0SHBiNG5rTzhCT3E2N1VMNzAw?=
 =?utf-8?B?a2puRit4d0xUcXJYTHN4VW1reTBDWHRFVFRXd3c2b05aUnhUckozMUFhRkUz?=
 =?utf-8?B?ejhIUG1zSnplQmh2UVE4UnBENURmbHNwaXFYb1lIeUx3RVJ3Zno4YU55bEhE?=
 =?utf-8?B?dU0yK2YwWGxBeUJzSXRCNFBsK1NBejA0dlR3a1ppOW5GV0ZTclN6SjljY2ZZ?=
 =?utf-8?B?WWFoWDE2M3VQM2pCM2NORmtpNEE0b3EyQmRiTFQ1NWhyc2hhTFlHb0NTMEpL?=
 =?utf-8?B?Sm4xdk4vTHlud0V5aGU4clZXbGdtQmdINW0yVWJ2anp4NFVoV3VteUNiSnZr?=
 =?utf-8?B?UEVCY2lQQ1daMWQyTzZraXJyTjVWaFNpUlovSVR5TFNaRTJybGNCU050WVRP?=
 =?utf-8?B?TVFFVzdNSzJUU3BjRFdmdWJ0VFpkSDkvd0xIMmJMZW9yZjF6MElzTThsRXIr?=
 =?utf-8?B?cTR4OTgvckVua2pESkNadTBzSW0xc0RWTUpCeDgxa2FkYWJSclN0emlWRFNC?=
 =?utf-8?B?RHc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: sap.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PAXPR02MB7214.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 27f8b82a-1253-437d-270e-08da63398a91
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jul 2022 12:33:21.5244
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 42f7676c-f455-423c-82f6-dc2d99791af7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6yqoXWkF67Xtwobv1hbfHwV3kXGzyP28zsUq6/uVa0gZt9X8BubNTOOa3AUwUIsz80fruTQSi6um0eMhke60dKOsL9PAem62daFdgoIWaC4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR02MB6035
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FORGED_SPF_HELO,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

SGkgZXZlcnlvbmUsDQoNCkkgaG9wZSB5b3UgZG9uJ3QgbWluZCBtZSBhc2tpbmcgYWdhaW4gOikN
Ckkgd291bGQgcmVhbGx5IGFwcHJlY2lhdGUgaWYgeW91IGNvdWxkIHRha2Ugc29tZSB0aW1lIHRv
IHJldmlldyBteSBtYW4tcGFnZSBmaXg6DQoNCj4gSSd2ZSBub3RpY2VkIHRoYXQgdWlkIDAgaWdu
b3JlcyBSTElNSVRfTlBST0MgZXZlbiBpZiBpdCBkb2Vzbid0IGhhdmUgbmVpdGhlciBDQVBfU1lT
X0FETUlOIG5vciBDQVBfU1lTX1JFU09VUkNFLg0KPiBUaGUgY29ycmVzcG9uZGluZyBrZXJuZWwg
Y29kZSBpcyBpbiBrZXJuZWwvZm9yay5jIGxpbmUgMjEwMCwNCj4gYW5kIEknbSBub3Qgc3VyZSBp
ZiBwLT5yZWFsX2NyZWFkLT51c2VyICE9IElOSVRfVVNFUiByZWFsbHkgY2hlY2tzIHRoZSBydWlk
Lg0KDQoNClRoYW5rcyBhZ2FpbiwNClJvYmVydA0KDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0t
LS0tDQpGcm9tOiBBbGVqYW5kcm8gQ29sb21hciA8YWx4Lm1hbnBhZ2VzQGdtYWlsLmNvbT4gDQpT
ZW50OiAxNSBKdW5lIDIwMjIgMTg6MjcNClRvOiBFcmljIFBhcmlzIDxlcGFyaXNAcmVkaGF0LmNv
bT47IEFuZHJldyBNb3J0b24gPGFrcG1AbGludXgtZm91bmRhdGlvbi5vcmc+OyBEYXZpZCBIb3dl
bGxzIDxkaG93ZWxsc0ByZWRoYXQuY29tPg0KQ2M6IGxpbnV4LW1hbkB2Z2VyLmtlcm5lbC5vcmc7
IG10ay5tYW5wYWdlc0BnbWFpbC5jb207IFNjaG5laWRlciwgUm9iZXJ0IDxyb2JlcnQuc2NobmVp
ZGVyMDNAc2FwLmNvbT4NClN1YmplY3Q6IFJlOiBbcGF0Y2hdIFJMSU1JVF9OUFJPQyBub3QgZW5m
b3JjZWQgZm9yIHJvb3QgdXNlciwgaXJyZXNwZWN0aXZlIGNhcGFiaWxpdGllcw0KDQpIaSBFcmlj
LCBBbmRyZXcsIGFuZCBEYXZpZCwNCg0KT24gNi8xNS8yMiAxODowNCwgU2NobmVpZGVyLCBSb2Jl
cnQgd3JvdGU6DQo+IEhpLA0KPiANCj4gSSd2ZSBub3RpY2VkIHRoYXQgdWlkIDAgaWdub3JlcyBS
TElNSVRfTlBST0MgZXZlbiBpZiBpdCBkb2Vzbid0IGhhdmUgbmVpdGhlciBDQVBfU1lTX0FETUlO
IG5vciBDQVBfU1lTX1JFU09VUkNFLg0KPiBUaGUgY29ycmVzcG9uZGluZyBrZXJuZWwgY29kZSBp
cyBpbiBrZXJuZWwvZm9yay5jIGxpbmUgMjEwMCwNCj4gaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5j
b20vbGludXgvbGF0ZXN0L3NvdXJjZS9rZXJuZWwvZm9yay5jI0wyMTAwDQo+IA0KPiAgICAgICAg
ICBpZiAoaXNfdWNvdW50c19vdmVybGltaXQodGFza191Y291bnRzKHApLCBVQ09VTlRfUkxJTUlU
X05QUk9DLCBybGltaXQoUkxJTUlUX05QUk9DKSkpIHsNCj4gICAgICAgICAgICAgICAgICBpZiAo
cC0+cmVhbF9jcmVkLT51c2VyICE9IElOSVRfVVNFUiAmJg0KPiAgICAgICAgICAgICAgICAgICAg
ICAhY2FwYWJsZShDQVBfU1lTX1JFU09VUkNFKSAmJiAhY2FwYWJsZShDQVBfU1lTX0FETUlOKSkN
Cj4gICAgICAgICAgICAgICAgICAgICAgICAgIGdvdG8gYmFkX2ZvcmtfY2xlYW51cF9jb3VudDsN
Cj4gICAgICAgICAgfSA+IEkgZG9uJ3QgdW5kZXJzdGFuZCBfd2h5XyB1aWQgMCBpcyBleGNsdWRl
ZCBpbiBzdWNoIGEgd2F5LCANCj4gYW5kIEknbSBub3QNCnN1cmUgaWYgcC0+cmVhbF9jcmVhZC0+
dXNlciAhPSBJTklUX1VTRVIgcmVhbGx5IGNoZWNrcyB0aGUgcnVpZC4NCj4gQW55d2F5LCBoZXJl
J3MgYSBwYXRjaCBmb3IgdGhlIG1hbiBwYWdlIG9mIGdldHJsaW1pdCB0aGF0IHdvdWxkIGhhdmUg
DQo+IGhlbHBlZCBtZSBzYXZlIHNvbWUgdHJvdWJsZSA6KQ0KPiANCg0KQ291bGQgeW91IHBsZWFz
ZSBjb25maXJtIHRoYXQgdGhpcyBtYW51YWwgcGFnZSB1cGRhdGUgaXMgcHJlY2lzZT8NCg0KVGhh
bmtzLA0KDQpBbGV4DQoNCj4gDQo+IGRpZmYgLS1naXQgYS9tYW4yL2dldHJsaW1pdC4yIGIvbWFu
Mi9nZXRybGltaXQuMiBpbmRleCANCj4gNjQ4ZmQzYzg1Li43MjY4NTU2ZTYgMTAwNjQ0DQo+IC0t
LSBhL21hbjIvZ2V0cmxpbWl0LjINCj4gKysrIGIvbWFuMi9nZXRybGltaXQuMg0KPiBAQCAtMzU5
LDcgKzM1OSw4IEBAIGxpbWl0IGlzIG5vdCBlbmZvcmNlZCBmb3IgcHJvY2Vzc2VzIHRoYXQgaGF2
ZSBlaXRoZXIgdGhlDQo+ICAgLkIgQ0FQX1NZU19BRE1JTg0KPiAgIG9yIHRoZQ0KPiAgIC5CIENB
UF9TWVNfUkVTT1VSQ0UNCj4gLWNhcGFiaWxpdHkuDQo+ICtjYXBhYmlsaXR5LA0KPiArb3IgcnVu
IHdpdGggcmVhbCB1c2VyIElEIDAuDQo+ICAgLlRQDQo+ICAgLkIgUkxJTUlUX1JTUw0KPiAgIFRo
aXMgaXMgYSBsaW1pdCAoaW4gYnl0ZXMpIG9uIHRoZSBwcm9jZXNzJ3MgcmVzaWRlbnQgc2V0DQo+
IA0KPiANCj4gUm9iZXJ0DQoNCi0tDQpBbGVqYW5kcm8gQ29sb21hcg0KPGh0dHA6Ly93d3cuYWxl
amFuZHJvLWNvbG9tYXIuZXMvPg0K
