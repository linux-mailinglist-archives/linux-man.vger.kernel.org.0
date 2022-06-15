Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DFF1954CDBA
	for <lists+linux-man@lfdr.de>; Wed, 15 Jun 2022 18:04:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237131AbiFOQEd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 15 Jun 2022 12:04:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59590 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232815AbiFOQEb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 15 Jun 2022 12:04:31 -0400
Received: from EUR01-HE1-obe.outbound.protection.outlook.com (mail-eopbgr130049.outbound.protection.outlook.com [40.107.13.49])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 71DF8255BE
        for <linux-man@vger.kernel.org>; Wed, 15 Jun 2022 09:04:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PhPHlFQcEYEDkvons2FRo2ir2zXa3WZ9alOpBmMCoFUzWjQAHrYtshnJ1za1c9EC7qwUQrfu9qRB6AJuLu/ddvAWUOopEBS0ui3F8s1dcvNjkQpSdQ/E3Xn3PWR/PGhI3nkqZTv/N/Qgq/ECiLrnw7AesIHvl/YylC7bOgXgKTUed3Wqv0On7bTElXps4GOTCT7650vjZsK6mdga1wQMQ1SrC7mBrGt5q+TuxmXSZLAkyHhqCRlW3VGUmMyNFxqAFN0Jb7hr9bupdJTQVJr6OiwKUvS636VK/X6QwiVDP5gCO9re5wPR2I6nF35cE+TUvUg5ganGn98TbVgFeTmGKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+QhqjxkCLmbaNAKwDMj00arnoNTeA1PcQrKh9H6aKhY=;
 b=P8MhU0p5YmtfRvcFki9RAG8Ky0qt24D0eHtDKcM8bKBv+Aap0eFUcv/cBK5WGqqbRc/2ebP+pllCU/ikZLDJvwx07hsvDJvWkaLq1g5TM2v+KMuxHRQZvpDS0RJCz3C4lHYg1//XD06Zv8SNSVeQIguBFIYF1wBYilytvSL0usvIzk9OtUBdBZG0sr3UtRzhPGLM/TljydGXk5yh9i4iG2AfCQrelEyzzllTQ9G7qAjk73PImZTJrK80syGOEBqJVxBDhi9v9CNQySbMwZ5/xn69JekS3NZN+v0NfkRhYNxcAPh1fWuG1K88r5uMBSoq9cBXMCOoVMdn18AKBPYimA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sap.com; dmarc=pass action=none header.from=sap.com; dkim=pass
 header.d=sap.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sap.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+QhqjxkCLmbaNAKwDMj00arnoNTeA1PcQrKh9H6aKhY=;
 b=BwdNRHFTcuuLWxyk7jfpLrAGpfeLR01x+UvCVto7CFxvnFd8fA2zLEF76D7jvZ8tYj2OTl95lo8jElxI31zP4TcVJmNMOi16RINEAARUMaCr36pfYVgO0pZBvjZB3d7vhIgMmHX/tmnwkW5HH/+nG3d5G6IoJK3VTr+pH5GV+Q5/oBwS3FYLEllHsUbUphLxaPx773/wH2hJ3I4jtit9REPDW5SiNjDEGf02s06fLGJMvFbB6A2OaxV8ZsVhOyVfQwJd/ofY+/geV0FdFgjhXsa3mHNKC6yLDlFHK2tzxIwwZgjAmI1uwASNWJJdozIrYvgcIzrvLPkxz7vLQ/v2nA==
Received: from PAXPR02MB7214.eurprd02.prod.outlook.com (2603:10a6:102:1cf::8)
 by DB7PR02MB4380.eurprd02.prod.outlook.com (2603:10a6:10:65::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5332.15; Wed, 15 Jun
 2022 16:04:27 +0000
Received: from PAXPR02MB7214.eurprd02.prod.outlook.com
 ([fe80::8939:48a4:e329:55f5]) by PAXPR02MB7214.eurprd02.prod.outlook.com
 ([fe80::8939:48a4:e329:55f5%3]) with mapi id 15.20.5353.014; Wed, 15 Jun 2022
 16:04:27 +0000
From:   "Schneider, Robert" <robert.schneider03@sap.com>
To:     "mtk.manpages@gmail.com" <mtk.manpages@gmail.com>,
        "alx.manpages@gmail.com" <alx.manpages@gmail.com>
CC:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: [patch] RLIMIT_NPROC not enforced for root user, irrespective
 capabilities
Thread-Topic: [patch] RLIMIT_NPROC not enforced for root user, irrespective
 capabilities
Thread-Index: AdiA0YOYWpD0HTd5R7e2cMxv2Z3dGA==
Date:   Wed, 15 Jun 2022 16:04:27 +0000
Message-ID: <PAXPR02MB72147C88F7E9F82CC1AA577F8FAD9@PAXPR02MB7214.eurprd02.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-processedbytemplafy: true
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=sap.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 853036ff-4c70-4984-997c-08da4ee8b950
x-ms-traffictypediagnostic: DB7PR02MB4380:EE_
x-microsoft-antispam-prvs: <DB7PR02MB438012BEACDFDA8980CBC28E8FAD9@DB7PR02MB4380.eurprd02.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zyRs138H0lByGnwdVsnZcTrIK0751/eDkNDBuxx048t20r7H1Bndok2c9yts4yjbL/HZSGkLPddKvkzNw9j1rYaHxfqPmV/fTqx2j4ZFQzMCKjdN5fJEJMB62KIlBOiXEJq3cNeT0CGQ+Tmn8TJbmHVo7ZEFXZHVItX08OHtof72+jIJ7JnyVGB3J4cJs8ftAkvxmd23c0uKE7uJTWpwNl1Ii8BzvvUxf1/bkd35apPZHiGZ+V+aVaKL12MrE2e2SU/W+Z/dNrRocmIetea53QCz+tr6XwxdUy5m4rn5mcJJokXXPTMza8Q+U2Z8solWxquPm/c9qCCRmI4W3nLSevux6jy9i4Kwb5fVeRpYZ+Zd+63qiWuEpDghWqb88n9IR2y7X7WSLM25kqJRmZ0Gsh1XaFbeOQ01LGCPBbsuFilD4k9HdOf2JksxSvjNdqwI0OYr6Ql9xk98caRx8e7EikPdppvisKMfbqdQIi+m1/aUwnBCjch3bfxTEYtEKWzgodssEWkutArD7yEDo+iGFf3yVNqDse4XpQ4h5PWQ1wit0hBNkV1XdxBl9NbS2EjfCzlT6ubpFAogK4WTepvr/Mp6ibwOIHz7FyzXSuoQCjrpSTVE21eEso6Z2Vbk7rIeneyeEs+JbKuPycBzP7Q4HuGGMeLwUx/fo1uDG0oG/WsG7m48wYuFP2yDlTr1fKO+gkW3G+8QEW4yeLwA7B1AqUajzxl0cprSdd3R957yxt+JvdjDga7sGwyrubxS19xJTp9UMV560n4G68Pli5yA6KdpBiuxaqE9J1rO1/vgCK8=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR02MB7214.eurprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(366004)(4326008)(66476007)(38100700002)(966005)(7696005)(8676002)(83380400001)(66946007)(64756008)(76116006)(8936002)(66446008)(508600001)(6506007)(33656002)(82960400001)(122000001)(110136005)(316002)(55016003)(66556008)(2906002)(5660300002)(86362001)(9686003)(186003)(38070700005)(52536014)(71200400001)(26005);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?d3g0c0x1cTc2ZUtPUENBTjdrMStLeVpGcXIvdlN0OStzWGFrdVBjTFp2Z0ZG?=
 =?utf-8?B?NTlsVVI0S2R5dXpFajJLOC9kbkswMDFwZ2FIM3Q2R2E1aWloenBXQUo1OFg0?=
 =?utf-8?B?V004cHBneXJJNjNvMkQyWEVkZkRVUGk2cjlVZjlHci9MN2h2Z25UbkUwdElO?=
 =?utf-8?B?L2hnNGEvNmFDclB5RThFc2ZsRnY1M1JkUUlhN3ptWHM3a0RYczlvME1Vazd5?=
 =?utf-8?B?WTFxMTJKQjhMREVQdnkvNVY5VkFmdEJrM2drWDdoSDFHUWJQT3RrQXB5NkZ0?=
 =?utf-8?B?ejRONzI5S3JrU3gzZ2Fma1FyejRvTDVSY1ZlQ1EvcG80ODY0TFJiR1Y3czVo?=
 =?utf-8?B?Yy8xL01hRlpCVUhCSVlHZEFzM1k2NXpENFZuVGFjV0l0MlNacVNjcnJhQ29E?=
 =?utf-8?B?QmJUSkpZZmpNUzMyVEphNFRsMGNzWU13M0tBTGRjNkJrdU5KRjUyeGc5c284?=
 =?utf-8?B?N3Y2S09vY1RxM0FCRC9VcXd1dGlVOFF2RDhUcEM0ai8wU3QvVURrZURUTFZH?=
 =?utf-8?B?bXZCSXpRSW90VUZkQVNkT1RyNVNoaDNQUTJQQXlKWHQya0NRRzZmOHg2VEFD?=
 =?utf-8?B?NldhVjI1REVzNDJDaWt1TVFXUmJqWThVck0vYzVRUWtBKzh2Vnl6c3pURkVJ?=
 =?utf-8?B?cHZ4Nzd4L0xkTjhZTi8yR3Jnam1nZXBEUmpmT3dENFF1OWJWTmtzUlBvaDN6?=
 =?utf-8?B?UUxlaGdOeG5zYy9uYm5kc2FzWTl6YmJSWjB6bEFTbW8yWGRwdlRLbHY1RFk5?=
 =?utf-8?B?UVV4aWhrSjZRdmhCQ3oxREJ3VE1ROU84M3kzRHljM0lJWWptTkFjMVE3Q1ll?=
 =?utf-8?B?Q2tMRlVmbEpjMWp0aDN1TGtDVWx5TzFya2lwYURJRUcvNG9zeit0SHNaWnpG?=
 =?utf-8?B?WlJBZ00rTnczMVlpTXZoYWo1SUxuRmhtUmhHOEdmTG4wTmM5bTRFdmo3b3lT?=
 =?utf-8?B?VGptL0F5UW9ZQmpKakNidDVjUE5tT29TaFlUQS9YRWRXVG9tNjYrempVaW9I?=
 =?utf-8?B?Z2k0TlRRMDBhS0p6SjZwQnpaU0ZaRUI2VDJ6Q1IyaDd3a0RHYWxFRUR1Z3Vz?=
 =?utf-8?B?TVMxVW9OMXpYS3c3YzhpV25RU21hWndCWFhjemhjSlIwbnY4USs0TmV2YUgx?=
 =?utf-8?B?d2M1MXNhK3M4RExJK0Q4UWY1MTNySUlIOVVHM0dMK25xNVNpZUFDQ0ZBaEts?=
 =?utf-8?B?bTA0NVpENEUrRVR1dTBNWUlIVFpGby85ZHU4WUZzK2ZtYTM4SFNXMWZnS3RG?=
 =?utf-8?B?RWxXbnVBOWtodWNvTUptZ1h0R2V1aWtwTWpwV0JlZVhtRGw1RFh4QWhqR3p1?=
 =?utf-8?B?SDhiaGNLVmVRYlJsY2Mwclk3STVVZ08yYVpoeXNNZ2ZzQ2t0WXd6SWRpZEpD?=
 =?utf-8?B?Y1NqRThudDdSM3hxRmxsNklFcUhGaUxFeE1NazlyZUtGczRiRUVJZU9HR1Ez?=
 =?utf-8?B?N21Tcm5PZjJ0T29KZFJyM3cwQ1hrcnBSRnB6VTNZSUdzWHNiU0d2QTUzY2Qv?=
 =?utf-8?B?RXo3ZGxoVzlHTmQ3TjFCTzN1ajVLQm16OTJ1U1gzS0Qza0ZQREgyUzdiQ21n?=
 =?utf-8?B?eUJXRWZqVlpURUZWbU02TnRLaG1PYmpheVVFelZsaHJ5RUV2cjljT0ltZGlC?=
 =?utf-8?B?aXA2NWdPbWpLem1ldmhFRU5XV29DMmNZRkFIUnFpRFQ3UDlzZUlkWXprd21S?=
 =?utf-8?B?NmZnR3NhUmtHTmtURm9xdWluQ0xvdGQzWEczK2tnNGp0NWlOdXFzQkF4dDIy?=
 =?utf-8?B?Ui9WS2MwUkJtOHUyV2J3SjVKMDlveVRBblNYY3o1V3hwQ2lBZThubm9YRTBV?=
 =?utf-8?B?Y3V4S1BxY1Y4Y2JaTitwSlMzcCt4Z0tDR01MMUhPOFJUZ1pVMEl2RTRuREMy?=
 =?utf-8?B?ZUVXYmxyR2J4Z1hXRVFta09aMUNPU2Q0Z21La2wvSFFPY1kzRGVzbFFyd01E?=
 =?utf-8?B?WEUrL0Y5T2VjZHFvS1lJanpNMWJaMXpLcm1WU3p3K1hyS0ZwdlRJUEUyc3Z2?=
 =?utf-8?B?bU53QjRsbDRLR3kzQmpLT0tGSEdGeHpxY21JNjh6aitTc1NqRkR1YUhoUjY1?=
 =?utf-8?B?SElJa1pCVWZVMW12L0xIdWRPZ1lHdlFpSFludXZmNW5uN2dzTmVPU3hOeExz?=
 =?utf-8?B?MFJmZzFibURVSTBVbStTUDR4SnpEdUI2UzEvSCtoSVk0YlpZNjRZakNSdzZR?=
 =?utf-8?B?Q1FQTUhHRkV5S3F1Yk9FakJwejdubVJ5QWx3QzZzazFYTFhobWNtYVB5c2l2?=
 =?utf-8?B?RXJMb2dHaVNlSnFoZCtPNFFwMnBWOVdGTDExL3BtUUJacHFqT01odU16Mk44?=
 =?utf-8?B?R2V6c3NzZ0VTOFE3b3VlNVdBTEFkVDg5V0ZyTnpZbHlGQUFmR3pnOVFEYkhM?=
 =?utf-8?Q?JpHTYBp+cXkvFiWg=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: sap.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PAXPR02MB7214.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 853036ff-4c70-4984-997c-08da4ee8b950
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2022 16:04:27.4324
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 42f7676c-f455-423c-82f6-dc2d99791af7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fabFgrA63MFlrNbo6SLSTimAZdapHLL/vIwcx7dSDjJDWBHH2Zg3V7N1m7K98EUhC5OPhxhJc9BAaiQodtelfH/IReLMVKViNIsT/fHOJXU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR02MB4380
X-Spam-Status: No, score=-2.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FORGED_SPF_HELO,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

SGksDQoNCkkndmUgbm90aWNlZCB0aGF0IHVpZCAwIGlnbm9yZXMgUkxJTUlUX05QUk9DIGV2ZW4g
aWYgaXQgZG9lc24ndCBoYXZlIG5laXRoZXIgQ0FQX1NZU19BRE1JTiBub3IgQ0FQX1NZU19SRVNP
VVJDRS4NClRoZSBjb3JyZXNwb25kaW5nIGtlcm5lbCBjb2RlIGlzIGluIGtlcm5lbC9mb3JrLmMg
bGluZSAyMTAwLA0KaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvbGF0ZXN0L3NvdXJj
ZS9rZXJuZWwvZm9yay5jI0wyMTAwDQoNCiAgICAgICAgaWYgKGlzX3Vjb3VudHNfb3ZlcmxpbWl0
KHRhc2tfdWNvdW50cyhwKSwgVUNPVU5UX1JMSU1JVF9OUFJPQywgcmxpbWl0KFJMSU1JVF9OUFJP
QykpKSB7DQogICAgICAgICAgICAgICAgaWYgKHAtPnJlYWxfY3JlZC0+dXNlciAhPSBJTklUX1VT
RVIgJiYNCiAgICAgICAgICAgICAgICAgICAgIWNhcGFibGUoQ0FQX1NZU19SRVNPVVJDRSkgJiYg
IWNhcGFibGUoQ0FQX1NZU19BRE1JTikpDQogICAgICAgICAgICAgICAgICAgICAgICBnb3RvIGJh
ZF9mb3JrX2NsZWFudXBfY291bnQ7DQogICAgICAgIH0NCg0KSSBkb24ndCB1bmRlcnN0YW5kIF93
aHlfIHVpZCAwIGlzIGV4Y2x1ZGVkIGluIHN1Y2ggYSB3YXksIGFuZCBJJ20gbm90IHN1cmUgaWYg
cC0+cmVhbF9jcmVhZC0+dXNlciAhPSBJTklUX1VTRVIgcmVhbGx5IGNoZWNrcyB0aGUgcnVpZC4N
CkFueXdheSwgaGVyZSdzIGEgcGF0Y2ggZm9yIHRoZSBtYW4gcGFnZSBvZiBnZXRybGltaXQgdGhh
dCB3b3VsZCBoYXZlIGhlbHBlZCBtZSBzYXZlIHNvbWUgdHJvdWJsZSA6KQ0KDQoNCmRpZmYgLS1n
aXQgYS9tYW4yL2dldHJsaW1pdC4yIGIvbWFuMi9nZXRybGltaXQuMg0KaW5kZXggNjQ4ZmQzYzg1
Li43MjY4NTU2ZTYgMTAwNjQ0DQotLS0gYS9tYW4yL2dldHJsaW1pdC4yDQorKysgYi9tYW4yL2dl
dHJsaW1pdC4yDQpAQCAtMzU5LDcgKzM1OSw4IEBAIGxpbWl0IGlzIG5vdCBlbmZvcmNlZCBmb3Ig
cHJvY2Vzc2VzIHRoYXQgaGF2ZSBlaXRoZXIgdGhlDQogLkIgQ0FQX1NZU19BRE1JTg0KIG9yIHRo
ZQ0KIC5CIENBUF9TWVNfUkVTT1VSQ0UNCi1jYXBhYmlsaXR5Lg0KK2NhcGFiaWxpdHksDQorb3Ig
cnVuIHdpdGggcmVhbCB1c2VyIElEIDAuDQogLlRQDQogLkIgUkxJTUlUX1JTUw0KIFRoaXMgaXMg
YSBsaW1pdCAoaW4gYnl0ZXMpIG9uIHRoZSBwcm9jZXNzJ3MgcmVzaWRlbnQgc2V0DQoNCg0KUm9i
ZXJ0DQo=
