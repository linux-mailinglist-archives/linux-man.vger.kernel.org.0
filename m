Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CEF60320E78
	for <lists+linux-man@lfdr.de>; Mon, 22 Feb 2021 00:04:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232129AbhBUXDq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 21 Feb 2021 18:03:46 -0500
Received: from mail-bn8nam11lp2177.outbound.protection.outlook.com ([104.47.58.177]:6291
        "EHLO NAM11-BN8-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S232457AbhBUXDh (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sun, 21 Feb 2021 18:03:37 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QEWFmIyLinWOqxj7cJHuzEf4UvVHbUXw6NKEejUclTkyU52gGejF2SNThydfJQbb2xzgpMzqnZfESLtd/iHhVs0umzjY7yDGpiDBfSWyHSXi+1mTLkGxxrjis/pA8OvAEHWHryxvqk/R3aaWD9W7Yq8yAosabBEy4dzQCvFwN9hsTkQ4Yo92Lqx+G7rkzalOLCVVCq1qElZeSBThZBwrtAFowi9aCiumoXUFYb4xzrQXPQPQWijKqKKUuDM/a+MS4Z1SwKmYnsOrt1RjS8PGo+osSTjih6RqA0j3VOzspz6Pa0LgBlYMgh7TcGFSTmPfqwYk1agKR+Cy0rmOlKZk0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=u/KQtQiRzCh8JuH3+kB1zEjremw8C97Ypoe9Z/67Vi8=;
 b=oF0lw3NO5BYBOIjw7PfVbD35yCmsL7BoYumsNJqG8zP8ZTm3auiE7j4bDNrpp5hmBswA0nMYijPAvSLkhKpCLbeRDBJo3QB2OhpOVaCyuo8VxYiazPLPpWt2XUdcySYnMNPMxeXTO197jrybk3FWvXobz0k9SOBhRvHHrpIssk+d3iYV+zhpQmy1TKfHvnJhGt+BASUQY62MHJ1m+OCZ9SMf5c+bKOqRFfmNewvSrfUCEqvOMcixqxjFkhD2VkqK9v+jJMYZ4Gups1k2I4wT3lk34aEZD4Hio9yhE3a9L9Gdciur9s5O/UeN42TjJYeVXjIODUd6rcW3oTpmfpWYDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wustl.edu; dmarc=pass action=none header.from=wustl.edu;
 dkim=pass header.d=wustl.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wustl.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=u/KQtQiRzCh8JuH3+kB1zEjremw8C97Ypoe9Z/67Vi8=;
 b=K5m60FT/YHMkgxrLaryoVZ6rJYy28vj0LE+zr+lP8Agmz10zyjpHtsrWDY4iMCL3f3LsczH9cVYwHt3bjT000rp3BSlynhOU8y2SC3btHm1VB5weG1+cWXZh/cxNGRqD34D4QbFw5mLDI5qf0saCKNrFlVmaAXva4qIc79l/6C5iOlr0kMgP6gPq7F5/w6CAHWZjXx54ub8Veiq1dvLgxfEFa+q8gQ+hFXuiMf5Bti8qI3p7k5BZ5HBjSMb1QAq9CQnLFREf2iaDhVVOnfh+B1uohph++H43GSHiPtAuEfjDn7pbUQXfbLRPwIG64uqVs6FuMG26gEyUcZ9k6g2wwQ==
Received: from DM5PR02MB3687.namprd02.prod.outlook.com (2603:10b6:4:b0::15) by
 DM5PR0201MB3559.namprd02.prod.outlook.com (2603:10b6:4:79::29) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3868.32; Sun, 21 Feb 2021 23:02:49 +0000
Received: from DM5PR02MB3687.namprd02.prod.outlook.com
 ([fe80::3457:8bca:dfb8:c3ba]) by DM5PR02MB3687.namprd02.prod.outlook.com
 ([fe80::3457:8bca:dfb8:c3ba%5]) with mapi id 15.20.3868.027; Sun, 21 Feb 2021
 23:02:49 +0000
From:   "Sudvarg, Marion" <msudvarg@wustl.edu>
To:     "mtk.manpages@gmail.com" <mtk.manpages@gmail.com>
CC:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "bert@hubertnet.nl" <bert@hubertnet.nl>,
        "Gill, Christopher" <cdgill@wustl.edu>
Subject: FW: [patch] futex.7: Semantics section: Race condition in locking
 semantics description
Thread-Topic: [patch] futex.7: Semantics section: Race condition in locking
 semantics description
Thread-Index: AdbIUsIsG3iA6HxESV+rUO1lseLFkAAgtc+QAAWv0gAAABdB4A/t+TWA
Date:   Sun, 21 Feb 2021 23:02:49 +0000
Message-ID: <DM5PR02MB3687D2FA01544EC7DDC2A77BC4829@DM5PR02MB3687.namprd02.prod.outlook.com>
References: <DM5PR02MB3687609B599F7773193DE31AC4F30@DM5PR02MB3687.namprd02.prod.outlook.com>
 <DM5PR02MB3687FF95271C8512DE9BA075C4F30@DM5PR02MB3687.namprd02.prod.outlook.com>
 <92c5a4e1-2fb7-03f2-2f7a-ef9b844da5c8@gmail.com>
 <DM5PR02MB368773E150C77BDF45A34C9DC4F30@DM5PR02MB3687.namprd02.prod.outlook.com>
In-Reply-To: <DM5PR02MB368773E150C77BDF45A34C9DC4F30@DM5PR02MB3687.namprd02.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=wustl.edu;
x-originating-ip: [108.66.78.62]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: df368504-6081-41fc-140e-08d8d6bccf8c
x-ms-traffictypediagnostic: DM5PR0201MB3559:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR0201MB3559E1101A3AF1AB01B639FCC4829@DM5PR0201MB3559.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Q8Tb0YO5vWFzvTXPXaUCfEQ+703UG8XIW8nj/dvWpj3fVFsd1PpNo5T0TuMTzJ2GC8r8rH76FsRehbSStmHZXPeRQLDnNNmO39Msxy5XH/UsZmkeLjjN9psiuEL3dZxSlR3D3DFVyy73RM6ToCpoxG52tzZU3R+yN14ni6NtzSKiufBg82+E8ernQfEV6lgynF7pJCZ3pnxsdRPBpNcN5ozVfny/jm821aoWTfuk1ZpjjMW0EDwNyk4rBMVm6Kj6hcQWBRVfug/FUnVZbynO/EpTaE0wkfepQStflOVHqRIlyyM6iBV7+NlQ1nwSEej5UymBPphn3gcIHFbc77zBU3DpIKUnDN+ufcoT4lX4nG9X8dShI8SwtJJt2samWGGtWYVA068WzhicJP+Roj7e0pOHfOaopqscSEB834NIdl4E5cWdLWbVPWywx75LLHM1Uf0IYCrkVGG++OvfZW2Qt6g+1NmrKMGgrxbrjSpJyxgU6WyfVhzAXBKr2ZM45GaO5b2eLhv28c/DO4ZyaqZhwA==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR02MB3687.namprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(376002)(396003)(346002)(366004)(39860400002)(136003)(52536014)(8936002)(2906002)(186003)(8676002)(316002)(54906003)(786003)(26005)(5660300002)(86362001)(71200400001)(4326008)(478600001)(9686003)(55016002)(107886003)(33656002)(83380400001)(99936003)(66946007)(75432002)(6916009)(64756008)(66446008)(66556008)(66616009)(66476007)(76116006)(7696005)(6506007);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?eyox5ahr4K8hfDlaWPaxrjaGqcxbzUfFh7WjYLdyzoXz//h5yixOc6aQc7uk?=
 =?us-ascii?Q?dEoA5aoLTcHzGBv5nJsxrNBOpcjGY42k6b4M5Yo4kBYRgRg4/FCtFHgtMy1Y?=
 =?us-ascii?Q?cUivWBAI/5g7k+ZT9H40fQjMFjpWmZKBOnX8gTr5pryMElq84KXcHnVszcic?=
 =?us-ascii?Q?gDM6XMHjdniwLWWGa/Jl/ggdrRu61B2KcSSt4Ih+HlaCYV4upq+nZ3P81e+b?=
 =?us-ascii?Q?Nu9mkQ+LPDB2kDeFj9mfJI7sxYFV5FKML+QWWmglRQxjCAe9mpGLZdvxAL71?=
 =?us-ascii?Q?qsE3zXuTCascZh6C4+g+GVd01Inm0TfO3cyA6kvVn3yGfNvbG0IpGjyedixe?=
 =?us-ascii?Q?9pSsx2xVEjV+WFd+UDj9/G4+A33caTsw4GJ9jJvIumteq+At7Wb07oQnGxwq?=
 =?us-ascii?Q?YErhae2KjTfi0C5RMAk2quNi7WUe5jC1MVFq1puAK/Z3zwQWvvVI1gUp5e1m?=
 =?us-ascii?Q?sFXPN5iFa3V6VxbkKatjhzb3OwEOb1B7Da2x1ZGrYeZV24KcIptpCgMVmcop?=
 =?us-ascii?Q?vAaBawlUX5+mvtiRsS+RVIJPPw3dLisHhmZUNo6R48DDwpqhN2JIHs35PxcZ?=
 =?us-ascii?Q?e16UorC9MyjweHF8yp1EJhNBFPHVmzrHAwHeFX0ioRjJpobUvcWMf4qAlFXD?=
 =?us-ascii?Q?xqNPcBSp+vTzW+THMkunE8aHRFjgLAMhBTg3W52571FXwSoxlawGqHA31M+N?=
 =?us-ascii?Q?xPwKLNF3pHG9lypICli5mMlks6DLWj6Totg/VHqf472CbPvPQ70sIca9Xd3L?=
 =?us-ascii?Q?UxPyqyXY7+1mTWMdMGyiDQJYruJc3OqYnvl4BnRgjZ2L1O+D9f+CwPv6gzkG?=
 =?us-ascii?Q?rAGdDR7PmfPdKv0/Tnw4AxxiqF163wKjkI9+0qtghADd7ZBn4srXrJsj8SkG?=
 =?us-ascii?Q?Dtlvk5R2ZQnGNJdssIgsXhf/4rznlwW0xyo1HKtcoCiHqYJM4wvlupCFV9kc?=
 =?us-ascii?Q?r+32xRFH2x88YYM+cYn15oxP9Gg9bKLYNyD9WHaHB6OC+PhDyXB274dxFMdY?=
 =?us-ascii?Q?wMjnVzcahRG+y9Cs8mpy00gJJsnCa1YSpPT7cUw2BjZytEDbYUTZTTK08sKG?=
 =?us-ascii?Q?26/TbS2v7x+X0WNxQpKphl9Xv20nDd5RpwP3uD+M1jjFur3RkkMrE9HgSV2T?=
 =?us-ascii?Q?3aD4p77qYERVyQmNvNp9zZBCkpY0TcCqnRNQ/W9/SrJ2GHzbuEkiRztxraW+?=
 =?us-ascii?Q?GGBH+8vMPcgQpbER8eMFk0H8AKkgyHAEffDvffaxztXUCu9K3PsNmFOJbdVf?=
 =?us-ascii?Q?8W9NiE+LskgdYR+P6YwiuB731dQDm/Ftarr0y193f9EwOwPIllFT/dRwd5ka?=
 =?us-ascii?Q?NE8=3D?=
Content-Type: multipart/mixed;
        boundary="_002_DM5PR02MB3687D2FA01544EC7DDC2A77BC4829DM5PR02MB3687namp_"
MIME-Version: 1.0
X-OriginatorOrg: wustl.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM5PR02MB3687.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: df368504-6081-41fc-140e-08d8d6bccf8c
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Feb 2021 23:02:49.5795
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4ccca3b5-71cd-4e6d-974b-4d9beb96c6d6
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EBfVgCG60So1IhvWDMAo+282pW/Veed5QB902wnDNNQlRcEFXtB2cwSfV2oDJ64OST9zaRaIMYNR26+MgUIdLA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR0201MB3559
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--_002_DM5PR02MB3687D2FA01544EC7DDC2A77BC4829DM5PR02MB3687namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello Michael,

I hope you've been well. I'm writing to follow up with you regarding our pr=
oposed changes to the futex.7 man-pages entry. Last semester, I taught the =
Operating Systems Organization course at Washington University in St. Louis=
, and to supplement a series of lectures on locking and synchronization, I =
assigned students to read the futex(7) manual page. One student, Alex Baker=
 <alexbaker@wustl.edu>, pointed out a race condition in the description of =
how to "down" a futex, i.e. wait for or acquire a lock, under the Semantics=
 section. Say we have two threads, T0 and T1, which execute as follows:

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

I have again copied Bert Hubert, whom I believe to be the original author o=
f the futex(7) man page. I have also copied Chris Gill, who is my adviser a=
nd oversees the operating system courses at Washington University.

Thank you,

Marion Sudvarg
PhD Student, Computer Science
Washington University in St. Louis

--_002_DM5PR02MB3687D2FA01544EC7DDC2A77BC4829DM5PR02MB3687namp_
Content-Type: application/octet-stream; name="futex.7.patch"
Content-Description: futex.7.patch
Content-Disposition: attachment; filename="futex.7.patch"; size=5495;
	creation-date="Wed, 02 Dec 2020 21:03:00 GMT";
	modification-date="Wed, 02 Dec 2020 21:04:56 GMT"
Content-Transfer-Encoding: base64

ZGlmZiAtLWdpdCBhL21hbjcvZnV0ZXguNyBiL21hbjcvZnV0ZXguNwppbmRleCBmNTk3MjViNjEu
LjIyZjYxMDY0NiAxMDA2NDQKLS0tIGEvbWFuNy9mdXRleC43CisrKyBiL21hbjcvZnV0ZXguNwpA
QCAtNzIsMTEgKzcyLDE5IEBAIG9wZXJhdGlvbi4KIFdhaXRpbmcgb24gYSBmdXRleCwgdG8gImRv
d24iIGl0LCBpcyB0aGUgcmV2ZXJzZSBvcGVyYXRpb24uCiBBdG9taWNhbGx5IGRlY3JlbWVudCB0
aGUgY291bnRlciBhbmQgY2hlY2sgaWYgaXQgY2hhbmdlZCB0byAwLAogaW4gd2hpY2ggY2FzZSB0
aGUgb3BlcmF0aW9uIGlzIGRvbmUgYW5kIHRoZSBmdXRleCB3YXMgdW5jb250ZW5kZWQuCi1JbiBh
bGwgb3RoZXIgY2lyY3Vtc3RhbmNlcywgdGhlIHByb2Nlc3Mgc2hvdWxkIHNldCB0aGUgY291bnRl
ciB0byBcLTEKLWFuZCByZXF1ZXN0IHRoYXQgdGhlIGtlcm5lbCB3YWl0IGZvciBhbm90aGVyIHBy
b2Nlc3MgdG8gdXAgdGhlIGZ1dGV4LgorSW4gYWxsIG90aGVyIGNpcmN1bXN0YW5jZXMsIHRoZSBw
cm9jZXNzIHNob3VsZAorcmVxdWVzdCB0aGF0IHRoZSBrZXJuZWwgd2FpdCBmb3IgYW5vdGhlciBw
cm9jZXNzIHRvIHVwIHRoZSBmdXRleC4KIFRoaXMgaXMgZG9uZSB1c2luZyB0aGUKIC5CIEZVVEVY
X1dBSVQKLW9wZXJhdGlvbi4KK29wZXJhdGlvbiwKK3doaWNoIGlzIHByb3ZpZGVkIHRoZSByZXR1
cm4gdmFsdWUgb2YgdGhlIGF0b21pYyBkZWNyZW1lbnQgb3BlcmF0aW9uLgorSW4gdGhlIGV2ZW50
IHRoYXQgYW5vdGhlciBwcm9jZXNzIGhhcyBtb2RpZmllZCB0aGUgdmFsdWUgb2YgdGhlIGZ1dGV4
CitiZXR3ZWVuIHRoZSBhdG9taWMgZGVjcmVtZW50IGFuZCB0aGUKKy5CIEZVVEVYX1dBSVQKK29w
ZXJhdGlvbiwgdGhpcyBndWFyYW50ZWVzIHRoYXQgdGhlCisuQiBGVVRFWF9XQUlUCitmYWlscywg
YW5kIHRoZSBwcm9jZXNzIG1heSB0cnkgYWdhaW4gdG8gImRvd24iIHRoZSBmdXRleC4KKy5TUyAK
IC5QUAogVGhlCiAuQlIgZnV0ZXggKDIpCkBAIC0xMDUsNiArMTEzLDE2NiBAQCBiZWxvdy4KIFRo
aXMgbWFuIHBhZ2UgaWxsdXN0cmF0ZXMgdGhlIG1vc3QgY29tbW9uIHVzZSBvZiB0aGUKIC5CUiBm
dXRleCAoMikKIHByaW1pdGl2ZXM7IGl0IGlzIGJ5IG5vIG1lYW5zIHRoZSBvbmx5IG9uZS4KKy5T
SCBFWEFNUExFUworVGhlIHByb2dyYW0gYmVsb3cgZGVtb25zdHJhdGVzIHRoZSB1c2Ugb2YgZnV0
ZXhlcyBpbiBhIHByb2dyYW0gd2hlcmUKK3RocmVhZHMgdXNlIGEgZnV0ZXggdG8gc3luY2hyb25p
emUgYWNjZXNzIHRvIGEgY3JpdGljYWwgc2VjdGlvbiwKK3doaWNoIGluY3JlbWVudHMgYSBnbG9i
YWwgaW50ZWdlciB2YXJpYWJsZQorLklSIG5sb29wcworKGEgY29tbWFuZC1saW5lIGFyZ3VtZW50
IHRoYXQgZGVmYXVsdHMgdG8gMTAwMDAwIGlmIG9taXR0ZWQpCit0aW1lcy4KK0FmdGVyIHRoZSBw
YXJhbGxlbCBzZWN0aW9uLAordGhlIHByb2dyYW0gcHJpbnRzIHRoZSB2YWx1ZSBvZiB0aGUgZ2xv
YmFsIHZhcmlhYmxlLgorVXBvbiBydW5uaW5nIHRoaXMgcHJvZ3JhbSB3ZSBzZWUgb3V0cHV0IHN1
Y2ggYXMgdGhlIGZvbGxvd2luZzoKKy5QUAorLmluICs0bgorLkVYCiskIFxmQi4vZnV0ZXhfZGVt
b1xmUAorUmFuIHdpdGggMiB0aHJlYWRzCitFYWNoIHRocmVhZCBpbmNyZW1lbnRlZCBnbG9iYWxf
aW50IDEwMDAwMDAgdGltZXMKK0ZpbmFsIHZhbHVlIG9mIGdsb2JhbF9pbnQ6IDIwMDAwMDAKKy5F
RQorLmluCisuU1MgUHJvZ3JhbSBzb3VyY2UKK1wmCisuRVgKKy8qIGZ1dGV4X2RlbW8uYworCisg
ICAgVXNhZ2U6IGZ1dGV4X2RlbW8gW25sb29wc10KKyAgICAgICAgICAgICAgICAgICAgKERlZmF1
bHQ6IDEwMDAwMCkKKworICAgIERlbW9uc3RyYXRlIHRoZSB1c2Ugb2YgZnV0ZXhlcyBpbiBhIHBy
b2dyYW0gd2hlcmUgbXVsdGlwbGUgdGhyZWFkcworICAgIHVzZSBhIGZ1dGV4IHRvIHN5bmNocm9u
aXplIGFjY2VzcyB0byBhIGdsb2JhbCBpbnRlZ2VyIHZhcmlhYmxlLCB3aGljaAorICAgIGlzIGlu
aXRpYWxpemVkIHRvIDAuIFRoZSB0d28gdGhyZWFkcyBlYWNoIGluY3JlbWVudCB0aGUgdmFyaWFi
bGUKKyAgICBcKGFxbmxvb3BzXChhcSB0aW1lcywgYW5kIGVtcGxveSBhIHN5bmNocm9uaXphdGlv
biBwcm90b2NvbCB0aGF0CisgICAgZW5zdXJlcyBvbmx5IG9uZSB0aHJlYWQgY2FuIGFjY2VzcyB0
aGUgZ2xvYmFsIHZhcmlhYmxlIGF0IGEgdGltZS4KKworICAgIFdlIHVzZSBPcGVuTVAgZm9yIHRo
cmVhZCBwYXJhbGxlbGlzbTsKKyAgICB0aGVyZWZvcmUsIHRoaXMgcHJvZ3JhbSBtdXN0IGJlIGNv
bXBpbGVkIHdpdGggdGhlIFwtZm9wZW5tcCBmbGFnLAorICAgIGUuZy46CisKKyAgICBnY2MgZnV0
ZXhfZGVtby5jIFwtbyBmdXRleF9kZW1vIFwtZm9wZW5tcAorCisjZGVmaW5lIF9HTlVfU09VUkNF
CisjaW5jbHVkZSA8c3RkaW8uaD4KKyNpbmNsdWRlIDxlcnJuby5oPgorI2luY2x1ZGUgPHN0ZGF0
b21pYy5oPgorI2luY2x1ZGUgPHN0ZGludC5oPgorI2luY2x1ZGUgPHN0ZGxpYi5oPgorI2luY2x1
ZGUgPHVuaXN0ZC5oPgorI2luY2x1ZGUgPHN5cy9zeXNjYWxsLmg+CisjaW5jbHVkZSA8bGludXgv
ZnV0ZXguaD4KKyNpbmNsdWRlIDxvbXAuaD4KKworI2RlZmluZSBlcnJFeGl0KG1zZykgICAgZG8g
eyBwZXJyb3IobXNnKTsgZXhpdChFWElUX0ZBSUxVUkUpOyBcZQorICAgICAgICAgICAgICAgICAg
ICAgICAgfSB3aGlsZSAoMCkKKworI2RlZmluZSBOVU1fVEhSRUFEUyAyCisjZGVmaW5lIExPQ0tF
RCAwCisjZGVmaW5lIFVOTE9DS0VEIDEKKworc3RhdGljIGludCBnbG9iYWxfaW50ID0gMDsKK3N0
YXRpYyB1aW50MzJfdCBsb2NrID0gVU5MT0NLRUQ7CisKK3N0YXRpYyBpbnQKK2Z1dGV4KHVpbnQz
Ml90ICp1YWRkciwgaW50IGZ1dGV4X29wLCB1aW50MzJfdCB2YWwsCisgICAgICBjb25zdCBzdHJ1
Y3QgdGltZXNwZWMgKnRpbWVvdXQsIHVpbnQzMl90ICp1YWRkcjIsIHVpbnQzMl90IHZhbDMpCit7
CisgICAgcmV0dXJuIHN5c2NhbGwoU1lTX2Z1dGV4LCB1YWRkciwgZnV0ZXhfb3AsIHZhbCwKKyAg
ICAgICAgICAgICAgICAgICB0aW1lb3V0LCB1YWRkcjIsIHZhbDMpOworfQorCisvKiAgSW5jcmVt
ZW50cyB0aGUgZ2xvYmFsIGludGVnZXIgdmFyaWFibGUgbmxvb3BzIHRpbWVzLgorICAgIFdpdGhv
dXQgbG9ja2luZywgYSByYWNlIGNvbmRpdGlvbiBtYXkgb2NjdXIuICovCisKK3N0YXRpYyB2b2lk
Citjcml0aWNhbF9zZWN0aW9uKGludCBubG9vcHMpCit7CisgICAgZm9yIChpbnQgaSA9IDA7IGkg
PCBubG9vcHM7IGkrKykgeworICAgICAgICBnbG9iYWxfaW50Kys7CisgICAgfQorfQorCisKKy8q
ICBBdHRlbXB0IHRvIGxvY2sgdGhlIGZ1dGV4IHBvaW50ZWQgdG8gYnkgXChhcWZ1dGV4cFwoYXE6
CisgICAgVGhlIGZ1dGV4IHZhbHVlIGlzIGRlY3JlbWVudGVkIGJ5IDEuCisgICAgSWYgdGhlIGZ1
dGV4IHZhbHVlIGlzIG5vdyBMT0NLRUQsCisgICAgdGhlIGxvY2sgd2FzIHN1Y2Nlc3NmdWxseSBh
Y3F1aXJlZC4KKyAgICBPdGhlcndpc2UsIHdhaXQgZm9yIHRoZSBsb2NrIHRvIGJlIHJlbGVhc2Vk
LiAqLworCitzdGF0aWMgdm9pZAorZmxvY2sodWludDMyX3QgKiBmdXRleHApCit7CisgICAgaW50
IHM7CisgICAgaW50IGZ1dGV4X3ZhbDsKKworICAgIC8qIEF0dGVtcHQgdG8gYWNxdWlyZSB0aGUg
bG9jayAqLworICAgIHdoaWxlICggKGZ1dGV4X3ZhbCA9IF9fYXRvbWljX3N1Yl9mZXRjaChmdXRl
eHAsIDEsIF9fQVRPTUlDX0FDUV9SRUwpKSA8IExPQ0tFRCApIHsKKworICAgICAgICAvKiBJZiB0
aGUgbG9jayBpcyBub3QgYXZhaWxhYmxlLCB3YWl0ICovCisKKyAgICAgICAgcyA9IGZ1dGV4KGZ1
dGV4cCwgRlVURVhfV0FJVCwgZnV0ZXhfdmFsLCBOVUxMLCBOVUxMLCAwKTsKKyAgICAgICAgaWYg
KHMgPT0gXC0xICYmIGVycm5vICE9IEVBR0FJTikKKyAgICAgICAgICAgIGVyckV4aXQoImZ1dGV4
XC1GVVRFWF9XQUlUIik7CisgICAgfQorfQorCisvKiAgVW5sb2NrIHRoZSBmdXRleCBwb2ludGVk
IHRvIGJ5IFwoYXFmdXRleHBcKGFxOgorICAgIFRoZSBmdXRleCB2YWx1ZSBpcyBpbmNyZW1lbnRl
ZCBieSAxLgorICAgIAorICAgIElmIHRoZSBmdXRleCB2YWx1ZSBpcyBub3cgVU5MT0NLRUQsCisg
ICAgbm8gdGhyZWFkcyBhcmUgd2FpdGluZyBmb3IgdGhlIGxvY2suCisgICAgT3RoZXJ3aXNlLCBh
bm90aGVyIHRocmVhZCBpcyB3YWl0aW5nLAorICAgIHNvIHNldCB0aGUgdmFsdWUgdG8gVU5MT0NL
RUQgYW5kIHdha2UuICovCisKK3N0YXRpYyB2b2lkCitmdW5sb2NrKHVpbnQzMl90ICogZnV0ZXhw
KQoreworICAgIGludCBzOworCisgICAgLyogQXJlIGFueSB0aHJlYWRzIHdhaXRpbmcgZm9yIHRo
ZSBsb2NrPyAqLworICAgIGlmIChfX2F0b21pY19hZGRfZmV0Y2goZnV0ZXhwLCAxLCBfX0FUT01J
Q19BQ1FfUkVMKSAhPSBVTkxPQ0tFRCkgeworCisgICAgICAgIC8qIElmIHNvLCB1bmxvY2sgYW5k
IG5vdGlmeSAqLworICAgICAgICBfX2F0b21pY19zdG9yZV9uKGZ1dGV4cCwgVU5MT0NLRUQsIF9f
QVRPTUlDX1JFTEVBU0UpOworICAgICAgICBzID0gZnV0ZXgoZnV0ZXhwLCBGVVRFWF9XQUtFLCAx
LCBOVUxMLCBOVUxMLCAwKTsKKyAgICAgICAgaWYgKHMgID09IFwtMSkKKyAgICAgICAgICAgIGVy
ckV4aXQoImZ1dGV4XC1GVVRFWF9XQUtFIik7CisgICAgfQorfQorCitpbnQKK21haW4oaW50IGFy
Z2MsIGNoYXIgKmFyZ3ZbXSkKK3sKKyAgICBpbnQgbmxvb3BzOworICAgIGludCBuX3RocmVhZHM7
CisKKyAgICBubG9vcHMgPSAoYXJnYyA+IDEpID8gYXRvaShhcmd2WzFdKSA6IDEwMDAwMDsKKwor
ICAgIC8vQmVnaW4gT3Blbk1QIHBhcmFsbGVsIHNlY3Rpb24KKyAgICBvbXBfc2V0X251bV90aHJl
YWRzKE5VTV9USFJFQURTKTsKKyAgICAjcHJhZ21hIG9tcCBwYXJhbGxlbAorICAgIHsKKworICAg
ICAgICAvL1JldHJpZXZlIHRoZSBhY3R1YWwgbnVtYmVyIG9mIHRocmVhZHMKKyAgICAgICAgaWYg
KG9tcF9nZXRfdGhyZWFkX251bSgpID09IDApIHsKKyAgICAgICAgICAgIG5fdGhyZWFkcyA9IG9t
cF9nZXRfbnVtX3RocmVhZHMoKTsKKyAgICAgICAgfQorCisgICAgICAgIC8vTG9jayBhbmQgcnVu
IHRoZSBjcml0aWNhbCBzZWN0aW9uCisgICAgICAgIGZsb2NrKCZsb2NrKTsKKyAgICAgICAgY3Jp
dGljYWxfc2VjdGlvbihubG9vcHMpOworICAgICAgICBmdW5sb2NrKCZsb2NrKTsKKworICAgIH0K
KyAgICAKKyAgICBwcmludGYoIlJhbiB3aXRoICVkIHRocmVhZHNcbiIsIG5fdGhyZWFkcyk7Cisg
ICAgcHJpbnRmKCJFYWNoIHRocmVhZCBpbmNyZW1lbnRlZCBnbG9iYWxfaW50ICVkIHRpbWVzXG4i
LCBubG9vcHMpOworICAgIHByaW50ZigiRmluYWwgdmFsdWUgb2YgZ2xvYmFsX2ludDogJWRcbiIs
IGdsb2JhbF9pbnQpOworCisgICAgZXhpdChFWElUX1NVQ0NFU1MpOworfQorCisuRUUKIC5cIiAu
U0ggQVVUSE9SUwogLlwiIC5QUAogLlwiIEZ1dGV4ZXMgd2VyZSBkZXNpZ25lZCBhbmQgd29ya2Vk
IG9uIGJ5IEh1YmVydHVzIEZyYW5rZQo=

--_002_DM5PR02MB3687D2FA01544EC7DDC2A77BC4829DM5PR02MB3687namp_--
