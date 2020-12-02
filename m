Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 045162CC487
	for <lists+linux-man@lfdr.de>; Wed,  2 Dec 2020 19:08:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728569AbgLBSHr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 2 Dec 2020 13:07:47 -0500
Received: from mail-dm6nam10lp2101.outbound.protection.outlook.com ([104.47.58.101]:20626
        "EHLO NAM10-DM6-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1728414AbgLBSHr (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Wed, 2 Dec 2020 13:07:47 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P8BHv6k/Q8bbiOivNhDnBdaMbD9aga0EqtnQ99hpu9WH9NOu4yFS2yrN42YxkvTkS4zdGeUbx/DqeUZtqz2HRiTCIGgcp8h2QXeWPa8SDPv4Er1WBms8yP7P/cqQaZy3PibXryiAmok59ypFhTlCuWgrNnFB4AHjoAYsItP+TamGL0ChcUcViqfzMYg2JA6YuAZIJ2TkzD9qQvhrXk0P6GB3b7ogyxjSoW6SLh+HMBxDv1RMIDu5dw9IhXLiL7b0NMnrn0ha1shWzMBBpFV8MCYEefHfYTUqGtnAbRfiP8vX7tbMId3Pjcp38mIAYB5UgZ0SXaFqQ3terZDYXeYAVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mdrApkw+QKNa+kO2QTOjwR+BFWu6okvaR2Iy8oq69yY=;
 b=jM+rTHrwjN6aGynhZ+/apol5+9TwTRbEMuQj/EeSFbrnJQ47hEPxTn9tEGKNFcwSmSzEltK5hGF9r4xHgDZqe4GYtzpWkVK3uAwJn1ypqjpUPVLVwzwKmRFScaE4ejD/n39WOqg8zndFqlm1xjPX8Iblh/g8Qg61CuDtxSSGR/VtZmp8elFUum9JjWmBBtNdLFijGNF2uhkbx2/kSPaSjmFUB0aceAlOcjuGkuSQerTEtzfJ+EhN0a78Lw2TE1D7fFbxPgc9IiJxACV7+/cqN17s03fA9zwa4LiuC3x3Ft6ZGb4Ego00ik79m9miNDhOql3Io/woxF9bYjIpu/fkXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wustl.edu; dmarc=pass action=none header.from=wustl.edu;
 dkim=pass header.d=wustl.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wustl.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mdrApkw+QKNa+kO2QTOjwR+BFWu6okvaR2Iy8oq69yY=;
 b=WG0D8OExwSwq0ra1c17cYiEDJ3svYFZ6lOvjR9LyIATqC8J/62hQxNXOexa3srF1Hp60SQcvyXvg2NYTJ5vW4S/lCmPxlJO7S5kgVqzTqfpnYOeOS9zCe1/CGzPiI8s6sAjlXMBnfRsqiH0opNAxatecKd8C5KoX+mxWyfFatqOdXlXPS0vCj/Eft52ztzMTp5lUxhIQPnr8nBX96InGxwg1Sb0DY4NzYweZ2jZ1b8Zh2M+bvZ5/r7GqmX2QHoQwkLVMER/IvIKFSQtzDEtOeMBfae7IAClDOZvqQ8x1AugtJCkHlyBkgx6+4feChNYvNp5HIo+npQ6uoPzoVfVLLQ==
Received: from DM5PR02MB3687.namprd02.prod.outlook.com (2603:10b6:4:b0::15) by
 DM6PR02MB5914.namprd02.prod.outlook.com (2603:10b6:5:150::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3611.20; Wed, 2 Dec 2020 18:07:03 +0000
Received: from DM5PR02MB3687.namprd02.prod.outlook.com
 ([fe80::c823:9583:e1f1:2102]) by DM5PR02MB3687.namprd02.prod.outlook.com
 ([fe80::c823:9583:e1f1:2102%7]) with mapi id 15.20.3632.019; Wed, 2 Dec 2020
 18:07:03 +0000
From:   "Sudvarg, Marion" <msudvarg@wustl.edu>
To:     "mtk.manpages@gmail.com" <mtk.manpages@gmail.com>
CC:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "bert@hubertnet.nl" <bert@hubertnet.nl>
Subject: [patch] futex.7: Semantics section: Race condition in locking
 semantics description
Thread-Topic: [patch] futex.7: Semantics section: Race condition in locking
 semantics description
Thread-Index: AdbIUsIsG3iA6HxESV+rUO1lseLFkAAgtc+Q
Date:   Wed, 2 Dec 2020 18:07:03 +0000
Message-ID: <DM5PR02MB3687FF95271C8512DE9BA075C4F30@DM5PR02MB3687.namprd02.prod.outlook.com>
References: <DM5PR02MB3687609B599F7773193DE31AC4F30@DM5PR02MB3687.namprd02.prod.outlook.com>
In-Reply-To: <DM5PR02MB3687609B599F7773193DE31AC4F30@DM5PR02MB3687.namprd02.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=wustl.edu;
x-originating-ip: [108.66.78.62]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ebc280bb-02e1-4636-521c-08d896ed124e
x-ms-traffictypediagnostic: DM6PR02MB5914:
x-microsoft-antispam-prvs: <DM6PR02MB591405F76D81D9B56BAD6FD6C4F30@DM6PR02MB5914.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3631;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GXveDAgcwKteXppuei9HNpsBvW9i6ZnlyudVZdJ3x+uxiSuIu6sJi6JBF/JolsylItk1kQw7b9NSPC1eMQ8+KIbQNOUQwOJjI0/yje6ca5UHOhf88VLFPJ0S9/btDs+UT8RbW5NwFMr8WRxSpikMqNbpm34GHceAPzPisQS2Q7gUFiSIqlCBUoo6ZthLlGUFPJjJZ8S/0VVavznIf1eN5AWwQjBKcI/vzcwDSlVPhAAttFhMqAgDkpS+tmI6F+KjSErV9hK/eSvuQofZhcrjoLBzLQ7O+PrEbPZIW65jqbcLvteu/F122qMe/H5wlEsV
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR02MB3687.namprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(376002)(346002)(136003)(366004)(39860400002)(396003)(86362001)(52536014)(2940100002)(76116006)(478600001)(4326008)(6916009)(55016002)(316002)(9686003)(8936002)(75432002)(26005)(8676002)(6506007)(66446008)(83380400001)(66616009)(5660300002)(33656002)(64756008)(186003)(71200400001)(786003)(66556008)(66476007)(2906002)(99936003)(66946007)(7696005)(54906003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?9VOMr5YHLNNsW37/jD8S5HY4rGJBWrZcZF6PMj682gshv9xcDkTdSFMpRmPD?=
 =?us-ascii?Q?IIwGO7aIUGGmI49Zf4r3AavlWeVsLoZ7Y/HIZ/hEHMCkrFK3P11FFLn0g4Dp?=
 =?us-ascii?Q?PVQd2S1Z0uQTAJ5806LUHGnydCEAcQL8fA2ALrlQMIvWM7hSCSPvdPdv9E1U?=
 =?us-ascii?Q?IAnxqeIo2rkII7ttqyhbT3g9zC/zbNpgU00WlMYTNcK5To6+RxV34WLxURdM?=
 =?us-ascii?Q?qZzAO5pXSrwFS5d/3P1UaGYYVn0xq+W3kuRRHRFU4pdPh96eW9IIOpios8AH?=
 =?us-ascii?Q?g9J8ovfC4syw/1kFlE0l1QAFdlewLS9IVKtsJIoVIVCZlhwVOMp4d1s2OpDX?=
 =?us-ascii?Q?YP//Sh9OG1GXJEJuTSFNpCPiQJeLtBwssjLv5IEMgUbebf2ey8ymxChk45Ld?=
 =?us-ascii?Q?kZoPyxalOU8Cn/1NsKUNOvlcrRuGxUtyd3YyzTD4b6sZIxCCi/u9tYRAJkvP?=
 =?us-ascii?Q?sLx+WUgSfyJVex197+FGy/9guOy2gxzaBy0SK6KaA3PLtE6W0VZ53rP49wbI?=
 =?us-ascii?Q?htaMn8UHRD7AOfAFTsYQCxP0G1+s/cz/KMuYBdRyu6UOgaZ90YXSBrEWrdd6?=
 =?us-ascii?Q?EVd5XhS3fdI4HwBVkFlv96dw2SRu1R19Dkb5lzK4BWgexPnGv7SLfi+/uICC?=
 =?us-ascii?Q?KjpI5urIN9dbnsYJUBoHD/GoBVFnQ26E2uj8KCc4ILEJifyb62DJJQnFb+Jy?=
 =?us-ascii?Q?A7AU65/XH+QEX2PCOHy/8rtrHI6fpZ3HDamelgt87cdyVc7/LJ6D5tkGYVF9?=
 =?us-ascii?Q?1mnEo/Ia1biYQo/K2M7AK4gHYwyk/nvqyBNV4gvC/1QUI9nuQpzGieCNcpmB?=
 =?us-ascii?Q?d48bkN1ZUZBMz+TD3KNHBDf5jzfZTo1V1ikfeXRBzVfbTr8LcSZmDkZ8hT8V?=
 =?us-ascii?Q?euvgasJHK2DQDY2O7y8yLxsJ1TeI3NBf5b/AmTPJt3gfjSx40LUNYvHHoigq?=
 =?us-ascii?Q?FC6Do35y2TB/md3+U81Db7p5tEQuIVFdxXtdWxkkKpg=3D?=
x-ms-exchange-transport-forked: True
Content-Type: multipart/mixed;
        boundary="_002_DM5PR02MB3687FF95271C8512DE9BA075C4F30DM5PR02MB3687namp_"
MIME-Version: 1.0
X-OriginatorOrg: wustl.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM5PR02MB3687.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ebc280bb-02e1-4636-521c-08d896ed124e
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Dec 2020 18:07:03.0484
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4ccca3b5-71cd-4e6d-974b-4d9beb96c6d6
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PiBoRUpo6Odj/WMkrIToy5urQsIzCcqtIQkyd3dvjjjJG525J82A9jsCFt7iySeGLN31vuDMq47ZF4haUfbwJw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB5914
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--_002_DM5PR02MB3687FF95271C8512DE9BA075C4F30DM5PR02MB3687namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello Michael,

I apologize if you're receiving this email a second time. I accidentally ke=
pt HTML formatting enabled the first time I sent it, causing it to be rejec=
ted as spam.

I am teaching the Operating Systems Organization course at Washington Unive=
rsity in St. Louis, and to supplement a series of lectures on locking and s=
ynchronization, I assigned students to read the futex(7) manual page. One s=
tudent, Alex Baker <mailto:alexbaker@wustl.edu>, pointed out a race conditi=
on in the description of how to "down" a futex, i.e. wait for or acquire a =
lock, under the Semantics section. Say we have two threads, T0 and T1, whic=
h execute as follows:

1. T0 acquires the lock, decrements the futex to 0
2. T1 switches in, attempts to acquire the lock, decrements the futex to -1
3. T0 switches in, completes its critical section
4. T0 unlocks the lock, increments the futex to 0
5. Because the futex is 0, T0 assumes threads are waiting on the futex, but=
 no threads have yet called FUTEX_WAIT
6. T0 sets the futex to 1
7. T0 uses the FUTEX_WAKE operation
8. T1 switches in, and believing it should still wait for the futex, it set=
s the futex to -1
9. T1 now uses the FUTEX_WAIT operation

Because, in step 8, T1 has set the futex to -1, its call to FUTEX_WAIT in 9=
 will succeed, as the futex holds the expected value in the call (-1). But =
since T0 has already completed its execution and has called FUTEX_WAKE, T1 =
may never be woken.

The fwait and fpost (i.e. lock and release, or down and up) functions in th=
e Examples section on the futex(2) page seem to be race free, but use atomi=
c compare exchange functions, instead of the atomic increment and decrement=
 semantics described in futex(7).=20

I've attached a patch for the futex(7) man page, which modifies the Semanti=
cs section to describe a correct, race-free use of a futex for lock acquisi=
tion using atomic increment and decrement operations. I've also added a cod=
e sample to help illustrate this. I hope the addition of the code sample do=
es not, in your opinion, add unnecessary length to this manual page, given =
that the futex(2) page is already so thorough.

I have copied Bert Hubert, whom I believe to be the original author of the =
futex(7) man page.

Thank you,

Marion Sudvarg
PhD Student, Computer Science
Washington University in St. Louis

--_002_DM5PR02MB3687FF95271C8512DE9BA075C4F30DM5PR02MB3687namp_
Content-Type: application/octet-stream; name="futex.7.patch"
Content-Description: futex.7.patch
Content-Disposition: attachment; filename="futex.7.patch"; size=5495;
	creation-date="Wed, 02 Dec 2020 18:02:00 GMT";
	modification-date="Wed, 02 Dec 2020 18:03:14 GMT"
Content-Transfer-Encoding: base64

ZGlmZiAtLWdpdCBhL21hbjcvZnV0ZXguNyBiL21hbjcvZnV0ZXguNwppbmRleCAyMmY2MTA2NDYu
LmY1OTcyNWI2MSAxMDA2NDQKLS0tIGEvbWFuNy9mdXRleC43CisrKyBiL21hbjcvZnV0ZXguNwpA
QCAtNzIsMTkgKzcyLDExIEBAIG9wZXJhdGlvbi4KIFdhaXRpbmcgb24gYSBmdXRleCwgdG8gImRv
d24iIGl0LCBpcyB0aGUgcmV2ZXJzZSBvcGVyYXRpb24uCiBBdG9taWNhbGx5IGRlY3JlbWVudCB0
aGUgY291bnRlciBhbmQgY2hlY2sgaWYgaXQgY2hhbmdlZCB0byAwLAogaW4gd2hpY2ggY2FzZSB0
aGUgb3BlcmF0aW9uIGlzIGRvbmUgYW5kIHRoZSBmdXRleCB3YXMgdW5jb250ZW5kZWQuCi1JbiBh
bGwgb3RoZXIgY2lyY3Vtc3RhbmNlcywgdGhlIHByb2Nlc3Mgc2hvdWxkCi1yZXF1ZXN0IHRoYXQg
dGhlIGtlcm5lbCB3YWl0IGZvciBhbm90aGVyIHByb2Nlc3MgdG8gdXAgdGhlIGZ1dGV4LgorSW4g
YWxsIG90aGVyIGNpcmN1bXN0YW5jZXMsIHRoZSBwcm9jZXNzIHNob3VsZCBzZXQgdGhlIGNvdW50
ZXIgdG8gXC0xCithbmQgcmVxdWVzdCB0aGF0IHRoZSBrZXJuZWwgd2FpdCBmb3IgYW5vdGhlciBw
cm9jZXNzIHRvIHVwIHRoZSBmdXRleC4KIFRoaXMgaXMgZG9uZSB1c2luZyB0aGUKIC5CIEZVVEVY
X1dBSVQKLW9wZXJhdGlvbiwKLXdoaWNoIGlzIHByb3ZpZGVkIHRoZSByZXR1cm4gdmFsdWUgb2Yg
dGhlIGF0b21pYyBkZWNyZW1lbnQgb3BlcmF0aW9uLgotSW4gdGhlIGV2ZW50IHRoYXQgYW5vdGhl
ciBwcm9jZXNzIGhhcyBtb2RpZmllZCB0aGUgdmFsdWUgb2YgdGhlIGZ1dGV4Ci1iZXR3ZWVuIHRo
ZSBhdG9taWMgZGVjcmVtZW50IGFuZCB0aGUKLS5CIEZVVEVYX1dBSVQKLW9wZXJhdGlvbiwgdGhp
cyBndWFyYW50ZWVzIHRoYXQgdGhlCi0uQiBGVVRFWF9XQUlUCi1mYWlscywgYW5kIHRoZSBwcm9j
ZXNzIG1heSB0cnkgYWdhaW4gdG8gImRvd24iIHRoZSBmdXRleC4KLS5TUyAKK29wZXJhdGlvbi4K
IC5QUAogVGhlCiAuQlIgZnV0ZXggKDIpCkBAIC0xMTMsMTY2ICsxMDUsNiBAQCBiZWxvdy4KIFRo
aXMgbWFuIHBhZ2UgaWxsdXN0cmF0ZXMgdGhlIG1vc3QgY29tbW9uIHVzZSBvZiB0aGUKIC5CUiBm
dXRleCAoMikKIHByaW1pdGl2ZXM7IGl0IGlzIGJ5IG5vIG1lYW5zIHRoZSBvbmx5IG9uZS4KLS5T
SCBFWEFNUExFUwotVGhlIHByb2dyYW0gYmVsb3cgZGVtb25zdHJhdGVzIHRoZSB1c2Ugb2YgZnV0
ZXhlcyBpbiBhIHByb2dyYW0gd2hlcmUKLXRocmVhZHMgdXNlIGEgZnV0ZXggdG8gc3luY2hyb25p
emUgYWNjZXNzIHRvIGEgY3JpdGljYWwgc2VjdGlvbiwKLXdoaWNoIGluY3JlbWVudHMgYSBnbG9i
YWwgaW50ZWdlciB2YXJpYWJsZQotLklSIG5sb29wcwotKGEgY29tbWFuZC1saW5lIGFyZ3VtZW50
IHRoYXQgZGVmYXVsdHMgdG8gMTAwMDAwIGlmIG9taXR0ZWQpCi10aW1lcy4KLUFmdGVyIHRoZSBw
YXJhbGxlbCBzZWN0aW9uLAotdGhlIHByb2dyYW0gcHJpbnRzIHRoZSB2YWx1ZSBvZiB0aGUgZ2xv
YmFsIHZhcmlhYmxlLgotVXBvbiBydW5uaW5nIHRoaXMgcHJvZ3JhbSB3ZSBzZWUgb3V0cHV0IHN1
Y2ggYXMgdGhlIGZvbGxvd2luZzoKLS5QUAotLmluICs0bgotLkVYCi0kIFxmQi4vZnV0ZXhfZGVt
b1xmUAotUmFuIHdpdGggMiB0aHJlYWRzCi1FYWNoIHRocmVhZCBpbmNyZW1lbnRlZCBnbG9iYWxf
aW50IDEwMDAwMDAgdGltZXMKLUZpbmFsIHZhbHVlIG9mIGdsb2JhbF9pbnQ6IDIwMDAwMDAKLS5F
RQotLmluCi0uU1MgUHJvZ3JhbSBzb3VyY2UKLVwmCi0uRVgKLS8qIGZ1dGV4X2RlbW8uYwotCi0g
ICAgVXNhZ2U6IGZ1dGV4X2RlbW8gW25sb29wc10KLSAgICAgICAgICAgICAgICAgICAgKERlZmF1
bHQ6IDEwMDAwMCkKLQotICAgIERlbW9uc3RyYXRlIHRoZSB1c2Ugb2YgZnV0ZXhlcyBpbiBhIHBy
b2dyYW0gd2hlcmUgbXVsdGlwbGUgdGhyZWFkcwotICAgIHVzZSBhIGZ1dGV4IHRvIHN5bmNocm9u
aXplIGFjY2VzcyB0byBhIGdsb2JhbCBpbnRlZ2VyIHZhcmlhYmxlLCB3aGljaAotICAgIGlzIGlu
aXRpYWxpemVkIHRvIDAuIFRoZSB0d28gdGhyZWFkcyBlYWNoIGluY3JlbWVudCB0aGUgdmFyaWFi
bGUKLSAgICBcKGFxbmxvb3BzXChhcSB0aW1lcywgYW5kIGVtcGxveSBhIHN5bmNocm9uaXphdGlv
biBwcm90b2NvbCB0aGF0Ci0gICAgZW5zdXJlcyBvbmx5IG9uZSB0aHJlYWQgY2FuIGFjY2VzcyB0
aGUgZ2xvYmFsIHZhcmlhYmxlIGF0IGEgdGltZS4KLQotICAgIFdlIHVzZSBPcGVuTVAgZm9yIHRo
cmVhZCBwYXJhbGxlbGlzbTsKLSAgICB0aGVyZWZvcmUsIHRoaXMgcHJvZ3JhbSBtdXN0IGJlIGNv
bXBpbGVkIHdpdGggdGhlIFwtZm9wZW5tcCBmbGFnLAotICAgIGUuZy46Ci0KLSAgICBnY2MgZnV0
ZXhfZGVtby5jIFwtbyBmdXRleF9kZW1vIFwtZm9wZW5tcAotCi0jZGVmaW5lIF9HTlVfU09VUkNF
Ci0jaW5jbHVkZSA8c3RkaW8uaD4KLSNpbmNsdWRlIDxlcnJuby5oPgotI2luY2x1ZGUgPHN0ZGF0
b21pYy5oPgotI2luY2x1ZGUgPHN0ZGludC5oPgotI2luY2x1ZGUgPHN0ZGxpYi5oPgotI2luY2x1
ZGUgPHVuaXN0ZC5oPgotI2luY2x1ZGUgPHN5cy9zeXNjYWxsLmg+Ci0jaW5jbHVkZSA8bGludXgv
ZnV0ZXguaD4KLSNpbmNsdWRlIDxvbXAuaD4KLQotI2RlZmluZSBlcnJFeGl0KG1zZykgICAgZG8g
eyBwZXJyb3IobXNnKTsgZXhpdChFWElUX0ZBSUxVUkUpOyBcZQotICAgICAgICAgICAgICAgICAg
ICAgICAgfSB3aGlsZSAoMCkKLQotI2RlZmluZSBOVU1fVEhSRUFEUyAyCi0jZGVmaW5lIExPQ0tF
RCAwCi0jZGVmaW5lIFVOTE9DS0VEIDEKLQotc3RhdGljIGludCBnbG9iYWxfaW50ID0gMDsKLXN0
YXRpYyB1aW50MzJfdCBsb2NrID0gVU5MT0NLRUQ7Ci0KLXN0YXRpYyBpbnQKLWZ1dGV4KHVpbnQz
Ml90ICp1YWRkciwgaW50IGZ1dGV4X29wLCB1aW50MzJfdCB2YWwsCi0gICAgICBjb25zdCBzdHJ1
Y3QgdGltZXNwZWMgKnRpbWVvdXQsIHVpbnQzMl90ICp1YWRkcjIsIHVpbnQzMl90IHZhbDMpCi17
Ci0gICAgcmV0dXJuIHN5c2NhbGwoU1lTX2Z1dGV4LCB1YWRkciwgZnV0ZXhfb3AsIHZhbCwKLSAg
ICAgICAgICAgICAgICAgICB0aW1lb3V0LCB1YWRkcjIsIHZhbDMpOwotfQotCi0vKiAgSW5jcmVt
ZW50cyB0aGUgZ2xvYmFsIGludGVnZXIgdmFyaWFibGUgbmxvb3BzIHRpbWVzLgotICAgIFdpdGhv
dXQgbG9ja2luZywgYSByYWNlIGNvbmRpdGlvbiBtYXkgb2NjdXIuICovCi0KLXN0YXRpYyB2b2lk
Ci1jcml0aWNhbF9zZWN0aW9uKGludCBubG9vcHMpCi17Ci0gICAgZm9yIChpbnQgaSA9IDA7IGkg
PCBubG9vcHM7IGkrKykgewotICAgICAgICBnbG9iYWxfaW50Kys7Ci0gICAgfQotfQotCi0KLS8q
ICBBdHRlbXB0IHRvIGxvY2sgdGhlIGZ1dGV4IHBvaW50ZWQgdG8gYnkgXChhcWZ1dGV4cFwoYXE6
Ci0gICAgVGhlIGZ1dGV4IHZhbHVlIGlzIGRlY3JlbWVudGVkIGJ5IDEuCi0gICAgSWYgdGhlIGZ1
dGV4IHZhbHVlIGlzIG5vdyBMT0NLRUQsCi0gICAgdGhlIGxvY2sgd2FzIHN1Y2Nlc3NmdWxseSBh
Y3F1aXJlZC4KLSAgICBPdGhlcndpc2UsIHdhaXQgZm9yIHRoZSBsb2NrIHRvIGJlIHJlbGVhc2Vk
LiAqLwotCi1zdGF0aWMgdm9pZAotZmxvY2sodWludDMyX3QgKiBmdXRleHApCi17Ci0gICAgaW50
IHM7Ci0gICAgaW50IGZ1dGV4X3ZhbDsKLQotICAgIC8qIEF0dGVtcHQgdG8gYWNxdWlyZSB0aGUg
bG9jayAqLwotICAgIHdoaWxlICggKGZ1dGV4X3ZhbCA9IF9fYXRvbWljX3N1Yl9mZXRjaChmdXRl
eHAsIDEsIF9fQVRPTUlDX0FDUV9SRUwpKSA8IExPQ0tFRCApIHsKLQotICAgICAgICAvKiBJZiB0
aGUgbG9jayBpcyBub3QgYXZhaWxhYmxlLCB3YWl0ICovCi0KLSAgICAgICAgcyA9IGZ1dGV4KGZ1
dGV4cCwgRlVURVhfV0FJVCwgZnV0ZXhfdmFsLCBOVUxMLCBOVUxMLCAwKTsKLSAgICAgICAgaWYg
KHMgPT0gXC0xICYmIGVycm5vICE9IEVBR0FJTikKLSAgICAgICAgICAgIGVyckV4aXQoImZ1dGV4
XC1GVVRFWF9XQUlUIik7Ci0gICAgfQotfQotCi0vKiAgVW5sb2NrIHRoZSBmdXRleCBwb2ludGVk
IHRvIGJ5IFwoYXFmdXRleHBcKGFxOgotICAgIFRoZSBmdXRleCB2YWx1ZSBpcyBpbmNyZW1lbnRl
ZCBieSAxLgotICAgIAotICAgIElmIHRoZSBmdXRleCB2YWx1ZSBpcyBub3cgVU5MT0NLRUQsCi0g
ICAgbm8gdGhyZWFkcyBhcmUgd2FpdGluZyBmb3IgdGhlIGxvY2suCi0gICAgT3RoZXJ3aXNlLCBh
bm90aGVyIHRocmVhZCBpcyB3YWl0aW5nLAotICAgIHNvIHNldCB0aGUgdmFsdWUgdG8gVU5MT0NL
RUQgYW5kIHdha2UuICovCi0KLXN0YXRpYyB2b2lkCi1mdW5sb2NrKHVpbnQzMl90ICogZnV0ZXhw
KQotewotICAgIGludCBzOwotCi0gICAgLyogQXJlIGFueSB0aHJlYWRzIHdhaXRpbmcgZm9yIHRo
ZSBsb2NrPyAqLwotICAgIGlmIChfX2F0b21pY19hZGRfZmV0Y2goZnV0ZXhwLCAxLCBfX0FUT01J
Q19BQ1FfUkVMKSAhPSBVTkxPQ0tFRCkgewotCi0gICAgICAgIC8qIElmIHNvLCB1bmxvY2sgYW5k
IG5vdGlmeSAqLwotICAgICAgICBfX2F0b21pY19zdG9yZV9uKGZ1dGV4cCwgVU5MT0NLRUQsIF9f
QVRPTUlDX1JFTEVBU0UpOwotICAgICAgICBzID0gZnV0ZXgoZnV0ZXhwLCBGVVRFWF9XQUtFLCAx
LCBOVUxMLCBOVUxMLCAwKTsKLSAgICAgICAgaWYgKHMgID09IFwtMSkKLSAgICAgICAgICAgIGVy
ckV4aXQoImZ1dGV4XC1GVVRFWF9XQUtFIik7Ci0gICAgfQotfQotCi1pbnQKLW1haW4oaW50IGFy
Z2MsIGNoYXIgKmFyZ3ZbXSkKLXsKLSAgICBpbnQgbmxvb3BzOwotICAgIGludCBuX3RocmVhZHM7
Ci0KLSAgICBubG9vcHMgPSAoYXJnYyA+IDEpID8gYXRvaShhcmd2WzFdKSA6IDEwMDAwMDsKLQot
ICAgIC8vQmVnaW4gT3Blbk1QIHBhcmFsbGVsIHNlY3Rpb24KLSAgICBvbXBfc2V0X251bV90aHJl
YWRzKE5VTV9USFJFQURTKTsKLSAgICAjcHJhZ21hIG9tcCBwYXJhbGxlbAotICAgIHsKLQotICAg
ICAgICAvL1JldHJpZXZlIHRoZSBhY3R1YWwgbnVtYmVyIG9mIHRocmVhZHMKLSAgICAgICAgaWYg
KG9tcF9nZXRfdGhyZWFkX251bSgpID09IDApIHsKLSAgICAgICAgICAgIG5fdGhyZWFkcyA9IG9t
cF9nZXRfbnVtX3RocmVhZHMoKTsKLSAgICAgICAgfQotCi0gICAgICAgIC8vTG9jayBhbmQgcnVu
IHRoZSBjcml0aWNhbCBzZWN0aW9uCi0gICAgICAgIGZsb2NrKCZsb2NrKTsKLSAgICAgICAgY3Jp
dGljYWxfc2VjdGlvbihubG9vcHMpOwotICAgICAgICBmdW5sb2NrKCZsb2NrKTsKLQotICAgIH0K
LSAgICAKLSAgICBwcmludGYoIlJhbiB3aXRoICVkIHRocmVhZHNcbiIsIG5fdGhyZWFkcyk7Ci0g
ICAgcHJpbnRmKCJFYWNoIHRocmVhZCBpbmNyZW1lbnRlZCBnbG9iYWxfaW50ICVkIHRpbWVzXG4i
LCBubG9vcHMpOwotICAgIHByaW50ZigiRmluYWwgdmFsdWUgb2YgZ2xvYmFsX2ludDogJWRcbiIs
IGdsb2JhbF9pbnQpOwotCi0gICAgZXhpdChFWElUX1NVQ0NFU1MpOwotfQotCi0uRUUKIC5cIiAu
U0ggQVVUSE9SUwogLlwiIC5QUAogLlwiIEZ1dGV4ZXMgd2VyZSBkZXNpZ25lZCBhbmQgd29ya2Vk
IG9uIGJ5IEh1YmVydHVzIEZyYW5rZQo=

--_002_DM5PR02MB3687FF95271C8512DE9BA075C4F30DM5PR02MB3687namp_--
