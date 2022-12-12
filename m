Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D9C5D64A617
	for <lists+linux-man@lfdr.de>; Mon, 12 Dec 2022 18:44:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229872AbiLLRoJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 12 Dec 2022 12:44:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48436 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231481AbiLLRoI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 12 Dec 2022 12:44:08 -0500
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on2100.outbound.protection.outlook.com [40.107.236.100])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 14D7013E2A
        for <linux-man@vger.kernel.org>; Mon, 12 Dec 2022 09:44:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BM8J4smH3ckb6nRBrnD5Sxq+DF5L6bQQkJNfcjYgeCennc95eJahM1rrMcRpN7eXPCsa31IQ1GONZaOUGADDRTY2O9nGACz/ljaHExtMIlKrw6c+f6EynyACzGUawapqLTfxpel1CE4BrsR2VRBnVM5n2xL4nUo9nEMEC6RZxrQSjdT+HS0UMn8vM8cPRhJmXHDrd+5T90bmuTIbQCPev0KlmQHyNIi0uyny7s9hfVpGOsbQvvWooFRNhAG81hCctJHKVQfzGq+E6DxTIv93qhG1WgP+1T3Bo/q26AiDynJ/tL0iSiRC1mhCrogY5tWXvXU/VtpYerPv8FS+JANoKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jT3VoYWYB4js1fo4La4J8C0r6n6EEbIX/zaJYCZtoTw=;
 b=g9HmCTEJjsciuUVP+YOTdhnUnpG3FBDx7FuuMxVS/TjLcLisRVWXhEvZN6ABnQKRPrt0NHPv/Z0q3dHvePnzUkzLPm5NJ9UsxOTc18GcyT8AScP5S/tUVLQfhoSC+Bzg3ej+5KtN0rTZmH473CS3LCYOU7jMZe+cR9ck2Z+qiv5Hm7gKzR0zn2FNdADCncs5tFpPCWL3nmZYVTLOKzhy9vnhRDggpzTCz8UMOLUQLC59z7cPWWz1CYzwr0aIe9HgmUClV+g3pqxcR2Ez8QxLmQppRzASB6i7t8qX5loeXHWLK/M0Rjnp+mKQKpcu/D5L8i7j6SMlzgIEM3yEBbdEGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cargt.com; dmarc=pass action=none header.from=cargt.com;
 dkim=pass header.d=cargt.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cargt.onmicrosoft.com;
 s=selector2-cargt-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jT3VoYWYB4js1fo4La4J8C0r6n6EEbIX/zaJYCZtoTw=;
 b=bytbme9digG2K+aTmkOlIygxrnPYyhx+k/OGoiiXXdVizXF/0EUg2JM+U8A0F0MDzwZZaQ20PUNnVVgLTHH+lhJM/PHmw1Oz3H0zdURMoInFwFt/Upxbq9Jgpnj0gHykfZ1Uy5cacQBS2mlqayFURi+5aRQEiOHp81dyBL/QOQ8=
Received: from BL3PR12MB6595.namprd12.prod.outlook.com (2603:10b6:208:38e::12)
 by MN2PR12MB4125.namprd12.prod.outlook.com (2603:10b6:208:1d9::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.19; Mon, 12 Dec
 2022 17:44:02 +0000
Received: from BL3PR12MB6595.namprd12.prod.outlook.com
 ([fe80::6ce8:be46:a918:71b6]) by BL3PR12MB6595.namprd12.prod.outlook.com
 ([fe80::6ce8:be46:a918:71b6%8]) with mapi id 15.20.5880.019; Mon, 12 Dec 2022
 17:44:02 +0000
From:   Josh Gentry <josh.gentry@cargt.com>
To:     "mtk.manpages@gmail.com" <mtk.manpages@gmail.com>,
        "alx.manpages@gmail.com" <alx.manpages@gmail.com>
CC:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: RE: Systemctl man page
Thread-Topic: Systemctl man page
Thread-Index: AdkOUCrCRSSIpQ2xSlCElq6HpHm3xQAALOow
Date:   Mon, 12 Dec 2022 17:44:02 +0000
Message-ID: <BL3PR12MB6595802B726BBA705B2AFCBDF5E29@BL3PR12MB6595.namprd12.prod.outlook.com>
References: <BL3PR12MB65951A6382B9F21CA0E4BC8BF5E29@BL3PR12MB6595.namprd12.prod.outlook.com>
In-Reply-To: <BL3PR12MB65951A6382B9F21CA0E4BC8BF5E29@BL3PR12MB6595.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cargt.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL3PR12MB6595:EE_|MN2PR12MB4125:EE_
x-ms-office365-filtering-correlation-id: e6008b21-3727-4b8a-3c10-08dadc687509
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sGXzVqAeKN6XRSLAL838+xPUPdV9+Vk5Q+WmSftH8FeuezdEYjuJuDglFqYkGR2wIcNLRw7aRDdc4D2m7mYxzD8hIm7SquZ1GWi6gzC6wWPyynNuPw2a4Xv/B+hcx6exbZ5gLPVeMDpeMv5qpDC4zjI132DywBGi+M3HKQsNCjnpv9JgPEC2R9wKqJRaX7TBXmvnif0weBlUM+jSfm6neW3P+mfdIYphtVnFjGGDbAw3ucP0oyS95eVpwVZ/XPP4Tk0FWuCvqzCOBb8DEJFTvglbySWn4ZpIH+0o8yCObZAhZ6n3EnsmHtCNcc6TOv5VjgtUhonsxVZEeOzaZ/gxP6jU+E88rfnOS82p73FD3Yi25rHR7MlK3rlZqFBkNaIjkogpfGlxBcrYURe7zk8coKfIcsJBFfvf/YatXX5gVtoE9vxSVKI7FrrKQaGPWS0XAiZ6dRYeNDAg7G20GHeW0rH5/XC47JC1N/fkQfF5eEEFiag7wYrSl+gu1j8hhba8uxUAN/hGQKPXYR+xUHtlc3Tn6zqOqKijn6hmPj/wuQ1gRJGGjzyS41DJbI+2wPRce28h95gXPzog0Rzhkq6VLyVLf+tPVgSRVe/2kyxmGQ4GFlyvTR/DuSzGEKUjCTdVfmFg6IqtbgApFI7HgiMgkWM3yPaY2Do7uDDh6+jOvMDMKpGZEh38Zmzd7GeWxparwgNU22olhytcU5bn9m26wRnuOzE/6ZaO/7BZoGEbpXk=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL3PR12MB6595.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(136003)(346002)(39830400003)(366004)(396003)(376002)(451199015)(2940100002)(122000001)(966005)(26005)(478600001)(9686003)(186003)(6506007)(7696005)(71200400001)(83380400001)(38100700002)(3480700007)(66476007)(66446008)(64756008)(55016003)(66556008)(8676002)(110136005)(41300700001)(7116003)(76116006)(44832011)(4326008)(52536014)(316002)(2906002)(5660300002)(66946007)(8936002)(4744005)(86362001)(38070700005)(40140700001)(33656002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?3yWUmMAuejJrv5JYgwCSstdSAJOpqdpQVs0rdejJ4dy95o81RJ29O2y/vA?=
 =?iso-8859-1?Q?7yVyvviIKU7itaI5o1z41lGsljwcn5LIogO3pVPipAI5bhdPChP4WxvSB5?=
 =?iso-8859-1?Q?dfpkezFJBpElGBifoET1iJCE4ChTLXCvmuknGIeqZj+RvH2y7B4sV0c9q8?=
 =?iso-8859-1?Q?rniUDD4DlKcOZ6cbf3sYtVccTsevu1kklw6HEsH3h8yMPliVCuwRcSrOij?=
 =?iso-8859-1?Q?RI7j2TRNRlZ35NzH7Bns4B6p2HA+8JYMTJGYFz5cdAnY+ieLGKzENuA4Ql?=
 =?iso-8859-1?Q?fl+TwdYclldhCY1iEurMccTrGfxuWvLcAYL38e63gHvhFDNaIhKIE2zd3X?=
 =?iso-8859-1?Q?ADzZjeh2w7FW7EKdvnm4JZ+Eq5R5OdwIxPPUwgfEW65qX3/lnsQ7nAIjr4?=
 =?iso-8859-1?Q?VV0dT99sb3exeK4xCpYO6T53x+dKvgeP1beH/GSi/PFBjQPffPQI/GbIFu?=
 =?iso-8859-1?Q?LTjkg1MWLdaGDQm9ShEc13nCm505FnkqSdf9aE3iJMh91qbDF+Tx9JlxTY?=
 =?iso-8859-1?Q?I0aSSMcAdnkBNUrASsiwUtOuWO3Nl/1VfagMafS1CbdN+xRdwO9k6YeC0e?=
 =?iso-8859-1?Q?rJUQ43NRyzBD3NXzGhcmLcybf42nSAO1ZdbrGLBOXrq/RtT98CY2WsNnHl?=
 =?iso-8859-1?Q?AxrfF63l13ALKzFDcJrpFT9e7m13zaueMmdHD9+tactBix9xa6k7G9V0sQ?=
 =?iso-8859-1?Q?1vf8IvwrKJQ3GdQoI79/dwHOAM8PQ+f9qg19gzHRXtMEdnd4fS9V7p/8ci?=
 =?iso-8859-1?Q?qOfLyHawXxNy+AFstuTuyGRelQiYQGgf2VLv3vBacS6wA6+P4RBM+stGDp?=
 =?iso-8859-1?Q?MPiPOzStA2kSic1I+dw6GZxfuuoHsTAgDy/e4FOxO06GcdIL/67vV/nb1t?=
 =?iso-8859-1?Q?daFMyjdKpBVu+iLc8BW/nGXrL19K3Pftz4oFffheEfA397RClyqQfEYLVG?=
 =?iso-8859-1?Q?ntfi9XuoEMBGQYKiWedhE3FUwtMtGC1D7sek/das0fa+DQDUNjw7DeW+Vl?=
 =?iso-8859-1?Q?octJYrtNm94MVPK51lDhQ3bY6uNN+590yTftFYMJxeWU03ziYJ6Mov0+o6?=
 =?iso-8859-1?Q?wGppFKrKlsXZkl55BsYO28pmTw8QopH44Dtu1Itnf3CMhbKe7RGP5ZQ4Nx?=
 =?iso-8859-1?Q?i89QPRKUHvan9GeLy36YsYfHrq/Kbh46h41ADC51ZcLmg1HmFQNMWicNor?=
 =?iso-8859-1?Q?wgmFrjfmoWILnosmI5blQ3FrTcktDQWiVZW0mDb6Nnu8rpvyOK6OwngOwa?=
 =?iso-8859-1?Q?GZ+b2RmIbRlATWY9WP02cRMYt3WJE3KIHETPJqmKDYFMpJOv3OXqhLWPDW?=
 =?iso-8859-1?Q?7mZWduoiqDJawx9YhrjTmYIYl/sT6MbUBQ9V7wnSvIhjyTIaAfN262un5y?=
 =?iso-8859-1?Q?9rcqCX2tZ0cE2oyejt9pV4suRs7ZjjmnfFbsE5QC3wugWVHae6gaHyKw2H?=
 =?iso-8859-1?Q?hlnfUmp1DSwvR73+GEe3dvF9h30YKm/kFjGXLOc4bQRlJ0ZfVVWaW9JGr2?=
 =?iso-8859-1?Q?uW8q1JOwGnVvk70HoVcHdJ7y3KwOaOC3f1jYt+3gU2iA9XMEhRl728CpBO?=
 =?iso-8859-1?Q?gl2YManwL+G6QGlpQx5FOMyf4MuEfCg37Z/UXiMSgvz8Cia2njHQR0caes?=
 =?iso-8859-1?Q?Bev947qjV9CFt1GIL4TNEk4ySeDhLJGXpN?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: cargt.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL3PR12MB6595.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e6008b21-3727-4b8a-3c10-08dadc687509
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2022 17:44:02.4439
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 86e1de54-319a-42df-8fb0-4d915f8be14c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jYctwm/0VT8Ogyv12GYGrX/1SBjkdkTdW6PijXMzziERcPPkCVjH4RNzcWzB7s3FNinXBGhyLEZ1OAsEi+fO4g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4125
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

In the systemctl man page, under:
bind UNIT PATH [PATH]
	...=20

The bind mount is ephemeral, and it=A0is undone as soon as the current unit=
 process exists.=20

	...

I believe 'exists' should be 'exits' but this may just be weird grammar as =
well.

I used this link to reference the systemctl man page:
https://man7.org/linux/man-pages/man1/systemctl.1.html

Thanks for the excellent man pages!

Josh Gentry
Cargt, Inc | cargt.com
9825 Widmer Road | Lenexa, KS 66215
785-304-4400

