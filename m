Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id EF9E915D09B
	for <lists+linux-man@lfdr.de>; Fri, 14 Feb 2020 04:36:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728053AbgBNDgf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 13 Feb 2020 22:36:35 -0500
Received: from mail-eopbgr1410078.outbound.protection.outlook.com ([40.107.141.78]:51904
        "EHLO JPN01-OS2-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1728052AbgBNDgf (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Thu, 13 Feb 2020 22:36:35 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=igeQVwopIjxoAd8bwJ1WMBhV9cuXPMXSTYrevWhLsBVv3boa9DCr0aFkxGP0Q5XkZbHxuPSuaqC/+7O0pjRo6nxBeGzsAEVss4A+AtLsqrqfOikcS+vE2tcLzIJxvp6HMustM1qf3xnWS0OmEUp8Kb4DWEPGEmGofjTjwAICFU/gZJEnj6EAkqwDezxJHaBsG2AfZtoNfA2RE2r7iFfIcrg660VWlu92EG1AVqxobj+9eQcH1siuAMAjIohjz1Ek3zdiW2FGHz/LVWYRCHf7402YRY0EbgmApd165MojWYbaGUsDsH1U2lEbyNvpPGpxlXxXHKOOj0Y0DXvqfuigTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RMw56Kh7JRNWbXkgjDkiEbbADJF2ucyGKCRj+y455wE=;
 b=EAX3PP5Hw4kVs563tZbUbq1weOt/JUc/I5zZcWyGoObiCHfTI5NFpAnRksjBcEDs+vbARxGCQnejK9b2YOBDVXkjgoRY1PM6bzEu2bM6agoAgKJ18aEy68Agu/u9O+hz1mIltS7W5588TbpKrGolSSEARqtokDj8UbSbuZgH6WKbWScP6KU+AdR891RSSU5WJCtT6Ac4RNw8VMcWpoy2ivXjm8c5jyIox8vH8mkqsDsWFf4lUMhhKUS0hft36lW98pIPdeYkCrr2va8bvY3ds/DCE611XhFZMirmQwYqAiOUG0u5XMwe7g6uTTE3rQNAOA9CGbysrG2OMo6tcW00Fg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nec.com; dmarc=pass action=none header.from=nec.com; dkim=pass
 header.d=nec.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=necglobal.onmicrosoft.com; s=selector1-necglobal-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RMw56Kh7JRNWbXkgjDkiEbbADJF2ucyGKCRj+y455wE=;
 b=A3WYme/snPqxFFbiIuiuFHndxQDw+CfhVPFpN7utFtNe8AuWS81ntPbT15Xd9tYdXaDdMStfLWMpazLmnKSGmTxtj5/miT9bNSeopRy6j6i2/XFEV8B4NRoUzTT6TY2rOrZD0t1ArDLv5SUlZXro1R6HN0lWvrDcjtqzutyid0Y=
Received: from TYAPR01MB3296.jpnprd01.prod.outlook.com (20.177.105.19) by
 TYAPR01MB5038.jpnprd01.prod.outlook.com (20.179.174.212) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.23; Fri, 14 Feb 2020 03:36:32 +0000
Received: from TYAPR01MB3296.jpnprd01.prod.outlook.com
 ([fe80::7474:516:14ea:c032]) by TYAPR01MB3296.jpnprd01.prod.outlook.com
 ([fe80::7474:516:14ea:c032%6]) with mapi id 15.20.2729.021; Fri, 14 Feb 2020
 03:36:32 +0000
From:   =?iso-2022-jp?B?SE9SSUdVQ0hJIE5BT1lBKBskQktZOH0hIUQ+TGkbKEIp?= 
        <naoya.horiguchi@nec.com>
To:     Li Xinhai <lixinhai.lxh@gmail.com>
CC:     "linux-mm@kvack.org" <linux-mm@kvack.org>,
        "akpm@linux-foundation.org" <akpm@linux-foundation.org>,
        Michal Hocko <mhocko@suse.com>,
        Mike Kravetz <mike.kravetz@oracle.com>,
        Naoya Horiguchi <n-horiguchi@ah.jp.nec.com>,
        linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH v2] mm/mempolicy: support MPOL_MF_STRICT for huge page
 mapping
Thread-Topic: [PATCH v2] mm/mempolicy: support MPOL_MF_STRICT for huge page
 mapping
Thread-Index: AQHV4hKc1W6/duIwiEiuhsj1lfaFDagaC8AA
Date:   Fri, 14 Feb 2020 03:36:32 +0000
Message-ID: <20200214033632.GA20790@hori.linux.bs1.fc.nec.co.jp>
References: <1581559627-6206-1-git-send-email-lixinhai.lxh@gmail.com>
In-Reply-To: <1581559627-6206-1-git-send-email-lixinhai.lxh@gmail.com>
Accept-Language: ja-JP, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=naoya.horiguchi@nec.com; 
x-originating-ip: [165.225.110.198]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: caec0156-0cd6-43a9-dc9d-08d7b0ff15f8
x-ms-traffictypediagnostic: TYAPR01MB5038:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <TYAPR01MB50385AB1FFF8CDA9975BF2E1E7150@TYAPR01MB5038.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 03137AC81E
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(4636009)(39860400002)(346002)(396003)(376002)(366004)(136003)(199004)(189003)(76116006)(64756008)(26005)(66556008)(66476007)(71200400001)(55236004)(1076003)(66946007)(8676002)(186003)(66446008)(81166006)(6506007)(8936002)(81156014)(86362001)(85182001)(6916009)(5660300002)(4326008)(54906003)(9686003)(6512007)(478600001)(316002)(33656002)(2906002)(6486002)(14583001);DIR:OUT;SFP:1101;SCL:1;SRVR:TYAPR01MB5038;H:TYAPR01MB3296.jpnprd01.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: nec.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vF1f8JV3bMIXiS4qgaDTzDH+ztNUZL49ax7/k06nfJzCLnT7t1w0Bk/0UX4TD9JGrTcpPojAlGlVWqFFhNdVqh2yvgs4xHrIc24W9p/9FmFMMSyFHMY7r3V1Iu0jmUP/tqXMtSCTUJ/AXAZqFgjmd5OnP6fzcUs7ktVvLsrWvGmRyRXB3R7l+pZj4E0tWceJ0qlOdofEBOsUqVLxeGu330/d3kKIWTvG237HjlzjZKH/nzTYXq4P8+KSdUKjqP/4SUP+CFYP56RHAQstt+5A0nyT0E/MbSpbq1E3TIV1C0Bf0Im7flof/hx2A/yI0KF1G0HQ+pHDv9IBfac5aZnQsys6Yi6KrsfD5F52xkQXajvoCZJeh+E5X72pldFq6Dx5c0OotqWmdeLikxijQzNRHR1CuBIIVpV8Ph+vxmjbEzWrZj2DzPRqg4x5oSlxIKgZivkvvhsyNm7HWymij58PrdO44Gn/sfFrw2odRwjnOi8tXJFqnGBV5jT6omp2j8WC
x-ms-exchange-antispam-messagedata: hE0HdhkD0ztqT1i12G0/f/LCe6Qs3z5aDareeJMlZhdPr7KBt6r+7C7V3W/XLRBnVEV19PbxtqoWxP+Zgb2KvmnGecwHPxf7K9UgMPyvoK6JlA65r2CYmOJx1dXqhKh8mqKYUj520q1VGefaKIr+lw==
Content-Type: text/plain; charset="iso-2022-jp"
Content-ID: <6C65868FCAAB0B499A48B99392AE01D2@jpnprd01.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nec.com
X-MS-Exchange-CrossTenant-Network-Message-Id: caec0156-0cd6-43a9-dc9d-08d7b0ff15f8
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Feb 2020 03:36:32.7474
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e67df547-9d0d-4f4d-9161-51c6ed1f7d11
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QW8cRpXR83wimntknZqSQUsbZxzOlwmZt0XauJujZPpv1b5Cda5qmc50HNUMvD0wqHz2dqZdz72XVrhD6+stdQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYAPR01MB5038
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, Feb 13, 2020 at 02:07:07AM +0000, Li Xinhai wrote:
> MPOL_MF_STRICT is used in mbind() for purposes:
> (1) MPOL_MF_STRICT is set alone without MPOL_MF_MOVE or MPOL_MF_MOVE_ALL,
>     to check if there is misplaced page and return -EIO;
> (2) MPOL_MF_STRICT is set with MPOL_MF_MOVE or MPOL_MF_MOVE_ALL, to check
>     if there is misplaced page which is failed to isolate, or page is
>     success on isolate but failed to move, and return -EIO.
>=20
> For non hugepage mapping, (1) and (2) are implemented as expectation.
> For hugepage mapping, (1) is not implemented. And in (2), the part about
> failed to isolate and report -EIO is not implemented.
>=20
> This patch implements the missed parts for hugepage mapping. Benefits
> with it applied:
> - User space can apply same code logic to handle mbind() on hugepage and
>   non hugepage mapping;
> - Reliably using MPOL_MF_STRICT alone to check whether there is misplaced
>   page or not when bind policy on address range, especially for address
>   range which contains both hugepage and non hugepage mapping.
>=20
> Analysis of potential impact to existing users:
> - If MPOL_MF_STRICT alone was previously used, hugetlb pages not followin=
g
>   the memory policy would not cause an EIO error.  After this change,
>   hugetlb pages are treated like all other pages. If  MPOL_MF_STRICT alon=
e
>   is used and hugetlb pages do not follow memory policy an EIO error will
>   be returned.
> - For users who using MPOL_MF_STRICT with MPOL_MF_MOVE or
>   MPOL_MF_MOVE_ALL, the semantic about some pages could not be moved will
>   not be changed by this patch, because failed to isolate and failed to
>   move have same effects to users, so their existing code will not be
>   impacted.
>=20
> In mbind man page, the note about 'MPOL_MF_STRICT is ignored on huge page
> mappings' can be removed after this patch is applied.
>=20
> Signed-off-by: Li Xinhai <lixinhai.lxh@gmail.com>
> Cc: Michal Hocko <mhocko@suse.com>
> Cc: Mike Kravetz <mike.kravetz@oracle.com>
> Cc: Naoya Horiguchi <n-horiguchi@ah.jp.nec.com>
> Cc: linux-man <linux-man@vger.kernel.org>

Thanks,

Reviewed-by: Naoya Horiguchi <naoya.horiguchi@nec.com>=
