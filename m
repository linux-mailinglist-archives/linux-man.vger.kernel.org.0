Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DEF515A9B7A
	for <lists+linux-man@lfdr.de>; Thu,  1 Sep 2022 17:22:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233677AbiIAPW4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Sep 2022 11:22:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57768 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232489AbiIAPWz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Sep 2022 11:22:55 -0400
Received: from smtpout3.mo529.mail-out.ovh.net (smtpout3.mo529.mail-out.ovh.net [46.105.54.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6675075CCF
        for <linux-man@vger.kernel.org>; Thu,  1 Sep 2022 08:22:54 -0700 (PDT)
Received: from mxplan6.mail.ovh.net (unknown [10.108.1.108])
        by mo529.mail-out.ovh.net (Postfix) with ESMTPS id 6BA5B1234D8A7;
        Thu,  1 Sep 2022 17:13:12 +0200 (CEST)
Received: from jwilk.net (37.59.142.96) by DAG4EX1.mxp6.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.12; Thu, 1 Sep
 2022 17:13:11 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-96R0017605b666-c993-480b-8320-376050e163b2,
                    08A2FDE8A4EF0199DF453D86D09E70CAC5E25498) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.229
Date:   Thu, 1 Sep 2022 17:13:09 +0200
From:   Jakub Wilk <jwilk@jwilk.net>
To:     =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
CC:     Alejandro Colomar <alx.manpages@gmail.com>,
        <linux-man@vger.kernel.org>
Subject: Re: [PATCH 4/4] ioctl_console.2: document all extant TIOCLINUX
 subcodes as of 6.0 (2.6.17)
Message-ID: <20220901151309.hxobw3p2oqo3vg6d@jwilk.net>
References: <120d03d4df30e5cdd87a850abff5eae116ed8963.1662039344.git.nabijaczleweli@nabijaczleweli.xyz>
 <d3c0288e8aafd04f876e43493a31182b46e4d2f9.1662039344.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <d3c0288e8aafd04f876e43493a31182b46e4d2f9.1662039344.git.nabijaczleweli@nabijaczleweli.xyz>
X-Originating-IP: [37.59.142.96]
X-ClientProxiedBy: DAG4EX1.mxp6.local (172.16.2.31) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: f32dbf05-0aca-4c22-953b-a1bb29be529e
X-Ovh-Tracer-Id: 14702000986317051869
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 35
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvfedrvdekkedgkeejucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucgfrhhlucfvnfffucdlfeehmdenucfjughrpeffhffvvefukfhfgggtugfgjghisehtkeertddttdejnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeetgedvgfduueegffeftdffueeftedvgfdtteekieevhffhuefgheeuieevgfeijeenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddrleeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdpnhgspghrtghpthhtohepuddprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdfovfetjfhoshhtpehmohehvdel
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* наб <nabijaczleweli@nabijaczleweli.xyz>, 2022-09-01 15:37:
>+can only be unblanked explicitly (by switching VTs, to text mode, &c.).

s/&c/etc/ — this is the spelling used elsewhere.

>+Returns the nomber of VT currently blanked,

s/nomber/number/

-- 
Jakub Wilk
