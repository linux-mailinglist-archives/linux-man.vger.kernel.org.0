Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CE3DB6DCBD4
	for <lists+linux-man@lfdr.de>; Mon, 10 Apr 2023 21:57:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229693AbjDJT5P (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 Apr 2023 15:57:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39928 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229618AbjDJT5O (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 10 Apr 2023 15:57:14 -0400
Received: from DM4PR02CU001.outbound.protection.outlook.com (mail-centralusazon11012008.outbound.protection.outlook.com [52.101.63.8])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B7C92E73
        for <linux-man@vger.kernel.org>; Mon, 10 Apr 2023 12:57:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nERyc12MNC9GqZrP6VMIIjqCCvZxzKYw1QrdfhyFqWqCtzBCGCxHtlhJwZ90Qdh6EAB3FVFR4oLmIgMZUL6aIPMvM9YUQZHGdTQ9OMf3/YoXOmoC5bzpTXtarHGduoSEjoZftcb3FqRiWrcFlCKp05E1ke+I5yqO6mjgmfVZBWoRzCdUsacChJEnZYrpBkf6suMsfKzfwpNKakcyKkKr6Xczgg5cBq5OZF4UifSAuThjjeiptLEfJhmFrBl43Ju0ozFb/q/W2ajAvnKRPGAgXKQylZtY9KbKTjcFap2C8msajqTtWsN1zls+s2fWtlT34LXS4Akf1gcguN7o+7ll3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jh0tn6hYwvkoPyG9bRYa8rDikfvSx4RFWvQgNkF5VYg=;
 b=e9R1k2zJMbxeNFH9kC+1Vk9KKkpdAhCwwCV5ttYRzvWEUS6O5Hv6r6BSHhs36yDb5PRSlFKqGcafdYYLgpasXbT1IUZ0D9H7A0Kzqp5An+3y/+6p/5EPRwF34RSgfPhnHmuq/Clne+SuVJrXu1feu7Xvc6g6238ABe+JDmdrAu1miUa/cbU81GU+EsRJ/6lIfQ7ROT25xJodKxXN9V9xUdQI73svLaMUaHwJ52KsUg7FF8g2hO83pFSnfDLZi2olWT2/F2JGClbmILbuhZ3WCdcv5KcBoBFQx4G2wwOfQ7yR48GKHgzfy2+SvfSBEGcbGOAYH4LrM8t74RENXV3snw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vmware.com; dmarc=pass action=none header.from=vmware.com;
 dkim=pass header.d=vmware.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vmware.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jh0tn6hYwvkoPyG9bRYa8rDikfvSx4RFWvQgNkF5VYg=;
 b=dbL5fI02QZOsZwIHhZOGzQeoWImWkH9uYnyhbLiJnCukNQ1AIBh0dju4R0Oy4sHyGNOHh01hcDFaMV1Qmw8BZ9LpiRntzpcv7JHGbYQIp1AjXibOmiL+szojGsA4sUnp/zr5WznY2wkTVUyht4q1mlODdxFLMUfh4K8e6vOA3N4=
Received: from BY3PR05MB8531.namprd05.prod.outlook.com (2603:10b6:a03:3ce::6)
 by CH0PR05MB10184.namprd05.prod.outlook.com (2603:10b6:610:184::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.36; Mon, 10 Apr
 2023 19:57:11 +0000
Received: from BY3PR05MB8531.namprd05.prod.outlook.com
 ([fe80::f1bc:4933:8701:7ff0]) by BY3PR05MB8531.namprd05.prod.outlook.com
 ([fe80::f1bc:4933:8701:7ff0%6]) with mapi id 15.20.6277.038; Mon, 10 Apr 2023
 19:57:11 +0000
From:   Nadav Amit <namit@vmware.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
CC:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "Michael Kerrisk )" <mtk.manpages@gmail.com>,
        Peter Xu <peterx@redhat.com>,
        David Hildenbrand <david@redhat.com>
Subject: Re: [PATCH 2/2] userfaultfd.2: fix userfaultfd_demo output
Thread-Topic: [PATCH 2/2] userfaultfd.2: fix userfaultfd_demo output
Thread-Index: AQHYMlPixrj1bjPEFE26v1rbqamWsK8j2P0AgAOPlAA=
Date:   Mon, 10 Apr 2023 19:57:11 +0000
Message-ID: <2C89D6DA-8B73-493F-95D7-456507D00EEE@vmware.com>
References: <20220307184852.20351-1-namit@vmware.com>
 <20220307184852.20351-2-namit@vmware.com>
 <5bce07b9-d4b7-8cb4-273d-72c3867682ba@gmail.com>
In-Reply-To: <5bce07b9-d4b7-8cb4-273d-72c3867682ba@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3731.500.231)
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vmware.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BY3PR05MB8531:EE_|CH0PR05MB10184:EE_
x-ms-office365-filtering-correlation-id: 34130bff-0e7d-4dea-b075-08db39fdc5ca
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: AXto5DLIqXTPuxrnk4nbH2JeASSsv9SuFi7FkysGEPvjo7jf8soziHtg2JlVXhn2pbbJTzlGTSghhBGQwvofzIBX3RDCDZ1NQ6S2xxETv2kyEI0UBmTux/dxn5KDx71H2keRwDJ4qbEbyRgInME2C67BO9vBe/TYNgNp+r3XvNfjjj0tDTQsxaEEVSPQ2zNbcvrkEieqm9NKTSsbMAxVqr475JvFQHB24dZ1WbXJkXhO/YuXhywV+y0SWHJkpLXUe3v7B0jxHJJ8GCnAq6ccQ5duWfQ2LnHqNt0lNXruo/+Myoxer0PXCMT6xRYAbOwOnRZQhddOD1UtCZ/pi+Gge9cW0giVZoCl9JWV/TUAsgGr5HXX/RKO6+2d2oq92BMGWLtNYcP+IN1eS0sPge15JyxUQhi1F69eip0sEl1DUHdByfGgGIffqAGqnv3KmzJ6vRAn2EiFpsXfN9jo2G2CKh8wyu/Z6y/D6wgSCnPOScb22EBy6dGRrsaqBB0Fs3BGqSSoDPxjXGepGA0a6I+v/mmKgde/ZC2A90iAE/JMHEpzEpPSj8HGj1EzFXOWX1mUqY41ZjpactQwG48hWo+IcJudtHL8cN6Kda8qwlT2COPhxfBGxyVVmC7vlep0hkAeXkqD4rnbilZ9LpGRX6FUkbuwmAT43HYYwHJiDa/LhOmI/8dDP9XLKWxL1tSJKB6S
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY3PR05MB8531.namprd05.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(346002)(136003)(376002)(366004)(39860400002)(396003)(451199021)(86362001)(36756003)(33656002)(6486002)(41300700001)(316002)(76116006)(6916009)(64756008)(478600001)(4326008)(66556008)(966005)(66446008)(66476007)(8676002)(66946007)(71200400001)(54906003)(5660300002)(2906002)(8936002)(38070700005)(38100700002)(122000001)(186003)(53546011)(6512007)(6506007)(26005)(2616005)(83380400001)(45980500001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OUQyYzVtOFRHV1lIR1A1UWdlUHRIRFM0OVdjRGxEencyb1ZGN1JrOUFJcFBF?=
 =?utf-8?B?WnYyb2lJN0Q2UnNoZmwrVVFrNFVTZWwwMWFPWDZYVHlyUTAxQ2NxTjlWZVNn?=
 =?utf-8?B?TXl0UTdQbW1LUmFZMVpjdWdwRityQ0M1cmEzaHkyMUJ6MHpSTnRnZkJIdzl2?=
 =?utf-8?B?YlR3UVRVdnRDaVYxWjRsb2dEcUlPQkx3V1kvOXRDQS9mTURqWjBvMHpEei83?=
 =?utf-8?B?eWhmVDdPUzJNRW5QTWs3bnl4bzBOSVFIYmZjdU9hQjI0VTF6UlN6Zm9JK2dv?=
 =?utf-8?B?WUNyRVJHeDJRSUdSZ2Y0NUhaMkd3d24yNVBpcFNHZHg2WU1qL0VoVkNMZ2hL?=
 =?utf-8?B?NmNqNDlMOExUblNTZUdMUm5xWHF1dTEvVnB2ZUxXMTZ2SmdjUWVvdmk4MzNL?=
 =?utf-8?B?Tk01NDQ3ZmgvZjBhc0FHUDlBYlpXdlJBbWVOTVUzM01reVQzMUV5b1hlMWhw?=
 =?utf-8?B?R2ZQQjZFSmVHaHdiTEZiem1FRU5kYVFRUEc2bWlMdDZINk5UamtqQVRzRmpS?=
 =?utf-8?B?VFFWT25ScjhtdWpOZjZVK0Y5OWQ2UWp1MEdoaWZxYlVRNXUyb2xxa2VlbEV0?=
 =?utf-8?B?ejQwSThKdlNkYVRCWkNyTittblc1NU9yUDl2VHZ3ejBPYUVEU2dhV21WeGVN?=
 =?utf-8?B?eXQ0NDVyWm41TVE2UlY1Skt1ZkMyL253MFFacjRZQmMrcy9JUDFFRDhuS2w4?=
 =?utf-8?B?RWFSLytJQXZ4bFZsd1NOZG4xL05NdklDRUdoaGg4OHBPTlZrNFFTOGJCL1N2?=
 =?utf-8?B?Yko5TDN2YWJrbzR5djhKQ1c4aTZwNFA0c0lMckRHdmJkUENuVmRseEtYS2c1?=
 =?utf-8?B?OVlLYmdzZ2J4eVBCMmFUdVBHUzg5akhTaThFREVzV0s5Vk13SnBNYlJzSE5J?=
 =?utf-8?B?L0UwMDFhV2lEeXhVejFBV1lraGhBWHNIbWd4VlNYc1hDdFNWKzlBUHB1bGVt?=
 =?utf-8?B?M1NOQnZZTTUxRjJjWDJISHp4RStZT1RuUVhaV2JSK1lVTkFGVUVod2pLWFFG?=
 =?utf-8?B?bGNmellNVXlyZ1Vxc25BSi95b1VrSzlUd25uMTZ6Vy8wRGNnSGpUcVJZTzFY?=
 =?utf-8?B?QVBJVnFRRHhrdDNBQW9SaDk5anpHU0gvMW1lSk1nMnV2a0VvQ1IycE5UYnBX?=
 =?utf-8?B?NlVwYjgvTjRqQnJLbUt3eEFsZDYzTXNpenNqZTMzSGs3QnJrcUI3T0hkN1ZK?=
 =?utf-8?B?Rmk1SFl0YnVpTFdoS1ZVYUJMbFI2NVhiSjVxcmhGN0VSdXgxWXQ5V1F1dmJu?=
 =?utf-8?B?enJNMlh2MC95d1JLYm1kRmQvU3djSUtoQ0ZaVXQrL2U5Z21CNlQ1RGJWY3NG?=
 =?utf-8?B?ZWZvMkZuK1RNb3QyMHVkNUJrOWc3VVBJKzdJajhaVG1zUEViaWRTSHZaUVBu?=
 =?utf-8?B?OVl3Rkx2dUZnSFc2Q2JFbys3TWo1NCtnV242NEQwN2pHYjYyNkxXRk9wTmxJ?=
 =?utf-8?B?aVdLazJzVVFwVFBBSFVucmdTVnRmWWJtUHVIUDBuWmxQa20yc2FEUXdkaHgr?=
 =?utf-8?B?K3FPYlkrdXVFTER0VHZ3bUtKRFBNWU9BTW1YMEt4SytERWl3cmp3U2FsSUh6?=
 =?utf-8?B?Wjg4MXEvdXgzNW5jemozbzY2NFQ5cFl6MHlJdSt2NVVoSkY2dm1TYVh4Zlh6?=
 =?utf-8?B?aUhFdjlVMHlaZ2Vvc2pqVDFudzBZdFYvU1puOEJXKzhjSzZxOUc4ZW1WRkxZ?=
 =?utf-8?B?K05Hdk8yUUVnRm1lWXdKWWMzVXdVQjMxWTZYTGdtSElsYkFtbExDSnFhaFhh?=
 =?utf-8?B?NVBYTVA4OGtDQkJFMUgvM0w4V1NkaDdtQ1Qyek1hSEl6SzVlVXZjaEdGTEln?=
 =?utf-8?B?QlNGTDBmVkYrUWxNVTRXY3RnclZTSG4xMENoUkliRmpDUzg4THhBbEtrbHhL?=
 =?utf-8?B?SlJ0VFRSSmFubXU3MVd1MENFZnk2Z2FkMzdNcWFmSTVYaVJ4bk5HN3MrSE1r?=
 =?utf-8?B?dTk1bmRzVDZRZGZVM2ZHejlzd2hlbHBaTXB4RzdlNDlraVJTcmhKVnpubHJE?=
 =?utf-8?B?MkpYWlNnTDJqNU0xM1VIV1RrajFZRUYybW93K25pNDB0dWF6eTNnSU9ONEcw?=
 =?utf-8?B?ODhPU0Nwd0VpZ1RwR3Zrb3NPV2hBUlpBWXZmOVlHM2RDaGJ2UzFFSlBFVk9m?=
 =?utf-8?Q?aaCm8AseFmgln88VCUoQakNBA?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <64BEA8390FA96441ADAF14A7076C6B05@namprd05.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: vmware.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY3PR05MB8531.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 34130bff-0e7d-4dea-b075-08db39fdc5ca
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Apr 2023 19:57:11.0798
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b39138ca-3cee-4b4a-a4d6-cd83d9dd62f0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: es8JU1HIvM470uhJMCqJopYwt8yzdzzpkZh8pDq7jeeYgIqPLWVW1L8TIyLoa19aqysCwwH53Nu3stCUEABtIg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR05MB10184
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIMWL_WL_HIGH,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

DQo+IE9uIEFwciA4LCAyMDIzLCBhdCA2OjM0IEFNLCBBbGVqYW5kcm8gQ29sb21hciA8YWx4Lm1h
bnBhZ2VzQGdtYWlsLmNvbT4gd3JvdGU6DQo+IA0KPiBIaSBOYWRhdiwNCj4gDQo+IE9uIDMvNy8y
MiAxOTo0OCwgTmFkYXYgQW1pdCB3cm90ZToNCj4+IEZyb206IE5hZGF2IEFtaXQgPG5hbWl0QHZt
d2FyZS5jb20+DQo+PiANCj4+IEEgYnVnIGluIHRoZSBrZXJuZWwgY2F1c2VkIGluIHJlY2VudCB2
ZXJzaW9uIGEgZGlmZmVyZW50IG91dHB1dCAobWFza2VkDQo+PiBvZmZzZXQpLiBVcGRhdGUgdGhl
IG91dHB1dCBvZiB0aGUgZGVtbyBwcm9ncmFtIGFjY29yZGluZ2x5Lg0KPiANCj4gSSdkIGxpa2Ug
dG8gaGF2ZSBzb21lIG1vcmUgaW5mb3JtYXRpb24gYWJvdXQgdGhpcyBpbiB0aGUgY29tbWl0IG1l
c3NhZ2UuDQo+IEkgZG9uJ3QgcmVhbGx5IHVuZGVyc3RhbmQgaXQuICBXaGVuIHdhcyB0aGUgYnVn
IGludHJvZHVjZWQ/ICBXaGVuIHdhcyBpdA0KPiBmaXhlZD8gIFdhcyB0aGUgZXhhbXBsZSBpbiB0
aGUgcGFnZSBjcmVhdGVkIGluIGEgYnVnZ3kgdmVyc2lvbj8NCg0KSGkgQWxleCwNCg0KU29ycnkg
Zm9yIHRoZSBsYXRlIHJlc3BvbnNlLg0KDQpUaGUgYnVnIHdhcyBpbnRyb2R1Y2VkIGluIDFhMjlk
ODVlYjBmMSAoIm1tOiB1c2Ugdm1mLT5hZGRyZXNzIGluc3RlYWQgb2Ygb2YNCnZtZi0+dmlydHVh
bF9hZGRyZXNz4oCdKSB3aGljaCBpcyBjaXJjYSAyMDE2LiBJdCB3YXMgaW50cm9kdWNlZCBzaG9y
dGx5IGFmdGVyDQp1c2VyZmF1bHRmZCwgc28gaXQgd2FzIGRldGVybWluZWQgdGhhdCBubyB1c2Vy
cyBhcmUgbGlrZWx5IHRvIHJlbHkgb24gdGhlDQppbnRlbmRlZCBjb3JyZWN0IGJlaGF2aW9yIHRo
YXQgd2FzIGRvY3VtZW50ZWQgaW4gdGhlIG1hbiBwYWdlLCBidXQgdGhlcmUNCm1pZ2h0IGJlIHVz
ZXJzIHdobyByZWxpZWQgb24gdGhlIHdyb25nIGJlaGF2aW9yLCB3aGljaCB3YXMgaW4gdGhlIGNv
ZGUNCmZvciBzZXZlcmFsIHllYXJzLg0KDQpNb3JlIGluZm9ybWF0aW9uIGlzIGF2YWlsYWJsZSBp
biB0aGUgcGF0Y2ggb2YgdGhlIGZpeDoNCg0KaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIw
MjIwMjI2MDIyNjU1LjM1MDU2Mi0xLW5hbWl0QHZtd2FyZS5jb20vDQoNCkxldCBtZSBrbm93IGlm
IGl0IGFuc3dlcnMgeW91IHF1ZXN0aW9ucywgYW5kIHdoZXRoZXIgeW91IHdhbnQgbWUgdG8gc2Vu
ZA0KYW4gdXBkYXRlZCBwYXRjaCBmb3IgdGhlIG1hbiBwYWdlLg0KDQo=
