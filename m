Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 44C9D159F7B
	for <lists+linux-man@lfdr.de>; Wed, 12 Feb 2020 04:21:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727683AbgBLDVm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 11 Feb 2020 22:21:42 -0500
Received: from mail-eopbgr1400077.outbound.protection.outlook.com ([40.107.140.77]:27776
        "EHLO JPN01-TY1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1727641AbgBLDVm (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 11 Feb 2020 22:21:42 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iclboXXV2N2ROR3MLfi2yzuncsbo2+T2YTdh0vEvx2+XPsrWKy984vHr9goAlbNpRALMsvgn8sHqNgyeBA7gOvQwWlQQoWsascEFHHxdxvmgdYAsFIIbdO1riSXNgJqDabVEJ0ONVm3/+fLRy9HHdpPnPM9uS83MJiFHMekqQJjGF6IKpCE6rSJrhEMrJbb2BSHEP6rp5lXbvAfaQj7WThBVGPg+cd/xXbidgUzMymhE6oXDB30YwFmMatKm+ProiherhblKky1io0L3AdYyB4u+nbXeqst1o49+Zgc9MWC0UO8YCKhgNrv6gImIuMzTDpcHg6ydkOII0KIJoI7rMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wACFc0oB8LvOkKjP7fELc68Ayei8LSYnZ8mQKwnuiE8=;
 b=YdiM0QKf7J+LnF3FXj1o+0q5BDouxa3eba3FNo4mBH5mDOvLJ8xlV85z1/iYxoW+8XI+UoqqVqprfZ6zib/btk7QdNmppgQbH9ZV1vYdXcTTuZuBWeeF3i1AAgb//uAonzlsmcYLam+d8WxtUI2yY+u0Ye6FFyetW5Wk2pYjteHiYCTR6zE5NSvP2gB/0Gl9W+mLYQwbFxhPpDwFNphhmjbWSnkL3W4jEVQtNpMStIslJ+kCO82kLz9nWJiljkpU8q/bnU9n7rAaQR+RpLCumhA3jauji/GMlKwl6iUx7Az8yhqSSRLQWL97VY78Awk1Epe/uppTHNmHskHQjnE35g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nec.com; dmarc=pass action=none header.from=nec.com; dkim=pass
 header.d=nec.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=necglobal.onmicrosoft.com; s=selector1-necglobal-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wACFc0oB8LvOkKjP7fELc68Ayei8LSYnZ8mQKwnuiE8=;
 b=vYR7JQsGRwy7NeBHC9TD96XUish+AmXjf8NP78cH/LpBB6RIRsymDYwEUXnTb7YE/xC0lLmOdxQDP86FFceW/0VQ6+kmw7Mqu47rw0+28qwo7KGHbIvW7EAmoWJtMN9CxjBPQRrqtO9gmWXttyJY8dhs+VMJjioXrGvaM8fpeiU=
Received: from TYAPR01MB3296.jpnprd01.prod.outlook.com (20.177.105.19) by
 TYAPR01MB2654.jpnprd01.prod.outlook.com (20.177.105.81) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.22; Wed, 12 Feb 2020 03:21:40 +0000
Received: from TYAPR01MB3296.jpnprd01.prod.outlook.com
 ([fe80::7474:516:14ea:c032]) by TYAPR01MB3296.jpnprd01.prod.outlook.com
 ([fe80::7474:516:14ea:c032%6]) with mapi id 15.20.2729.021; Wed, 12 Feb 2020
 03:21:39 +0000
From:   =?iso-2022-jp?B?SE9SSUdVQ0hJIE5BT1lBKBskQktZOH0hIUQ+TGkbKEIp?= 
        <naoya.horiguchi@nec.com>
To:     Mike Kravetz <mike.kravetz@oracle.com>,
        Li Xinhai <lixinhai.lxh@gmail.com>
CC:     Naoya Horiguchi <n-horiguchi@ah.jp.nec.com>,
        "linux-mm@kvack.org" <linux-mm@kvack.org>,
        "akpm@linux-foundation.org" <akpm@linux-foundation.org>,
        Michal Hocko <mhocko@suse.com>,
        linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH] mm/mempolicy: support MPOL_MF_STRICT for huge page
 mapping
Thread-Topic: [PATCH] mm/mempolicy: support MPOL_MF_STRICT for huge page
 mapping
Thread-Index: AQHV4DZRTsU90Qi+bEKgTRMyjU8c/6gW5qeA
Date:   Wed, 12 Feb 2020 03:21:39 +0000
Message-ID: <20200212032139.GA31425@hori.linux.bs1.fc.nec.co.jp>
References: <1580434395-9962-1-git-send-email-lixinhai.lxh@gmail.com>
 <07cd0750-d908-dd3b-dee1-bc3fcf5bf771@oracle.com>
In-Reply-To: <07cd0750-d908-dd3b-dee1-bc3fcf5bf771@oracle.com>
Accept-Language: ja-JP, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=naoya.horiguchi@nec.com; 
x-originating-ip: [165.225.110.198]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bac7d58f-c993-4316-6c1b-08d7af6aacf9
x-ms-traffictypediagnostic: TYAPR01MB2654:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <TYAPR01MB26545688C7CAB180E4731951E71B0@TYAPR01MB2654.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2733;
x-forefront-prvs: 0311124FA9
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(4636009)(136003)(376002)(39860400002)(346002)(366004)(396003)(199004)(189003)(8936002)(86362001)(6512007)(9686003)(85182001)(6486002)(71200400001)(6506007)(53546011)(55236004)(478600001)(110136005)(316002)(26005)(54906003)(4326008)(33656002)(1076003)(4744005)(5660300002)(186003)(2906002)(76116006)(81166006)(81156014)(8676002)(66476007)(66446008)(66946007)(64756008)(66556008)(14583001);DIR:OUT;SFP:1101;SCL:1;SRVR:TYAPR01MB2654;H:TYAPR01MB3296.jpnprd01.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: nec.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ft5lhX98DY50Gt8wZxxwKSoHffjx2DBWurfSVGY5VcloDQpy6rKNlNK+JJlxFAZw82miBJBBzTysk4nE4AG6KEGW1MNyhZ9JIWa1jcgSlWDDG9M+xsZ0gVQhc8EH29uj8Z3U6gZLn6U64+FMPSjSYQqFMf5nCj5SCGzl4sKV/zTLmy3iDMJjJE3yK1JzVcYVxgUdD+ZTjoh0UA1bUjyj0INbPNKg0UGbyhGOKy1MtH9JrOFJQOnjDA3ugg+luXjI23Gt5PClYmDMbadzR9WQwIGVQb9Gj8NVUuoSyncR/cvUETfqygU10zkhf8QZqlnyQECwPLOlFbYgffywzD60QwmKBTSJmC6HaxIjnzP3OMrTjk2fwU1dw8plkX6EDchEZOyu66n8ejKUjNdD6ILLcmkyHL9g2ICWg8QbIKb3dWg/+xQSsC2Bl/rKUsqOlgPBWfCgQ70uY1rEX0qaIfE0e1zqwxZ8Uf2yd65OQbnQLeAYguT+EIa0eqRASo0mlqSA
x-ms-exchange-antispam-messagedata: 9ym02E5E4MtBCmr6r2SqYPlFGqTsUBBtxqsbEnVIuo8rU5JgKfnyNy5SE19aHAS6Kl3JxFmtImaUhu+ruKexa0wVICDdwuzWelSwdVVr9mhsBkNa5zDGN8UyZnW2P7L0iOLr5WjP7GHm/EpHnKLNzg==
Content-Type: text/plain; charset="iso-2022-jp"
Content-ID: <DB2CFED9777A7440A137B63EB0465575@jpnprd01.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nec.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bac7d58f-c993-4316-6c1b-08d7af6aacf9
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Feb 2020 03:21:39.8176
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e67df547-9d0d-4f4d-9161-51c6ed1f7d11
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Fr1i4GBx6QGU/+tY0XnOdvnh/haMNEZsaXEUDe+tDUdYgZChvYKnGdf+DzeQkrELuLapZq9hWn0EiTwWrZAqFw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYAPR01MB2654
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, Feb 10, 2020 at 09:19:48AM -0800, Mike Kravetz wrote:
> On 1/30/20 5:33 PM, Li Xinhai wrote:
...
> >=20
> > Signed-off-by: Li Xinhai <lixinhai.lxh@gmail.com>
> > Cc: Michal Hocko <mhocko@suse.com>
> > Cc: Mike Kravetz <mike.kravetz@oracle.com>
> > Cc: Naoya Horiguchi <n-horiguchi@ah.jp.nec.com>
> > Cc: linux-man <linux-man@vger.kernel.org>
>=20
> Hello Naoya,
>=20
> Do you have any thoughts on this?  In previous discussions you suggested =
this
> approach of removing the special casing for hugetlb pages.  The code look=
s
> good to me and patch is fine with commmit message modification.  Just wan=
ted
> to get your opinion.

Hi Mike, Xinhai,

The suggested change looks good to me, too.

Thanks,
Naoya Horiguchi=
