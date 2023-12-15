Return-Path: <linux-man+bounces-259-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D6CD48142F5
	for <lists+linux-man@lfdr.de>; Fri, 15 Dec 2023 08:50:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 88CE4281E27
	for <lists+linux-man@lfdr.de>; Fri, 15 Dec 2023 07:50:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDF261078F;
	Fri, 15 Dec 2023 07:49:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fujitsu.com header.i=@fujitsu.com header.b="SgqfgfzR"
X-Original-To: linux-man@vger.kernel.org
Received: from esa3.fujitsucc.c3s2.iphmx.com (esa3.fujitsucc.c3s2.iphmx.com [68.232.151.212])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A19910A04
	for <linux-man@vger.kernel.org>; Fri, 15 Dec 2023 07:49:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fujitsu.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fujitsu.com
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=fujitsu.com; i=@fujitsu.com; q=dns/txt; s=fj1;
  t=1702626575; x=1734162575;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=RJhp5knHPt5xrSfklx8sdEVcPlK0OErW1Bs/ng21H6w=;
  b=SgqfgfzRG2g6B/eoFN+vp/5xGNYBn5OLFOh/Ef4gr4GRYcOm5Fl0L3Fx
   3fhXggAJVKeqvh0vLU00BN7dQ/eO4Ft/OdMWrvqR+RaRJ74/Uy1o1DfJ0
   wrR51ZSCWuoN/uBCqs7KRHihuHvuQPbonhcJqSKFH15YNVC54aa3Zna64
   cpn/RH65RlczQ5nLYzPZn/kujH9X4+TQ9C4THRg7XlSZGHnniBed6AF59
   omL7aVCI3r1A0KIu5r9u5mMzGgPzLUhm9vomrjPLH10bPukmQ7bnpDNVJ
   ZTAsugZKtQU39Jb2lTH+/rf+shrjCIGcPz25bjg5hHBCcMZbiBDQI+NKb
   A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="16989649"
X-IronPort-AV: E=Sophos;i="6.04,278,1695654000"; 
   d="scan'208";a="16989649"
Received: from mail-os0jpn01lp2105.outbound.protection.outlook.com (HELO JPN01-OS0-obe.outbound.protection.outlook.com) ([104.47.23.105])
  by ob1.fujitsucc.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Dec 2023 16:49:26 +0900
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Hh3Q0sVICPWL6E4DW/NiWriyKZ6XYxXAwpEKLHv+0+Uv7aGT8O/n7M39azN3wqeEckHgKWcL8ziu5TPQWOAILKuWeGkJU8h5WHWNZZCnEqLFWJv2YVf67SmqnIEMkxLUsigwQeU4ndRFfdngOLem7SOYKC93PSt7oY0LZV4GDOPQ/vk8XPEvw+N8SVkAibE9bBLoFSUG65TkZPEBVz2mdaJ0rqhsVPoTPNYERC2braxAS0qHJl+Q1E5mMzH0lbtEvLV/BMhHbpDqGbul/YkaHQuPbYlra0x+IVjHuMGU7NGpXzyBeloY/xPHrs55xXx7WtWdUgb4vhdVbkU0q5PGKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RJhp5knHPt5xrSfklx8sdEVcPlK0OErW1Bs/ng21H6w=;
 b=buyJ7cZFa/ALMGPt0U5xdZaNJ5FtZ7h2B1b9HiC7UlKetb27T6wj6Yg+17AZ9NCa6sAC8bf6KT4+/TpwIVmQiyYh3yUUfsPojgOEexM1jfC42qZAWMcMkUVBsSTC1UsZtotlTjZ7r0SUmSLjvFbW0ZwPjDoL7/b53rYJD5UEGEsrsyISmLKCPLT5GRY0hqORFc20G5THWioI3j9s5Wb29PMdBp25QbMkijDm79MN7PBFg46FNVxXbtFRuuGAWLmQtotiLeahE6IVC4rVK4LFEG1pHIAravBRRJ31VBbnUgBme9EAU4Fy5sf8wYXSeewD4BsdRIGO1eOIk6ZrraCMKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fujitsu.com; dmarc=pass action=none header.from=fujitsu.com;
 dkim=pass header.d=fujitsu.com; arc=none
Received: from OS7PR01MB11839.jpnprd01.prod.outlook.com (2603:1096:604:23b::8)
 by TY3PR01MB9696.jpnprd01.prod.outlook.com (2603:1096:400:222::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7113.11; Fri, 15 Dec
 2023 07:49:22 +0000
Received: from OS7PR01MB11839.jpnprd01.prod.outlook.com
 ([fe80::eede:9a21:dfae:c0b4]) by OS7PR01MB11839.jpnprd01.prod.outlook.com
 ([fe80::eede:9a21:dfae:c0b4%3]) with mapi id 15.20.7113.010; Fri, 15 Dec 2023
 07:49:22 +0000
From: "Yang Xu (Fujitsu)" <xuyang2018.jy@fujitsu.com>
To: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
CC: "ltp@lists.linux.it" <ltp@lists.linux.it>
Subject: Re: [LTP] [PATCH v2 1/2] swapon.2: Adjust decreased value under
 CONFIG_MIGRATION
Thread-Topic: [LTP] [PATCH v2 1/2] swapon.2: Adjust decreased value under
 CONFIG_MIGRATION
Thread-Index: AQHaJ0SI9z6kOrCo00G5/4wPUt2mKrCp6qQAgAAdQIA=
Date: Fri, 15 Dec 2023 07:49:22 +0000
Message-ID: <e957c61a-93b3-478c-aede-eec2b09105cf@fujitsu.com>
References: <20231205063017.68690-1-xuyang2018.jy@fujitsu.com>
 <03fc8738-f3b3-4caa-ab76-49883814ac3c@fujitsu.com>
In-Reply-To: <03fc8738-f3b3-4caa-ab76-49883814ac3c@fujitsu.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=fujitsu.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: OS7PR01MB11839:EE_|TY3PR01MB9696:EE_
x-ms-office365-filtering-correlation-id: c62258c5-4ffc-4c22-323f-08dbfd425a4c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 zd8tJBzrwEifnWpvsoo6n+6gvcwI/HutA16a0nt7JgrPduaxPDbdsvgMHlYZLovSazOgvLSi9Vedl6xjrvEvjOJ2AIOUX8TMI8IIgHPsi2xqVNAa4eJMeanpQ8fK3MKryR9B0E0KShxV817e1DL7ON/jVf8y84R0zGu7YahjSqw5x9qhWyIqBUmyjbMmcpE9pKmXXv9BOIKsnHmzM8uvKYlApn67oALP0tH9WXieP0gxIkeLyQRSKfKpRlXHQVXqZ7wGZxEFnIM44yV8tMr/sP59snnjKFiS61VehJfKscOOe/WmneT5lEgSrHEwlQEcYD5F7Mw0kfjYebjBhHA+nU4G6IN3arOiyHlfmDQ7clIutO9RLlIVbWQhejKasYaRfkMOxUeHfuOIeNcguisGHxYxRfu3NRmPclIOuabhDQ2fYloVkmCFxyDzkTH77lZmXpPIDT4ldz6JXb46pJfBqU7XVoJCa0mX5CnR7ZjARxO68lVK1CUV8Dk/va87LThfUee6M0Jvdwu2PPUwYYT2r8IT7qKQuI9Z4xh8fRh2kHzBATlaL4BDKUG+7L36Q6FBBAGSyf6X/7aeKZ5q+tOGE0/OmQgQQmIx5FXSlzeQlrBXLJGZzrz25gyYqnygmWHZfUjcvMewfqnbJoqPVajqOb0JMmAv1yHJZ/pKehvTDe8=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:OS7PR01MB11839.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(346002)(39860400002)(366004)(396003)(376002)(230922051799003)(451199024)(1800799012)(1590799021)(186009)(64100799003)(26005)(2616005)(6506007)(71200400001)(6512007)(83380400001)(5660300002)(4326008)(41300700001)(2906002)(4744005)(478600001)(6486002)(8676002)(8936002)(76116006)(91956017)(66946007)(316002)(6916009)(64756008)(66446008)(66476007)(66556008)(82960400001)(36756003)(85182001)(31696002)(86362001)(122000001)(38100700002)(38070700009)(31686004)(1580799018)(45980500001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?aWp1RUEyek9EYVdkd2NvY3c4bUlsQ0hUWGJBRGE2MEFMemhuaFNSQldZMWc0?=
 =?utf-8?B?R3ZNVnRvbWdrcTRZcXE4ZlRxZVRaS04xekFyMUFJb1BTbDhSemNmUVhUOUdQ?=
 =?utf-8?B?T2M2MDk5cVQ5SjJWeW01NTBrVnloLzZhdGZlUzlZSkZLU1NJa29lbjBMTzhU?=
 =?utf-8?B?ZzlXeW9IblQvVlpQdkVaSHFDaXFiMUdVS21QUnRlTkJLUUNzaDVkZ3VBV3c1?=
 =?utf-8?B?bUpsczNFelRFbkt4WmxRNklGRE1lbktEdUlDUXZQK05PakcxM3cxWTNKdTYx?=
 =?utf-8?B?TFE4ZitHWFVkdVlDSWhYK21rTVJDM2d2ZzQ3ajBkdE9wS1BoMDNTTVg4Vkky?=
 =?utf-8?B?VFZxTFllTW5tVzVablo2RjRLbXdzTFJFNkpYWW9XdWJ0N2pMSWloZWhPNGho?=
 =?utf-8?B?cWlLVjZtUmYvTU1hMGFkYnZleWdnSkdBMWs5UUlSMTFFZnhJMVpMcTNSZS9F?=
 =?utf-8?B?T1FLV1B0a1A2bjJWY0hsUWtZOUU1RHdDTEhpMDZ4YzlRU2cwZFhPMHJVckR1?=
 =?utf-8?B?a3RQV3c4REtIVEdZYSt2ZytCWWVmQVJEbnMrQk02clMwSEl2RWhEaWpGS24z?=
 =?utf-8?B?RW9UZFpCN2R0NXV3MXl6QTI3UnBUcGswc2QwVExVNkdiZDBBNlZ5OHJkODdF?=
 =?utf-8?B?V3hJczFva0JBMUo0SC9ZK1YwMytLOHUrV1pzUEgzMzM0NjlIaHN4NHNnUnAr?=
 =?utf-8?B?ZXlEZTBMNHdQWnNEY0ZqbzVnbzZ3UHZXcmYwVlBpSUR1cm9tKytWNmFuOVRS?=
 =?utf-8?B?N0JkVEFpeXhJTFNhRjl1SzdMV2RqcUN2STZvcVF0MDFmSm0xNGlGOS9pWHJK?=
 =?utf-8?B?WnYvZUQwbUZkbGxKQjJISS9tbDMrQXFhYzlXRERxMk9yMzFZM1BFUDBTOUhi?=
 =?utf-8?B?Mmt2R2h0U1FCY2haSDV6ZndUZ3NHTjN0RGxreklFSEJuRDRuQkI5Y0FXSzhx?=
 =?utf-8?B?WnZ3aXJvbU14ekZOenpYWUdZL29ra1oxbHlBUnpESSszVlpvZXRaTC9TOFpS?=
 =?utf-8?B?REtHMmE1a2tjSVFsSGsyNFoveWxsYXczeTc5ME5zcjhiK3NKVnVYUldLZFZQ?=
 =?utf-8?B?UlZTenFva0lnS2ZvNnUvaXlDaUoweUtDTEM0ZU42elJGa2h6ZlZJRCtodjFY?=
 =?utf-8?B?bElVemNSSmpBa1pwSTU1dXQ2TFR2aXFBQm9STUsrQTRCNXVFdUJUQ3Yrc1FF?=
 =?utf-8?B?RHA1WkxxYjZab1RCYUxqQi93VU1rSVdCYkc4V0tSNWxzQWVKM3MreW5JaWFw?=
 =?utf-8?B?TWZ4YzRyY2NySnBzTE9WaDNwbUxRQ3ZLYUxHMStjbmREVTZ2N2VvNVhXTVJ4?=
 =?utf-8?B?eGpMRVNQeE1Dc3ExUytmUURRcmsyL2RMTW5zaE9JeVBJdytNMFFIQk9CbTU4?=
 =?utf-8?B?Uktlb0lQNzFlWENJR3ZYT0ZLR0MyaUxNMGl4U0Q4NHh2dVZaRml6NzRDRDgy?=
 =?utf-8?B?MnhVQ3NGb2JQbGNwTFUrcTZhM0NGRWJEMkNCS3l4YlA1N1Q4cm1ZMXJjWE5H?=
 =?utf-8?B?a0ltTG12ZmFTTHMvK3FCeStDcGxnSUh3eUtuaHE3b2VsUGY1OStCTm1vMXJT?=
 =?utf-8?B?OE4wRjc5SEk3VjdnRGgwQWV1SUVUTlUvelY3MngvL3V6Nk43dVFORjA4bTBS?=
 =?utf-8?B?M3RtaGZ2M3J3QW5qS1RmbzJ0REo1bGIxSE1oUEh6dFoxektNQTB5RUpkbTUw?=
 =?utf-8?B?WWlBSWQ3UGpSSitZemxiUGpDMFR3Y1cyNi9Ca1ZFdHpwMDZhNVNycGNzVWFR?=
 =?utf-8?B?VEt5alJ0cWc0L0lvZEx4NTFEWENHWTdseFRMYWI4WFZ2UzZ6dkRUUEptaW43?=
 =?utf-8?B?Vk11WmxqSUUwakhvMUtyM2FDcVFrcmVZZVdUKzI2bk5LQ2FvbThaL1JzMmgz?=
 =?utf-8?B?Vnp0L0NqaitxZDZkdmVNU2ZPZUMzbjMvUFREZHcyRC9MaWZZLzBFcnJzM2Vz?=
 =?utf-8?B?VFNqTVg1dm91UE5sYUd0RFBHb0E0dzdOOVpxTjcxWC9Kekh6Q3hZaXI0WU0w?=
 =?utf-8?B?cDAwZk5mYnE5a3ljQ1NYbzhERUkyUzlwRWkxbXg2WG12WmtxNGJGUEFCVEpl?=
 =?utf-8?B?TEFQekU5RlVXUC9OOFRaUmNHRkJzR0EyRVJCVWFVSWF6QW5QSGNJWldlMEk0?=
 =?utf-8?B?UUhnblhVRVc1VHZTY1d2eW8wbGFmZWtpTGFNVXFXWTB2TDhLRTFrRUxnbG9p?=
 =?utf-8?B?K1E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <8308699690B3F1439327013F29837CB8@jpnprd01.prod.outlook.com>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	vhkfo/8s/WLVjdFZPj/nrMNiBBbmcy/2yL+EYwEFyqasJ1/sL5FkAP6z9jWvUlLyLH45KZKNE4R5MlbQeaCUxxPyv2f361YL84Gs8vYjH+jPRpPIbWUrIh9PBXFMy3ffm8uYwJHvwunyR9lfvA8rET3I1Blm7aJEsf44J16rF5EF1WaAMMHuWrtM1RRa1V8+AqtH9GUmXLjgUNfBO6ejLmbqImHaPizKB+iQvfOt3WJox3py85WrgYnjq5snesoJVpHEAlJxMN9XNxQuyH0wvG7XcdSYvCtzdUY9ADUKV1EnHh5BMg2w2yBkiEeRJVQ8QGk1eq6D08PCJMHtqmof8SW1f+pGvJvrXi9v2BR3tNGsigVLJpYn3HychY8mNa3ITTG9JLNZZCBreqKDgeGjq8nQrMjDW+wmRHgBK2DRvwqDA0ceNwEtZsBXuxCeP+Yc/iHN9605LrfIWUeQmAy1W/W87opAmnpU0m8+xts6SgwyKqL0Etq0xYssZAmy8cJtUytj2KU7xzIo8obuv1vu+1tIwc02xH4VJfLaxAdhmiqmCu/obh65lrGNry58XZ5attFIH4rVY+gQD7jZpqitpmOKhNsUaM2SrO7h2osbcTJpm9bSLgdMZyZs640xr27+
X-OriginatorOrg: fujitsu.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: OS7PR01MB11839.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c62258c5-4ffc-4c22-323f-08dbfd425a4c
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Dec 2023 07:49:22.7139
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a19f121d-81e1-4858-a9d8-736e267fd4c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: V2NNmDgf6rvmJ2peN/CG8fU3NL3aLij1MnGro4sOo5xWnF85JLshpKTyPJZLo9CUKFK3l/c70j1wk6OR3rrbU5MlpbUq1yZy39W9ACojvo8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY3PR01MB9696

SGkgYWxsLA0KDQpTb3JyeSwgSSBmb3Jnb3QgdG8gc2VuZCB0aGlzICJwaW5nIG1haWwiIHRvIG1h
bi1wYWdlcy4NClBJTkcNCg0KQmVzdCBSZWdhcmRzDQpZYW5nIFh1DQoNCj4gSGkgYWxsLA0KPiAN
Cj4gUGluZw0KPiANCj4gQmVzdCBSZWdhcmRzDQo+IFlhbmcgWHUNCj4gDQo+PiBBZnRlciBrZXJu
ZWwgNS4xOVsxXSwgdGhlIGxpbWl0IGlzIGRlY3JlYXNlZCBieSAzLg0KPj4NCj4+IFsxXWh0dHBz
Oi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4
LmdpdC9jb21taXQvaW5jbHVkZS9saW51eC9zd2FwLmg/aWQ9NmMyODc2MDVmDQo+Pg0KPj4gU2ln
bmVkLW9mZi1ieTogWWFuZyBYdSA8eHV5YW5nMjAxOC5qeUBmdWppdHN1LmNvbT4NCj4+IC0tLQ0K
Pj4gICAgbWFuMi9zd2Fwb24uMiB8IDMgKystDQo+PiAgICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNl
cnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+Pg0KPj4gZGlmZiAtLWdpdCBhL21hbjIvc3dhcG9u
LjIgYi9tYW4yL3N3YXBvbi4yDQo+PiBpbmRleCBjMGU2MWNiYzYuLjJiYzQ3N2QxOCAxMDA2NDQN
Cj4+IC0tLSBhL21hbjIvc3dhcG9uLjINCj4+ICsrKyBiL21hbjIvc3dhcG9uLjINCj4+IEBAIC0x
NjQsNyArMTY0LDggQEAgQmVmb3JlIExpbnV4IDIuNC4xMCwNCj4+ICAgIC5CIE1BWF9TV0FQRklM
RVMNCj4+ICAgIGhhcyB0aGUgdmFsdWUgODsNCj4+ICAgIHNpbmNlIExpbnV4IDIuNC4xMCwgaXQg
aGFzIHRoZSB2YWx1ZSAzMi4NCj4+IC1TaW5jZSBMaW51eCAyLjYuMTgsIHRoZSBsaW1pdCBpcyBk
ZWNyZWFzZWQgYnkgMiAodGh1czogMzApDQo+PiArU2luY2UgTGludXggMi42LjE4LCB0aGUgbGlt
aXQgaXMgZGVjcmVhc2VkIGJ5IDIgKFNpbmNlIExpbnV4IDUuMTkuMCwNCj4+ICt0aGUgbGltaXQg
aXMgZGVjcmVhc2VkIGJ5IDMpDQo+PiAgICBpZiB0aGUga2VybmVsIGlzIGJ1aWx0IHdpdGggdGhl
DQo+PiAgICAuQiBDT05GSUdfTUlHUkFUSU9ODQo+PiAgICBvcHRpb24NCj4g

