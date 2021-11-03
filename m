Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2E7D6443F67
	for <lists+linux-man@lfdr.de>; Wed,  3 Nov 2021 10:29:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231278AbhKCJcL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 3 Nov 2021 05:32:11 -0400
Received: from esa8.fujitsucc.c3s2.iphmx.com ([68.232.159.88]:11259 "EHLO
        esa8.fujitsucc.c3s2.iphmx.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231961AbhKCJcK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 3 Nov 2021 05:32:10 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=fujitsu.com; i=@fujitsu.com; q=dns/txt; s=fj1;
  t=1635931775; x=1667467775;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=dwGKay15CSZ8PV1OXKC9z1icUVygyRVzLLHB+y3Md5Y=;
  b=cF/mzcN5JxfsnuBsh4iC/nPiiZhKf0Lna4YXAaHvbr9Hp6KHicsiF9xI
   5rcD6X/r6Um+YRlL73+Yri4XE1PGeQJ0IVwnt7I6zbpEt/PKMcFkRx0Vv
   sBsfZyI90TcRBNjAUZoY0nBhYHV/xqT32UpVHlN9Eh7zXWMnW89QV/fVT
   oEeEpraGvsvm45xNBXr6acy8vD/h2NAOBnENUf2YarjfJCl3Jvd49QwDc
   mH0KJbXT9i3gSX/4/tIT+bWfiPAB8fyNrCxLzYz2PezpuJg8e4sR2iQ5F
   wk1dQjnzfMFr55M1JYPliOcXvB6xKZnm239AYjkKaaK4J0FET84xfdbv3
   Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10156"; a="42710992"
X-IronPort-AV: E=Sophos;i="5.87,205,1631545200"; 
   d="scan'208";a="42710992"
Received: from mail-os2jpn01lp2058.outbound.protection.outlook.com (HELO JPN01-OS2-obe.outbound.protection.outlook.com) ([104.47.92.58])
  by ob1.fujitsucc.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Nov 2021 18:29:32 +0900
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dENm0v+NtaGJUcJQ5IxE8QaHl0UiMsLwaQ+s5ykvbuLidpnrXu7ZXo/53yO6Ue7H35Ptnsoe6JiaX8u/8X0ZpZPrkuyNrUXy/soc/+5Cw3z/s6H2//m+VOl5ZyFKS2tWZbqC5aIDppkPYOfmtl0ZvWESrj6O/QxIuei5T3m2czecwQTB90l5kyMVqu0HqnwgGFtXy232tMUvDWeOnhTFp+HCedeZYIQzBe+8/pAHAubzndD/g83Ar5042Wh8Pgt44i6Yj9YhYF3p5XiCkIKcGZNZEQuIfsfR7Wx5JerevZRFWUYwM+YBvhoLd4RBckKASdmm3KCdb1Y8moVuY6YmrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dwGKay15CSZ8PV1OXKC9z1icUVygyRVzLLHB+y3Md5Y=;
 b=i4OMuvx69rPPXwiEOZZ+tS8m0QV1iLU6tPkgnJUpOGBD/wuUyAmP8xc4kBqTsGtYkMdgPoCGUTtSEp+sUGXetWuXwhupQlGmoQ5gip/P/KGnNeGvaHKpVPe2p6Rlb0qSGGyIa3jiMOeiOx22iUgdqA0Js8BCR3RZRGYyURAuZd8YGQxGwfQWQM9irw6r+MmVSONDInx7qjDEkoXxe22eJtOHsMmHALeSW8zWMwn7+Cq+pvV3VyNAWP4iE8JwDlduqizoh9hxPCb7sdOBAvYwjOySy3FrHzVo/+kFBsSWysYZZZL3RmjV3acYmxn5oc+5s64IGs+fFPQyowONRCXwhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fujitsu.com; dmarc=pass action=none header.from=fujitsu.com;
 dkim=pass header.d=fujitsu.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fujitsu.onmicrosoft.com; s=selector2-fujitsu-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dwGKay15CSZ8PV1OXKC9z1icUVygyRVzLLHB+y3Md5Y=;
 b=adA3+btLwwcAJKMXKoWK5QCCdD3yFUVE2TQHBCyh4O9Mp2gJSxGDHuvsxTbmBFpr+F9XUdzyuNskbF622I0KVWU0Jgj0w4eNsNepHCOnQC/xWKBF31yCQmXSlcYQLYU62MkEj5yupOqeCy0CXjNoLf/I+cVNJMcL/mvex0qbqas=
Received: from TYCPR01MB6544.jpnprd01.prod.outlook.com (2603:1096:400:98::6)
 by TY2PR01MB3657.jpnprd01.prod.outlook.com (2603:1096:404:df::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.17; Wed, 3 Nov
 2021 09:29:29 +0000
Received: from TYCPR01MB6544.jpnprd01.prod.outlook.com
 ([fe80::35a5:c639:9f43:ee9]) by TYCPR01MB6544.jpnprd01.prod.outlook.com
 ([fe80::35a5:c639:9f43:ee9%7]) with mapi id 15.20.4649.020; Wed, 3 Nov 2021
 09:29:29 +0000
From:   "xuyang2018.jy@fujitsu.com" <xuyang2018.jy@fujitsu.com>
To:     "alx.manpages@gmail.com" <alx.manpages@gmail.com>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
CC:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Re: [PATCH] quotactl.2: Remove kernel version for Q_XQUOTARM ioctl
Thread-Topic: [PATCH] quotactl.2: Remove kernel version for Q_XQUOTARM ioctl
Thread-Index: AQHXxVROpR5fexAzmEGKVloBqdrEKKvuGTkAgAOD44CAAALqgA==
Date:   Wed, 3 Nov 2021 09:29:28 +0000
Message-ID: <6182568B.30705@fujitsu.com>
References: <1634694386-2137-1-git-send-email-xuyang2018.jy@fujitsu.com>
 <617F6138.5040601@fujitsu.com> <61825419.1080502@fujitsu.com>
In-Reply-To: <61825419.1080502@fujitsu.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=fujitsu.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b16b22ec-0f2b-443d-b44c-08d99eac6f67
x-ms-traffictypediagnostic: TY2PR01MB3657:
x-microsoft-antispam-prvs: <TY2PR01MB36576B4AFC4B80735BBF2793FD8C9@TY2PR01MB3657.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:451;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zDHuTlEA1fONqHMqQagcm5fGBhyp4rrlCrTfu2YjA67tsymLWw5mJHS5rJ1K4Lb/Gy2yplLIyWgE0dZFncWaMOrQkFbcbgwJB3sKVjrjq104dLBGsTXn0gI0zTFbyjBbnb1OAT2ZcUI/Hi1bMp8oqXs8fmJxqCyFdjqI8LqogbnP7XcOHRnxumDyWKaxf11F7hfPAmUtQnEQEIQP4SBQuu5XlYV87ZWZmFPFhNcoyuF5QCFdZV5vl4M+/oTCRDx/o6O/OG+QF6OEpgHcJZVFjtQ/7vgw1Y4wnUfOnZrSlulrnQ00BVZpo1aqRhXAPE6kg2RYlKzXY4FzFViBtyWEmJ3QyB4WYlC5qB0KrURiFdYzVwls7AW355eUvqGODuL/i/5033P4Od6rxZXyO4IY7QhyJNVRyGAyARPFsYnukiNDOeofwIdHGuGebLTTjxmx9xHnilKTPEBJlY77hErkbIC1g/u7krys2C2tYiVBJ/hv9w/js8fPMhX/MexSdjnppgXnjxA1wOvT+JwlvXn9jaRgD0109cYl6UnUuU1kAK2JMaf+BsWvLLRMmCfkS1cpSGsZ2OmLZxlMQva7XQxmGIyfFjopvafm1Xp9LQ2O/KwrlwzVtWck9GVaEAuY88FeyBPEXJGXJ3hIOfULKg5G5UgPLx6Gyso9LnHcL0jnUeStSR05pwTRQjafgsDOuNbvgLqTa10zUGgWa1wn7+AQxoBg8xMNKl1JPf6igIhYqpiMO0M2/XDo6ZHVj3nSXe08nZvliNy1+ZAZHazw6AZwZ0fwqlrcA8hetZu14Ifj5mw=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYCPR01MB6544.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(316002)(36756003)(2906002)(64756008)(6506007)(71200400001)(66556008)(8676002)(508600001)(38070700005)(26005)(15650500001)(6512007)(86362001)(83380400001)(66446008)(91956017)(2616005)(8936002)(4326008)(76116006)(38100700002)(122000001)(186003)(82960400001)(33656002)(6486002)(4744005)(5660300002)(66476007)(85182001)(110136005)(66946007);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?gb2312?B?WFkyTFc1R201NFVZUms0TFZtU1ppc2Q0TDlsZjZRSjluK2ZFa3lMdCtVeEEr?=
 =?gb2312?B?Z0U0SHhYZ1V4TStNNldkWmlQQ2I4U3JiNEZZU2pRSG9uRFB0cDlvS3laZnd1?=
 =?gb2312?B?RzI4OUI0TGRNU3VoNnJHNUtyWnlRcS9wOTVzNGx1MC9yWEFHUlQrWWp4N2Nl?=
 =?gb2312?B?SHl6TEhJQU9oZk5EYzlRRjFiRUVIUFJCWS9WdVdWeGplRzlqTWtjemNrOHh2?=
 =?gb2312?B?bXNnaTNpU0xST3NJYXR0QS9Ua2VqMVNJQW8vbms5V2lldVl5clliZ2NJOWtF?=
 =?gb2312?B?YTdGNXhOejNTMDE4aDBJemxLZkw4c0crUDZxSXg0enJXZlFVbWVNdU1lVE9W?=
 =?gb2312?B?NXFQbUNRUUpuaGIzL1VSbkhlemdUaVFmcG9OcFFVa0p5WUpvNVY2SjRjNDNz?=
 =?gb2312?B?eDR0a3VYbVJjcm1HYXhGNnNRNU8yRVY1MW5LWmJuZ2FUUW1nZm9wbjFSVnAv?=
 =?gb2312?B?NXd4VmcwNHY2alN1MW5KcXo1Ky81MVduU2lvMXMrdzdDaHhrM1o3NjVzR3ZU?=
 =?gb2312?B?b1pUWW04ZkRLb0s5R29QeTdHNERyOUp1NE5MVjBzOFQ2UmErc3UxbUpjbG5L?=
 =?gb2312?B?U3prdUV4M2s5MEc3cGxZVUpEcVRvK3hUQmRnWnVSMk52TEJKYSt0YkRVQlJF?=
 =?gb2312?B?WlFsR25jV1dkUmJaaGdYaWlvUWhETzhsNXI2U1Jmam52dFBTaU1BNktVdWc4?=
 =?gb2312?B?VFdOSm1tNUhFcUhPZUJzcXFIcm1idHNPZmE0SHZ0L2Z0em1hOVlKMldVZkx0?=
 =?gb2312?B?S2lEQmtYbksybHk1UkJGdC9HRERPOSt2ZEZpZWcxRkIrNjhDSVZGNXB2NkRk?=
 =?gb2312?B?NjhyYXFOY1lDWmpheXVNQ3Jic29WTHFzVVdhQkUxM0EwNVRqRGxHSC9rSWo4?=
 =?gb2312?B?UDkzVVpPM1pGWGtPbmZvQzVWa2NoQWMxQklmNmV0ZjlSTzhGVXhzRHVFLzND?=
 =?gb2312?B?dncvR2pJR2FHM2V5b0N4OENDcnVuTURFVkFVb1lETUJOdmFSdUVzMUpENU05?=
 =?gb2312?B?NFBTdnc0NjF0ZDRybk1mRjFXNlUyQ0FlYWFrakFFYkp6MFVrT1N4ZU5LYmlt?=
 =?gb2312?B?bHF0LzEvZzExcnhCUjRLV2xVNVpWckdlVGVuVkRqbERJYy9QbmVMVGx1T0sx?=
 =?gb2312?B?WnhoNFltNThyQ3VjRmxvc2Vhc1dvQS81U2J6WVhMSSsxbkZsTHdLa001MXZ2?=
 =?gb2312?B?SDlDZktCYkpCcCtuMkxWNHhjc0wvTW9HalNIbjR2M3I3bnU5d0tJQWE1d1Nn?=
 =?gb2312?B?Rk8vZUlYMy9TdzlXTlIzVmxtOHJtTjJYL3FhWmZrYVNaRGhtQkZYZlRDNXo0?=
 =?gb2312?B?V3JBL2hLOWxzKzRXdHh3em96YXdGV1ZFRzhxMDBIR2N6b0Zld0hmbFkzT2ht?=
 =?gb2312?B?VGprSUFqRFNvalRVRGJDQjhQb3Z4S3JuK3JQV1cyQWdIMi93aENzbHNGeWFH?=
 =?gb2312?B?UXRxZUcwVy9vWlE4cS91OVRzeTVkNHJCR0diM05IMUNsSUlKQXNPQUVPZFEx?=
 =?gb2312?B?YThMM3ErdlpZdXpFaG1QNDRSZytKWCtNOW02cm4zNmZtS1NHeTNRTUFpbDFp?=
 =?gb2312?B?cFdUaTYyVnVSYWZxeHphNlpEdlNoZzJ1YUtrK0FlMEd0WFJsZjJ3dmk2K1Ax?=
 =?gb2312?B?eFNrbGdMNVdUMDZBanpEOWhOYVJJTWtGK2FWU3doQm9WU0gyekd2dXI5c1Bz?=
 =?gb2312?B?VG5RRVVBKzloanNmOXdIRjIzZHI2cG1EUGtGZkxyOENDVzQ0am1uNVBOSjhN?=
 =?gb2312?B?QXFoVnk3OCt0b29nQktaMGhCRXdRQ1FmTHI4djI4TGNYbXNScThCUkxIVlBK?=
 =?gb2312?B?MFp2b3ZsUEQ1RXpkaUtMa3BUYWdKKzhpbVFwK0NRd0RsOE9MeGg3SmlvRk1Z?=
 =?gb2312?B?Z2RIcGZYaVhocTk2M01tWFRVOE9rMmlJOEQyN2xVd09RZlF5a2JFSW8rclhZ?=
 =?gb2312?B?QlZoZ2VTVXNlZ1RjbE9wODYyVzJJaEJ3eHQ0aVFKTzV2di9LUFBkUFVUMUpo?=
 =?gb2312?B?YVVJZlhRWXpnWEhJU3Awa0JlZEEzL05OZisrYUs5WGdGYk45Y1BPMTV2Q0JT?=
 =?gb2312?B?UW1tVzhVb1dRTEpnTzU3UW14aHdQb1BVUjNncUJ0eXp4Kzh6bFdPTWErOS9x?=
 =?gb2312?B?OEZ6YklMUnlDMGJobXBIMm03eU9TU3RyZ1VaYXFBU29UY2UzUEZkM0kwK25H?=
 =?gb2312?B?elpLeksxZG5IaXFTU2pnZ3FoQmY1endhR04vWFN5Z1dEQ2pVRzlkMkk2SUxl?=
 =?gb2312?Q?2atFbrJPsGvgh/IcxMMsoewrHgX5Kp8CJIyoQCqdeM=3D?=
Content-Type: text/plain; charset="gb2312"
Content-ID: <857D4FB0C8C5FD43A6930E2AA0BD4754@jpnprd01.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: fujitsu.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB6544.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b16b22ec-0f2b-443d-b44c-08d99eac6f67
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Nov 2021 09:29:28.9758
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a19f121d-81e1-4858-a9d8-736e267fd4c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YxZi8pdYaDbE6t/SxQbB9GxSzzm8FMng5qHpGsU3dUk/+g+MnFlJ+sZWOBwPKCm9ao8rBv/VuZF13f91oM0qd08kXU61HsOCJVoALa369X4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY2PR01MB3657
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

W0ZpeCBBbGVqYW5kcm8gbWFpbCBhZGRyZXNzIF0NCj4gSGkgQWxlamFuZHJvDQo+IA0KPiBZb3Ug
bWVyZ2VkIGFub3RoZXIgcXVvdGFjdGwgcGF0Y2gsIGJ1dCBJIGd1ZXNzIHlvdSBtaXNzZWQgdGhp
cy4NCj4gDQo+IA0KPiBCZXN0IFJlZ2FyZHMNCj4gWWFuZyBYdQ0KPj4gSGkgQWxlamFuZHJvLCBN
aWNoYWVsDQo+Pg0KPj4gUGluZyENCj4+DQo+PiBCZXN0IFJlZ2FyZHMNCj4+IFlhbmcgWHUNCj4+
PiBUaGlzIHBhdGNoWzFdIGlzIGRlc2lnbmVkIHRvIGZpeCBidWcgZm9yIFFfWFFVT1RBUk0gaW9j
dGwgbm90IGZvciBpbnRyb2R1Y2VkLg0KPj4+IFNvIHJlbW92ZSBpdC4NCj4+Pg0KPj4+IFsxXWh0
dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xp
bnV4LmdpdC9jb21taXQvP2lkPTlkYTkzZjliN2MNCj4+Pg0KPj4+IFNpZ25lZC1vZmYtYnk6IFlh
bmcgWHU8eHV5YW5nMjAxOC5qeUBmdWppdHN1LmNvbT4NCj4+PiAtLS0NCj4+PiAgICAgbWFuMi9x
dW90YWN0bC4yIHwgMyArLS0NCj4+PiAgICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCsp
LCAyIGRlbGV0aW9ucygtKQ0KPj4+DQo+Pj4gZGlmZiAtLWdpdCBhL21hbjIvcXVvdGFjdGwuMiBi
L21hbjIvcXVvdGFjdGwuMg0KPj4+IGluZGV4IGQyMmQ4YzU4NC4uNDZmNzdhOGIxIDEwMDY0NA0K
Pj4+IC0tLSBhL21hbjIvcXVvdGFjdGwuMg0KPj4+ICsrKyBiL21hbjIvcXVvdGFjdGwuMg0KPj4+
IEBAIC02NTEsOCArNjUxLDcgQEAgVGhlDQo+Pj4gICAgIC5JIGlkDQo+Pj4gICAgIGFyZ3VtZW50
IGlzIGlnbm9yZWQuDQo+Pj4gICAgIC5UUA0KPj4+IC0uQiBRX1hRVU9UQVJNICIgKHNpbmNlIExp
bnV4IDMuMTYpIg0KPj4+IC0uXCIgOWRhOTNmOWI3Y2RmOGFiMjhkYTZiMzY0Y2RjMWZhZmM4Njcw
YjRkYw0KPj4+ICsuQiBRX1hRVU9UQVJNDQo+Pj4gICAgIEZyZWUgdGhlIGRpc2sgc3BhY2UgdGFr
ZW4gYnkgZGlzayBxdW90YXMuDQo+Pj4gICAgIFRoZQ0KPj4+ICAgICAuSSBhZGRyDQo=
