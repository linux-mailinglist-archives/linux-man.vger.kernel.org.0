Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 832C01EFF33
	for <lists+linux-man@lfdr.de>; Fri,  5 Jun 2020 19:39:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726044AbgFERjw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 5 Jun 2020 13:39:52 -0400
Received: from hillend.cent.gla.ac.uk ([130.209.16.102]:63624 "EHLO
        hillend.cent.gla.ac.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726788AbgFERjw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 5 Jun 2020 13:39:52 -0400
X-Greylist: delayed 1000 seconds by postgrey-1.27 at vger.kernel.org; Fri, 05 Jun 2020 13:37:42 EDT
Received: from cas08.campus.gla.ac.uk ([130.209.14.165])
        by hillend.cent.gla.ac.uk with esmtp (Exim 4.72)
        (envelope-from <John.W.Marshall@glasgow.ac.uk>)
        id 1jhG1d-0003g5-7V; Fri, 05 Jun 2020 18:21:01 +0100
Received: from cas07.campus.gla.ac.uk (130.209.14.164) by
 cas08.campus.gla.ac.uk (130.209.14.165) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 5 Jun 2020 18:21:00 +0100
Received: from GBR01-CWL-obe.outbound.protection.outlook.com (104.47.20.59) by
 cas07.campus.gla.ac.uk (130.209.14.164) with Microsoft SMTP Server (TLS) id
 15.0.1497.2 via Frontend Transport; Fri, 5 Jun 2020 18:21:00 +0100
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OQcHYkfMNp/Tptv2l3Ci62xLkztmzjRvfk9xSAMuTLw/LhrvBpAJW8gIlRtkO53ha/CeJWLMuOKrtw7qzACTcpb5IMJc6GpztFioa5XCQKoSqmMpusjJhVBL8Eqg8whikIf/lqMJ0BaGQtxw8uNdDnBGHZ1BAu5thiGCdDEw5z+C59iSBZN4IFkXuezsbYtYbsg/xzJHMVLJ2jqX7ixHJldkgNDq3LXdi98FIkW/LDvG8HFLwAmBrLjbZSbT3P+HitKc0GHU3gkiLJBf8m1FhGRtYA33MRSPydWZIf85/YdZ4IgiLtBGaGiFs9rA5Tri/UcrHpmoU0rAF8f7wbSiTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1W4k3lXT3Z6zxNcyB7ZAkVrVsmQ39w2maIaAHXnqc2Y=;
 b=QHVG+QpDXfq82RAbIWQLjGyUL7BAi2+k7Q4cGt8i6v7hkXLIaWOv/vKC32sng9KnQITRUKOAfHjr/kWF/pxw8rv++suNHVIvqcX750gI/F7ZW93iVNkfmPGOHub7P+ZHzOxG7VoiYbduLfdT7D9YDhfX6qTp03bvH2BAPAgGAfXclHSf+QpUizJBCiUsmhAMBQy6TpGJ1rbrEUy3dsURKe0f6SQuyEFuCqgqZ2TqVqJzsnipvBScGhm0u6MGM/U8Joz/s2TB6d5TqeIBt1IVSqmp8157s7Y3AGJyjwe3rdbIh6YCQ7k0IkuvFshul3amk5QWaVkw2sGIn8l8oKSmwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=glasgow.ac.uk; dmarc=pass action=none
 header.from=glasgow.ac.uk; dkim=pass header.d=glasgow.ac.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gla.onmicrosoft.com;
 s=selector2-gla-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1W4k3lXT3Z6zxNcyB7ZAkVrVsmQ39w2maIaAHXnqc2Y=;
 b=FByQ7a/Qysy0kAqaeDgyWGYsGi1I+Bs1eQzr+FrbEnPQD7ooNOlVox/HqBEpstkjH4WE5VTLBHraTA/B8l4tYB+RrncRS6NawqEvdSBtzrF5hFBugfJDDq6vAtJetnxc+JxHA7e8eUHC18T5kMEy7B6zTjvDECe9CO5Rl+V8ww4=
Received: from LNXP265MB1001.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:84::12)
 by LNXP265MB0505.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:1b::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.20; Fri, 5 Jun
 2020 17:21:00 +0000
Received: from LNXP265MB1001.GBRP265.PROD.OUTLOOK.COM
 ([fe80::edbd:dbdc:b744:15da]) by LNXP265MB1001.GBRP265.PROD.OUTLOOK.COM
 ([fe80::edbd:dbdc:b744:15da%7]) with mapi id 15.20.3045.024; Fri, 5 Jun 2020
 17:21:00 +0000
From:   John Marshall <John.W.Marshall@glasgow.ac.uk>
To:     "mtk.manpages@gmail.com" <mtk.manpages@gmail.com>
CC:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: random(3) and RAND_MAX
Thread-Topic: random(3) and RAND_MAX
Thread-Index: AQHWO12uQc3q+9KhbEeQvdYRDsPD3A==
Date:   Fri, 5 Jun 2020 17:21:00 +0000
Message-ID: <02185B3C-F6E5-4674-BB34-E549E04C5B37@glasgow.ac.uk>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=glasgow.ac.uk;
x-originating-ip: [86.178.96.176]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 07bf366f-81c5-42e0-bc4e-08d80974d117
x-ms-traffictypediagnostic: LNXP265MB0505:
x-microsoft-antispam-prvs: <LNXP265MB0505DE8640E1B84AD8A9BB79F0860@LNXP265MB0505.GBRP265.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0425A67DEF
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: enfjYVFxE43stpyQ0gt51zYugCoo+zyCStNo2u7MOCZf7abkC0Fh0bp/UmAdV1jDKD7Cle+41SaipFZ4VYnZwcZrxRyGrneb1q8GBJOX5JdgsqnnHxZytOqg32f6jNXAPugqZVDGP83fcXUS/eSgiS4HUFO6D1dWHlkWIQj01r1XVUtfHZ2XrzGuGppIV1fQHemWXI6IZ/GZf/f2xHvshA4ZZBy7F6OaNzHTxkKyJ+QmFstvDlAW8Y7coFF0f/GAnFETGi7pOBSe6XKa6kPqtAoCScMrwLxpRhWgC9DWnfWsaiQucgvWM8Oy/r2qEeP7rYT7QtkUBZGjTmwiCPS4vw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:LNXP265MB1001.GBRP265.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFTY:;SFS:(39860400002)(366004)(396003)(136003)(376002)(346002)(64756008)(83380400001)(478600001)(66556008)(6506007)(66446008)(66946007)(66476007)(316002)(2906002)(36756003)(6512007)(6486002)(26005)(786003)(5660300002)(71200400001)(76116006)(86362001)(2616005)(4326008)(8676002)(8936002)(33656002)(186003)(6916009);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: d8gAlnce9dfRSx/4KxtEkwG9k+rplcqjtEB9EQAfpTo+1wUJLR7jJJZt7Ry/uA4abGY6rjvlOXb1gpQE8jYTnSH6BxvsZZCCeVRhOzxSyZ8PUNkiGJgdgMgBxeIS/W0YEf+Sc5qbchmoib2HUFqPGYd4X1ckLPVrSH5E/aEN2dSS6BTSE7CIKfHQ+tKFr8B91K3pK0TTln0Cf2CyOGXR38KhXiE7mMCIf01a94bYNsO+ou9LvMwPXBxpfMLqmAhtmj+ies58GX26zy+TnEUa92Wrz/MPFLKlvg0ZmQanUrnkN1bynOgbBte19HWlW9Lb83TWTDA5k9gnB8SduEHe5r6QpMcyNfcgLTYrfMLGMpNLQqltQYkHtr92jMifdT4L+YIUjnrW+zDG3pJYFCFOUGyy5fa6RZI8oWWmYwHhNR9WUNtN/VeyXCqsiVTI5w4iw71BZI7W9FHFiOA5X7OJqUgsR70hhq9ROYuRsM20BgE=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="us-ascii"
Content-ID: <604B17EEEA6AAC46B17DE19BC1E0DAD7@GBRP265.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 07bf366f-81c5-42e0-bc4e-08d80974d117
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jun 2020 17:21:00.0665
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 6e725c29-763a-4f50-81f2-2e254f0133c8
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /5PBFSacAcVAFblTtwb0moBIcuR8RYgc/9gT4EAM6QhlApe54vGNLCiRKVBRbocXQZlOp/4paJ9Tfu8x85ouUacvAsT2l6QrfK4eH07vx+M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LNXP265MB0505
X-OriginatorOrg: glasgow.ac.uk
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Observed in CentOS 8's man-pages-4.15-6.el8.x86_64 and also on man-pages Gi=
t master:

Man-pages's rand.3 says rand() returns values in the range [0, RAND_MAX] an=
d is very clear that this is inclusive. This is the same as the POSIX descr=
iption of rand(3).

Man-pages's random.3 says random() returns values "in the range from 0 to R=
AND_MAX". However POSIX describes random() as returning values "in the rang=
e from 0 to 2^31-1".

In practice glibc and musl both fix RAND_MAX as a constant 2^31-1 so on the=
se platforms it is the same thing. Similarly on macOS. It appears that Free=
BSD used to have a slightly lower value of RAND_MAX but several months ago =
raised it to 2^31-1 similarly. OTOH it appears that Windows, Cygwin, etc st=
ill use a much smaller value for RAND_MAX (32767) but the full POSIX range =
for random(3).

So random.3 describing the range as 0..RAND_MAX is correct on Linux (unless=
 you're using a very unusual libc) but misleading when used as a reference =
for writing code portable to other platforms. It would be good to change ra=
ndom.3 to refer to the hardcoded constant (2^31-1) instead of RAND_MAX (and=
 perhaps add a note that on Linux this is the same as RAND_MAX), or at leas=
t to add a note saying that RAND_MAX may be an unrelated value on other pla=
tforms.

Thanks,

    John=
