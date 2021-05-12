Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8543537BA97
	for <lists+linux-man@lfdr.de>; Wed, 12 May 2021 12:31:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230096AbhELKcS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 12 May 2021 06:32:18 -0400
Received: from esa10.fujitsucc.c3s2.iphmx.com ([68.232.159.247]:11475 "EHLO
        esa10.fujitsucc.c3s2.iphmx.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231429AbhELKb1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 12 May 2021 06:31:27 -0400
X-Greylist: delayed 428 seconds by postgrey-1.27 at vger.kernel.org; Wed, 12 May 2021 06:31:27 EDT
IronPort-SDR: v6piCjvEdCW4cvcJe+91T+9s+5/qwlLitj88ztEV9P0B4N0t0J2qpsPw0+6SKgStc9QcwGW2LJ
 Kfi0yLV9BOI5rhcpbLCVjtYv/mKpRlmMV58QwaeMSyz+Ve0lOSqBj0f2zSR8kYO3ChVM7dct4E
 tJ9Buhql+0D9YOzRNCkn783oEaNqw/sMdOJGCcMKSkfund1dHiwt7P6JGUHuD0W8/xqkpFT9ci
 JVkEQnUpzZi/wK6MQlJEHJt1R7PB2ThYPCnMoem1MuF+7RLW2vNEbVeqWV5hQmmXjJQQO47fpp
 iSw=
X-IronPort-AV: E=McAfee;i="6200,9189,9981"; a="31212018"
X-IronPort-AV: E=Sophos;i="5.82,293,1613401200"; 
   d="scan'208";a="31212018"
Received: from mail-sg2apc01lp2057.outbound.protection.outlook.com (HELO APC01-SG2-obe.outbound.protection.outlook.com) ([104.47.125.57])
  by ob1.fujitsucc.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 May 2021 19:23:01 +0900
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=acbuwQcX0mN2n9+gKAgYIwrYH1xxONebM3Kwg15UgqMTF+SfmujWiC8+F28fiVsVYp1hCcIHg2hHf3AAAAcg+uvnRW2hd9v0OCMnS9VIMnsXxIh4rk2LfClOd4irDfDbK+XonsZfDMhaD/MkO50UvgZhlTplUPJtQ1Vlhj1E3HxWUYWwe4otF6SaKBr9MXZZ+76za4Xw0593vJO1yM6wenHLyMc46kIsWsCk16T4smIRXcOL9RvPENhqgljIxyhkQk+tPTFnJl0bZyg13ixDXtOlAaNkYNANaBkZmoR+pzx56jWNScIYYhsHDEUdekEFV8H1U4/4oCH4VQ2XDyvGuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WsCvY+rkD6UVZBkyhra3I4C5S9HJ8FxBYk534LqjKXE=;
 b=BDFdXL6EggDjoMaFd9uRBsx8fjVTFV9KmFsZ2Owk/tA64r1sTPcHEMYMl0RApOzm6KBUycvqS+eWWNuRri0SBcQ+SPl74nicVhFY5TO61pUEKdNHcd3V9VMET9D/gtECyg1ukyn6sXrspRQyVzsB4O8Ix2cuAYT7JiqZKT97LCu4lXpCw8xZaEzfqYS0J+Y49nerKyP4GXSWHQqpuO2P3Z/qreaQq+LefnzFfoTGrpg/FfxCNEcPea6uNU+WRTmpkgu0r8jI6+mn4oxHjpNPUEgiamoDDw/Bxt+SKEErf79/PI9t5+7d4+4/8/pTtsR0XegW8hRCHBXFNIuQ9+hNhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fujitsu.com; dmarc=pass action=none header.from=fujitsu.com;
 dkim=pass header.d=fujitsu.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fujitsu.onmicrosoft.com; s=selector2-fujitsu-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WsCvY+rkD6UVZBkyhra3I4C5S9HJ8FxBYk534LqjKXE=;
 b=kYAYTxWVH1QWTZCJt4O96XvCVL8yz9TiIofh/u7DRrKOkKs0TCpcO/vUf3NyTOo6HF+b6q1hi+aONiDZmw5Olf93rclFQ/PUtuEXnHDuPuBispUWD6Q3Aed0NPLFl6h3OUKpMn8bt214V0eQOP9onwWjKCdAFUVXOZnJcqYFJHA=
Received: from TYCPR01MB6544.jpnprd01.prod.outlook.com (2603:1096:400:98::6)
 by TY2PR01MB4363.jpnprd01.prod.outlook.com (2603:1096:404:114::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4108.25; Wed, 12 May
 2021 10:22:56 +0000
Received: from TYCPR01MB6544.jpnprd01.prod.outlook.com
 ([fe80::31b3:92cf:6a2b:3531]) by TYCPR01MB6544.jpnprd01.prod.outlook.com
 ([fe80::31b3:92cf:6a2b:3531%6]) with mapi id 15.20.4129.026; Wed, 12 May 2021
 10:22:56 +0000
From:   "xuyang2018.jy@fujitsu.com" <xuyang2018.jy@fujitsu.com>
To:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Re: [PATCH] man2/shmget.2: Remove unexisted EPERM error
Thread-Topic: [PATCH] man2/shmget.2: Remove unexisted EPERM error
Thread-Index: AQHXRtvdh0EogDGm/ky2meU0EFFSJarfo/gA
Date:   Wed, 12 May 2021 10:22:56 +0000
Message-ID: <609BAC9E.60005@fujitsu.com>
References: <1620788812-2361-1-git-send-email-xuyang2018.jy@fujitsu.com>
In-Reply-To: <1620788812-2361-1-git-send-email-xuyang2018.jy@fujitsu.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none
 header.from=fujitsu.com;
x-originating-ip: [223.111.68.150]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0f111e4f-2037-4da1-a6ef-08d9152fe920
x-ms-traffictypediagnostic: TY2PR01MB4363:
x-microsoft-antispam-prvs: <TY2PR01MB436316CF8C40EE2328960285FD529@TY2PR01MB4363.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3bR/Ru5iuLd33P3RWPUUBA/4Yg8Yun1eewP5oHxmAb7UaHM1jUtdz/4zPChEAS2lvDVb6rzgzoUuZhLgNAralMd9fOw2cmfVgdufHOjKEmeBzMz/gTXN80IXIm+DztYe8+g5zABxjPTARwnLvpIVdfLKxuCpixg1H0zO/wSgD3E2kOPP7tik67fAR126JeYlJwG0Z2+KLV9/BEWybmgLl6LvLUHRGGGs2kE4EYqnEFUedqKz5/s3qsF9fFRCBMSl7cQs9B6a+KCrrCGYcRKBrOrhyER3uLb2+NZIulvsvtbY0fKxoUp5v8XUKCBq2pg2QEh7lYg/jB++phVZJzB1mFzOmv8ttM+ZPMb2vpwgHeYhcBl4hhrUGATyVPnHMHDBlP6JQSgA1M3OOICnro2qgvDjwzgu6HET0gVNSpTTOD0x7ZdilWoX5vRFwS8/wP6BkTMf2Gp3gKTQoEcLfS4IK9hwF66EXuupeDSLIpK+1Pcma4sHOggvnNYxBMBa/AeLhvGdgCk8YlzHrDo83yYD/hLq5EHCuFzGbTew6BBSJgOPEK2IjKl8rvderiMUEbD06ipPsz41qWHM4YA3FyOkGVJjSDDUPWhs3vl8xP/mDP4=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYCPR01MB6544.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(366004)(396003)(136003)(39860400002)(376002)(83380400001)(33656002)(2906002)(8936002)(5660300002)(26005)(6512007)(86362001)(85182001)(71200400001)(38100700002)(122000001)(36756003)(316002)(478600001)(8676002)(91956017)(66476007)(6486002)(2616005)(6916009)(66446008)(66556008)(76116006)(64756008)(4744005)(6506007)(186003)(66946007);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: =?gb2312?B?ZlpxTDVXOG1MU2NsS201ZStqaTdDNGNOU254Q3dBMkVLeUtrcXJEb1d6bXUz?=
 =?gb2312?B?d0xISTNZQk9IRGVpOTR1d2dZcnhMMzhRMFdUSFk5bVUxTk5ldUw4cC9XSkVo?=
 =?gb2312?B?TTJWeVp1Sk9wczNGeXBpekFoZXRvN0prdU90bkFiN0w0Zk80R3d6dTFHZFZO?=
 =?gb2312?B?cWVDNzg4T1hDd0hoRlRnME9Dc3RocUpFdEFqNTNmMlJHM0YxNkp6V0VEa25R?=
 =?gb2312?B?azIzNG1MT1F1eTdmaXdMRVFiOFpDZnlqdXpTcXhaUG1vWWViaHhvZFNGaXdu?=
 =?gb2312?B?bE94WHZXUmhDT3FFeFpGK01sNExwclhWc1FNMTFSbjlaTmsvdC8xR0xlZzA5?=
 =?gb2312?B?WlMrNDBEeU1NcUVEemFpYzBtbEtWb0ZXWHVaYVR3eWl0TFA1MmVjVTczMDlw?=
 =?gb2312?B?K0RsSDNuR0NZS0NnQ0NzbXNidkhWRjQxV3crUldUdjdncFh2VWgzLzJPVHJI?=
 =?gb2312?B?OHZBUzBqSSsrTDRtOXY3eGlqVFI4ZWhqaG9vOG5XcStnZ2lwOERlRitybWs1?=
 =?gb2312?B?NEtXSFZVV1lTRHVUQmhjNmd4dGptcXFJUmZQOVdvN0JiNjlDS25kTSt6ekNF?=
 =?gb2312?B?S0lFUTRUQnVnT2hBTHN6bWYzY3ZIemRyWmFvNUFFSVZnUEgxSlRtM0FvbHRm?=
 =?gb2312?B?UjlDRHRJZHdrOXVndVdFM3lGWnVQcE1heUFUcWh0Wk1RTEhTTnZOREN4MW5l?=
 =?gb2312?B?U3N6UlRubkRmK3o0KytCTXdJb01wa2RWVTlmcEN4ZDduY2RxWWJLWE5MOE1w?=
 =?gb2312?B?U0xSMXBIM1JacllhMVVwYldMM01Zb0ZrZFRIUExpbHVjY1RNUWUvamhFV21h?=
 =?gb2312?B?N3lKTUVjS2VIOU9ZS0JqRHZKL1dXQzFlbXFWQVdvOXVzL1VLcWxuVUhIeFVr?=
 =?gb2312?B?Y2htTXAyT0NtUGRsSWVIekUvQ3Vhblg5MWNOb2E0K1FMVnhIazQ1R01LUFpI?=
 =?gb2312?B?cjFrL2lwdmpwbm1ib2dhZ3ZpYVVYcWVCL0ZKcEJBMVBiWllPNWEvT01JMGpN?=
 =?gb2312?B?QUx0WlY5ZU0rWUlBNzZObTFpNmxpbGJ2SDFqQnhLK2luNW5haUlsMjVEVDhH?=
 =?gb2312?B?VC9Ua3NHQVJ4cFl2SzZPcnNEdDZlRklkbXp2ejVZeStYTHVkR3IxSnE0TUxO?=
 =?gb2312?B?emFucEd2b2tFRGovZnNGTGFHbjNmcnFJaGk5emxqOHVqcTJsY2lnSFJMdlh0?=
 =?gb2312?B?eDZjTlBueW5lbWNiVlVHS2k1bjJWbk5JcGVZSFFHcTlDWFJpWFVtdnBKMFdR?=
 =?gb2312?B?YktQaDQxU0REbDFVc29LTkFsMjlrdUJoRmJFYVR2blgrVitwT2NCVzh3Qjd5?=
 =?gb2312?B?bnV2Wit2VHh5SkM5cTNLSnBBejNMOUlqT2kreWU5V01hN3B2Uld6bklvK2Fa?=
 =?gb2312?B?WXhSUjJVUVNTZmFGdlN0VGdlYXJiVTNaNVhIaldBcXF1dHpVRm4vTDQ2U1or?=
 =?gb2312?B?aDhzSTBPRmF6Y2F1K2VHUW55MS9aYmt4Ym9EVmdvd3IxcEZxcm0zSUYxUE1I?=
 =?gb2312?B?UG1Ob1dmdW4vMVUzTXRmbno0RTFhQ2o1L3lUVlB3Q2o5bmtncDRRdFo1OGdT?=
 =?gb2312?B?d1BwWWZCbWl1djEwU21GUFhkUy9MdERMdTVZSGZQV0gxZFFVWVdwZkdHSFd1?=
 =?gb2312?B?dWxoa0dHcmtSMkdFYTFQYnhaT1QvRUJ5NGpIa1d0eTBPN2ZzUjh2WG93ZmZR?=
 =?gb2312?B?SC9zZ2ZZVFh3Z3pmbEJnRVlqNk1TOW8wbGxZTjFpNGNaWllTRExUeXR5TWVk?=
 =?gb2312?B?YzFkVE16VUUxSFBIMTFqVjVpSnN4a0ZuNG5EUHlibW85RXNQWXdOYUEvTEoz?=
 =?gb2312?B?MzFvN1dJQklmVEdKTHBEUT09?=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="gb2312"
Content-ID: <37715E092504C74C8F3A28545702BC78@jpnprd01.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: fujitsu.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB6544.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f111e4f-2037-4da1-a6ef-08d9152fe920
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 May 2021 10:22:56.7607
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a19f121d-81e1-4858-a9d8-736e267fd4c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ElYkYEbpMzIrJq56p6C7HX2eGQsxTFlkQ8HqZBRRAPmMXtvD/rLzKZmEtimhPVrLj8gZqNttd4YhyPlEhKYB99lWJ8HJZ5zsOqZhdaPFTrQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY2PR01MB4363
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

U29ycnkgZm9yIG5vaXNlLiBJIHdpbGwgc2VuZCBhIHYyIHBhdGNoIGFuZCBhZGQgZGV0YWlscyBh
Ym91dA0KaHVnZXRsYl9zaG1fZ3JvdXAgdmFsdWUuDQo+IEkgaGF2ZSBzZWVuIGtlcm5lbCBpcGMv
c2htLmMgY29kZSwgSSBkb24ndCBzZWUgc2htZ2V0IGhhcyBFUEVSTSBlcnJvcg0KPiB3aGVuIHVz
aW5nIFNITV9IVUdFVExCLiBTbyByZW1vdmUgaXQuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBZYW5n
IFh1PHh1eWFuZzIwMTguanlAZnVqaXRzdS5jb20+DQo+IC0tLQ0KPiAgIG1hbjIvc2htZ2V0LjIg
fCA3IC0tLS0tLS0NCj4gICAxIGZpbGUgY2hhbmdlZCwgNyBkZWxldGlvbnMoLSkNCj4gDQo+IGRp
ZmYgLS1naXQgYS9tYW4yL3NobWdldC4yIGIvbWFuMi9zaG1nZXQuMg0KPiBpbmRleCA3NTdiN2I3
ZjEuLmYxMGJhN2ExZiAxMDA2NDQNCj4gLS0tIGEvbWFuMi9zaG1nZXQuMg0KPiArKysgYi9tYW4y
L3NobWdldC4yDQo+IEBAIC0yNjcsMTMgKzI2Nyw2IEBAIG9yIGFsbG9jYXRpbmcgYSBzZWdtZW50
IG9mIHRoZSByZXF1ZXN0ZWQNCj4gICAuSSBzaXplDQo+ICAgd291bGQgY2F1c2UgdGhlIHN5c3Rl
bSB0byBleGNlZWQgdGhlIHN5c3RlbS13aWRlIGxpbWl0IG9uIHNoYXJlZCBtZW1vcnkNCj4gICAu
UkIgKCBTSE1BTEwgKS4NCj4gLS5UUA0KPiAtLkIgRVBFUk0NCj4gLVRoZQ0KPiAtLkIgU0hNX0hV
R0VUTEINCj4gLWZsYWcgd2FzIHNwZWNpZmllZCwgYnV0IHRoZSBjYWxsZXIgd2FzIG5vdCBwcml2
aWxlZ2VkIChkaWQgbm90IGhhdmUgdGhlDQo+IC0uQiBDQVBfSVBDX0xPQ0sNCj4gLWNhcGFiaWxp
dHkpLg0KPiAgIC5TSCBDT05GT1JNSU5HIFRPDQo+ICAgUE9TSVguMS0yMDAxLCBQT1NJWC4xLTIw
MDgsIFNWcjQuDQo+ICAgLlwiIFNWcjQgZG9jdW1lbnRzIGFuIGFkZGl0aW9uYWwgZXJyb3IgY29u
ZGl0aW9uIEVFWElTVC4NCg==
