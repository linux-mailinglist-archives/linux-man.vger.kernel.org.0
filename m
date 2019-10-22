Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8E095E0E3E
	for <lists+linux-man@lfdr.de>; Wed, 23 Oct 2019 00:30:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731376AbfJVWaP convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-man@lfdr.de>); Tue, 22 Oct 2019 18:30:15 -0400
Received: from mx0a-002e3701.pphosted.com ([148.163.147.86]:42040 "EHLO
        mx0a-002e3701.pphosted.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1727885AbfJVWaP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 22 Oct 2019 18:30:15 -0400
Received: from pps.filterd (m0148663.ppops.net [127.0.0.1])
        by mx0a-002e3701.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id x9MMBHE6024256;
        Tue, 22 Oct 2019 22:30:11 GMT
Received: from g2t2352.austin.hpe.com (g2t2352.austin.hpe.com [15.233.44.25])
        by mx0a-002e3701.pphosted.com with ESMTP id 2vt9sy0bgg-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Tue, 22 Oct 2019 22:30:11 +0000
Received: from G1W8106.americas.hpqcorp.net (g1w8106.austin.hp.com [16.193.72.61])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
        (No client certificate requested)
        by g2t2352.austin.hpe.com (Postfix) with ESMTPS id 38C0AA3;
        Tue, 22 Oct 2019 22:30:11 +0000 (UTC)
Received: from G4W9332.americas.hpqcorp.net (16.208.32.118) by
 G1W8106.americas.hpqcorp.net (16.193.72.61) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Tue, 22 Oct 2019 22:30:11 +0000
Received: from G9W9209.americas.hpqcorp.net (2002:10dc:429c::10dc:429c) by
 G4W9332.americas.hpqcorp.net (2002:10d0:2076::10d0:2076) with Microsoft SMTP
 Server (TLS) id 15.0.1367.3; Tue, 22 Oct 2019 22:30:10 +0000
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (15.241.52.11) by
 G9W9209.americas.hpqcorp.net (16.220.66.156) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3 via Frontend Transport; Tue, 22 Oct 2019 22:30:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gGA26uilvmNKJQoyMHTLWerRGIo0MW9DbnfQvQbeD7UUJigkcSnqJBw04xizjDyuqYxosA50U0iWx33gK61GevfS02vzg8M9J7HtmrOZk1OBLlGFDzMgga6E8GUaDJTUf3k6VanUZN6PzAM6GSDxzLfjzAJ6LaxYB3qrHd1hfTr+S+VJzawf//NXE3iaVeBuY0YAfPfMk+Un3gSIBEkDAJ9SLp7q5XleFv4w5FKFkMy0d5EgzraaZT1rwJSwa3woddTbZCO1viV/0qRMPru3SOUoFOvvarMkgOCikklthBSRrX88ZTR0wb/icfsNQoBn7/o4iRpSaGllvOZ21Zu8hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=F1eByx5Sv90vqJJoVqwWy1IAAnMKzsgkXziM+Y5ogQk=;
 b=EBIB3MgXzJhaRv4Wyn0OizmdqOAM7zhYY1u/+LtSHFSeCuraEinN0qfmKDBrMQBmMCVPRmv9Sl6XXc0mmuJOYrlPA+Y3knVEyv/WLaIMOUt4AyMSIFwktpf1joq/779HENYOcgafo6EDNQt2qpma1IZ488OXXJnuLL09LieKhL+WUMIFGj/RRIlKKKl53HuQiX99LpEQt0Nkg3xlXRNvmU89v9gfy01bIsq4blUM/hrdAkjqsuE5G8SfxGbJu+GMedJaf5bied8/UBgBX0Sa/ZMhO/E5XGVzwH6ysjZrZT3lHMcmgcoDoZyH0/F5+/KXPb3vqfOM2L+AkBVTSn0eIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=hpe.com; dmarc=pass action=none header.from=hpe.com; dkim=pass
 header.d=hpe.com; arc=none
Received: from CS1PR8401MB1031.NAMPRD84.PROD.OUTLOOK.COM (10.169.96.16) by
 CS1PR8401MB1240.NAMPRD84.PROD.OUTLOOK.COM (10.169.14.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.16; Tue, 22 Oct 2019 22:30:09 +0000
Received: from CS1PR8401MB1031.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::287a:3638:c63b:283a]) by CS1PR8401MB1031.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::287a:3638:c63b:283a%4]) with mapi id 15.20.2367.022; Tue, 22 Oct 2019
 22:30:09 +0000
From:   "Hayes, Bill" <bill.hayes@hpe.com>
To:     "ocfs2-devel@oss.oracle.com" <ocfs2-devel@oss.oracle.com>
CC:     "mtk.manpages@gmail.com" <mtk.manpages@gmail.com>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Should lseek manpage reference OCFS2 versus OCFS?
Thread-Topic: Should lseek manpage reference OCFS2 versus OCFS?
Thread-Index: AdWJJ9XiXoOkOjEtQXWILpumq7JhzQ==
Date:   Tue, 22 Oct 2019 22:30:09 +0000
Message-ID: <CS1PR8401MB1031A3AE826CBEE15E95F60D8B680@CS1PR8401MB1031.NAMPRD84.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [15.219.163.14]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 2e2bd6f6-a671-469f-b1d4-08d7573f65be
x-ms-traffictypediagnostic: CS1PR8401MB1240:
x-ms-exchange-purlcount: 3
x-microsoft-antispam-prvs: <CS1PR8401MB1240A18FFFA3161DA9D6914F8B680@CS1PR8401MB1240.NAMPRD84.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:1775;
x-forefront-prvs: 01986AE76B
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(376002)(366004)(396003)(136003)(346002)(39860400002)(199004)(189003)(51444003)(6436002)(66946007)(4326008)(476003)(102836004)(486006)(8676002)(6116002)(8936002)(3846002)(478600001)(76116006)(33656002)(66476007)(64756008)(966005)(26005)(25786009)(2351001)(14454004)(81166006)(86362001)(66556008)(81156014)(66446008)(6506007)(2906002)(186003)(6916009)(7736002)(305945005)(2501003)(52536014)(316002)(54906003)(71200400001)(66066001)(99286004)(14444005)(74316002)(5640700003)(7696005)(256004)(71190400001)(6306002)(5660300002)(55016002)(9686003);DIR:OUT;SFP:1102;SCL:1;SRVR:CS1PR8401MB1240;H:CS1PR8401MB1031.NAMPRD84.PROD.OUTLOOK.COM;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: hpe.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: q9qiPsCLC1cz2YGqZCjWCLneAKFdffCRpwZWMrFY8bc5kBkkhVb5cVtv8u2TqWAe29IbOuAyfdZCLF8mIQO6q5/DXsc+VQb8R9dlMpkgFf4ZU5oE/8gU/56FRtwAnySdt28f2YRCoxRcbbxseiFYJnfNog87aNOe5RWEkSURLwGt/8GUxVbTQNbaC8KU9LcLKpJjd4V72ojO9liDoT2BGAOfYmHQUyeJ6CDK9Gu6yk7HOR1PUt08x884u3z1ZKH5lpfYZey6uBZ4NxUh9t4A8u/jmAMuv3rG1rRRb0Hkeg47cri0Ym/IcToqTfcGNNk375w5dfqg9J2XxMZMdnUrDwOgepMlzYt0rnF07o+Y6caKlyUbL3Qm2UfoVgwK+DQziS2iMgv2ez66rul9nSJJO+Bn7AoQcDjXAPElFgbW2S2fbwdxxm75uL6nSuhb8FIkwj1P9OtdKgZJ4dhFck0RRXxfPfN3wpZjkNL9T1Qxaeo=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="us-ascii"
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e2bd6f6-a671-469f-b1d4-08d7573f65be
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Oct 2019 22:30:09.6617
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 105b2061-b669-4b31-92ac-24d304d195dc
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ap0czG2cPArEScTLqOGp/aekB3rwtfD41yCyok9GfORDLIGChE3dR8zdNsTZz4eNlOtyLbSKzTGm+/DJYShfPw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CS1PR8401MB1240
X-OriginatorOrg: hpe.com
Content-Transfer-Encoding: 8BIT
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
MIME-Version: 1.0
X-HPE-SCL: -1
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-22_06:2019-10-22,2019-10-22 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 phishscore=0
 priorityscore=1501 impostorscore=0 mlxscore=0 malwarescore=0 bulkscore=0
 adultscore=0 mlxlogscore=999 spamscore=0 clxscore=1011 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-1908290000
 definitions=main-1910220192
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On the lseek man page (http://man7.org/linux/man-pages/man2/lseek.2.html), in its description of SEEK_DATA and SEEK_HOLE it says that: The SEEK_HOLE and SEEK_DATA operations are supported for the following filesystems:
       *  Btrfs (since Linux 3.1)
       *  OCFS (since Linux 3.2)
       *  XFS (since Linux 3.5)
       *  ext4 (since Linux 3.8)
       *  tmpfs(5) (since Linux 3.8)
       *  NFS (since Linux 3.18)
       *  FUSE (since Linux 4.5)

I think that the reference to OCFS on the manpage should actually be to the OCFS2 file system.  

I think the 'OCFS (since Linux 3.2)' manpage reference is referring to this commit to OCFS2:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/fs?id=93862d5e1ab875664c6cc95254fc365028a48bb1

This OCFS2 commit was included as part of the Linux 3.2-rc4 drop (https://lwn.net/Articles/470337/).

Can someone with more experience with OCFS and OCFS2 confirm that the manpage should be changed to OCFS2 instead of OCFS?

Bill

	commit 93862d5e1ab875664c6cc95254fc365028a48bb1
	Author: Sunil Mushran <sunil.mushran@oracle.com>
	Date:   Mon Jul 25 14:58:15 2011 -0700

		ocfs2: Implement llseek()


		SEEK_HOLE sets the file pointer to the start of either a hole or an unwritten
		(preallocated) extent, that is greater than or equal to the supplied offset.

		SEEK_DATA sets the file pointer to the start of an allocated extent (not
		unwritten) that is greater than or equal to the supplied offset.

		If the supplied offset is on a desired region, then the file pointer is set
		to it. Offsets greater than or equal to the file size return -ENXIO.

		Unwritten (preallocated) extents are considered holes because the file system
		treats reads to such regions in the same way as it does to holes.

		Signed-off-by: Sunil Mushran <sunil.mushran@oracle.com>
