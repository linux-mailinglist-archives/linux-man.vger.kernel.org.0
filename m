Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 123546428E8
	for <lists+linux-man@lfdr.de>; Mon,  5 Dec 2022 14:02:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231783AbiLENCH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Dec 2022 08:02:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58924 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232057AbiLENCH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Dec 2022 08:02:07 -0500
Received: from 5.mo548.mail-out.ovh.net (5.mo548.mail-out.ovh.net [188.165.49.213])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 04D2B1BEAC
        for <linux-man@vger.kernel.org>; Mon,  5 Dec 2022 05:02:05 -0800 (PST)
Received: from mxplan6.mail.ovh.net (unknown [10.109.143.250])
        by mo548.mail-out.ovh.net (Postfix) with ESMTPS id 47BAC2013D;
        Mon,  5 Dec 2022 12:55:10 +0000 (UTC)
Received: from jwilk.net (37.59.142.96) by DAG4EX1.mxp6.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.16; Mon, 5 Dec
 2022 13:54:54 +0100
Authentication-Results: garm.ovh; auth=pass (GARM-96R00107e89052-c829-427f-84ff-5a35cc72e17e,
                    2BD4DE20357223365A5F6F2D36CBE58CF9909313) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.142
Date:   Mon, 5 Dec 2022 13:54:44 +0100
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Alejandro Colomar <alx.manpages@gmail.com>
CC:     Helge Kreutzmann <debian@helgefjell.de>,
        Mario =?utf-8?Q?Bl=C3=A4ttermann?= <mario.blaettermann@gmail.com>,
        <linux-man@vger.kernel.org>
Subject: Re: Issue in man page filesystems.5
Message-ID: <20221205125444.nn3n43svv2he6gdg@jwilk.net>
References: <20221204090709.GA32662@Debian-50-lenny-64-minimal>
 <bb033e53-d8d7-dc26-72cd-012066047d0a@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <bb033e53-d8d7-dc26-72cd-012066047d0a@gmail.com>
X-Originating-IP: [37.59.142.96]
X-ClientProxiedBy: DAG1EX1.mxp6.local (172.16.2.1) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: 97495713-7dad-4ce6-96b8-d41d4d091606
X-Ovh-Tracer-Id: 16872736005429188576
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvhedrudeggdegiecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhepfffhvfevuffkfhggtggujghisehttdertddttddvnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeekvdejieevhfehieeuvddtveelvedvudfhhfeuteegteelkedvudevfeduvdevveenucffohhmrghinhepshgrmhgsrgdrohhrghenucfkphepuddvjedrtddrtddruddpfeejrdehledrudegvddrleeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddvjedrtddrtddruddpmhgrihhlfhhrohhmpeeojhifihhlkhesjhifihhlkhdrnhgvtheqpdhnsggprhgtphhtthhopedupdhrtghpthhtoheprghlgidrmhgrnhhprghgvghssehgmhgrihhlrdgtohhmpdguvggsihgrnheshhgvlhhgvghfjhgvlhhlrdguvgdpmhgrrhhiohdrsghlrggvthhtvghrmhgrnhhnsehgmhgrihhlrdgtohhmpdhlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdfovfetjfhoshhtpehmohehgeekpdhmohguvgepshhmthhpohhuth
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Alejandro Colomar <alx.manpages@gmail.com>, 2022-12-04 12:39:
>>Issue:    Windows for Workgroups outdated? 18 Years ago!
>>
>>"is a network filesystem that supports the SMB protocol, used by Windows for"
>>"Workgroups, Windows NT, and Lan Manager.  See E<.UR https://www.samba.org\\:/"
>>"samba\\:/smbfs/> E<.UE .>"
>
>I never used 'smb' so please suggest what are nowadays uses of the 
>file system to replace the old text.

I'd just say "Windows" without mentioning any particular versions.

-- 
Jakub Wilk
