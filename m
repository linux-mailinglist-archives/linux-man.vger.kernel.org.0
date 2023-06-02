Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0F12A71F79D
	for <lists+linux-man@lfdr.de>; Fri,  2 Jun 2023 03:17:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230397AbjFBBRR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Jun 2023 21:17:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43220 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229724AbjFBBRP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Jun 2023 21:17:15 -0400
X-Greylist: delayed 64 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Thu, 01 Jun 2023 18:16:57 PDT
Received: from esa14.fujitsucc.c3s2.iphmx.com (esa14.fujitsucc.c3s2.iphmx.com [68.232.156.101])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89D9D195
        for <linux-man@vger.kernel.org>; Thu,  1 Jun 2023 18:16:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=fujitsu.com; i=@fujitsu.com; q=dns/txt; s=fj1;
  t=1685668618; x=1717204618;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=E+e833v2HuZIVZnEq4GfaAgBNZso3nMbMJBF4sNF1rM=;
  b=tcWzFNOeUYu+jUtdLCs04YC7si+S02/bdI8I8ofOXvPMlxOfB2Ee9Tq1
   14mWV46HpO245D66C3x1QZups3m0fM9c+1g/ORKImUCJwlN92A7fX3W5g
   VKhp4F/+Q17QK89YUrOFNj4Cl2G1fM5XRHwJ5P6C3IuxL9wSW/IXq/ZH3
   8jMXM836cBWe1u/ULUBX1jnDpAF6Fb8keCAxA4Q+nZ40C4/4hoJzsCLk2
   4mkVbWMnsCPwWw6IAJ8hxcnKgE81XXVob0Oq1S4fd9uJ6s2p59I+XM3em
   tF0CM8IMTDtHFfs900yuuZ4auP+eAGki9qjUHqVSa3BAM2dNBFC35iv1a
   g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="85756660"
X-IronPort-AV: E=Sophos;i="6.00,211,1681138800"; 
   d="scan'208";a="85756660"
Received: from mail-os0jpn01lp2109.outbound.protection.outlook.com (HELO JPN01-OS0-obe.outbound.protection.outlook.com) ([104.47.23.109])
  by ob1.fujitsucc.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Jun 2023 10:15:52 +0900
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YHw0fra8Luy0WWL5ezcttAv6L4ojPM6MVnKLQ9Jt1V3AJB7ikOS6VzCkQLQ4sowvVe71Wv6/sF2N8PxaN1PIDRygAEqOBtZwQG6nsEzM7hz8b6OuSEuAcuMYv3DuzBkowiBbbb8yNsau2tMN6X1KevgOF9uuyT6OrL26plKx1KreeWJqBxquvadIq5aUjqYO6Q7roxrooZeJmzl5Ok+lSI2D4xioefpfjBcN8xQramxmFKamTaRA/1Dvi8RgigDTGnRl2/e4wRxRNmPQYE9cLJmK7H46TDlMip4W5iGy1s7DcD1tbKe3VlwcK0z1GlYSDcQxhm9qPDKXzPN/wDTw3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=E+e833v2HuZIVZnEq4GfaAgBNZso3nMbMJBF4sNF1rM=;
 b=AFVf6QBGNt3iqLkeh6enIKBoMQwCNhCG/8Ca1+S8myP3ZP+Wm06hgdMTd8pC7LJT7vcej1oxCUWlXDZJIVPA3bToWoUU+q0U1dingCwQtCCRzU1wq1Z1UCRDWim0BpyY6nEmyPAuDYip9wM/PoAdwPzVaJ0/TzY1hPv1DE2hZXiet3+BRCnXjPmFtPQd11oZ+67viYxMCR2u0R1BAipn/5rjnTmqaG3UXcit/HZJRT7j1vjfa3j0bumOhD1MpgpMV7sFlZX1NVaXxxKkuGu+pAMaOH0A/ztb3F2ZShhu9pgv5xJnjCw/Ea/+bPDNFn/5yJ5KtebJChzSoSJ7R+orfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fujitsu.com; dmarc=pass action=none header.from=fujitsu.com;
 dkim=pass header.d=fujitsu.com; arc=none
Received: from TYWPR01MB10725.jpnprd01.prod.outlook.com (2603:1096:400:2a5::7)
 by OS7PR01MB11471.jpnprd01.prod.outlook.com (2603:1096:604:23b::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.24; Fri, 2 Jun
 2023 01:15:48 +0000
Received: from TYWPR01MB10725.jpnprd01.prod.outlook.com
 ([fe80::1eae:326d:abf5:e4e1]) by TYWPR01MB10725.jpnprd01.prod.outlook.com
 ([fe80::1eae:326d:abf5:e4e1%3]) with mapi id 15.20.6455.024; Fri, 2 Jun 2023
 01:15:48 +0000
From:   "Yang Xu (Fujitsu)" <xuyang2018.jy@fujitsu.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        "alx@kernel.org" <alx@kernel.org>
CC:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Re: [PATCH] statx.2: Document STAT_ATTR_MOUNT_ROOT
Thread-Topic: [PATCH] statx.2: Document STAT_ATTR_MOUNT_ROOT
Thread-Index: AQHZjTXfFIyAfNVu9Em2ZEskwIYQL69ogYAAgAnXU4CAAqPgAIAByGSA
Date:   Fri, 2 Jun 2023 01:15:47 +0000
Message-ID: <7b2496cb-8d71-fd7c-577e-74bba677fb94@fujitsu.com>
References: <1684819035-17509-1-git-send-email-xuyang2018.jy@fujitsu.com>
 <c8dab0c8-7cda-52a5-8c4e-64c5a9a90fc2@gmail.com>
 <a50e90a3-3564-b1a9-ae60-1eb7090c8eb1@fujitsu.com>
 <601ab2c2-e610-fbc1-ba82-92220873057a@gmail.com>
In-Reply-To: <601ab2c2-e610-fbc1-ba82-92220873057a@gmail.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=fujitsu.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYWPR01MB10725:EE_|OS7PR01MB11471:EE_
x-ms-office365-filtering-correlation-id: 14775f7c-534f-4b16-44d2-08db6306e5e5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HXeyJ+2x9PFeh0oY/f5LbcM8A6cW98hEL8RhrhNZhB8J4hsYo5XDCmkQp2c8BHV4wD2PU+S0ZSF/q0Z0ZXmk+bEpolCZpPBMcXi6LBfVqx735JM2xdCZwMQHjUqXd9TyYJYJ+gXQYPgXUW2yeVZb79et21OLS30epZ0ohwMOoIjFZKyLqGmIQJNhXvB1tNs0iGM2iBq+4nPsVzitcYm9aN5q49Ecqu/R1PsU4U3Kg5gMA1zzACp0aiG+SBO2ixBsAwWV0n1dNQcCw+Ft2pBtII806kNtBpIgKadke3TkDN/C4je+dgPAHJviEgOeamXhcq0zNUykOmywjmaXFiQNdrddA5Wp+op5xdR2CVZFoOBX+H9COTHHvnwx9ZZykQcwDl55PvVzNDxzGoKO/mPN6CzaeOFFxAF1My6Ta0sUvrmakV1cHMHliNW1ariP7fTh8Ra3E5r59NDaENoQm7dAhctdcXMaW6O8JIKWgL0bfFHNkCNR4YNpi6eun/vqT8GoZa3dJ9RRD4+mmNdyqG5+NeuJS4vvkMVRNljF8jCECio7VQi9wfldw8GP5nF5oNBzS9hdipvXsezBQd8/1eFHR7RvcKKqx49aXmdDaJTs6AObh9eLJP7cfQJAW2ZJp6DsBw8sdb2Wg6Y1FQhHyjHceAEhUMd8A//k6k3raYfNI6Y=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYWPR01MB10725.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(39860400002)(366004)(396003)(346002)(136003)(376002)(1590799018)(451199021)(6486002)(71200400001)(966005)(478600001)(186003)(26005)(85182001)(36756003)(6512007)(53546011)(6506007)(2616005)(38100700002)(122000001)(86362001)(82960400001)(31696002)(38070700005)(2906002)(66946007)(66476007)(66446008)(66556008)(64756008)(76116006)(4326008)(91956017)(316002)(8676002)(8936002)(1580799015)(31686004)(110136005)(41300700001)(5660300002)(45980500001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UXJodjRWUm5CWEZyR3RVbkZUTmNpVituanRBQm1DYjZIWElhenZMb2JzMGcr?=
 =?utf-8?B?Ti9ybmlxNXJKaFJpL3BWUlF2ZnpnZHhZL2ozbFVGOStjeFgwZHBUU1oyRXlD?=
 =?utf-8?B?bkJpTzJ3Y2ZTejlHUjdyTmtGSFhHbXVYQUV2bDZQVzZJeE9NRWE1a09pQlhF?=
 =?utf-8?B?NERxNzdLVnZuZ0lSZXRLSHBRaG9aZmszaDRhRzQ2YVJvRDhnbGE1b2tWUjFk?=
 =?utf-8?B?STM5QWdSK0o0Sm1ieGF4QlFzS1UreVhjcTdpVVBmcXI1aCs1VGY3WTNSVDQy?=
 =?utf-8?B?QzZ3S1dNRVBwMkljdzloTmxEZVIrcEVtTFVmYzR6Q0x3NDRLNEkycU4vU0dL?=
 =?utf-8?B?ZGtnSFhYRnZOSi90dmt0M3c1UzRlMElOL1lrdXVPMDk2OWRRQWw0U1BKRHlH?=
 =?utf-8?B?Qys0WmNrMjIwdDJFSldXRSt3UnNUbkJRS1R0M1o5VXQ2a1pJMElUSFpyc1ZO?=
 =?utf-8?B?V3RLS3JmL05YMEhSeTBwazkzd1BwTFlad2VNSHRCUXRiakdiS2dISnkrSVNk?=
 =?utf-8?B?TGdEQWRSc0R2V01heHJlV0hUTU9mTTF0Z1NQM2N6eVNieDF6UWZ5UW4vWFZr?=
 =?utf-8?B?Vlg3MTl1NkwwZUVUUGJWTXhBZEZYTkJ4YWlQcnNrbEo5L1NLamhka1JSdXMy?=
 =?utf-8?B?TVVCVHJ1MVIzbjZlbDFIaGNJNUlOWUk4WUE5N3dkcVdQZzBhMStpM2w0RzlW?=
 =?utf-8?B?aXpzTFNFWXlyMzdoRHNxVFA2eW5kTit5N2Z6VEhmb3ZDNmo4WFRnTlhaRmRn?=
 =?utf-8?B?WjJrY3FGSUE5U0g2TytSbVFCMlRPQmhZRE1mN00vSTdSQTlSRXkrRlpvYjlV?=
 =?utf-8?B?WEV4RHZXVHZ6NDBKOFEyRnVkQ0UzT2FxZE1ndFBROXM2UVBiSEozeGF3dEZH?=
 =?utf-8?B?SWFWZitFQjVEUWQxbGZxN2N4bzVnY0VuanZRYitKS1FQbVc5aldtT1Y2U3pz?=
 =?utf-8?B?dnV6K1BBWi8waUJYMTlaN1R2UXZXMGxqTjlRaFRPNytFTXgyRVVGcm5LWm1O?=
 =?utf-8?B?cDczUS9qZ3VLUUZPKzIvY3FQVG94NFVwN1IramcxUkZrWVlUazZSMTJ6RGFI?=
 =?utf-8?B?ZE55bDlUSjdLNEh3RGdMTG1BYjJJclRDTmpMMnRNc29oajg3Sys1R3hqbGhD?=
 =?utf-8?B?L2pSdnF6WkxZajJGcWxmYnllVW9LM2hUTlk0bmJwM1RVRzUwc0ZpaWp1VXpY?=
 =?utf-8?B?UURodDh0R0YwYlgwTFdBaXZRTmJsMkxjWmUzajdqdElKWWNhSzIzUHZFME12?=
 =?utf-8?B?Skhua3hHMzMwVTVCTFVJSWY5eVZRRXBNL256emxiWXlncTRnN1BTOWZ2amlS?=
 =?utf-8?B?NDRMYUxiS1U3SkFGZFlyekZOVytpQ0J2SlJMVDE5VEd6dGhmOUxvaURSUU9W?=
 =?utf-8?B?RFdObURUYU82dmhrdittZ2N1WUJOb0VQczRuUWdFSVdBN29KaDhKUGlLUlFB?=
 =?utf-8?B?dWs5cm93MjVKWmZEK0pSamFTNTdDR2NWRU0xcnNIbnlzZzAwcmp2YlM5dnBT?=
 =?utf-8?B?Sno3RWFXT1FlSjYwRjRRUnJNS1pMRU9UNTRVM2RLSEt3Q05TU2wwM2h0Ykgv?=
 =?utf-8?B?WEpWeTMyUzBXajRKMGM1NHZLMC8wSTRoc0t4L0h2QmJ2L1locXIzWUVqaGx1?=
 =?utf-8?B?TExBKzRTWnprVUxvcndZMXMxTUhCR1BLNEYrZ3F3d3BJWUZBcm9rVEJLdmVw?=
 =?utf-8?B?K1dNbGhTekxOVXNseFp6OC9Wcjh2VXRGTEFYZ3ZlODRhTThoT3B1RCsrS1R6?=
 =?utf-8?B?TlVSYnovVzZUcDZoclNyTjZDK1ErVTNSamZ2eHVEcWptUUxTUGJrR0lYZDYv?=
 =?utf-8?B?Y1NGK0lCMXpwdXJSRjFUVmdLZWZ3NWZUNFdOQ3kyclRIWXEvMlZRUUtqL3Bu?=
 =?utf-8?B?aHRqL0RXUWY1dXE1M0VYR2srWUZZSUVlZjQwZ0kyeWZnK3BmWHlTZ1FGTS9y?=
 =?utf-8?B?Yk50T1RQZ2c5dVd1K0ZETEllbGNsUUNibzZDckpPOWlWMGpQYlJobE5WVSs2?=
 =?utf-8?B?MG5oUzQrUnNPZktPcW1IRDBKTWJXaGhkQTUvMVgzM004RUM0QTM5cVM0UGs0?=
 =?utf-8?B?NTVpNnpJRG1FNnZxemllbGp1azRuSzdsZGROMEJXbFloSTc0dDl6M2M2cnZp?=
 =?utf-8?B?UG52b0MvSmVLSHNHZ3phMi85aE4veGlmR21menVMVHFUbTk2NkN6MUN5bFJv?=
 =?utf-8?B?MVE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <950C01E749D0914AA93B237CA5D71FE0@jpnprd01.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: qVIk6ENGhMKopkkZZ/rSvp3yBQLBX4Pk0QbIhXWIPJZqiRM/79xM8Kb5z8KCcnhvaoCf4O+zzM9hYPN5kuTSws8aJs2zEOBW2nuPF9VmRjFrBn8PFi5JuCd7H4pEX63YyWSO48hLCku9XFgq3KrFz0myoLm9z4R4uLtnSdin6yPQQGfC/fMul2Rb7mPsjE8Jcag9OkVukB2DAbDuMPJqk9nrLUzqIVtkYbSCUgafwxZ/bNtsfi22x7wckMn+5TavYDdNCbgzmaoYHk0QN5x68PnOEcfjrKp4mT/pRat8Ws+ucZj4stTb60sjYiH+iYCVJgftncEqZrW010xwvP8CfTgE2s/+7xNfWDk0h4OOSfCiOHBF/tHMgsTvDg3g1v2ALEv4Edf3C0CuWzuN/EwGzPuAe051ArHwUmZIiR2VCLGlRRmYXTMyvHMujY0gyRPIW1ZZ0FQMx9e6qcJEf+6e7icqRSLFB0EAJEpuYrE4kVJRhmVcQiIx9ATypcmO5Ri3O1OdVRq5jIHNrK2MRTIXrqij8F1UXPrLmL5zgNiKYMWpQkCpxWuDXDJWKBJPZuuMpNpxYFnaO75+/BXk9EQoC0kG9BIXvkQFwBWQPv+f1EF7gz+AZaX2aPaB8SQ01QFXNzryiV5bIXWA1+NKK93eg78G6CwDdJmU7dSJuH+aNW1UiEdQz08h/TeAqMLJT3V/YQ0eWlhaSSSqJNX4k+6KvPjViG4Lt0fN9yvT2+4CSkv3xDdDMlrPxOhkBn1+mc6zHQazTsWscZtlAROT+FtWAtAvDoSgYpnnQbXeKea0vtSH/7B9LF5BW9oV9fcpEXAruTHPs/cf9RCXDNKL7e0L/Q==
X-OriginatorOrg: fujitsu.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYWPR01MB10725.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 14775f7c-534f-4b16-44d2-08db6306e5e5
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jun 2023 01:15:48.0768
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a19f121d-81e1-4858-a9d8-736e267fd4c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BNVueLqGF+bmDe+AjCosjEl4zGLsLJejW8uHlMYZbRNCBJRLfrzZeoE7nOcALBsORIghRC1HibewgU5S6r5Rvcd8Y/kdXHGUDByPbo43zu0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OS7PR01MB11471
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_PASS,
        SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

DQpIaSBBbGVqYW5kcm8NCg0KPiBIaSBZYW5nLA0KPiANCj4gT24gNS8zMC8yMyAwNzo0MywgWWFu
ZyBYdSAoRnVqaXRzdSkgd3JvdGU6DQo+Pg0KPj4gSGkgQWxlamFuZHJvDQo+Pg0KPj4+IEhlbGxv
IFlhbmcsDQo+Pj4NCj4+PiBPbiA1LzIzLzIzIDA3OjE3LCBZYW5nIFh1IHdyb3RlOg0KPj4+PiBM
aW51eCA1LjEwIGFkZHMgU1RBVFhfQVRUUl9NT1VOVF9ST09UIHN1cHBvcnQuDQo+Pj4+IGh0dHBz
Oi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4
LmdpdC9jb21taXQvP2lkPTgwMzQwZmUzNjA1Yw0KPj4+Pg0KPj4+PiBBZGQgdGhlIHRleHQgdG8g
dGhlIHN0YXR4IG1hbiBwYWdlLg0KPj4+Pg0KPj4+PiBTaWduZWQtb2ZmLWJ5OiBZYW5nIFh1IDx4
dXlhbmcyMDE4Lmp5QGZ1aml0c3UuY29tPg0KPj4+DQo+Pj4gUGF0Y2ggYXBwbGllZC4NCj4+Pg0K
Pj4+IFRoYW5rcywNCj4+PiBBbGV4DQo+Pj4NCj4+Pj4gLS0tDQo+Pj4+ICAgIG1hbjIvc3RhdHgu
MiB8IDQgKysrKw0KPj4+PiAgICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspDQo+Pj4+
DQo+Pj4+IGRpZmYgLS1naXQgYS9tYW4yL3N0YXR4LjIgYi9tYW4yL3N0YXR4LjINCj4+Pj4gaW5k
ZXggM2JjNDkzMmIwLi45NjEwZTE3MWEgMTAwNjQ0DQo+Pj4+IC0tLSBhL21hbjIvc3RhdHguMg0K
Pj4+PiArKysgYi9tYW4yL3N0YXR4LjINCj4+Pj4gQEAgLTUyMSw2ICs1MjEsMTAgQEAgd2l0aG91
dCBhbiBleHBsaWNpdA0KPj4+PiAgICBTZWUNCj4+Pj4gICAgLkJSIG1tYXAgKDIpDQo+Pj4+ICAg
IGZvciBtb3JlIGluZm9ybWF0aW9uLg0KPj4+PiArLlRQDQo+Pj4+ICsuQiBTVEFUWF9BVFRSX01P
VU5UX1JPT1QgIiAoc2luY2UgTGludXggNS4xMCkiDQo+Pg0KPj4gSSB1c2VkIHRoZSBmb2xsb3dp
bmcgY29tbWFuZCB0byBzZWFyY2ggbGludXggdGFnIGFuZCB0aGVuIG1pc3MgNS44DQo+PiAjZ2l0
IHRhZyAtLWNvbnRhaW5zIDgwMzQwZmUzDQo+IA0KPiBZb3Ugc2hvdWxkIHVzZSBnaXQtZGVzY3Jp
YmUoMSk6DQo+IA0KPiAkIGdpdCBkZXNjcmliZSAtLWNvbnRhaW5zIDgwMzQwZmUzDQoNClRoYW5r
cyBmb3IgeW91ciByZW1pbmQuDQoNCkJlc3QgUmVnYXJkcw0KWWFuZyBYdQ0KPiB2NS44LXJjMX4y
MDNeMn40DQo+IA0KPj4gdjUuMTANCj4+IHY1LjEwLXJjMQ0KPj4gdjUuMTAtcmMyDQo+PiB2NS4x
MC1yYzMNCj4+IHY1LjEwLXJjNA0KPj4gdjUuMTAtcmM1DQo+PiB2NS4xMC1yYzYNCj4+IHY1LjEw
LXJjNw0KPj4gdjUuMTENCj4+IHY1LjExLXJjMQ0KPj4gdjUuMTEtcmMyDQo+PiB2NS4xMS1yYzMN
Cj4+IHY1LjExLXJjNA0KPj4gdjUuMTEtcmM1DQo+PiB2NS4xMS1yYzYNCj4+IHY1LjExLXJjNw0K
Pj4gdjUuMTINCj4+IHY1LjEyLXJjMQ0KPj4gdjUuMTItcmMxLWRvbnR1c2UNCj4+IHY1LjEyLXJj
Mg0KPj4gdjUuMTItcmMzDQo+PiB2NS4xMi1yYzQNCj4+IHY1LjEyLXJjNQ0KPj4gdjUuMTItcmM2
DQo+PiB2NS4xMi1yYzcNCj4+IC4uLi4NCj4+IHY1LjgtcmMxDQo+Pg0KPj4gc28sIHdlIHNob3Vs
ZCBmaXggdGhpcyBpbmNvcnJlY3QgbGludXggdmVyc2lvbi4gU29ycnkgZm9yIGludHJvZHVjaW5n
IHRoaXMuDQo+IA0KPiBObyBwcm9ibGVtLiAgRml4ZWQuICA6KQ0KPiANCj4gQ2hlZXJzLA0KPiBB
bGV4DQo+IA0KPj4NCj4+IEJlc3QgUmVnYXJkcw0KPj4gWWFuZyBYdQ0KPj4+PiArLlwiIGNvbW1p
dCA4MDM0MGZlMzYwNWMwZTc4Y2ZlNDk2YzNiMzg3OGJlODI4Y2ZkYmZlDQo+Pj4+ICtUaGUgZmls
ZSBpcyB0aGUgcm9vdCBvZiBhIG1vdW50Lg0KPj4+PiAgICAuU0ggUkVUVVJOIFZBTFVFDQo+Pj4+
ICAgIE9uIHN1Y2Nlc3MsIHplcm8gaXMgcmV0dXJuZWQuDQo+Pj4+ICAgIE9uIGVycm9yLCBcLTEg
aXMgcmV0dXJuZWQsIGFuZA0KPiA=
